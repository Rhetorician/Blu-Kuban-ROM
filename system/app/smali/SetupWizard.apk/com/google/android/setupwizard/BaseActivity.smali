.class public Lcom/google/android/setupwizard/BaseActivity;
.super Lcom/google/android/setupwizard/NetworkMonitoringActivity;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/setupwizard/BaseActivity$ProportionalOuterFrame;,
        Lcom/google/android/setupwizard/BaseActivity$ProvisioningMode;
    }
.end annotation


# static fields
.field protected static final LOCAL_LOGV:Z

.field private static mForceCdma:Z

.field protected static mUserData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final sWirelessSettingsIntent:Landroid/content/Intent;


# instance fields
.field private mAllNetworkSetupSkipped:Z

.field protected mAllowBackHardKey:Z

.field private final mBackButtonClickListener:Landroid/view/View$OnClickListener;

.field protected mBootstrapMode:Ljava/lang/Boolean;

.field private mEnableBypass:Z

.field private mFrameLayout:Landroid/widget/FrameLayout;

.field private mIsFirstRun:Z

.field private mIsHomeActivity:Z

.field private mIsPessimisticMode:Z

.field private final mOnDefaultButtonClicked:Landroid/view/View$OnClickListener;

.field private mOtaspMode:I

.field private final mOtaspPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPhoneServiceState:I

.field private mPrimaryButton:Landroid/view/View;

.field private mProvisioningMode:Lcom/google/android/setupwizard/BaseActivity$ProvisioningMode;

.field mScreenSize:I

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mTelephonyInterface:Lcom/android/internal/telephony/ITelephony;

.field private mTouchEventState:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 82
    const-string v0, "SetupWizard"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/setupwizard/BaseActivity;->LOCAL_LOGV:Z

    .line 86
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.Settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/google/android/setupwizard/BaseActivity;->sWirelessSettingsIntent:Landroid/content/Intent;

    .line 91
    const-string v0, "setupwizard.force_cdma"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/setupwizard/BaseActivity;->mForceCdma:Z

    .line 307
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/setupwizard/BaseActivity;->mUserData:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Lcom/google/android/setupwizard/NetworkMonitoringActivity;-><init>()V

    .line 290
    iput v1, p0, Lcom/google/android/setupwizard/BaseActivity;->mTouchEventState:I

    .line 292
    iput-boolean v1, p0, Lcom/google/android/setupwizard/BaseActivity;->mIsHomeActivity:Z

    .line 293
    sget-object v0, Lcom/google/android/setupwizard/BaseActivity$ProvisioningMode;->OPTIONAL:Lcom/google/android/setupwizard/BaseActivity$ProvisioningMode;

    iput-object v0, p0, Lcom/google/android/setupwizard/BaseActivity;->mProvisioningMode:Lcom/google/android/setupwizard/BaseActivity$ProvisioningMode;

    .line 303
    iput-boolean v2, p0, Lcom/google/android/setupwizard/BaseActivity;->mAllNetworkSetupSkipped:Z

    .line 317
    iput-boolean v1, p0, Lcom/google/android/setupwizard/BaseActivity;->mEnableBypass:Z

    .line 326
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/setupwizard/BaseActivity;->mBootstrapMode:Ljava/lang/Boolean;

    .line 329
    iput v2, p0, Lcom/google/android/setupwizard/BaseActivity;->mPhoneServiceState:I

    .line 332
    iput v1, p0, Lcom/google/android/setupwizard/BaseActivity;->mOtaspMode:I

    .line 344
    new-instance v0, Lcom/google/android/setupwizard/BaseActivity$1;

    invoke-direct {v0, p0}, Lcom/google/android/setupwizard/BaseActivity$1;-><init>(Lcom/google/android/setupwizard/BaseActivity;)V

    iput-object v0, p0, Lcom/google/android/setupwizard/BaseActivity;->mOtaspPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 437
    new-instance v0, Lcom/google/android/setupwizard/BaseActivity$2;

    invoke-direct {v0, p0}, Lcom/google/android/setupwizard/BaseActivity$2;-><init>(Lcom/google/android/setupwizard/BaseActivity;)V

    iput-object v0, p0, Lcom/google/android/setupwizard/BaseActivity;->mBackButtonClickListener:Landroid/view/View$OnClickListener;

    .line 474
    new-instance v0, Lcom/google/android/setupwizard/BaseActivity$3;

    invoke-direct {v0, p0}, Lcom/google/android/setupwizard/BaseActivity$3;-><init>(Lcom/google/android/setupwizard/BaseActivity;)V

    iput-object v0, p0, Lcom/google/android/setupwizard/BaseActivity;->mOnDefaultButtonClicked:Landroid/view/View$OnClickListener;

    .line 1694
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/setupwizard/BaseActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 78
    iget v0, p0, Lcom/google/android/setupwizard/BaseActivity;->mPhoneServiceState:I

    return v0
.end method

