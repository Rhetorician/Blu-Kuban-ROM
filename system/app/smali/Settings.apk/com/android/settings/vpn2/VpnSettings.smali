.class public Lcom/android/settings/vpn2/VpnSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "VpnSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/os/Handler$Callback;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/vpn2/VpnSettings$VpnPreference;
    }
.end annotation


# instance fields
.field private final PROFILES_ROOT:Ljava/lang/String;

.field private final PROFILE_OBJ_FILE:Ljava/lang/String;

.field filter:Landroid/content/IntentFilter;

.field private mBroadCastReceiver:Landroid/content/BroadcastReceiver;

.field private mDialog:Lcom/android/settings/vpn2/VpnDialog;

.field private mInfo:Lcom/android/internal/net/LegacyVpnInfo;

.field private final mKeyStore:Landroid/security/KeyStore;

.field private mPreferences:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings/vpn2/VpnSettings$VpnPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedKey:Ljava/lang/String;

.field private final mService:Landroid/net/IConnectivityManager;

.field private mUnlocking:Z

.field private mUpdater:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 75
    const-string v0, "connectivity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mService:Landroid/net/IConnectivityManager;

    .line 77
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mUnlocking:Z

    .line 90
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->filter:Landroid/content/IntentFilter;

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/net/vpn/VpnManager;->getProfilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->PROFILES_ROOT:Ljava/lang/String;

    .line 93
    const-string v0, ".pobj"

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->PROFILE_OBJ_FILE:Ljava/lang/String;

    .line 607
    new-instance v0, Lcom/android/settings/vpn2/VpnSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/vpn2/VpnSettings$1;-><init>(Lcom/android/settings/vpn2/VpnSettings;)V

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/vpn2/VpnSettings;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings/vpn2/VpnSettings;Ljava/util/HashMap;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/settings/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    return-object p1
.end method

