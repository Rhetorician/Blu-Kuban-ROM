.class public Lcom/google/android/voicesearch/DeviceCapabilityManager;
.super Ljava/lang/Object;
.source "DeviceCapabilityManager.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mScreenSize:I

.field private final mTelephoneCapable:Z


# direct methods
.method protected constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/voicesearch/DeviceCapabilityManager;->mTelephoneCapable:Z

    .line 44
    iput-object v1, p0, Lcom/google/android/voicesearch/DeviceCapabilityManager;->mContext:Landroid/content/Context;

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/voicesearch/DeviceCapabilityManager;->mScreenSize:I

    .line 46
    iput-object v1, p0, Lcom/google/android/voicesearch/DeviceCapabilityManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/google/android/voicesearch/DeviceCapabilityManager;->mContext:Landroid/content/Context;

    .line 51
    iget-object v1, p0, Lcom/google/android/voicesearch/DeviceCapabilityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/voicesearch/DeviceCapabilityManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 53
    iget-object v1, p0, Lcom/google/android/voicesearch/DeviceCapabilityManager;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 55
    .local v0, telephoneManager:Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_33

    invoke-static {v0}, Lcom/google/android/voicesearch/VoiceCapableCompat;->isVoiceCapable(Landroid/telephony/TelephonyManager;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 57
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/voicesearch/DeviceCapabilityManager;->mTelephoneCapable:Z

    .line 62
    :goto_22
    iget-object v1, p0, Lcom/google/android/voicesearch/DeviceCapabilityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    iput v1, p0, Lcom/google/android/voicesearch/DeviceCapabilityManager;->mScreenSize:I

    .line 64
    return-void

    .line 59
    :cond_33
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/voicesearch/DeviceCapabilityManager;->mTelephoneCapable:Z

    goto :goto_22
.end method


# virtual methods
.method public getInstalledPackageVersion(Ljava/lang/String;)I
    .registers 6
    .parameter "packageName"

    .prologue
    .line 112
    :try_start_0
    iget-object v2, p0, Lcom/google/android/voicesearch/DeviceCapabilityManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 113
    .local v1, info:Landroid/content/pm/PackageInfo;
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_9} :catch_a

    .line 115
    .end local v1           #info:Landroid/content/pm/PackageInfo;
    :goto_9
    return v2

    .line 114
    :catch_a
    move-exception v0

    .line 115
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, -0x1

    goto :goto_9
.end method

.method public hasLargeScreen()Z
    .registers 3

    .prologue
    .line 123
    iget v0, p0, Lcom/google/android/voicesearch/DeviceCapabilityManager;->mScreenSize:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_a

    iget v0, p0, Lcom/google/android/voicesearch/DeviceCapabilityManager;->mScreenSize:I

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

.method public hasSmallScreen()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 131
    iget v1, p0, Lcom/google/android/voicesearch/DeviceCapabilityManager;->mScreenSize:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isTelephoneCapable()Z
    .registers 2

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/google/android/voicesearch/DeviceCapabilityManager;->mTelephoneCapable:Z

    return v0
.end method

.method public supportsActivity(Landroid/content/ComponentName;)Z
    .registers 6
    .parameter "component"

    .prologue
    const/4 v1, 0x0

    .line 95
    :try_start_1
    iget-object v2, p0, Lcom/google/android/voicesearch/DeviceCapabilityManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_7} :catch_9

    .line 96
    const/4 v1, 0x1

    .line 98
    :goto_8
    return v1

    .line 97
    :catch_9
    move-exception v0

    .line 98
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_8
.end method

.method public supportsIntent(Landroid/content/Intent;)Z
    .registers 4
    .parameter "intent"

    .prologue
    const/4 v0, 0x0

    .line 84
    iget-object v1, p0, Lcom/google/android/voicesearch/DeviceCapabilityManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method