.method static synthetic access$002(Lcom/google/android/setupwizard/BaseActivity;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput p1, p0, Lcom/google/android/setupwizard/BaseActivity;->mPhoneServiceState:I

    return p1
.end method

.method static synthetic access$100(Lcom/google/android/setupwizard/BaseActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 78
    iget v0, p0, Lcom/google/android/setupwizard/BaseActivity;->mOtaspMode:I

    return v0
.end method

.method static synthetic access$102(Lcom/google/android/setupwizard/BaseActivity;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput p1, p0, Lcom/google/android/setupwizard/BaseActivity;->mOtaspMode:I

    return p1
.end method

.method static synthetic access$200(Lcom/google/android/setupwizard/BaseActivity;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/setupwizard/BaseActivity;->mPrimaryButton:Landroid/view/View;

    return-object v0
.end method

.method private allNetworkSetupSkipped()Z
    .registers 2

    .prologue
    .line 1565
    iget-boolean v0, p0, Lcom/google/android/setupwizard/BaseActivity;->mAllNetworkSetupSkipped:Z

    return v0
.end method

.method private getLteOnCdmaMode()I
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 1609
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/google/android/setupwizard/BaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1613
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLteOnCdmaMode()I

    move-result v1

    if-ne v1, v2, :cond_18

    .line 1615
    :cond_11
    const-string v0, "telephony.lteOnCdmaDevice"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1618
    :goto_17
    return v0

    :cond_18
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLteOnCdmaMode()I

    move-result v0

    goto :goto_17
.end method

.method private hasNoAccounts()Z
    .registers 3

    .prologue
    .line 1662
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.google"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private launchAccountSetup()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 1399
    sget-boolean v0, Lcom/google/android/setupwizard/BaseActivity;->LOCAL_LOGV:Z

    if-eqz v0, :cond_c

    const-string v0, "SetupWizard"

    const-string v1, "startAccountSetup()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    :cond_c
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.accounts.AccountIntro"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1401
    const-string v1, "allowSkip"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1402
    const/16 v1, 0x2717

    invoke-direct {p0, v0, v1}, Lcom/google/android/setupwizard/BaseActivity;->startFirstRunActivityForResult(Landroid/content/Intent;I)V

    .line 1403
    sget-object v0, Lcom/google/android/setupwizard/BaseActivity;->mUserData:Ljava/util/HashMap;

    const-string v1, "accountSetupLaunched"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1404
    return-void
.end method

.method private launchActivationActivity()V
    .registers 8

    .prologue
    const v6, 0x7f080001

    const v5, 0x1110023

    const/4 v4, 0x0

    .line 1254
    sget-boolean v0, Lcom/google/android/setupwizard/BaseActivity;->LOCAL_LOGV:Z

    if-eqz v0, :cond_12

    const-string v0, "SetupWizard"

    const-string v1, "doOtasp() E"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    :cond_12
    invoke-virtual {p0}, Lcom/google/android/setupwizard/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1259
    const-string v1, "SetupWizard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "launchActivationActivity() voice: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", lte: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/setupwizard/BaseActivity;->isLTE()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", cdma_always: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mcc: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->mcc:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mnc: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->mnc:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_80

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_b6

    invoke-virtual {p0}, Lcom/google/android/setupwizard/BaseActivity;->isLTE()Z

    move-result v0

    if-nez v0, :cond_b6

    .line 1267
    :cond_80
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.PERFORM_CDMA_PROVISIONING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1272
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1273
    invoke-static {p0, v4, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 1275
    const-string v2, "otasp_result_code_pending_intent"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1277
    const/16 v1, 0x2713

    :try_start_9b
    invoke-direct {p0, v0, v1}, Lcom/google/android/setupwizard/BaseActivity;->startFirstRunActivityForResult(Landroid/content/Intent;I)V
    :try_end_9e
    .catch Landroid/content/ActivityNotFoundException; {:try_start_9b .. :try_end_9e} :catch_aa

    .line 1286
    :goto_9e
    sget-boolean v0, Lcom/google/android/setupwizard/BaseActivity;->LOCAL_LOGV:Z

    if-eqz v0, :cond_a9

    const-string v0, "SetupWizard"

    const-string v1, "doOtasp() X RESULT_OK"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1287
    :cond_a9
    return-void

    .line 1278
    :catch_aa
    move-exception v0

    .line 1279
    const-string v1, "SetupWizard"

    const-string v2, "Failed to launch 10003"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1280
    invoke-virtual {p0}, Lcom/google/android/setupwizard/BaseActivity;->onActivationActivityLaunchFailed()V

    goto :goto_9e

    .line 1283
    :cond_b6
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/setupwizard/ActivationActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1284
    const/16 v1, 0x2712

    invoke-direct {p0, v0, v1}, Lcom/google/android/setupwizard/BaseActivity;->startFirstRunActivityForResult(Landroid/content/Intent;I)V

    goto :goto_9e
.end method

.method private launchDateTimeSetup()V
    .registers 4

    .prologue
    .line 1371
    invoke-virtual {p0}, Lcom/google/android/setupwizard/BaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_time"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1373
    :try_start_a
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1374
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.DateTimeSettingsSetupWizard"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1375
    const-string v1, "extra_initial_auto_datetime_value"

    invoke-virtual {p0}, Lcom/google/android/setupwizard/BaseActivity;->isNetworkConnected()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1376
    const/16 v1, 0x2716

    invoke-direct {p0, v0, v1}, Lcom/google/android/setupwizard/BaseActivity;->startFirstRunActivityForResult(Landroid/content/Intent;I)V
    :try_end_24
    .catch Landroid/content/ActivityNotFoundException; {:try_start_a .. :try_end_24} :catch_25

    .line 1382
    :goto_24
    return-void

    .line 1377
    :catch_25
    move-exception v0

    .line 1379
    const-string v0, "SetupWizard"

    const-string v1, "Can\'t find date/time settings: com.android.settings.DateTimeSettingsSetupWizard"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    invoke-virtual {p0}, Lcom/google/android/setupwizard/BaseActivity;->onDateTimeSetupLaunchFailed()V

    goto :goto_24
.end method

.method private launchDateTimeSetupOrSkip()V
    .registers 2

    .prologue
    .line 1388
    invoke-virtual {p0}, Lcom/google/android/setupwizard/BaseActivity;->timeDateConfigured()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/google/android/setupwizard/BaseActivity;->isPessimisticMode()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1389
    :cond_c
    invoke-direct {p0}, Lcom/google/android/setupwizard/BaseActivity;->launchDateTimeSetup()V

    .line 1393
    :goto_f
    return-void

    .line 1391
    :cond_10
    invoke-virtual {p0}, Lcom/google/android/setupwizard/BaseActivity;->onDateTimeSetupCompleted()V

    goto :goto_f
.end method

.method private launchNameActivity()V
    .registers 5

    .prologue
    .line 1416
    sget-boolean v0, Lcom/google/android/setupwizard/BaseActivity;->LOCAL_LOGV:Z

    if-eqz v0, :cond_b

    const-string v0, "SetupWizard"

    const-string v1, "launchNameActivity()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1417
    :cond_b
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1418
    const-string v0, "com.google.android.gsf.login"

    const-string v2, "com.google.android.gsf.login.NameActivity"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1419
    sget-object v0, Lcom/google/android/setupwizard/BaseActivity;->mUserData:Ljava/util/HashMap;

    const-string v2, "firstName"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 1420
    const-string v2, "firstName"

    sget-object v0, Lcom/google/android/setupwizard/BaseActivity;->mUserData:Ljava/util/HashMap;

    const-string v3, "firstName"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1423
    :cond_30
    sget-object v0, Lcom/google/android/setupwizard/BaseActivity;->mUserData:Ljava/util/HashMap;

    const-string v2, "lastName"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 1424
    const-string v2, "lastName"

    sget-object v0, Lcom/google/android/setupwizard/BaseActivity;->mUserData:Ljava/util/HashMap;

    const-string v3, "lastName"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1427
    :cond_49
    const-string v0, "localOnly"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1428
    const/16 v0, 0x271a

    invoke-direct {p0, v1, v0}, Lcom/google/android/setupwizard/BaseActivity;->startFirstRunActivityForResult(Landroid/content/Intent;I)V

    .line 1429
    return-void
.end method

.method private launchSimMissingActivity()V
    .registers 3

    .prologue
    .line 1329
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/setupwizard/SimMissingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1330
    const/16 v1, 0x2719

    invoke-direct {p0, v0, v1}, Lcom/google/android/setupwizard/BaseActivity;->startFirstRunActivityForResult(Landroid/content/Intent;I)V

    .line 1331
    return-void
.end method

.method private launchWifiSetup()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 1293
    sget-boolean v0, Lcom/google/android/setupwizard/BaseActivity;->LOCAL_LOGV:Z

    if-eqz v0, :cond_c

    const-string v0, "SetupWizard"

    const-string v1, "mabyeStartWifiSettings()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    :cond_c
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.PICK_WIFI_NETWORK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1296
    invoke-direct {p0, v3}, Lcom/google/android/setupwizard/BaseActivity;->tryEnablingWifi(Z)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 1297
    const-string v1, "only_access_points"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1299
    :cond_1e
    const-string v1, "extra_prefs_show_button_bar"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1300
    const-string v1, "extra_prefs_set_back_text"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1301
    const-string v1, "extra_prefs_show_skip"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1302
    const-string v1, "wifi_enable_next_on_connect"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1303
    const/16 v1, 0x2714

    invoke-direct {p0, v0, v1}, Lcom/google/android/setupwizard/BaseActivity;->startFirstRunActivityForResult(Landroid/content/Intent;I)V

    .line 1304
    return-void
.end method

.method private maybeStartPrepaySetup()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 1449
    const-string v0, "SetupWizard"

    const-string v2, "mabyeStartPrepaySetup()"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    invoke-virtual {p0}, Lcom/google/android/setupwizard/BaseActivity;->isLTE()Z

    move-result v0

    if-nez v0, :cond_17

    .line 1451
    const-string v0, "SetupWizard"

    const-string v2, "is not LTE"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1481
    :goto_16
    return v0

    .line 1455
    :cond_17
    const-string v0, "ro.setupwizard.prepay_setup_url"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1456
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_75

    .line 1457
    const-string v2, "SetupWizard"

    const-string v3, "prepay setup URL system property override found"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1470
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/setupwizard/BaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "setup_prepaid_data_service_url"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1472
    const-string v2, "SetupWizard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "prepay setup URL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1474
    invoke-virtual {p0}, Lcom/google/android/setupwizard/BaseActivity;->getPrepaySetupStatus()I

    move-result v0

    if-eqz v0, :cond_a7

    .line 1475
    const-string v0, "SetupWizard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepay setup not required ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/setupwizard/BaseActivity;->getPrepaySetupStatus()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1476
    goto :goto_16

    .line 1459
    :cond_75
    invoke-virtual {p0}, Lcom/google/android/setupwizard/BaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "setup_prepaid_data_service_url"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1461
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 1462
    const-string v0, "SetupWizard"

    const-string v2, "no prepay setup URL from Gservices; falling back on default"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1463
    invoke-virtual {p0}, Lcom/google/android/setupwizard/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f090002

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1464
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 1465
    const-string v0, "SetupWizard"

    const-string v2, "no prepay setup URL found anywhere"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1466
    goto/16 :goto_16

    .line 1479
    :cond_a7
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/setupwizard/PrepaySetupActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x2718

    invoke-direct {p0, v0, v1}, Lcom/google/android/setupwizard/BaseActivity;->startFirstRunActivityForResult(Landroid/content/Intent;I)V

    .line 1481
    const/4 v0, 0x1

    goto/16 :goto_16
.end method

.method private noName()Z
    .registers 3

    .prologue
    .line 1668
    sget-object v0, Lcom/google/android/setupwizard/BaseActivity;->mUserData:Ljava/util/HashMap;

    const-string v1, "doShowNameActivity"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    sget-object v0, Lcom/google/android/setupwizard/BaseActivity;->mUserData:Ljava/util/HashMap;

    const-string v1, "doShowNameActivity"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method private onAccountSetupCompleted(ZLandroid/content/Intent;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1187
    if-eqz p2, :cond_b

    const-string v0, "nameCompleted"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_39

    .line 1190
    :cond_b
    if-eqz p2, :cond_27

    .line 1191
    sget-object v0, Lcom/google/android/setupwizard/BaseActivity;->mUserData:Ljava/util/HashMap;

    const-string v1, "firstName"

    const-string v2, "firstName"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1193
    sget-object v0, Lcom/google/android/setupwizard/BaseActivity;->mUserData:Ljava/util/HashMap;

    const-string v1, "lastName"

    const-string v2, "lastName"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1196
    :cond_27
    sget-object v0, Lcom/google/android/setupwizard/BaseActivity;->mUserData:Ljava/util/HashMap;

    const-string v1, "doShowNameActivity"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1200
    :goto_33
    if-eqz p1, :cond_45

    .line 1201
    invoke-direct {p0}, Lcom/google/android/setupwizard/BaseActivity;->startLocationSharingActivity()V

    .line 1205
    :goto_38
    return-void

    .line 1198
    :cond_39
    sget-object v0, Lcom/google/android/setupwizard/BaseActivity;->mUserData:Ljava/util/HashMap;

    const-string v1, "doShowNameActivity"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_33

    .line 1203
    :cond_45
    invoke-virtual {p0}, Lcom/google/android/setupwizard/BaseActivity;->startWelcomeActivity()V

    goto :goto_38
.end method

.method private onNameActivityCompleted(Z)V
    .registers 3
    .parameter "goForward"

    .prologue
    .line 1208
    if-eqz p1, :cond_10

    .line 1209
    invoke-direct {p0}, Lcom/google/android/setupwizard/BaseActivity;->hasNoAccounts()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1210
    invoke-direct {p0}, Lcom/google/android/setupwizard/BaseActivity;->startNoAccountTosActivity()V

    .line 1217
    :goto_b
    return-void

    .line 1212
    :cond_c
    invoke-direct {p0}, Lcom/google/android/setupwizard/BaseActivity;->startSetupCompleteActivity()V

    goto :goto_b

    .line 1215
    :cond_10
    invoke-direct {p0}, Lcom/google/android/setupwizard/BaseActivity;->startLocationSharingActivity()V

    goto :goto_b
.end method

.method private onNoAccountTosCompleted(Z)V
    .registers 3
    .parameter "goForward"

    .prologue
    .line 1228
    if-eqz p1, :cond_6

    .line 1229
    invoke-direct {p0}, Lcom/google/android/setupwizard/BaseActivity;->startSetupCompleteActivity()V

    .line 1237
    :goto_5
    return-void

    .line 1231
    :cond_6
    invoke-direct {p0}, Lcom/google/android/setupwizard/BaseActivity;->noName()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1232
    invoke-direct {p0}, Lcom/google/android/setupwizard/BaseActivity;->launchNameActivity()V

    goto :goto_5

    .line 1234
    :cond_10
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/setupwizard/BaseActivity;->onNameActivityCompleted(Z)V

    goto :goto_5
.end method

.method private onPhotoActivityCompleted(Z)V
    .registers 2
    .parameter "goForward"

    .prologue
    .line 1220
    if-eqz p1, :cond_6

    .line 1221
    invoke-direct {p0}, Lcom/google/android/setupwizard/BaseActivity;->startLocationSharingActivity()V

    .line 1225
    :goto_5
    return-void

    .line 1223
    :cond_6
    invoke-direct {p0}, Lcom/google/android/setupwizard/BaseActivity;->launchNameActivity()V

    goto :goto_5
.end method

.method private onSimMissingActivityCompleted(I)V
    .registers 5
    .parameter

    .prologue
    .line 1334
    const-string v0, "SetupWizard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSimMissingActivityCompleted("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    if-nez p1, :cond_24

    .line 1336
    invoke-virtual {p0}, Lcom/google/android/setupwizard/BaseActivity;->onWelcomeScreenCompleted()V

    .line 1340
    :goto_23
    return-void

    .line 1338
    :cond_24
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/google/android/setupwizard/BaseActivity;->onActivationActivityCompleted(I)V

    goto :goto_23
.end method

.method private startFirstRunActivityForResult(Landroid/content/Intent;I)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 1440
    const-string v0, "SetupWizard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "starting activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    const-string v0, "firstRun"

    invoke-virtual {p0}, Lcom/google/android/setupwizard/BaseActivity;->isFirstRun()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1442
    invoke-virtual {p0, p1, p2}, Lcom/google/android/setupwizard/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1443
    return-void
.end method

.method private startLocationSharingActivity()V
    .registers 5

    .prologue
    .line 1343
    sget-boolean v0, Lcom/google/android/setupwizard/BaseActivity;->LOCAL_LOGV:Z

    if-eqz v0, :cond_b

    const-string v0, "SetupWizard"

    const-string v1, "startLocationSharingActivity()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1344
    :cond_b
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/google/android/setupwizard/LocationSharingActivity;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1345
    const-string v0, "allNetworkSetupSkipped"

    iget-boolean v2, p0, Lcom/google/android/setupwizard/BaseActivity;->mAllNetworkSetupSkipped:Z

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1346
    const-string v2, "no_back"

    sget-object v0, Lcom/google/android/setupwizard/BaseActivity;->mUserData:Ljava/util/HashMap;

    const-string v3, "accountSetupSkipped"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_35

    const/4 v0, 0x1

    :goto_2c
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1348
    const/16 v0, 0x2715

    invoke-direct {p0, v1, v0}, Lcom/google/android/setupwizard/BaseActivity;->startFirstRunActivityForResult(Landroid/content/Intent;I)V

    .line 1349
    return-void

    .line 1346
    :cond_35
    const/4 v0, 0x0

    goto :goto_2c
.end method

.method private startNoAccountTosActivity()V
    .registers 3

    .prologue
    .line 1352
    sget-boolean v0, Lcom/google/android/setupwizard/BaseActivity;->LOCAL_LOGV:Z

    if-eqz v0, :cond_b

    const-string v0, "SetupWizard"

    const-string v1, "startNoAccountTosActivity()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    :cond_b
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/setupwizard/NoAccountTosActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1354
    const/16 v1, 0x271d

    invoke-direct {p0, v0, v1}, Lcom/google/android/setupwizard/BaseActivity;->startFirstRunActivityForResult(Landroid/content/Intent;I)V

    .line 1355
    return-void
.end method

.method private startSetupCompleteActivity()V
    .registers 3

    .prologue
    .line 1358
    sget-boolean v0, Lcom/google/android/setupwizard/BaseActivity;->LOCAL_LOGV:Z

    if-eqz v0, :cond_b

    const-string v0, "SetupWizard"

    const-string v1, "startLocationSharingActivity()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1359
    :cond_b
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/setupwizard/SetupCompleteActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1360
    const/16 v1, 0x271c

    invoke-direct {p0, v0, v1}, Lcom/google/android/setupwizard/BaseActivity;->startFirstRunActivityForResult(Landroid/content/Intent;I)V

    .line 1361
    return-void
.end method

.method private tryEnablingWifi(Z)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1312
    :try_start_1
    const-string v1, "wifi"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 1313
    if-eqz v1, :cond_27

    .line 1314
    invoke-static {v1}, Landroid/net/wifi/IWifiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;

    move-result-object v2

    .line 1315
    invoke-interface {v2}, Landroid/net/wifi/IWifiManager;->getWifiEnabledState()I

    move-result v1

    .line 1316
    const/4 v3, 0x3

    if-ne v1, v3, :cond_1b

    const/4 v1, 0x1

    .line 1317
    :goto_15
    if-eq p1, v1, :cond_1a

    .line 1318
    invoke-interface {v2, p1}, Landroid/net/wifi/IWifiManager;->setWifiEnabled(Z)Z
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1a} :catch_1d

    .line 1325
    :cond_1a
    :goto_1a
    return p1

    :cond_1b
    move v1, v0

    .line 1316
    goto :goto_15

    .line 1322
    :catch_1d
    move-exception v1

    .line 1323
    const-string v2, "SetupWizard"

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_27
    move p1, v0

    .line 1325
    goto :goto_1a
.end method

.method private updateLastSetupShown()V
    .registers 6

    .prologue
    .line 806
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/setupwizard/BaseActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/setupwizard/BaseActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 808
    .local v0, applicationInfo:Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_27

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_27

    .line 809
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "android.SETUP_VERSION"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 810
    .local v1, vers:Ljava/lang/String;
    if-eqz v1, :cond_27

    .line 811
    invoke-virtual {p0}, Lcom/google/android/setupwizard/BaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "last_setup_shown"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_27
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_27} :catch_28

    .line 817
    .end local v0           #applicationInfo:Landroid/content/pm/ApplicationInfo;
    .end local v1           #vers:Ljava/lang/String;
    :cond_27
    :goto_27
    return-void

    .line 815
    :catch_28
    move-exception v2

    goto :goto_27
.end method


# virtual methods
.method protected accountSetupLaunched()Z
    .registers 3

    .prologue
    .line 1410
    sget-object v0, Lcom/google/android/setupwizard/BaseActivity;->mUserData:Ljava/util/HashMap;

    const-string v1, "accountSetupLaunched"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    sget-object v0, Lcom/google/android/setupwizard/BaseActivity;->mUserData:Ljava/util/HashMap;

    const-string v1, "accountSetupLaunched"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method protected canActivate()Z
    .registers 3

    .prologue
    .line 411
    iget v0, p0, Lcom/google/android/setupwizard/BaseActivity;->mPhoneServiceState:I

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/google/android/setupwizard/BaseActivity;->mPhoneServiceState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    :cond_9
    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method protected disableNotifications()V
    .registers 4

    .prologue
    .line 764
    iget-object v0, p0, Lcom/google/android/setupwizard/BaseActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/google/android/setupwizard/BaseActivity;->isHomeActivity()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 765
    const-string v0, "SetupWizard"

    const-string v1, "disabling notifications and status bar"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    iget-object v0, p0, Lcom/google/android/setupwizard/BaseActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/high16 v1, 0x137

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 776
    :goto_18
    return-void

    .line 773
    :cond_19
    const-string v1, "SetupWizard"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "skip disabling notfictions due to isHomeActivity() == "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/setupwizard/BaseActivity;->isHomeActivity()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/setupwizard/BaseActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v0, :cond_40

    const-string v0, " and/or status bar manager is NULL"

    :goto_34
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    :cond_40
    const-string v0, ""

    goto :goto_34
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 9
    .parameter "ev"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 545
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_2e

    iget-boolean v5, p0, Lcom/google/android/setupwizard/BaseActivity;->mAllowBackHardKey:Z

    if-eqz v5, :cond_2e

    move v0, v3

    .line 546
    .local v0, isBackKey:Z
    :goto_e
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    const/16 v6, 0x52

    if-ne v5, v6, :cond_30

    move v2, v3

    .line 547
    .local v2, isMenuKey:Z
    :goto_17
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_32

    move v1, v3

    .line 548
    .local v1, isCallKey:Z
    :goto_1f
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v4

    if-eqz v4, :cond_29

    if-nez v0, :cond_29

    if-eqz v2, :cond_34

    .line 550
    :cond_29
    invoke-super {p0, p1}, Lcom/google/android/setupwizard/NetworkMonitoringActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    .line 562
    :cond_2d
    :goto_2d
    return v3

    .end local v0           #isBackKey:Z
    .end local v1           #isCallKey:Z
    .end local v2           #isMenuKey:Z
    :cond_2e
    move v0, v4

    .line 545
    goto :goto_e

    .restart local v0       #isBackKey:Z
    :cond_30
    move v2, v4

    .line 546
    goto :goto_17

    .restart local v2       #isMenuKey:Z
    :cond_32
    move v1, v4

    .line 547
    goto :goto_1f

    .line 551
    .restart local v1       #isCallKey:Z
    :cond_34
    if-eqz v1, :cond_2d

    .line 554
    invoke-virtual {p0}, Lcom/google/android/setupwizard/BaseActivity;->isHomeActivity()Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 555
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_2d

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_2d

    .line 556
    invoke-virtual {p0}, Lcom/google/android/setupwizard/BaseActivity;->placeEmergencyCall()V

    goto :goto_2d

    .line 558
    :cond_4c
    invoke-super {p0, p1}, Lcom/google/android/setupwizard/NetworkMonitoringActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_2d
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 12
    .parameter "ev"

    .prologue
    .line 506
    iget-boolean v8, p0, Lcom/google/android/setupwizard/BaseActivity;->mEnableBypass:Z

    if-eqz v8, :cond_89

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_89

    .line 508
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 509
    .local v4, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 510
    .local v6, y:F
    iget-object v8, p0, Lcom/google/android/setupwizard/BaseActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getRight()I

    move-result v8

    iget-object v9, p0, Lcom/google/android/setupwizard/BaseActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    const/high16 v9, 0x4040

    div-float v5, v8, v9

    .line 511
    .local v5, x_tolerance:F
    iget-object v8, p0, Lcom/google/android/setupwizard/BaseActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v8

    iget-object v9, p0, Lcom/google/android/setupwizard/BaseActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getTop()I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    const/high16 v9, 0x4040

    div-float v7, v8, v9

    .line 512
    .local v7, y_tolerance:F
    iget-object v8, p0, Lcom/google/android/setupwizard/BaseActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v8

    int-to-float v8, v8

    sub-float v8, v4, v8

    cmpg-float v8, v8, v5

    if-gez v8, :cond_8e

    const/4 v1, 0x1

    .line 513
    .local v1, left:Z
    :goto_45
    iget-object v8, p0, Lcom/google/android/setupwizard/BaseActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getRight()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v8, v4

    cmpg-float v8, v8, v5

    if-gez v8, :cond_90

    const/4 v2, 0x1

    .line 514
    .local v2, right:Z
    :goto_52
    iget-object v8, p0, Lcom/google/android/setupwizard/BaseActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getTop()I

    move-result v8

    int-to-float v8, v8

    sub-float v8, v6, v8

    cmpg-float v8, v8, v7

    if-gez v8, :cond_92

    const/4 v3, 0x1

    .line 515
    .local v3, top:Z
    :goto_60
    iget-object v8, p0, Lcom/google/android/setupwizard/BaseActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v8, v6

    cmpg-float v8, v8, v7

    if-gez v8, :cond_94

    const/4 v0, 0x1

    .line 516
    .local v0, bottom:Z
    :goto_6d
    if-eqz v1, :cond_96

    if-eqz v3, :cond_96

    .line 518
    const/4 v8, 0x1

    iput v8, p0, Lcom/google/android/setupwizard/BaseActivity;->mTouchEventState:I

    .line 528
    :goto_74
    iget v8, p0, Lcom/google/android/setupwizard/BaseActivity;->mTouchEventState:I

    const/4 v9, 0x4

    if-ne v8, v9, :cond_89

    iget-boolean v8, p0, Lcom/google/android/setupwizard/BaseActivity;->mEnableBypass:Z

    if-eqz v8, :cond_89

    .line 529
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/google/android/setupwizard/BaseActivity;->setResult(I)V

    .line 530
    invoke-virtual {p0}, Lcom/google/android/setupwizard/BaseActivity;->enableNotifications()V

    .line 531
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9}, Lcom/google/android/setupwizard/BaseActivity;->onSetupComplete(ZZ)V

    .line 534
    .end local v0           #bottom:Z
    .end local v1           #left:Z
    .end local v2           #right:Z
    .end local v3           #top:Z
    .end local v4           #x:F
    .end local v5           #x_tolerance:F
    .end local v6           #y:F
    .end local v7           #y_tolerance:F
    :cond_89
    invoke-super {p0, p1}, Lcom/google/android/setupwizard/NetworkMonitoringActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    return v8

    .line 512
    .restart local v4       #x:F
    .restart local v5       #x_tolerance:F
    .restart local v6       #y:F
    .restart local v7       #y_tolerance:F
    :cond_8e
    const/4 v1, 0x0

    goto :goto_45

    .line 513
    .restart local v1       #left:Z
    :cond_90
    const/4 v2, 0x0

    goto :goto_52

    .line 514
    .restart local v2       #right:Z
    :cond_92
    const/4 v3, 0x0

    goto :goto_60

    .line 515
    .restart local v3       #top:Z
    :cond_94
    const/4 v0, 0x0

    goto :goto_6d

    .line 519
    .restart local v0       #bottom:Z
    :cond_96
    iget v8, p0, Lcom/google/android/setupwizard/BaseActivity;->mTouchEventState:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_a3

    if-eqz v2, :cond_a3

    if-eqz v3, :cond_a3

    .line 520
    const/4 v8, 0x2

    iput v8, p0, Lcom/google/android/setupwizard/BaseActivity;->mTouchEventState:I

    goto :goto_74

    .line 521
    :cond_a3
    iget v8, p0, Lcom/google/android/setupwizard/BaseActivity;->mTouchEventState:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_b0

    if-eqz v2, :cond_b0

    if-eqz v0, :cond_b0

    .line 522
    const/4 v8, 0x3

    iput v8, p0, Lcom/google/android/setupwizard/BaseActivity;->mTouchEventState:I

    goto :goto_74

    .line 523
    :cond_b0
    iget v8, p0, Lcom/google/android/setupwizard/BaseActivity;->mTouchEventState:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_bd

    if-eqz v1, :cond_bd

    if-eqz v0, :cond_bd

    .line 524
    const/4 v8, 0x4

    iput v8, p0, Lcom/google/android/setupwizard/BaseActivity;->mTouchEventState:I

    goto :goto_74

    .line 526
    :cond_bd
    const/4 v8, 0x0

    iput v8, p0, Lcom/google/android/setupwizard/BaseActivity;->mTouchEventState:I

    goto :goto_74
.end method

.method protected enableNotifications()V
    .registers 3

    .prologue
    .line 784
    const-string v0, "SetupWizard"

    const-string v1, "enabling notifications"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    iget-object v0, p0, Lcom/google/android/setupwizard/BaseActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Lcom/google/android/setupwizard/BaseActivity;->isHomeActivity()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 786
    iget-object v0, p0, Lcom/google/android/setupwizard/BaseActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 788
    :cond_17
    return-void
.end method

.method public getContentView()Landroid/view/View;
    .registers 2

    .prologue
    .line 741
    iget-object v0, p0, Lcom/google/android/setupwizard/BaseActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method protected getOtaspMode()I
    .registers 2

    .prologue
    .line 446
    iget v0, p0, Lcom/google/android/setupwizard/BaseActivity;->mOtaspMode:I

    return v0
.end method

.method protected getPrepaySetupStatus()I
    .registers 4

    .prologue
    .line 1685
    const-string v0, "SetupWizardPrefs"

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/google/android/setupwizard/BaseActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1687
    const-string v1, "prepay_status"

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected getTelephonyInterface()Lcom/android/internal/telephony/ITelephony;
    .registers 3

    .prologue
    .line 1491
    iget-object v1, p0, Lcom/google/android/setupwizard/BaseActivity;->mTelephonyInterface:Lcom/android/internal/telephony/ITelephony;

    if-nez v1, :cond_10

    .line 1492
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1493
    .local v0, binder:Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/setupwizard/BaseActivity;->mTelephonyInterface:Lcom/android/internal/telephony/ITelephony;

    .line 1495
    .end local v0           #binder:Landroid/os/IBinder;
    :cond_10
    iget-object v1, p0, Lcom/google/android/setupwizard/BaseActivity;->mTelephonyInterface:Lcom/android/internal/telephony/ITelephony;

    return-object v1
.end method

.method protected hasSimProblem()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 1626
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/google/android/setupwizard/BaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1628
    .local v0, telephonyManager:Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v2

    if-ne v2, v1, :cond_1f

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_1f

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    if-eqz v2, :cond_1f

    :goto_1e
    return v1

    :cond_1f
    const/4 v1, 0x0

    goto :goto_1e
.end method

.method protected isFirstRun()Z
    .registers 2

    .prologue
    .line 1517
    iget-boolean v0, p0, Lcom/google/android/setupwizard/BaseActivity;->mIsFirstRun:Z

    return v0
.end method

.method protected isHomeActivity()Z
    .registers 2

    .prologue
    .line 1531
    iget-boolean v0, p0, Lcom/google/android/setupwizard/BaseActivity;->mIsHomeActivity:Z

    return v0
.end method

.method protected isLTE()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1605
    invoke-direct {p0}, Lcom/google/android/setupwizard/BaseActivity;->getLteOnCdmaMode()I

    move-result v1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method protected isNetworkConnected()Z
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1550
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/google/android/setupwizard/BaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1552
    if-nez v0, :cond_c

    .line 1556
    :goto_b
    return v1

    .line 1555
    :cond_c
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1556
    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v0, 0x1

    :goto_19
    move v1, v0

    goto :goto_b

    :cond_1b
    move v0, v1

    goto :goto_19
.end method

.method protected isPessimisticMode()Z
    .registers 2

    .prologue
    .line 1585
    iget-boolean v0, p0, Lcom/google/android/setupwizard/BaseActivity;->mIsPessimisticMode:Z

    return v0
.end method

.method protected isWifiOnlyBuild()Z
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1589
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/google/android/setupwizard/BaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1591
    if-eqz v0, :cond_13

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    move v0, v1

    goto :goto_12
.end method

.method protected lteUnknown()Z
    .registers 3

    .prologue
    .line 1598
    invoke-direct {p0}, Lcom/google/android/setupwizard/BaseActivity;->getLteOnCdmaMode()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method protected maybeRegisterOtaspPhoneStateListener()V
    .registers 4

    .prologue
    .line 381
    invoke-virtual {p0}, Lcom/google/android/setupwizard/BaseActivity;->isWifiOnlyBuild()Z

    move-result v1

    if-nez v1, :cond_22

    .line 382
    sget-boolean v1, Lcom/google/android/setupwizard/BaseActivity;->LOCAL_LOGV:Z

    if-eqz v1, :cond_11

    const-string v1, "SetupWizard"

    const-string v2, "Register our PhoneStateListener"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :cond_11
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/google/android/setupwizard/BaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 385
    .local v0, telephonyManager:Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_23

    .line 386
    iget-object v1, p0, Lcom/google/android/setupwizard/BaseActivity;->mOtaspPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x201

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 393
    .end local v0           #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_22
    :goto_22
    return-void

    .line 390
    .restart local v0       #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_23
    const-string v1, "SetupWizard"

    const-string v2, "Cannot register OTASP listener as TelephonyManager is null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22
.end method

.method protected maybeUnregisterOtaspPhoneStateListener()V
    .registers 4

    .prologue
    .line 397
    invoke-virtual {p0}, Lcom/google/android/setupwizard/BaseActivity;->isWifiOnlyBuild()Z

    move-result v1

    if-nez v1, :cond_21

    .line 398
    sget-boolean v1, Lcom/google/android/setupwizard/BaseActivity;->LOCAL_LOGV:Z

    if-eqz v1, :cond_11

    const-string v1, "SetupWizard"

    const-string v2, "Unregister our PhoneStateListener"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    :cond_11
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/google/android/setupwizard/BaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 401
    .local v0, telephonyManager:Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_21

    .line 402
    iget-object v1, p0, Lcom/google/android/setupwizard/BaseActivity;->mOtaspPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 405
    .end local v0           #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_21
    return-void
.end method

.method protected onActivationActivityCompleted(I)V
    .registers 5
    .parameter "resultCode"

    .prologue
    .line 1128
    const-string v0, "SetupWizard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivationActivityCompleted("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    const/4 v0, 0x7

    if-eq p1, v0, :cond_24

    .line 1135
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/setupwizard/BaseActivity;->mAllNetworkSetupSkipped:Z

    .line 1138
    :cond_24
    const/4 v0, -0x1

    if-ne p1, v0, :cond_2b

    .line 1139
    invoke-direct {p0}, Lcom/google/android/setupwizard/BaseActivity;->launchDateTimeSetupOrSkip()V

    .line 1149
    :goto_2a
    return-void

    .line 1143
    :cond_2b
    invoke-virtual {p0}, Lcom/google/android/setupwizard/BaseActivity;->isNetworkConnected()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-virtual {p0}, Lcom/google/android/setupwizard/BaseActivity;->isPessimisticMode()Z

    move-result v0

    if-nez v0, :cond_3b

    .line 1144
    invoke-direct {p0}, Lcom/google/android/setupwizard/BaseActivity;->launchDateTimeSetupOrSkip()V

    goto :goto_2a

    .line 1146
    :cond_3b
    invoke-direct {p0}, Lcom/google/android/setupwizard/BaseActivity;->launchWifiSetup()V

    goto :goto_2a
.end method

.method protected onActivationActivityLaunchFailed()V
    .registers 2

    .prologue
    .line 1152
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/setupwizard/BaseActivity;->onActivationActivityCompleted(I)V

    .line 1153
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 10
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v5, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 952
    const-string v0, "SetupWizard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onActivityResult("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    packed-switch p1, :pswitch_data_da

    .line 1001
    const-string v0, "SetupWizard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult() is called with unsupported requestCode. requestCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " resultCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1009
    :goto_5f
    return-void

    .line 957
    :pswitch_60
    iput p2, p0, Lcom/google/android/setupwizard/BaseActivity;->mOtaspMode:I

    .line 958
    invoke-virtual {p0}, Lcom/google/android/setupwizard/BaseActivity;->onWelcomeScreenCompleted()V

    goto :goto_5f

    .line 961
    :pswitch_66
    invoke-virtual {p0, p2}, Lcom/google/android/setupwizard/BaseActivity;->onOldActivationActivityCompleted(I)V

    goto :goto_5f

    .line 964
    :pswitch_6a
    invoke-virtual {p0, p2}, Lcom/google/android/setupwizard/BaseActivity;->onActivationActivityCompleted(I)V

    goto :goto_5f

    .line 967
    :pswitch_6e
    invoke-virtual {p0, p2}, Lcom/google/android/setupwizard/BaseActivity;->onWifiSetupCompleted(I)V

    goto :goto_5f

    .line 970
    :pswitch_72
    invoke-virtual {p0}, Lcom/google/android/setupwizard/BaseActivity;->onDateTimeSetupCompleted()V

    goto :goto_5f

    .line 973
    :pswitch_76
    const-string v0, "SetupWizard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "account setup completed with resultCode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    sget-object v3, Lcom/google/android/setupwizard/BaseActivity;->mUserData:Ljava/util/HashMap;

    const-string v4, "accountSetupSkipped"

    const/4 v0, 0x7

    if-ne p2, v0, :cond_a3

    move v0, v1

    :goto_96
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 975
    if-eqz p2, :cond_a5

    :goto_9f
    invoke-direct {p0, v1, p3}, Lcom/google/android/setupwizard/BaseActivity;->onAccountSetupCompleted(ZLandroid/content/Intent;)V

    goto :goto_5f

    :cond_a3
    move v0, v2

    .line 974
    goto :goto_96

    :cond_a5
    move v1, v2

    .line 975
    goto :goto_9f

    .line 978
    :pswitch_a7
    if-ne p2, v5, :cond_ad

    :goto_a9
    invoke-direct {p0, v1}, Lcom/google/android/setupwizard/BaseActivity;->onNameActivityCompleted(Z)V

    goto :goto_5f

    :cond_ad
    move v1, v2

    goto :goto_a9

    .line 981
    :pswitch_af
    if-ne p2, v5, :cond_b5

    :goto_b1
    invoke-direct {p0, v1}, Lcom/google/android/setupwizard/BaseActivity;->onPhotoActivityCompleted(Z)V

    goto :goto_5f

    :cond_b5
    move v1, v2

    goto :goto_b1

    .line 984
    :pswitch_b7
    if-ne p2, v5, :cond_ba

    move v2, v1

    :cond_ba
    invoke-virtual {p0, v1, v2}, Lcom/google/android/setupwizard/BaseActivity;->onSetupComplete(ZZ)V

    goto :goto_5f

    .line 987
    :pswitch_be
    invoke-direct {p0, p2}, Lcom/google/android/setupwizard/BaseActivity;->onSimMissingActivityCompleted(I)V

    goto :goto_5f

    .line 990
    :pswitch_c2
    if-ne p2, v5, :cond_c8

    :goto_c4
    invoke-virtual {p0, v1}, Lcom/google/android/setupwizard/BaseActivity;->onLocationSharingActivityCompleted(Z)V

    goto :goto_5f

    :cond_c8
    move v1, v2

    goto :goto_c4

    .line 993
    :pswitch_ca
    if-ne p2, v5, :cond_d0

    :goto_cc
    invoke-direct {p0, v1}, Lcom/google/android/setupwizard/BaseActivity;->onNoAccountTosCompleted(Z)V

    goto :goto_5f

    :cond_d0
    move v1, v2

    goto :goto_cc

    .line 996
    :pswitch_d2
    if-ne p2, v5, :cond_d8

    :goto_d4
    invoke-virtual {p0, v1}, Lcom/google/android/setupwizard/BaseActivity;->onSetupCompleteCompleted(Z)V

    goto :goto_5f

    :cond_d8
    move v1, v2

    goto :goto_d4

    .line 953
    :pswitch_data_da
    .packed-switch 0x2711
        :pswitch_60
        :pswitch_6a
        :pswitch_66
        :pswitch_6e
        :pswitch_c2
        :pswitch_72
        :pswitch_76
        :pswitch_b7
        :pswitch_be
        :pswitch_a7
        :pswitch_af
        :pswitch_d2
        :pswitch_ca
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 642
    invoke-super {p0, p1}, Lcom/google/android/setupwizard/NetworkMonitoringActivity;->onCreate(Landroid/os/Bundle;)V

    .line 644
    sget-boolean v0, Lcom/google/android/setupwizard/BaseActivity;->LOCAL_LOGV:Z

    if-eqz v0, :cond_34

    .line 645
    const-string v0, "SetupWizard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate: LOCAL_LOGV="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/google/android/setupwizard/BaseActivity;->LOCAL_LOGV:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isLoggable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "SetupWizard"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    :cond_34
    const-string v0, "setupwizard.pessimistic"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/setupwizard/BaseActivity;->mIsPessimisticMode:Z

    .line 651
    iget-boolean v0, p0, Lcom/google/android/setupwizard/BaseActivity;->mIsPessimisticMode:Z

    if-eqz v0, :cond_47

    .line 652
    const-string v0, "SetupWizard"

    const-string v3, "In pessimistic mode."

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    :cond_47
    invoke-virtual {p0}, Lcom/google/android/setupwizard/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    iput v0, p0, Lcom/google/android/setupwizard/BaseActivity;->mScreenSize:I

    .line 658
    invoke-virtual {p0}, Lcom/google/android/setupwizard/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 659
    if-eqz v0, :cond_7b

    .line 660
    const-string v3, "firstRun"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 661
    const-string v3, "firstRun"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/setupwizard/BaseActivity;->mIsFirstRun:Z

    .line 663
    :cond_6b
    const-string v3, "allNetworkSetupSkipped"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7b

    .line 664
    const-string v3, "allNetworkSetupSkipped"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/setupwizard/BaseActivity;->mAllNetworkSetupSkipped:Z

    .line 670
    :cond_7b
    invoke-virtual {p0}, Lcom/google/android/setupwizard/BaseActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 671
    new-instance v3, Landroid/content/ComponentName;

    const-class v4, Lcom/google/android/setupwizard/SetupWizardActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 672
    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v0

    .line 673
    if-eqz v0, :cond_8e

    if-ne v0, v2, :cond_ff

    :cond_8e
    move v0, v2

    :goto_8f
    iput-boolean v0, p0, Lcom/google/android/setupwizard/BaseActivity;->mIsHomeActivity:Z

    .line 677
    const-string v0, "ro.setupwizard.mode"

    sget-object v3, Lcom/google/android/setupwizard/BaseActivity$ProvisioningMode;->OPTIONAL:Lcom/google/android/setupwizard/BaseActivity$ProvisioningMode;

    invoke-virtual {v3}, Lcom/google/android/setupwizard/BaseActivity$ProvisioningMode;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 681
    :try_start_9d
    invoke-static {v0}, Lcom/google/android/setupwizard/BaseActivity$ProvisioningMode;->valueOf(Ljava/lang/String;)Lcom/google/android/setupwizard/BaseActivity$ProvisioningMode;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/setupwizard/BaseActivity;->mProvisioningMode:Lcom/google/android/setupwizard/BaseActivity$ProvisioningMode;
    :try_end_a3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9d .. :try_end_a3} :catch_101

    .line 688
    :goto_a3
    invoke-virtual {p0}, Lcom/google/android/setupwizard/BaseActivity;->isHomeActivity()Z

    move-result v0

    if-nez v0, :cond_107

    move v0, v2

    :goto_aa
    iput-boolean v0, p0, Lcom/google/android/setupwizard/BaseActivity;->mAllowBackHardKey:Z

    .line 691
    const-string v0, "ro.debuggable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_bc

    const-string v0, "ro.setupwizard.enable_bypass"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_bd

    :cond_bc
    move v1, v2

    :cond_bd
    iput-boolean v1, p0, Lcom/google/android/setupwizard/BaseActivity;->mEnableBypass:Z

    .line 697
    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    move-result v0

    if-eqz v0, :cond_cd

    iget-boolean v0, p0, Lcom/google/android/setupwizard/BaseActivity;->mEnableBypass:Z

    if-eqz v0, :cond_cd

    .line 698
    sget-object v0, Lcom/google/android/setupwizard/BaseActivity$ProvisioningMode;->DISABLED:Lcom/google/android/setupwizard/BaseActivity$ProvisioningMode;

    iput-object v0, p0, Lcom/google/android/setupwizard/BaseActivity;->mProvisioningMode:Lcom/google/android/setupwizard/BaseActivity$ProvisioningMode;

    .line 701
    :cond_cd
    const-string v0, "statusbar"

    invoke-virtual {p0, v0}, Lcom/google/android/setupwizard/BaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/google/android/setupwizard/BaseActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 702
    iget-object v0, p0, Lcom/google/android/setupwizard/BaseActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v0, :cond_e2

    .line 703
    const-string v0, "SetupWizard"

    const-string v1, "StatusBarManager isn\'t available."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    :cond_e2
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/setupwizard/BaseActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    .line 710
    invoke-virtual {p0}, Lcom/google/android/setupwizard/BaseActivity;->isFirstRun()Z

    move-result v0

    if-eqz v0, :cond_f9

    .line 711
    invoke-virtual {p0}, Lcom/google/android/setupwizard/BaseActivity;->disableNotifications()V

    .line 712
    iget-object v0, p0, Lcom/google/android/setupwizard/BaseActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    const/high16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setSystemUiVisibility(I)V

    .line 715
    :cond_f9
    iget-object v0, p0, Lcom/google/android/setupwizard/BaseActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-super {p0, v0}, Lcom/google/android/setupwizard/NetworkMonitoringActivity;->setContentView(Landroid/view/View;)V

    .line 716
    return-void

    :cond_ff
    move v0, v1

    .line 673
    goto :goto_8f

    .line 682
    :catch_101
    move-exception v0

    .line 684
    sget-object v0, Lcom/google/android/setupwizard/BaseActivity$ProvisioningMode;->OPTIONAL:Lcom/google/android/setupwizard/BaseActivity$ProvisioningMode;

    iput-object v0, p0, Lcom/google/android/setupwizard/BaseActivity;->mProvisioningMode:Lcom/google/android/setupwizard/BaseActivity$ProvisioningMode;

    goto :goto_a3

    :cond_107
    move v0, v1

    .line 688
    goto :goto_aa
.end method

.method protected onDateTimeSetupCompleted()V
    .registers 3

    .prologue
    .line 1179
    invoke-direct {p0}, Lcom/google/android/setupwizard/BaseActivity;->allNetworkSetupSkipped()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lcom/google/android/setupwizard/BaseActivity;->isNetworkConnected()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p0}, Lcom/google/android/setupwizard/BaseActivity;->isLTE()Z

    move-result v0

    if-nez v0, :cond_18

    .line 1180
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/setupwizard/BaseActivity;->onAccountSetupCompleted(ZLandroid/content/Intent;)V

    .line 1184
    :goto_17
    return-void

    .line 1182
    :cond_18
    invoke-direct {p0}, Lcom/google/android/setupwizard/BaseActivity;->launchAccountSetup()V

    goto :goto_17
.end method

.method protected onDateTimeSetupLaunchFailed()V
    .registers 1

    .prologue
    .line 1175
    invoke-virtual {p0}, Lcom/google/android/setupwizard/BaseActivity;->onDateTimeSetupCompleted()V

    .line 1176
    return-void
.end method

.method protected onLocationSharingActivityCompleted(Z)V
    .registers 3
    .parameter "goForward"

    .prologue
    .line 1163
    if-eqz p1, :cond_11

    .line 1164
    invoke-direct {p0}, Lcom/google/android/setupwizard/BaseActivity;->noName()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1165
    invoke-direct {p0}, Lcom/google/android/setupwizard/BaseActivity;->launchNameActivity()V

    .line 1172
    :goto_b
    return-void

    .line 1167
    :cond_c
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/setupwizard/BaseActivity;->onNameActivityCompleted(Z)V

    goto :goto_b

    .line 1170
    :cond_11
    invoke-direct {p0}, Lcom/google/android/setupwizard/BaseActivity;->launchAccountSetup()V

    goto :goto_b
.end method

.method protected onOldActivationActivityCompleted(I)V
    .registers 7
    .parameter "resultCode"

    .prologue
    .line 1112
    const-string v2, "SetupWizard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onOldActivationActivityCompleted("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    :try_start_1e
    invoke-virtual {p0}, Lcom/google/android/setupwizard/BaseActivity;->getTelephonyInterface()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 1115
    .local v1, telephonyInterface:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_2a

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->needsOtaServiceProvisioning()Z
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_27} :catch_31

    move-result v2

    if-eqz v2, :cond_2f

    .line 1117
    :cond_2a
    const/4 p1, 0x0

    .line 1124
    .end local v1           #telephonyInterface:Lcom/android/internal/telephony/ITelephony;
    :goto_2b
    invoke-virtual {p0, p1}, Lcom/google/android/setupwizard/BaseActivity;->onActivationActivityCompleted(I)V

    .line 1125
    return-void

    .line 1119
    .restart local v1       #telephonyInterface:Lcom/android/internal/telephony/ITelephony;
    :cond_2f
    const/4 p1, -0x1

    goto :goto_2b

    .line 1121
    .end local v1           #telephonyInterface:Lcom/android/internal/telephony/ITelephony;
    :catch_31
    move-exception v0

    .line 1122
    .local v0, e:Landroid/os/RemoteException;
    const/4 p1, 0x0

    goto :goto_2b