.method private connect(Lcom/android/settings/vpn2/VpnProfile;)V
    .registers 16
    .parameter "profile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 439
    invoke-direct {p0}, Lcom/android/settings/vpn2/VpnSettings;->getDefaultNetwork()[Ljava/lang/String;

    move-result-object v5

    .line 440
    .local v5, network:[Ljava/lang/String;
    const/4 v11, 0x0

    aget-object v3, v5, v11

    .line 441
    .local v3, interfaze:Ljava/lang/String;
    const/4 v11, 0x1

    aget-object v2, v5, v11

    .line 444
    .local v2, gateway:Ljava/lang/String;
    const-string v6, ""

    .line 445
    .local v6, privateKey:Ljava/lang/String;
    const-string v9, ""

    .line 446
    .local v9, userCert:Ljava/lang/String;
    const-string v0, ""

    .line 447
    .local v0, caCert:Ljava/lang/String;
    const-string v8, ""

    .line 448
    .local v8, serverCert:Ljava/lang/String;
    iget-object v11, p1, Lcom/android/settings/vpn2/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_56

    .line 449
    iget-object v11, p0, Lcom/android/settings/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "USRPKEY_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p1, Lcom/android/settings/vpn2/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v10

    .line 450
    .local v10, value:[B
    if-nez v10, :cond_b2

    const/4 v6, 0x0

    .line 451
    :goto_38
    iget-object v11, p0, Lcom/android/settings/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "USRCERT_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p1, Lcom/android/settings/vpn2/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v10

    .line 452
    if-nez v10, :cond_bb

    const/4 v9, 0x0

    .line 454
    .end local v10           #value:[B
    :cond_56
    :goto_56
    iget-object v11, p1, Lcom/android/settings/vpn2/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_7c

    .line 455
    iget-object v11, p0, Lcom/android/settings/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "CACERT_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p1, Lcom/android/settings/vpn2/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v10

    .line 456
    .restart local v10       #value:[B
    if-nez v10, :cond_c3

    const/4 v0, 0x0

    .line 458
    .end local v10           #value:[B
    :cond_7c
    :goto_7c
    iget-object v11, p1, Lcom/android/settings/vpn2/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_a2

    .line 459
    iget-object v11, p0, Lcom/android/settings/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "USRCERT_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p1, Lcom/android/settings/vpn2/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v10

    .line 460
    .restart local v10       #value:[B
    if-nez v10, :cond_cb

    const/4 v8, 0x0

    .line 462
    .end local v10           #value:[B
    :cond_a2
    :goto_a2
    if-eqz v6, :cond_aa

    if-eqz v9, :cond_aa

    if-eqz v0, :cond_aa

    if-nez v8, :cond_d3

    .line 464
    :cond_aa
    new-instance v11, Ljava/lang/IllegalStateException;

    const-string v12, "Cannot load credentials"

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 450
    .restart local v10       #value:[B
    :cond_b2
    new-instance v6, Ljava/lang/String;

    .end local v6           #privateKey:Ljava/lang/String;
    sget-object v11, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v6, v10, v11}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto/16 :goto_38

    .line 452
    .restart local v6       #privateKey:Ljava/lang/String;
    :cond_bb
    new-instance v9, Ljava/lang/String;

    .end local v9           #userCert:Ljava/lang/String;
    sget-object v11, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v9, v10, v11}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_56

    .line 456
    .restart local v9       #userCert:Ljava/lang/String;
    :cond_c3
    new-instance v0, Ljava/lang/String;

    .end local v0           #caCert:Ljava/lang/String;
    sget-object v11, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v10, v11}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_7c

    .line 460
    .restart local v0       #caCert:Ljava/lang/String;
    :cond_cb
    new-instance v8, Ljava/lang/String;

    .end local v8           #serverCert:Ljava/lang/String;
    sget-object v11, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v8, v10, v11}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_a2

    .line 468
    .end local v10           #value:[B
    .restart local v8       #serverCert:Ljava/lang/String;
    :cond_d3
    const/4 v7, 0x0

    .line 469
    .local v7, racoon:[Ljava/lang/String;
    iget v11, p1, Lcom/android/settings/vpn2/VpnProfile;->type:I

    packed-switch v11, :pswitch_data_2dc

    .line 502
    :goto_d9
    const/4 v4, 0x0

    .line 503
    .local v4, mtpd:[Ljava/lang/String;
    iget v11, p1, Lcom/android/settings/vpn2/VpnProfile;->type:I

    packed-switch v11, :pswitch_data_2ea

    .line 524
    :goto_df
    new-instance v1, Lcom/android/internal/net/VpnConfig;

    invoke-direct {v1}, Lcom/android/internal/net/VpnConfig;-><init>()V

    .line 525
    .local v1, config:Lcom/android/internal/net/VpnConfig;
    iget-object v11, p1, Lcom/android/settings/vpn2/VpnProfile;->key:Ljava/lang/String;

    iput-object v11, v1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    .line 526
    iput-object v3, v1, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    .line 527
    iget-object v11, p1, Lcom/android/settings/vpn2/VpnProfile;->name:Ljava/lang/String;

    iput-object v11, v1, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    .line 528
    iget-object v11, p1, Lcom/android/settings/vpn2/VpnProfile;->routes:Ljava/lang/String;

    iput-object v11, v1, Lcom/android/internal/net/VpnConfig;->routes:Ljava/lang/String;

    .line 529
    iget-object v11, p1, Lcom/android/settings/vpn2/VpnProfile;->dnsServers:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_108

    .line 530
    iget-object v11, p1, Lcom/android/settings/vpn2/VpnProfile;->dnsServers:Ljava/lang/String;

    const-string v12, " +"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    iput-object v11, v1, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    .line 532
    :cond_108
    iget-object v11, p1, Lcom/android/settings/vpn2/VpnProfile;->searchDomains:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_11e

    .line 533
    iget-object v11, p1, Lcom/android/settings/vpn2/VpnProfile;->searchDomains:Ljava/lang/String;

    const-string v12, " +"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    iput-object v11, v1, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    .line 536
    :cond_11e
    iget-object v11, p0, Lcom/android/settings/vpn2/VpnSettings;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v11, v1, v7, v4}, Landroid/net/IConnectivityManager;->startLegacyVpn(Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 537
    return-void

    .line 471
    .end local v1           #config:Lcom/android/internal/net/VpnConfig;
    .end local v4           #mtpd:[Ljava/lang/String;
    :pswitch_124
    const/4 v11, 0x6

    new-array v7, v11, [Ljava/lang/String;

    .end local v7           #racoon:[Ljava/lang/String;
    const/4 v11, 0x0

    aput-object v3, v7, v11

    const/4 v11, 0x1

    iget-object v12, p1, Lcom/android/settings/vpn2/VpnProfile;->server:Ljava/lang/String;

    aput-object v12, v7, v11

    const/4 v11, 0x2

    const-string v12, "udppsk"

    aput-object v12, v7, v11

    const/4 v11, 0x3

    iget-object v12, p1, Lcom/android/settings/vpn2/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    aput-object v12, v7, v11

    const/4 v11, 0x4

    iget-object v12, p1, Lcom/android/settings/vpn2/VpnProfile;->ipsecSecret:Ljava/lang/String;

    aput-object v12, v7, v11

    const/4 v11, 0x5

    const-string v12, "1701"

    aput-object v12, v7, v11

    .line 475
    .restart local v7       #racoon:[Ljava/lang/String;
    goto :goto_d9

    .line 477
    :pswitch_144
    const/4 v11, 0x7

    new-array v7, v11, [Ljava/lang/String;

    .end local v7           #racoon:[Ljava/lang/String;
    const/4 v11, 0x0

    aput-object v3, v7, v11

    const/4 v11, 0x1

    iget-object v12, p1, Lcom/android/settings/vpn2/VpnProfile;->server:Ljava/lang/String;

    aput-object v12, v7, v11

    const/4 v11, 0x2

    const-string v12, "udprsa"

    aput-object v12, v7, v11

    const/4 v11, 0x3

    aput-object v6, v7, v11

    const/4 v11, 0x4

    aput-object v9, v7, v11

    const/4 v11, 0x5

    aput-object v0, v7, v11

    const/4 v11, 0x6

    const-string v12, "1701"

    aput-object v12, v7, v11

    .line 480
    .restart local v7       #racoon:[Ljava/lang/String;
    goto/16 :goto_d9

    .line 482
    :pswitch_164
    const/16 v11, 0x9

    new-array v7, v11, [Ljava/lang/String;

    .end local v7           #racoon:[Ljava/lang/String;
    const/4 v11, 0x0

    aput-object v3, v7, v11

    const/4 v11, 0x1

    iget-object v12, p1, Lcom/android/settings/vpn2/VpnProfile;->server:Ljava/lang/String;

    aput-object v12, v7, v11

    const/4 v11, 0x2

    const-string v12, "xauthpsk"

    aput-object v12, v7, v11

    const/4 v11, 0x3

    iget-object v12, p1, Lcom/android/settings/vpn2/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    aput-object v12, v7, v11

    const/4 v11, 0x4

    iget-object v12, p1, Lcom/android/settings/vpn2/VpnProfile;->ipsecSecret:Ljava/lang/String;

    aput-object v12, v7, v11

    const/4 v11, 0x5

    iget-object v12, p1, Lcom/android/settings/vpn2/VpnProfile;->username:Ljava/lang/String;

    aput-object v12, v7, v11

    const/4 v11, 0x6

    iget-object v12, p1, Lcom/android/settings/vpn2/VpnProfile;->password:Ljava/lang/String;

    aput-object v12, v7, v11

    const/4 v11, 0x7

    const-string v12, ""

    aput-object v12, v7, v11

    const/16 v11, 0x8

    aput-object v2, v7, v11

    .line 486
    .restart local v7       #racoon:[Ljava/lang/String;
    goto/16 :goto_d9

    .line 488
    :pswitch_194
    const/16 v11, 0xa

    new-array v7, v11, [Ljava/lang/String;

    .end local v7           #racoon:[Ljava/lang/String;
    const/4 v11, 0x0

    aput-object v3, v7, v11

    const/4 v11, 0x1

    iget-object v12, p1, Lcom/android/settings/vpn2/VpnProfile;->server:Ljava/lang/String;

    aput-object v12, v7, v11

    const/4 v11, 0x2

    const-string v12, "xauthrsa"

    aput-object v12, v7, v11

    const/4 v11, 0x3

    aput-object v6, v7, v11

    const/4 v11, 0x4

    aput-object v9, v7, v11

    const/4 v11, 0x5

    aput-object v0, v7, v11

    const/4 v11, 0x6

    iget-object v12, p1, Lcom/android/settings/vpn2/VpnProfile;->username:Ljava/lang/String;

    aput-object v12, v7, v11

    const/4 v11, 0x7

    iget-object v12, p1, Lcom/android/settings/vpn2/VpnProfile;->password:Ljava/lang/String;

    aput-object v12, v7, v11

    const/16 v11, 0x8

    const-string v12, ""

    aput-object v12, v7, v11

    const/16 v11, 0x9

    aput-object v2, v7, v11

    .line 492
    .restart local v7       #racoon:[Ljava/lang/String;
    goto/16 :goto_d9

    .line 494
    :pswitch_1c4
    const/16 v11, 0x8

    new-array v7, v11, [Ljava/lang/String;

    .end local v7           #racoon:[Ljava/lang/String;
    const/4 v11, 0x0

    aput-object v3, v7, v11

    const/4 v11, 0x1

    iget-object v12, p1, Lcom/android/settings/vpn2/VpnProfile;->server:Ljava/lang/String;

    aput-object v12, v7, v11

    const/4 v11, 0x2

    const-string v12, "hybridrsa"

    aput-object v12, v7, v11

    const/4 v11, 0x3

    aput-object v0, v7, v11

    const/4 v11, 0x4

    iget-object v12, p1, Lcom/android/settings/vpn2/VpnProfile;->username:Ljava/lang/String;

    aput-object v12, v7, v11

    const/4 v11, 0x5

    iget-object v12, p1, Lcom/android/settings/vpn2/VpnProfile;->password:Ljava/lang/String;

    aput-object v12, v7, v11

    const/4 v11, 0x6

    const-string v12, ""

    aput-object v12, v7, v11

    const/4 v11, 0x7

    aput-object v2, v7, v11

    .restart local v7       #racoon:[Ljava/lang/String;
    goto/16 :goto_d9

    .line 505
    .restart local v4       #mtpd:[Ljava/lang/String;
    :pswitch_1ec
    const/16 v11, 0x14

    new-array v4, v11, [Ljava/lang/String;

    .end local v4           #mtpd:[Ljava/lang/String;
    const/4 v11, 0x0

    aput-object v3, v4, v11

    const/4 v11, 0x1

    const-string v12, "pptp"

    aput-object v12, v4, v11

    const/4 v11, 0x2

    iget-object v12, p1, Lcom/android/settings/vpn2/VpnProfile;->server:Ljava/lang/String;

    aput-object v12, v4, v11

    const/4 v11, 0x3

    const-string v12, "1723"

    aput-object v12, v4, v11

    const/4 v11, 0x4

    const-string v12, "name"

    aput-object v12, v4, v11

    const/4 v11, 0x5

    iget-object v12, p1, Lcom/android/settings/vpn2/VpnProfile;->username:Ljava/lang/String;

    aput-object v12, v4, v11

    const/4 v11, 0x6

    const-string v12, "password"

    aput-object v12, v4, v11

    const/4 v11, 0x7

    iget-object v12, p1, Lcom/android/settings/vpn2/VpnProfile;->password:Ljava/lang/String;

    aput-object v12, v4, v11

    const/16 v11, 0x8

    const-string v12, "linkname"

    aput-object v12, v4, v11

    const/16 v11, 0x9

    const-string v12, "vpn"

    aput-object v12, v4, v11

    const/16 v11, 0xa

    const-string v12, "refuse-eap"

    aput-object v12, v4, v11

    const/16 v11, 0xb

    const-string v12, "nodefaultroute"

    aput-object v12, v4, v11

    const/16 v11, 0xc

    const-string v12, "usepeerdns"

    aput-object v12, v4, v11

    const/16 v11, 0xd

    const-string v12, "idle"

    aput-object v12, v4, v11

    const/16 v11, 0xe

    const-string v12, "1800"

    aput-object v12, v4, v11

    const/16 v11, 0xf

    const-string v12, "mtu"

    aput-object v12, v4, v11

    const/16 v11, 0x10

    const-string v12, "1400"

    aput-object v12, v4, v11

    const/16 v11, 0x11

    const-string v12, "mru"

    aput-object v12, v4, v11

    const/16 v11, 0x12

    const-string v12, "1400"

    aput-object v12, v4, v11

    const/16 v12, 0x13

    iget-boolean v11, p1, Lcom/android/settings/vpn2/VpnProfile;->mppe:Z

    if-eqz v11, :cond_264

    const-string v11, "+mppe"

    :goto_260
    aput-object v11, v4, v12

    .line 512
    .restart local v4       #mtpd:[Ljava/lang/String;
    goto/16 :goto_df

    .line 505
    .end local v4           #mtpd:[Ljava/lang/String;
    :cond_264
    const-string v11, "nomppe"

    goto :goto_260

    .line 515
    .restart local v4       #mtpd:[Ljava/lang/String;
    :pswitch_267
    const/16 v11, 0x14

    new-array v4, v11, [Ljava/lang/String;

    .end local v4           #mtpd:[Ljava/lang/String;
    const/4 v11, 0x0

    aput-object v3, v4, v11

    const/4 v11, 0x1

    const-string v12, "l2tp"

    aput-object v12, v4, v11

    const/4 v11, 0x2

    iget-object v12, p1, Lcom/android/settings/vpn2/VpnProfile;->server:Ljava/lang/String;

    aput-object v12, v4, v11

    const/4 v11, 0x3

    const-string v12, "1701"

    aput-object v12, v4, v11

    const/4 v11, 0x4

    iget-object v12, p1, Lcom/android/settings/vpn2/VpnProfile;->l2tpSecret:Ljava/lang/String;

    aput-object v12, v4, v11

    const/4 v11, 0x5

    const-string v12, "name"

    aput-object v12, v4, v11

    const/4 v11, 0x6

    iget-object v12, p1, Lcom/android/settings/vpn2/VpnProfile;->username:Ljava/lang/String;

    aput-object v12, v4, v11

    const/4 v11, 0x7

    const-string v12, "password"

    aput-object v12, v4, v11

    const/16 v11, 0x8

    iget-object v12, p1, Lcom/android/settings/vpn2/VpnProfile;->password:Ljava/lang/String;

    aput-object v12, v4, v11

    const/16 v11, 0x9

    const-string v12, "linkname"

    aput-object v12, v4, v11

    const/16 v11, 0xa

    const-string v12, "vpn"

    aput-object v12, v4, v11

    const/16 v11, 0xb

    const-string v12, "refuse-eap"

    aput-object v12, v4, v11

    const/16 v11, 0xc

    const-string v12, "nodefaultroute"

    aput-object v12, v4, v11

    const/16 v11, 0xd

    const-string v12, "usepeerdns"

    aput-object v12, v4, v11

    const/16 v11, 0xe

    const-string v12, "idle"

    aput-object v12, v4, v11

    const/16 v11, 0xf

    const-string v12, "1800"

    aput-object v12, v4, v11

    const/16 v11, 0x10

    const-string v12, "mtu"

    aput-object v12, v4, v11

    const/16 v11, 0x11

    const-string v12, "1400"

    aput-object v12, v4, v11

    const/16 v11, 0x12

    const-string v12, "mru"

    aput-object v12, v4, v11

    const/16 v11, 0x13

    const-string v12, "1400"

    aput-object v12, v4, v11

    .restart local v4       #mtpd:[Ljava/lang/String;
    goto/16 :goto_df

    .line 469
    nop

    :pswitch_data_2dc
    .packed-switch 0x1
        :pswitch_124
        :pswitch_144
        :pswitch_164
        :pswitch_194
        :pswitch_1c4
    .end packed-switch

    .line 503
    :pswitch_data_2ea
    .packed-switch 0x0
        :pswitch_1ec
        :pswitch_267
        :pswitch_267
    .end packed-switch
.end method

.method private disconnect(Ljava/lang/String;)V
    .registers 5
    .parameter "key"

    .prologue
    .line 540
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget-object v0, v0, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 542
    :try_start_e
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mService:Landroid/net/IConnectivityManager;

    const-string v1, "[Legacy VPN]"

    const-string v2, "[Legacy VPN]"

    invoke-interface {v0, v1, v2}, Landroid/net/IConnectivityManager;->prepareVpn(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_17} :catch_18

    .line 547
    :cond_17
    :goto_17
    return-void

    .line 543
    :catch_18
    move-exception v0

    goto :goto_17
.end method

.method private getDefaultNetwork()[Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 404
    iget-object v5, p0, Lcom/android/settings/vpn2/VpnSettings;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v5}, Landroid/net/IConnectivityManager;->getActiveLinkProperties()Landroid/net/LinkProperties;

    move-result-object v3

    .line 405
    .local v3, network:Landroid/net/LinkProperties;
    if-nez v3, :cond_10

    .line 406
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Network is not available"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 408
    :cond_10
    invoke-virtual {v3}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    .line 409
    .local v2, interfaze:Ljava/lang/String;
    if-nez v2, :cond_1e

    .line 410
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Cannot get the default interface"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 412
    :cond_1e
    const/4 v0, 0x0

    .line 413
    .local v0, gateway:Ljava/lang/String;
    invoke-virtual {v3}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_49

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/RouteInfo;

    .line 415
    .local v4, route:Landroid/net/RouteInfo;
    invoke-virtual {v4}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v5

    if-eqz v5, :cond_27

    invoke-virtual {v4}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v5

    instance-of v5, v5, Ljava/net/Inet4Address;

    if-eqz v5, :cond_27

    .line 416
    invoke-virtual {v4}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 420
    .end local v4           #route:Landroid/net/RouteInfo;
    :cond_49
    if-nez v0, :cond_53

    .line 421
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Cannot get the default gateway"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 423
    :cond_53
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    return-object v5
.end method

.method private retrieveVpnListFromStorageGB()V
    .registers 19

    .prologue
    .line 116
    new-instance v12, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/vpn2/VpnSettings;->PROFILES_ROOT:Ljava/lang/String;

    invoke-direct {v12, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 117
    .local v12, root:Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    .line 119
    .local v3, dirs:[Ljava/lang/String;
    if-nez v3, :cond_10

    .line 151
    :cond_f
    return-void

    .line 121
    :cond_10
    move-object v1, v3

    .local v1, arr$:[Ljava/lang/String;
    array-length v7, v1

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_13
    if-ge v6, v7, :cond_f

    aget-object v2, v1, v6

    .line 122
    .local v2, dir:Ljava/lang/String;
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v12, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 123
    .local v13, temp_dir:Ljava/io/File;
    new-instance v5, Ljava/io/File;

    const-string v15, ".pobj"

    invoke-direct {v5, v13, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 124
    .local v5, f:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_2c

    .line 121
    :cond_29
    :goto_29
    add-int/lit8 v6, v6, 0x1

    goto :goto_13

    .line 126
    :cond_2c
    new-instance v14, Landroid/app/enterprise/VpnPolicy;

    invoke-direct {v14}, Landroid/app/enterprise/VpnPolicy;-><init>()V

    .line 127
    .local v14, vp:Landroid/app/enterprise/VpnPolicy;
    invoke-virtual {v14, v2, v5}, Landroid/app/enterprise/VpnPolicy;->retrieveVpnFromStorageGB(Ljava/lang/String;Ljava/io/File;)V

    .line 129
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 130
    .local v8, millis:J
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/vpn2/VpnSettings;->filter:Landroid/content/IntentFilter;

    const-string v16, "com.android.server.enterprise.VPN_NEW_PROFILE"

    invoke-virtual/range {v15 .. v16}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 132
    new-instance v10, Lcom/android/settings/vpn2/VpnProfile;

    invoke-static {v8, v9}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v10, v15}, Lcom/android/settings/vpn2/VpnProfile;-><init>(Ljava/lang/String;)V

    .line 134
    .local v10, profile:Lcom/android/settings/vpn2/VpnProfile;
    iget-object v15, v14, Landroid/app/enterprise/VpnPolicy;->name:Ljava/lang/String;

    iput-object v15, v10, Lcom/android/settings/vpn2/VpnProfile;->name:Ljava/lang/String;

    .line 135
    iget v15, v14, Landroid/app/enterprise/VpnPolicy;->type:I

    iput v15, v10, Lcom/android/settings/vpn2/VpnProfile;->type:I

    .line 136
    iget-object v15, v14, Landroid/app/enterprise/VpnPolicy;->server:Ljava/lang/String;

    iput-object v15, v10, Lcom/android/settings/vpn2/VpnProfile;->server:Ljava/lang/String;

    .line 137
    iget-object v15, v14, Landroid/app/enterprise/VpnPolicy;->DomainSuffices:Ljava/lang/String;

    iput-object v15, v10, Lcom/android/settings/vpn2/VpnProfile;->searchDomains:Ljava/lang/String;

    .line 139
    const-string v15, "enterprise_policy"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings/vpn2/VpnSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 142
    .local v4, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v4}, Landroid/app/enterprise/EnterpriseDeviceManager;->getVpnPolicy()Landroid/app/enterprise/VpnPolicy;

    move-result-object v15

    iget-object v0, v10, Lcom/android/settings/vpn2/VpnProfile;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/app/enterprise/VpnPolicy;->isAdminProfile(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_29

    .line 143
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "VPN_"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v10, Lcom/android/settings/vpn2/VpnProfile;->key:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v10}, Lcom/android/settings/vpn2/VpnProfile;->encode()[B

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Landroid/security/KeyStore;->put(Ljava/lang/String;[B)Z

    move-result v11

    .line 144
    .local v11, ret:Z
    const/4 v15, 0x1

    if-ne v11, v15, :cond_29

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_29

    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_29

    .line 146
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 147
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    goto/16 :goto_29
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 8
    .parameter "message"

    .prologue
    const/4 v5, 0x0

    .line 376
    iget-object v2, p0, Lcom/android/settings/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 378
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->isResumed()Z

    move-result v2

    if-eqz v2, :cond_47

    .line 380
    :try_start_c
    iget-object v2, p0, Lcom/android/settings/vpn2/VpnSettings;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v2}, Landroid/net/IConnectivityManager;->getLegacyVpnInfo()Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v0

    .line 381
    .local v0, info:Lcom/android/internal/net/LegacyVpnInfo;
    iget-object v2, p0, Lcom/android/settings/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    if-eqz v2, :cond_2b

    .line 382
    iget-object v2, p0, Lcom/android/settings/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/settings/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget-object v3, v3, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;

    .line 383
    .local v1, preference:Lcom/android/settings/vpn2/VpnSettings$VpnPreference;
    if-eqz v1, :cond_28

    .line 384
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;->update(I)V

    .line 386
    :cond_28
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/settings/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    .line 388
    .end local v1           #preference:Lcom/android/settings/vpn2/VpnSettings$VpnPreference;
    :cond_2b
    if-eqz v0, :cond_40

    .line 389
    iget-object v2, p0, Lcom/android/settings/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    iget-object v3, v0, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;

    .line 390
    .restart local v1       #preference:Lcom/android/settings/vpn2/VpnSettings$VpnPreference;
    if-eqz v1, :cond_40

    .line 391
    iget v2, v0, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    invoke-virtual {v1, v2}, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;->update(I)V

    .line 392
    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_40} :catch_49

    .line 398
    .end local v0           #info:Lcom/android/internal/net/LegacyVpnInfo;
    .end local v1           #preference:Lcom/android/settings/vpn2/VpnSettings$VpnPreference;
    :cond_40
    :goto_40
    iget-object v2, p0, Lcom/android/settings/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 400
    :cond_47
    const/4 v2, 0x1

    return v2

    .line 395
    :catch_49
    move-exception v2

    goto :goto_40
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 10
    .parameter "dialog"
    .parameter "button"

    .prologue
    .line 259
    const/4 v4, -0x1

    if-ne p2, v4, :cond_5a

    .line 261
    iget-object v4, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    invoke-virtual {v4}, Lcom/android/settings/vpn2/VpnDialog;->getProfile()Lcom/android/settings/vpn2/VpnProfile;

    move-result-object v3

    .line 263
    .local v3, profile:Lcom/android/settings/vpn2/VpnProfile;
    const-string v4, "enterprise_policy"

    invoke-virtual {p0, v4}, Lcom/android/settings/vpn2/VpnSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 265
    .local v1, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getVpnPolicy()Landroid/app/enterprise/VpnPolicy;

    move-result-object v4

    iget-object v5, v3, Lcom/android/settings/vpn2/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/app/enterprise/VpnPolicy;->isAdminProfile(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3b

    .line 266
    iget-object v4, p0, Lcom/android/settings/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "VPN_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/android/settings/vpn2/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/settings/vpn2/VpnProfile;->encode()[B

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/security/KeyStore;->put(Ljava/lang/String;[B)Z

    .line 271
    :cond_3b
    iget-object v4, p0, Lcom/android/settings/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    iget-object v5, v3, Lcom/android/settings/vpn2/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;

    .line 272
    .local v2, preference:Lcom/android/settings/vpn2/VpnSettings$VpnPreference;
    if-eqz v2, :cond_5b

    .line 273
    iget-object v4, v3, Lcom/android/settings/vpn2/VpnProfile;->key:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/settings/vpn2/VpnSettings;->disconnect(Ljava/lang/String;)V

    .line 274
    invoke-virtual {v2, v3}, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;->update(Lcom/android/settings/vpn2/VpnProfile;)V

    .line 282
    :goto_4f
    iget-object v4, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    invoke-virtual {v4}, Lcom/android/settings/vpn2/VpnDialog;->isEditing()Z

    move-result v4

    if-nez v4, :cond_5a

    .line 284
    :try_start_57
    invoke-direct {p0, v3}, Lcom/android/settings/vpn2/VpnSettings;->connect(Lcom/android/settings/vpn2/VpnProfile;)V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_5a} :catch_73

    .line 290
    .end local v1           #edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v2           #preference:Lcom/android/settings/vpn2/VpnSettings$VpnPreference;
    .end local v3           #profile:Lcom/android/settings/vpn2/VpnProfile;
    :cond_5a
    :goto_5a
    return-void

    .line 276
    .restart local v1       #edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    .restart local v2       #preference:Lcom/android/settings/vpn2/VpnSettings$VpnPreference;
    .restart local v3       #profile:Lcom/android/settings/vpn2/VpnProfile;
    :cond_5b
    new-instance v2, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;

    .end local v2           #preference:Lcom/android/settings/vpn2/VpnSettings$VpnPreference;
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, p0, v4, v3}, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;-><init>(Lcom/android/settings/vpn2/VpnSettings;Landroid/content/Context;Lcom/android/settings/vpn2/VpnProfile;)V

    .line 277
    .restart local v2       #preference:Lcom/android/settings/vpn2/VpnSettings$VpnPreference;
    iget-object v4, p0, Lcom/android/settings/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    iget-object v5, v3, Lcom/android/settings/vpn2/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_4f

    .line 285
    :catch_73
    move-exception v0

    .line 286
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "VpnSettings"

    const-string v5, "connect"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5a
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 7
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 314
    iget-object v3, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    if-eqz v3, :cond_e

    .line 315
    const-string v2, "VpnSettings"

    const-string v3, "onContextItemSelected() is called when mDialog != null"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :goto_d
    return v1

    .line 319
    :cond_e
    iget-object v3, p0, Lcom/android/settings/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/android/settings/vpn2/VpnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;

    .line 320
    .local v0, preference:Lcom/android/settings/vpn2/VpnSettings$VpnPreference;
    if-nez v0, :cond_22

    .line 321
    const-string v2, "VpnSettings"

    const-string v3, "onContextItemSelected() is called but no preference is found"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 325
    :cond_22
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_74

    goto :goto_d

    .line 327
    :pswitch_2a
    new-instance v1, Lcom/android/settings/vpn2/VpnDialog;

    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;->getProfile()Lcom/android/settings/vpn2/VpnProfile;

    move-result-object v4

    invoke-direct {v1, v3, p0, v4, v2}, Lcom/android/settings/vpn2/VpnDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings/vpn2/VpnProfile;Z)V

    iput-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    .line 328
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    invoke-virtual {v1, p0}, Lcom/android/settings/vpn2/VpnDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 329
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    invoke-virtual {v1}, Lcom/android/settings/vpn2/VpnDialog;->show()V

    move v1, v2

    .line 330
    goto :goto_d

    .line 332
    :pswitch_45
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/settings/vpn2/VpnSettings;->disconnect(Ljava/lang/String;)V

    .line 333
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 334
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/settings/vpn2/VpnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VPN_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/vpn2/VpnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/security/KeyStore;->delete(Ljava/lang/String;)Z

    move v1, v2

    .line 336
    goto :goto_d

    .line 325
    :pswitch_data_74
    .packed-switch 0x7f0b064c
        :pswitch_2a
        :pswitch_45
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedState"

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/settings/vpn2/VpnSettings;->retrieveVpnListFromStorageGB()V

    .line 99
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 100
    const v1, 0x7f050049

    invoke-virtual {p0, v1}, Lcom/android/settings/vpn2/VpnSettings;->addPreferencesFromResource(I)V

    .line 101
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 103
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->filter:Landroid/content/IntentFilter;

    const-string v2, "com.android.server.enterprise.VPN_NEW_PROFILE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 105
    if-eqz p1, :cond_40

    .line 106
    const-string v1, "VpnKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "VpnProfile"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/vpn2/VpnProfile;->decode(Ljava/lang/String;[B)Lcom/android/settings/vpn2/VpnProfile;

    move-result-object v0

    .line 108
    .local v0, profile:Lcom/android/settings/vpn2/VpnProfile;
    if-eqz v0, :cond_40

    .line 109
    new-instance v1, Lcom/android/settings/vpn2/VpnDialog;

    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "VpnEditing"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-direct {v1, v2, p0, v0, v3}, Lcom/android/settings/vpn2/VpnDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings/vpn2/VpnProfile;Z)V

    iput-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    .line 113
    .end local v0           #profile:Lcom/android/settings/vpn2/VpnProfile;
    :cond_40
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 11
    .parameter "menu"
    .parameter "view"
    .parameter "info"

    .prologue
    const v6, 0x7f0b064d

    const v5, 0x7f0b064c

    const/4 v4, 0x0

    .line 294
    iget-object v2, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    if-eqz v2, :cond_13

    .line 295
    const-string v2, "VpnSettings"

    const-string v3, "onCreateContextMenu() is called when mDialog != null"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    .end local p3
    :cond_12
    :goto_12
    return-void

    .line 299
    .restart local p3
    :cond_13
    instance-of v2, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v2, :cond_12

    .line 300
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getListView()Landroid/widget/ListView;

    move-result-object v2

    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .end local p3
    iget v3, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 302
    .local v0, preference:Landroid/preference/Preference;
    instance-of v2, v0, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;

    if-eqz v2, :cond_12

    .line 303
    check-cast v0, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;

    .end local v0           #preference:Landroid/preference/Preference;
    invoke-virtual {v0}, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;->getProfile()Lcom/android/settings/vpn2/VpnProfile;

    move-result-object v1

    .line 304
    .local v1, profile:Lcom/android/settings/vpn2/VpnProfile;
    iget-object v2, v1, Lcom/android/settings/vpn2/VpnProfile;->key:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/settings/vpn2/VpnSettings;->mSelectedKey:Ljava/lang/String;

    .line 305
    iget-object v2, v1, Lcom/android/settings/vpn2/VpnProfile;->name:Ljava/lang/String;

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 306
    invoke-interface {p1, v4, v5, v4, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 307
    invoke-interface {p1, v4, v6, v4, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_12
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter "dialog"

    .prologue
    .line 254
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    .line 255
    return-void
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 233
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 236
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 240
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    if-eqz v0, :cond_1b

    .line 241
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/vpn2/VpnDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 242
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    invoke-virtual {v0}, Lcom/android/settings/vpn2/VpnDialog;->dismiss()V

    .line 246
    :cond_1b
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 247
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn2/VpnSettings;->unregisterForContextMenu(Landroid/view/View;)V

    .line 249
    :cond_28
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 10
    .parameter "preference"

    .prologue
    const/4 v7, 0x1

    .line 343
    iget-object v3, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    if-eqz v3, :cond_d

    .line 344
    const-string v3, "VpnSettings"

    const-string v4, "onPreferenceClick() is called when mDialog != null"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    .end local p1
    :goto_c
    return v7

    .line 348
    .restart local p1
    :cond_d
    instance-of v3, p1, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;

    if-eqz v3, :cond_4e

    .line 349
    check-cast p1, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;

    .end local p1
    invoke-virtual {p1}, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;->getProfile()Lcom/android/settings/vpn2/VpnProfile;

    move-result-object v2

    .line 350
    .local v2, profile:Lcom/android/settings/vpn2/VpnProfile;
    iget-object v3, p0, Lcom/android/settings/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    if-eqz v3, :cond_37

    iget-object v3, v2, Lcom/android/settings/vpn2/VpnProfile;->key:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget-object v4, v4, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    iget-object v3, p0, Lcom/android/settings/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget v3, v3, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_37

    .line 353
    :try_start_2e
    iget-object v3, p0, Lcom/android/settings/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget-object v3, v3, Lcom/android/internal/net/LegacyVpnInfo;->intent:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->send()V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_35} :catch_36

    goto :goto_c

    .line 355
    :catch_36
    move-exception v3

    .line 359
    :cond_37
    new-instance v3, Lcom/android/settings/vpn2/VpnDialog;

    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, p0, v2, v5}, Lcom/android/settings/vpn2/VpnDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings/vpn2/VpnProfile;Z)V

    iput-object v3, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    .line 369
    .end local v2           #profile:Lcom/android/settings/vpn2/VpnProfile;
    :goto_43
    iget-object v3, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    invoke-virtual {v3, p0}, Lcom/android/settings/vpn2/VpnDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 370
    iget-object v3, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    invoke-virtual {v3}, Lcom/android/settings/vpn2/VpnDialog;->show()V

    goto :goto_c

    .line 362
    .restart local p1
    :cond_4e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 363
    .local v0, millis:J
    :goto_52
    iget-object v3, p0, Lcom/android/settings/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_62

    .line 364
    const-wide/16 v3, 0x1

    add-long/2addr v0, v3

    goto :goto_52

    .line 366
    :cond_62
    new-instance v3, Lcom/android/settings/vpn2/VpnDialog;

    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    new-instance v5, Lcom/android/settings/vpn2/VpnProfile;

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/settings/vpn2/VpnProfile;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4, p0, v5, v7}, Lcom/android/settings/vpn2/VpnDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings/vpn2/VpnProfile;Z)V

    iput-object v3, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    goto :goto_43
.end method

.method public onResume()V
    .registers 14

    .prologue
    const/4 v9, 0x0

    .line 167
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 170
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/vpn2/VpnSettings;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v12, p0, Lcom/android/settings/vpn2/VpnSettings;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v10, v11, v12}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 174
    iget-object v10, p0, Lcom/android/settings/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v10}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v10

    sget-object v11, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-eq v10, v11, :cond_34

    .line 175
    iget-boolean v10, p0, Lcom/android/settings/vpn2/VpnSettings;->mUnlocking:Z

    if-nez v10, :cond_30

    .line 177
    invoke-static {}, Landroid/security/Credentials;->getInstance()Landroid/security/Credentials;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/security/Credentials;->unlock(Landroid/content/Context;)V

    .line 182
    :goto_28
    iget-boolean v10, p0, Lcom/android/settings/vpn2/VpnSettings;->mUnlocking:Z

    if-nez v10, :cond_2d

    const/4 v9, 0x1

    :cond_2d
    iput-boolean v9, p0, Lcom/android/settings/vpn2/VpnSettings;->mUnlocking:Z

    .line 229
    :goto_2f
    return-void

    .line 180
    :cond_30
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->finishFragment()V

    goto :goto_28

    .line 187
    :cond_34
    iput-boolean v9, p0, Lcom/android/settings/vpn2/VpnSettings;->mUnlocking:Z

    .line 192
    iget-object v10, p0, Lcom/android/settings/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    if-nez v10, :cond_c6

    .line 193
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Lcom/android/settings/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    .line 194
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 196
    .local v2, group:Landroid/preference/PreferenceGroup;
    iget-object v10, p0, Lcom/android/settings/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    const-string v11, "VPN_"

    invoke-virtual {v10, v11}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 197
    .local v5, keys:[Ljava/lang/String;
    if-eqz v5, :cond_bd

    array-length v10, v5

    if-lez v10, :cond_bd

    .line 198
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 200
    .local v1, context:Landroid/content/Context;
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_59
    if-ge v3, v6, :cond_bd

    aget-object v4, v0, v3

    .line 201
    .local v4, key:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/settings/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "VPN_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v10

    invoke-static {v4, v10}, Lcom/android/settings/vpn2/VpnProfile;->decode(Ljava/lang/String;[B)Lcom/android/settings/vpn2/VpnProfile;

    move-result-object v8

    .line 203
    .local v8, profile:Lcom/android/settings/vpn2/VpnProfile;
    if-nez v8, :cond_af

    .line 204
    const-string v10, "VpnSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "bad profile: key = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v10, p0, Lcom/android/settings/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "VPN_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/security/KeyStore;->delete(Ljava/lang/String;)Z

    .line 200
    :goto_ac
    add-int/lit8 v3, v3, 0x1

    goto :goto_59

    .line 207
    :cond_af
    new-instance v7, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;

    invoke-direct {v7, p0, v1, v8}, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;-><init>(Lcom/android/settings/vpn2/VpnSettings;Landroid/content/Context;Lcom/android/settings/vpn2/VpnProfile;)V

    .line 208
    .local v7, preference:Lcom/android/settings/vpn2/VpnSettings$VpnPreference;
    iget-object v10, p0, Lcom/android/settings/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    invoke-virtual {v10, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    invoke-virtual {v2, v7}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_ac

    .line 213
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #context:Landroid/content/Context;
    .end local v3           #i$:I
    .end local v4           #key:Ljava/lang/String;
    .end local v6           #len$:I
    .end local v7           #preference:Lcom/android/settings/vpn2/VpnSettings$VpnPreference;
    .end local v8           #profile:Lcom/android/settings/vpn2/VpnProfile;
    :cond_bd
    const-string v10, "add_network"

    invoke-virtual {v2, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    invoke-virtual {v10, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 216
    .end local v2           #group:Landroid/preference/PreferenceGroup;
    .end local v5           #keys:[Ljava/lang/String;
    :cond_c6
    iget-object v10, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    if-eqz v10, :cond_d4

    .line 217
    iget-object v10, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    invoke-virtual {v10, p0}, Lcom/android/settings/vpn2/VpnDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 218
    iget-object v10, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    invoke-virtual {v10}, Lcom/android/settings/vpn2/VpnDialog;->show()V

    .line 222
    :cond_d4
    iget-object v10, p0, Lcom/android/settings/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    if-nez v10, :cond_df

    .line 223
    new-instance v10, Landroid/os/Handler;

    invoke-direct {v10, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v10, p0, Lcom/android/settings/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    .line 225
    :cond_df
    iget-object v10, p0, Lcom/android/settings/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    invoke-virtual {v10, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 228
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getListView()Landroid/widget/ListView;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/settings/vpn2/VpnSettings;->registerForContextMenu(Landroid/view/View;)V

    goto/16 :goto_2f
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedState"

    .prologue
    .line 156
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    if-eqz v1, :cond_25

    .line 157
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    invoke-virtual {v1}, Lcom/android/settings/vpn2/VpnDialog;->getProfile()Lcom/android/settings/vpn2/VpnProfile;

    move-result-object v0

    .line 158
    .local v0, profile:Lcom/android/settings/vpn2/VpnProfile;
    const-string v1, "VpnKey"

    iget-object v2, v0, Lcom/android/settings/vpn2/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v1, "VpnProfile"

    invoke-virtual {v0}, Lcom/android/settings/vpn2/VpnProfile;->encode()[B

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 160
    const-string v1, "VpnEditing"

    iget-object v2, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    invoke-virtual {v2}, Lcom/android/settings/vpn2/VpnDialog;->isEditing()Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 163
    .end local v0           #profile:Lcom/android/settings/vpn2/VpnProfile;
    :cond_25
    return-void
.end method