.end method

.method protected onOtaspChanged()V
    .registers 1

    .prologue
    .line 373
    return-void
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 725
    invoke-super {p0}, Lcom/google/android/setupwizard/NetworkMonitoringActivity;->onPause()V

    .line 726
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, -0x1

    const/4 v6, 0x1

    .line 593
    invoke-super {p0, p1}, Lcom/google/android/setupwizard/NetworkMonitoringActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 594
    const-string v2, "currentFocus"

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 595
    .local v0, currentId:I
    if-eq v0, v3, :cond_16

    .line 596
    invoke-virtual {p0, v0}, Lcom/google/android/setupwizard/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 597
    .local v1, view:Landroid/view/View;
    if-eqz v1, :cond_16

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 599
    .end local v1           #view:Landroid/view/View;
    :cond_16
    const-string v2, "screenTimeout"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 600
    sget-object v2, Lcom/google/android/setupwizard/BaseActivity;->mUserData:Ljava/util/HashMap;

    const-string v3, "screenTimeout"

    const-string v4, "screenTimeout"

    const v5, 0x1d8a8

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    :cond_32
    const-string v2, "doShowNameActivity"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 604
    sget-object v2, Lcom/google/android/setupwizard/BaseActivity;->mUserData:Ljava/util/HashMap;

    const-string v3, "doShowNameActivity"

    const-string v4, "doShowNameActivity"

    invoke-virtual {p1, v4, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    :cond_4b
    const-string v2, "accountSetupSkipped"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_64

    .line 608
    sget-object v2, Lcom/google/android/setupwizard/BaseActivity;->mUserData:Ljava/util/HashMap;

    const-string v3, "accountSetupSkipped"

    const-string v4, "accountSetupSkipped"

    invoke-virtual {p1, v4, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    :cond_64
    const-string v2, "accountSetupLaunched"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7d

    .line 612
    sget-object v2, Lcom/google/android/setupwizard/BaseActivity;->mUserData:Ljava/util/HashMap;

    const-string v3, "accountSetupLaunched"

    const-string v4, "accountSetupLaunched"

    invoke-virtual {p1, v4, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    :cond_7d
    return-void
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 720
    invoke-super {p0}, Lcom/google/android/setupwizard/NetworkMonitoringActivity;->onResume()V

    .line 721
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 6
    .parameter "outState"

    .prologue
    .line 619
    invoke-super {p0, p1}, Lcom/google/android/setupwizard/NetworkMonitoringActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 620
    invoke-virtual {p0}, Lcom/google/android/setupwizard/BaseActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 621
    .local v0, current:Landroid/view/View;
    const-string v2, "currentFocus"

    if-eqz v0, :cond_87

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    :goto_f
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 622
    sget-object v1, Lcom/google/android/setupwizard/BaseActivity;->mUserData:Ljava/util/HashMap;

    const-string v2, "screenTimeout"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 623
    const-string v2, "screenTimeout"

    sget-object v1, Lcom/google/android/setupwizard/BaseActivity;->mUserData:Ljava/util/HashMap;

    const-string v3, "screenTimeout"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 626
    :cond_2f
    sget-object v1, Lcom/google/android/setupwizard/BaseActivity;->mUserData:Ljava/util/HashMap;

    const-string v2, "doShowNameActivity"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 627
    const-string v2, "doShowNameActivity"

    sget-object v1, Lcom/google/android/setupwizard/BaseActivity;->mUserData:Ljava/util/HashMap;

    const-string v3, "doShowNameActivity"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 630
    :cond_4c
    sget-object v1, Lcom/google/android/setupwizard/BaseActivity;->mUserData:Ljava/util/HashMap;

    const-string v2, "accountSetupSkipped"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_69

    .line 631
    const-string v2, "accountSetupSkipped"

    sget-object v1, Lcom/google/android/setupwizard/BaseActivity;->mUserData:Ljava/util/HashMap;

    const-string v3, "accountSetupSkipped"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 634
    :cond_69
    sget-object v1, Lcom/google/android/setupwizard/BaseActivity;->mUserData:Ljava/util/HashMap;

    const-string v2, "accountSetupLaunched"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_86

    .line 635
    const-string v2, "accountSetupLaunched"

    sget-object v1, Lcom/google/android/setupwizard/BaseActivity;->mUserData:Ljava/util/HashMap;

    const-string v3, "accountSetupLaunched"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 638
    :cond_86
    return-void

    .line 621
    :cond_87
    const/4 v1, -0x1

    goto :goto_f
.end method

.method protected onServiceStateChanged()V
    .registers 1

    .prologue
    .line 370
    return-void
.end method

.method protected onSetupComplete(ZZ)V
    .registers 10
    .parameter
    .parameter

    .prologue
    const/high16 v6, 0x1020

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 836
    invoke-virtual {p0}, Lcom/google/android/setupwizard/BaseActivity;->enableNotifications()V

    .line 841
    sget-object v0, Lcom/google/android/setupwizard/BaseActivity;->mUserData:Ljava/util/HashMap;

    const-string v2, "screenTimeout"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 842
    if-eqz v0, :cond_32

    .line 843
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 844
    invoke-virtual {p0}, Lcom/google/android/setupwizard/BaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_off_timeout"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 846
    if-lez v0, :cond_32

    const v3, 0x1d8a8

    if-ne v2, v3, :cond_32

    .line 847
    invoke-virtual {p0}, Lcom/google/android/setupwizard/BaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_off_timeout"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 866
    :cond_32
    invoke-virtual {p0}, Lcom/google/android/setupwizard/BaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "device_provisioned"

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 869
    invoke-direct {p0}, Lcom/google/android/setupwizard/BaseActivity;->updateLastSetupShown()V

    .line 874
    invoke-virtual {p0}, Lcom/google/android/setupwizard/BaseActivity;->isHomeActivity()Z

    move-result v0

    if-eqz v0, :cond_d7

    .line 875
    const-string v0, "SetupWizard"

    const-string v2, "System thinks we\'re the home activity. Removing SetupWizard..."

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    invoke-virtual {p0}, Lcom/google/android/setupwizard/BaseActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 877
    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/google/android/setupwizard/SetupWizardActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 878
    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 882
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/setupwizard/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 887
    if-eqz p2, :cond_b1

    .line 890
    invoke-virtual {p0}, Lcom/google/android/setupwizard/BaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "setup_prepaid_data_service_url"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 892
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/google/android/setupwizard/BaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 894
    if-eqz v0, :cond_f3

    .line 895
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 897
    :goto_88
    if-nez v0, :cond_8c

    .line 898
    const-string v0, ""

    .line 900
    :cond_8c
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_ca

    move-object v0, v1

    .line 902
    :goto_93
    invoke-virtual {p0}, Lcom/google/android/setupwizard/BaseActivity;->getPrepaySetupStatus()I

    .line 903
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b1

    .line 904
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const v0, 0x8000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/setupwizard/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 939
    :cond_b1
    :goto_b1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/setupwizard/PrepayDetectionService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/google/android/setupwizard/BaseActivity;->stopService(Landroid/content/Intent;)Z

    .line 941
    const-string v0, "SetupWizard"

    const-string v1, "*** SetupWizard completed ***"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 948
    return-void

    .line 900
    :cond_ca
    new-array v1, v4, [Ljava/lang/CharSequence;

    aput-object v0, v1, v5

    invoke-static {v2, v1}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_93

    .line 927
    :cond_d7
    const-string v0, "SetupWizard"

    const-string v2, "Setup completion notification is sent when SetupWizard isn\'t treated as home activity."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/setupwizard/BaseActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_b1

    :cond_f3
    move-object v0, v1

    goto :goto_88
.end method

.method protected onSetupCompleteCompleted(Z)V
    .registers 4
    .parameter "goForward"

    .prologue
    const/4 v1, 0x0

    .line 1240
    if-eqz p1, :cond_e

    .line 1241
    invoke-direct {p0}, Lcom/google/android/setupwizard/BaseActivity;->maybeStartPrepaySetup()Z

    move-result v0

    if-nez v0, :cond_d

    .line 1242
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/setupwizard/BaseActivity;->onSetupComplete(ZZ)V

    .line 1251
    :cond_d
    :goto_d
    return-void

    .line 1245
    :cond_e
    invoke-direct {p0}, Lcom/google/android/setupwizard/BaseActivity;->hasNoAccounts()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1246
    invoke-direct {p0}, Lcom/google/android/setupwizard/BaseActivity;->startNoAccountTosActivity()V

    goto :goto_d

    .line 1248
    :cond_18
    invoke-direct {p0, v1}, Lcom/google/android/setupwizard/BaseActivity;->onNoAccountTosCompleted(Z)V

    goto :goto_d
.end method

.method protected onSetupStart()V
    .registers 6

    .prologue
    const v4, 0x1d8a8

    .line 823
    sget-object v0, Lcom/google/android/setupwizard/BaseActivity;->mUserData:Ljava/util/HashMap;

    const-string v1, "screenTimeout"

    invoke-virtual {p0}, Lcom/google/android/setupwizard/BaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_off_timeout"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 825
    invoke-virtual {p0}, Lcom/google/android/setupwizard/BaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 827
    return-void
.end method

.method protected onWelcomeScreenCompleted()V
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 1075
    const-string v0, "SetupWizard"

    const-string v1, "onWelcomeScreenCompleted()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    invoke-virtual {p0}, Lcom/google/android/setupwizard/BaseActivity;->isPessimisticMode()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1077
    const-string v0, "SetupWizard"

    const-string v1, "Be pessimistic. Launch ActivationActivity anyway."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    invoke-direct {p0}, Lcom/google/android/setupwizard/BaseActivity;->launchActivationActivity()V

    .line 1109
    :goto_18
    return-void

    .line 1079
    :cond_19
    invoke-virtual {p0}, Lcom/google/android/setupwizard/BaseActivity;->isWifiOnlyBuild()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 1081
    const-string v0, "SetupWizard"

    const-string v1, "skipping activation for wifi-only build"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    invoke-virtual {p0}, Lcom/google/android/setupwizard/BaseActivity;->isNetworkConnected()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-virtual {p0}, Lcom/google/android/setupwizard/BaseActivity;->getPrepaySetupStatus()I

    move-result v0

    if-eqz v0, :cond_36

    .line 1084
    invoke-virtual {p0, v2}, Lcom/google/android/setupwizard/BaseActivity;->onActivationActivityCompleted(I)V

    goto :goto_18

    .line 1086
    :cond_36
    const-string v0, "SetupWizard"

    const-string v1, "no network or lte prepay required: launching wifi"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    invoke-direct {p0}, Lcom/google/android/setupwizard/BaseActivity;->launchWifiSetup()V

    goto :goto_18

    .line 1089
    :cond_41
    invoke-virtual {p0}, Lcom/google/android/setupwizard/BaseActivity;->simMissing()Z

    move-result v0

    if-eqz v0, :cond_56

    .line 1090
    sget-boolean v0, Lcom/google/android/setupwizard/BaseActivity;->LOCAL_LOGV:Z

    if-eqz v0, :cond_52

    const-string v0, "SetupWizard"

    const-string v1, "missing SIM; launching SimMissingActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    :cond_52
    invoke-direct {p0}, Lcom/google/android/setupwizard/BaseActivity;->launchSimMissingActivity()V

    goto :goto_18

    .line 1092
    :cond_56
    invoke-virtual {p0}, Lcom/google/android/setupwizard/BaseActivity;->hasSimProblem()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 1093
    const-string v0, "SetupWizard"

    const-string v1, "bad SIM; launching wifi"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    invoke-direct {p0}, Lcom/google/android/setupwizard/BaseActivity;->launchWifiSetup()V

    goto :goto_18

    .line 1095
    :cond_67
    invoke-virtual {p0}, Lcom/google/android/setupwizard/BaseActivity;->otaspStateIsKnown()Z

    move-result v0

    if-eqz v0, :cond_7e

    invoke-virtual {p0}, Lcom/google/android/setupwizard/BaseActivity;->otaspIsNeeded()Z

    move-result v0

    if-nez v0, :cond_7e

    .line 1098
    const-string v0, "SetupWizard"

    const-string v1, "otasp not needed, skipping activation"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    invoke-virtual {p0, v2}, Lcom/google/android/setupwizard/BaseActivity;->onActivationActivityCompleted(I)V

    goto :goto_18

    .line 1100
    :cond_7e
    invoke-virtual {p0}, Lcom/google/android/setupwizard/BaseActivity;->lteUnknown()Z

    move-result v0

    if-eqz v0, :cond_90

    .line 1103
    const-string v0, "SetupWizard"

    const-string v1, "LTE state still unknown, skipping activation"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/google/android/setupwizard/BaseActivity;->onActivationActivityCompleted(I)V

    goto :goto_18

    .line 1106
    :cond_90
    const-string v0, "SetupWizard"

    const-string v1, "falling through to launch activation"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    invoke-direct {p0}, Lcom/google/android/setupwizard/BaseActivity;->launchActivationActivity()V

    goto/16 :goto_18
.end method

.method protected onWifiSetupCompleted(I)V
    .registers 3
    .parameter "resultCode"

    .prologue
    .line 1156
    const/4 v0, 0x7

    if-eq p1, v0, :cond_6

    .line 1157
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/setupwizard/BaseActivity;->mAllNetworkSetupSkipped:Z

    .line 1159
    :cond_6
    invoke-direct {p0}, Lcom/google/android/setupwizard/BaseActivity;->launchDateTimeSetupOrSkip()V

    .line 1160
    return-void
.end method

.method protected otaspIsNeeded()Z
    .registers 3

    .prologue
    .line 427
    iget v0, p0, Lcom/google/android/setupwizard/BaseActivity;->mOtaspMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method protected otaspIsNotNeeded()Z
    .registers 3

    .prologue
    .line 434
    iget v0, p0, Lcom/google/android/setupwizard/BaseActivity;->mOtaspMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method protected otaspStateIsKnown()Z
    .registers 3

    .prologue
    .line 419
    iget v0, p0, Lcom/google/android/setupwizard/BaseActivity;->mOtaspMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    iget v0, p0, Lcom/google/android/setupwizard/BaseActivity;->mOtaspMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method protected overrideAllowBackHardkey()V
    .registers 2

    .prologue
    .line 454
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/setupwizard/BaseActivity;->mAllowBackHardKey:Z

    .line 455
    return-void
.end method

.method protected placeEmergencyCall()V
    .registers 5

    .prologue
    .line 570
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.phone.EmergencyDialer.DIAL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 571
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x1080

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 573
    invoke-virtual {p0, v1}, Lcom/google/android/setupwizard/BaseActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_f
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_f} :catch_10

    .line 578
    .end local v1           #intent:Landroid/content/Intent;
    :goto_f
    return-void

    .line 574
    :catch_10
    move-exception v0

    .line 576
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "SetupWizard"

    const-string v3, "Can\'t find the emergency dialer: com.android.phone.EmergencyDialer.DIAL"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method

.method protected provisioningDisabled()Z
    .registers 3

    .prologue
    .line 1507
    iget-object v0, p0, Lcom/google/android/setupwizard/BaseActivity;->mProvisioningMode:Lcom/google/android/setupwizard/BaseActivity$ProvisioningMode;

    sget-object v1, Lcom/google/android/setupwizard/BaseActivity$ProvisioningMode;->DISABLED:Lcom/google/android/setupwizard/BaseActivity$ProvisioningMode;

    if-eq v0, v1, :cond_c

    iget-object v0, p0, Lcom/google/android/setupwizard/BaseActivity;->mProvisioningMode:Lcom/google/android/setupwizard/BaseActivity$ProvisioningMode;

    sget-object v1, Lcom/google/android/setupwizard/BaseActivity$ProvisioningMode;->EMULATOR:Lcom/google/android/setupwizard/BaseActivity$ProvisioningMode;

    if-ne v0, v1, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method protected setBackButton(Landroid/view/View;)V
    .registers 3
    .parameter "backButton"

    .prologue
    .line 458
    if-eqz p1, :cond_a

    .line 459
    iget-object v0, p0, Lcom/google/android/setupwizard/BaseActivity;->mBackButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 462
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/setupwizard/BaseActivity;->mAllowBackHardKey:Z

    .line 464
    :cond_a
    return-void
.end method

.method public setContentView(I)V
    .registers 5
    .parameter "resid"

    .prologue
    .line 730
    invoke-virtual {p0}, Lcom/google/android/setupwizard/BaseActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 731
    .local v0, inflater:Landroid/view/LayoutInflater;
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 732
    .local v1, view:Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/google/android/setupwizard/BaseActivity;->setContentView(Landroid/view/View;)V

    .line 733
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 737
    iget-object v0, p0, Lcom/google/android/setupwizard/BaseActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 738
    return-void
.end method

.method protected final setDefaultButton(Landroid/view/View;Z)V
    .registers 4
    .parameter "view"
    .parameter "primary"

    .prologue
    .line 495
    if-eqz p2, :cond_4

    iput-object p1, p0, Lcom/google/android/setupwizard/BaseActivity;->mPrimaryButton:Landroid/view/View;

    .line 496
    :cond_4
    iget-object v0, p0, Lcom/google/android/setupwizard/BaseActivity;->mOnDefaultButtonClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 497
    return-void
.end method

.method protected simMissing()Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    .line 1638
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/google/android/setupwizard/BaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1640
    const-string v2, "SetupWizard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSimState() == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1641
    if-eqz v0, :cond_3b

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    if-ne v2, v1, :cond_3b

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    if-eq v0, v1, :cond_39

    invoke-virtual {p0}, Lcom/google/android/setupwizard/BaseActivity;->isLTE()Z

    move-result v0

    if-eqz v0, :cond_3b

    :cond_39
    move v0, v1

    :goto_3a
    return v0

    :cond_3b
    const/4 v0, 0x0

    goto :goto_3a
.end method

.method protected simStateUnknown()Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1648
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Lcom/google/android/setupwizard/BaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1650
    .local v0, telephonyManager:Landroid/telephony/TelephonyManager;
    if-nez v0, :cond_d

    .line 1658
    :cond_c
    :goto_c
    return v1

    .line 1655
    :cond_d
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v3

    if-eq v3, v1, :cond_1b

    invoke-virtual {p0}, Lcom/google/android/setupwizard/BaseActivity;->isLTE()Z

    move-result v3

    if-nez v3, :cond_1b

    move v1, v2

    .line 1656
    goto :goto_c

    .line 1658
    :cond_1b
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    if-eqz v3, :cond_c

    move v1, v2

    goto :goto_c
.end method

.method protected start()V
    .registers 1

    .prologue
    .line 472
    return-void
.end method

.method protected startPrepayDetection()V
    .registers 3

    .prologue
    .line 1677
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/setupwizard/PrepayDetectionService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1678
    invoke-virtual {p0, v0}, Lcom/google/android/setupwizard/BaseActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1679
    return-void
.end method

.method protected startWelcomeActivity()V
    .registers 3

    .prologue
    .line 1071
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/setupwizard/WelcomeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x2711

    invoke-direct {p0, v0, v1}, Lcom/google/android/setupwizard/BaseActivity;->startFirstRunActivityForResult(Landroid/content/Intent;I)V

    .line 1072
    return-void
.end method
