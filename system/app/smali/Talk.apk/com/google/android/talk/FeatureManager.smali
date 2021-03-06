.class public Lcom/google/android/talk/FeatureManager;
.super Ljava/lang/Object;
.source "FeatureManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/FeatureManager$1;,
        Lcom/google/android/talk/FeatureManager$SetFeaturesTask;,
        Lcom/google/android/talk/FeatureManager$DeviceCapabilities;
    }
.end annotation


# static fields
.field private static final HVGA_SIZE:Lcom/google/android/videochat/VideoSpecification;

.field private static final QVGA_SIZE:Lcom/google/android/videochat/VideoSpecification;

.field private static sAudioChatEnabled:Z

.field private static sDefaultVideoChatEffect:Ljava/lang/String;

.field private static sEffectsEnabledMask:I

.field private static sMaxIncomingVideoSpec:Lcom/google/android/videochat/VideoSpecification;

.field private static sMaxOutgoingSpecNoEffects:Lcom/google/android/videochat/VideoSpecification;

.field private static sMaxOutgoingSpecWithEffects:Lcom/google/android/videochat/VideoSpecification;

.field private static sVideoChatEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/16 v4, 0xf

    .line 52
    new-instance v0, Lcom/google/android/videochat/VideoSpecification;

    new-instance v1, Lcom/google/android/videochat/Size;

    const/16 v2, 0x140

    const/16 v3, 0xc8

    invoke-direct {v1, v2, v3}, Lcom/google/android/videochat/Size;-><init>(II)V

    invoke-direct {v0, v1, v4}, Lcom/google/android/videochat/VideoSpecification;-><init>(Lcom/google/android/videochat/Size;I)V

    sput-object v0, Lcom/google/android/talk/FeatureManager;->QVGA_SIZE:Lcom/google/android/videochat/VideoSpecification;

    .line 54
    new-instance v0, Lcom/google/android/videochat/VideoSpecification;

    new-instance v1, Lcom/google/android/videochat/Size;

    const/16 v2, 0x1e0

    const/16 v3, 0x12c

    invoke-direct {v1, v2, v3}, Lcom/google/android/videochat/Size;-><init>(II)V

    invoke-direct {v0, v1, v4}, Lcom/google/android/videochat/VideoSpecification;-><init>(Lcom/google/android/videochat/Size;I)V

    sput-object v0, Lcom/google/android/talk/FeatureManager;->HVGA_SIZE:Lcom/google/android/videochat/VideoSpecification;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 208
    return-void
.end method

.method static synthetic access$1000()Lcom/google/android/videochat/VideoSpecification;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lcom/google/android/talk/FeatureManager;->QVGA_SIZE:Lcom/google/android/videochat/VideoSpecification;

    return-object v0
.end method

.method static synthetic access$1100()I
    .registers 1

    .prologue
    .line 32
    sget v0, Lcom/google/android/talk/FeatureManager;->sEffectsEnabledMask:I

    return v0
.end method

.method static synthetic access$1102(I)I
    .registers 1
    .parameter "x0"

    .prologue
    .line 32
    sput p0, Lcom/google/android/talk/FeatureManager;->sEffectsEnabledMask:I

    return p0
.end method

.method static synthetic access$1172(I)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    sget v0, Lcom/google/android/talk/FeatureManager;->sEffectsEnabledMask:I

    and-int/2addr v0, p0

    sput v0, Lcom/google/android/talk/FeatureManager;->sEffectsEnabledMask:I

    return v0
.end method

.method static synthetic access$1200(J)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    invoke-static {p0, p1}, Lcom/google/android/talk/FeatureManager;->setAccountFeatures(J)V

    return-void
.end method

.method static synthetic access$200(Landroid/content/Context;)Lcom/google/android/talk/FeatureManager$DeviceCapabilities;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    invoke-static {p0}, Lcom/google/android/talk/FeatureManager;->determineDeviceCapabilities(Landroid/content/Context;)Lcom/google/android/talk/FeatureManager$DeviceCapabilities;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Z
    .registers 1

    .prologue
    .line 32
    sget-boolean v0, Lcom/google/android/talk/FeatureManager;->sVideoChatEnabled:Z

    return v0
.end method

.method static synthetic access$302(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 32
    sput-boolean p0, Lcom/google/android/talk/FeatureManager;->sVideoChatEnabled:Z

    return p0
.end method

.method static synthetic access$400()Z
    .registers 1

    .prologue
    .line 32
    sget-boolean v0, Lcom/google/android/talk/FeatureManager;->sAudioChatEnabled:Z

    return v0
.end method

.method static synthetic access$402(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 32
    sput-boolean p0, Lcom/google/android/talk/FeatureManager;->sAudioChatEnabled:Z

    return p0
.end method

.method static synthetic access$502(Ljava/lang/String;)Ljava/lang/String;
    .registers 1
    .parameter "x0"

    .prologue
    .line 32
    sput-object p0, Lcom/google/android/talk/FeatureManager;->sDefaultVideoChatEffect:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600()Lcom/google/android/videochat/VideoSpecification;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lcom/google/android/talk/FeatureManager;->sMaxIncomingVideoSpec:Lcom/google/android/videochat/VideoSpecification;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/android/videochat/VideoSpecification;)Lcom/google/android/videochat/VideoSpecification;
    .registers 1
    .parameter "x0"

    .prologue
    .line 32
    sput-object p0, Lcom/google/android/talk/FeatureManager;->sMaxIncomingVideoSpec:Lcom/google/android/videochat/VideoSpecification;

    return-object p0
.end method

.method static synthetic access$700()Lcom/google/android/videochat/VideoSpecification;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lcom/google/android/talk/FeatureManager;->HVGA_SIZE:Lcom/google/android/videochat/VideoSpecification;

    return-object v0
.end method

.method static synthetic access$800()Lcom/google/android/videochat/VideoSpecification;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lcom/google/android/talk/FeatureManager;->sMaxOutgoingSpecNoEffects:Lcom/google/android/videochat/VideoSpecification;

    return-object v0
.end method

.method static synthetic access$802(Lcom/google/android/videochat/VideoSpecification;)Lcom/google/android/videochat/VideoSpecification;
    .registers 1
    .parameter "x0"

    .prologue
    .line 32
    sput-object p0, Lcom/google/android/talk/FeatureManager;->sMaxOutgoingSpecNoEffects:Lcom/google/android/videochat/VideoSpecification;

    return-object p0
.end method

.method static synthetic access$900()Lcom/google/android/videochat/VideoSpecification;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lcom/google/android/talk/FeatureManager;->sMaxOutgoingSpecWithEffects:Lcom/google/android/videochat/VideoSpecification;

    return-object v0
.end method

.method static synthetic access$902(Lcom/google/android/videochat/VideoSpecification;)Lcom/google/android/videochat/VideoSpecification;
    .registers 1
    .parameter "x0"

    .prologue
    .line 32
    sput-object p0, Lcom/google/android/talk/FeatureManager;->sMaxOutgoingSpecWithEffects:Lcom/google/android/videochat/VideoSpecification;

    return-object p0
.end method

.method public static areAnyEffectsAvailable()Z
    .registers 1

    .prologue
    .line 112
    sget v0, Lcom/google/android/talk/FeatureManager;->sEffectsEnabledMask:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static audioChatEnabled()Z
    .registers 1

    .prologue
    .line 84
    sget-boolean v0, Lcom/google/android/talk/FeatureManager;->sAudioChatEnabled:Z

    return v0
.end method

.method public static clearDeviceFeatures(Landroid/content/Context;)V
    .registers 4
    .parameter "c"

    .prologue
    .line 116
    const-string v1, "deviceCapabilities"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 118
    .local v0, deviceCaps:Landroid/content/SharedPreferences$Editor;
    const-string v1, "dirty"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 119
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 120
    return-void
.end method

.method private static determineDeviceCapabilities(Landroid/content/Context;)Lcom/google/android/talk/FeatureManager$DeviceCapabilities;
    .registers 11
    .parameter "c"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 161
    new-instance v2, Lcom/google/android/talk/FeatureManager$DeviceCapabilities;

    const/4 v6, 0x0

    invoke-direct {v2, v6}, Lcom/google/android/talk/FeatureManager$DeviceCapabilities;-><init>(Lcom/google/android/talk/FeatureManager$1;)V

    .line 163
    .local v2, deviceCaps:Lcom/google/android/talk/FeatureManager$DeviceCapabilities;
    const-string v6, "deviceCapabilities"

    invoke-virtual {p0, v6, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 166
    .local v3, deviceCapsPrefs:Landroid/content/SharedPreferences;
    iput-boolean v8, v2, Lcom/google/android/talk/FeatureManager$DeviceCapabilities;->mHasNEON:Z

    .line 167
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v6

    const/4 v9, 0x2

    if-lt v6, v9, :cond_7e

    move v6, v7

    :goto_1c
    iput-boolean v6, v2, Lcom/google/android/talk/FeatureManager$DeviceCapabilities;->mMulticore:Z

    .line 168
    const-string v6, "armeabi-v7a"

    sget-object v9, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    iput-boolean v6, v2, Lcom/google/android/talk/FeatureManager$DeviceCapabilities;->mArmv7:Z

    .line 169
    const-string v6, "dirty"

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_d3

    .line 170
    iget-boolean v6, v2, Lcom/google/android/talk/FeatureManager$DeviceCapabilities;->mArmv7:Z

    if-nez v6, :cond_80

    .line 171
    const-string v6, "talk"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Not arm7 "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v9, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :goto_4e
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 191
    .local v4, editor:Landroid/content/SharedPreferences$Editor;
    const-string v6, "dirty"

    invoke-interface {v4, v6, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 192
    const-string v6, "frontCamera"

    iget-boolean v7, v2, Lcom/google/android/talk/FeatureManager$DeviceCapabilities;->mFrontCamera:Z

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 193
    const-string v6, "glv2"

    iget-boolean v7, v2, Lcom/google/android/talk/FeatureManager$DeviceCapabilities;->mGlv2:Z

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 194
    const-string v6, "armv7"

    iget-boolean v7, v2, Lcom/google/android/talk/FeatureManager$DeviceCapabilities;->mArmv7:Z

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 195
    const-string v6, "neon"

    iget-boolean v7, v2, Lcom/google/android/talk/FeatureManager$DeviceCapabilities;->mHasNEON:Z

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 196
    const-string v6, "effectsMask"

    iget v7, v2, Lcom/google/android/talk/FeatureManager$DeviceCapabilities;->mEffectsEnabledMask:I

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 197
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 205
    .end local v4           #editor:Landroid/content/SharedPreferences$Editor;
    :goto_7d
    return-object v2

    :cond_7e
    move v6, v8

    .line 167
    goto :goto_1c

    .line 173
    :cond_80
    invoke-static {p0}, Lcom/google/android/talk/FeatureManager;->getOpenGlEsVersion(Landroid/content/Context;)F

    move-result v6

    const/high16 v9, 0x4000

    cmpl-float v6, v6, v9

    if-ltz v6, :cond_8c

    .line 174
    iput-boolean v7, v2, Lcom/google/android/talk/FeatureManager$DeviceCapabilities;->mGlv2:Z

    .line 176
    :cond_8c
    invoke-static {}, Lcom/google/android/talk/FeatureManager;->hasNEON()Z

    move-result v6

    iput-boolean v6, v2, Lcom/google/android/talk/FeatureManager$DeviceCapabilities;->mHasNEON:Z

    .line 178
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 180
    .local v0, cameraInfo:Landroid/hardware/Camera$CameraInfo;
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v1

    .line 181
    .local v1, count:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_9c
    if-ge v5, v1, :cond_b1

    iget-boolean v6, v2, Lcom/google/android/talk/FeatureManager$DeviceCapabilities;->mFrontCamera:Z

    if-nez v6, :cond_b1

    .line 182
    invoke-static {v5, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 183
    iget v6, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v6, v7, :cond_af

    move v6, v7

    :goto_aa
    iput-boolean v6, v2, Lcom/google/android/talk/FeatureManager$DeviceCapabilities;->mFrontCamera:Z

    .line 181
    add-int/lit8 v5, v5, 0x1

    goto :goto_9c

    :cond_af
    move v6, v8

    .line 183
    goto :goto_aa

    .line 186
    :cond_b1
    const-string v6, "talk"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "supported front camera "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, v2, Lcom/google/android/talk/FeatureManager$DeviceCapabilities;->mFrontCamera:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-static {}, Lcom/google/android/talk/videochat/EffectsController;->generateCapabilitiesMask()I

    move-result v6

    iput v6, v2, Lcom/google/android/talk/FeatureManager$DeviceCapabilities;->mEffectsEnabledMask:I

    goto/16 :goto_4e

    .line 199
    .end local v0           #cameraInfo:Landroid/hardware/Camera$CameraInfo;
    .end local v1           #count:I
    .end local v5           #i:I
    :cond_d3
    const-string v6, "frontCamera"

    invoke-interface {v3, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, v2, Lcom/google/android/talk/FeatureManager$DeviceCapabilities;->mFrontCamera:Z

    .line 200
    const-string v6, "glv2"

    invoke-interface {v3, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, v2, Lcom/google/android/talk/FeatureManager$DeviceCapabilities;->mGlv2:Z

    .line 201
    const-string v6, "effectsMask"

    invoke-interface {v3, v6, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, v2, Lcom/google/android/talk/FeatureManager$DeviceCapabilities;->mEffectsEnabledMask:I

    .line 202
    const-string v6, "neon"

    invoke-interface {v3, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, v2, Lcom/google/android/talk/FeatureManager$DeviceCapabilities;->mHasNEON:Z

    goto :goto_7d
.end method

.method public static getDefaultVideoChatEffect()Ljava/lang/String;
    .registers 1

    .prologue
    .line 100
    sget-object v0, Lcom/google/android/talk/FeatureManager;->sDefaultVideoChatEffect:Ljava/lang/String;

    return-object v0
.end method

.method private static getOpenGlEsVersion(Landroid/content/Context;)F
    .registers 11
    .parameter "context"

    .prologue
    .line 409
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 410
    .local v6, packageManager:Landroid/content/pm/PackageManager;
    invoke-virtual {v6}, Landroid/content/pm/PackageManager;->getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;

    move-result-object v2

    .line 411
    .local v2, featureInfos:[Landroid/content/pm/FeatureInfo;
    if-eqz v2, :cond_41

    array-length v7, v2

    if-lez v7, :cond_41

    .line 412
    move-object v0, v2

    .local v0, arr$:[Landroid/content/pm/FeatureInfo;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_10
    if-ge v4, v5, :cond_41

    aget-object v1, v0, v4

    .line 414
    .local v1, featureInfo:Landroid/content/pm/FeatureInfo;
    iget-object v7, v1, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-nez v7, :cond_3e

    .line 415
    invoke-virtual {v1}, Landroid/content/pm/FeatureInfo;->getGlEsVersion()Ljava/lang/String;

    move-result-object v3

    .line 416
    .local v3, glVersionString:Ljava/lang/String;
    const-string v7, "talk"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "gl version: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/google/android/talk/TalkApp;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    new-instance v7, Ljava/lang/Float;

    invoke-direct {v7, v3}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    .line 421
    .end local v0           #arr$:[Landroid/content/pm/FeatureInfo;
    .end local v1           #featureInfo:Landroid/content/pm/FeatureInfo;
    .end local v3           #glVersionString:Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :goto_3d
    return v7

    .line 412
    .restart local v0       #arr$:[Landroid/content/pm/FeatureInfo;
    .restart local v1       #featureInfo:Landroid/content/pm/FeatureInfo;
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    :cond_3e
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 421
    .end local v0           #arr$:[Landroid/content/pm/FeatureInfo;
    .end local v1           #featureInfo:Landroid/content/pm/FeatureInfo;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_41
    const/4 v7, 0x0

    goto :goto_3d
.end method

.method private static hasNEON()Z
    .registers 13

    .prologue
    const/4 v12, 0x2

    .line 123
    const/4 v6, 0x0

    .line 126
    .local v6, hasNEON:Z
    :try_start_2
    new-instance v3, Ljava/io/FileInputStream;

    const-string v10, "/proc/cpuinfo"

    invoke-direct {v3, v10}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_9} :catch_5a

    .line 128
    .local v3, cpuStream:Ljava/io/FileInputStream;
    :try_start_9
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    new-instance v11, Ljava/io/DataInputStream;

    invoke-direct {v11, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_55

    .line 132
    .local v2, cpuInfoReader:Ljava/io/BufferedReader;
    :cond_18
    :try_start_18
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, cpuInfoLine:Ljava/lang/String;
    if-eqz v1, :cond_4e

    .line 133
    const-string v10, "[ \t]*:[ \t]*"

    const/4 v11, 0x2

    invoke-virtual {v1, v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v9

    .line 134
    .local v9, lineParts:[Ljava/lang/String;
    if-eqz v9, :cond_18

    array-length v10, v9

    if-ne v10, v12, :cond_18

    const-string v10, "Features"

    const/4 v11, 0x0

    aget-object v11, v9, v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_18

    .line 136
    const/4 v10, 0x1

    aget-object v10, v9, v10

    const-string v11, "[ \t]"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 137
    .local v5, features:[Ljava/lang/String;
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/String;
    array-length v8, v0

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_41
    if-ge v7, v8, :cond_4e

    aget-object v4, v0, v7

    .line 138
    .local v4, feature:Ljava/lang/String;
    const-string v10, "neon"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4a
    .catchall {:try_start_18 .. :try_end_4a} :catchall_55
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_4a} :catch_60

    move-result v10

    if-eqz v10, :cond_52

    .line 139
    const/4 v6, 0x1

    .line 150
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #cpuInfoLine:Ljava/lang/String;
    .end local v4           #feature:Ljava/lang/String;
    .end local v5           #features:[Ljava/lang/String;
    .end local v7           #i$:I
    .end local v8           #len$:I
    .end local v9           #lineParts:[Ljava/lang/String;
    :cond_4e
    :goto_4e
    :try_start_4e
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_5c
    .catch Ljava/io/FileNotFoundException; {:try_start_4e .. :try_end_51} :catch_5a

    .line 156
    .end local v2           #cpuInfoReader:Ljava/io/BufferedReader;
    .end local v3           #cpuStream:Ljava/io/FileInputStream;
    :goto_51
    return v6

    .line 137
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #cpuInfoLine:Ljava/lang/String;
    .restart local v2       #cpuInfoReader:Ljava/io/BufferedReader;
    .restart local v3       #cpuStream:Ljava/io/FileInputStream;
    .restart local v4       #feature:Ljava/lang/String;
    .restart local v5       #features:[Ljava/lang/String;
    .restart local v7       #i$:I
    .restart local v8       #len$:I
    .restart local v9       #lineParts:[Ljava/lang/String;
    :cond_52
    add-int/lit8 v7, v7, 0x1

    goto :goto_41

    .line 149
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #cpuInfoLine:Ljava/lang/String;
    .end local v2           #cpuInfoReader:Ljava/io/BufferedReader;
    .end local v4           #feature:Ljava/lang/String;
    .end local v5           #features:[Ljava/lang/String;
    .end local v7           #i$:I
    .end local v8           #len$:I
    .end local v9           #lineParts:[Ljava/lang/String;
    :catchall_55
    move-exception v10

    .line 150
    :try_start_56
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_59} :catch_5e
    .catch Ljava/io/FileNotFoundException; {:try_start_56 .. :try_end_59} :catch_5a

    .line 152
    :goto_59
    :try_start_59
    throw v10
    :try_end_5a
    .catch Ljava/io/FileNotFoundException; {:try_start_59 .. :try_end_5a} :catch_5a

    .line 154
    .end local v3           #cpuStream:Ljava/io/FileInputStream;
    :catch_5a
    move-exception v10

    goto :goto_51

    .line 151
    .restart local v2       #cpuInfoReader:Ljava/io/BufferedReader;
    .restart local v3       #cpuStream:Ljava/io/FileInputStream;
    :catch_5c
    move-exception v10

    goto :goto_51

    .end local v2           #cpuInfoReader:Ljava/io/BufferedReader;
    :catch_5e
    move-exception v11

    goto :goto_59

    .line 146
    .restart local v2       #cpuInfoReader:Ljava/io/BufferedReader;
    :catch_60
    move-exception v10

    goto :goto_4e
.end method

.method public static isEffectAvailable(I)Z
    .registers 5
    .parameter "id"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 104
    if-eqz p0, :cond_8

    const/16 v2, 0x20

    if-le p0, v2, :cond_22

    .line 105
    :cond_8
    const-string v0, "talk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isEffectAvailable bad id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 108
    :cond_21
    :goto_21
    return v0

    :cond_22
    sget v2, Lcom/google/android/talk/FeatureManager;->sEffectsEnabledMask:I

    add-int/lit8 v3, p0, -0x1

    shl-int v3, v0, v3

    and-int/2addr v2, v3

    if-nez v2, :cond_21

    move v0, v1

    goto :goto_21
.end method

.method private static setAccountFeatures(J)V
    .registers 4
    .parameter "accountId"

    .prologue
    .line 399
    invoke-static {}, Lcom/google/android/talk/SettingsCache;->getInstance()Lcom/google/android/talk/SettingsCache;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/google/android/talk/SettingsCache;->getSettingsMap(J)Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    move-result-object v0

    .line 401
    .local v0, settings:Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;
    sget-boolean v1, Lcom/google/android/talk/FeatureManager;->sVideoChatEnabled:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->setCameraEnabled(Z)V

    .line 402
    sget-boolean v1, Lcom/google/android/talk/FeatureManager;->sVideoChatEnabled:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->setVideoChatEnabled(Z)V

    .line 403
    sget-boolean v1, Lcom/google/android/talk/FeatureManager;->sAudioChatEnabled:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->setAudioChatEnabled(Z)V

    .line 404
    return-void
.end method

.method public static setAvailableFeatures(Landroid/content/Context;JLjava/lang/Runnable;)V
    .registers 5
    .parameter "context"
    .parameter "accountId"
    .parameter "doneRunnable"

    .prologue
    .line 74
    new-instance v0, Lcom/google/android/talk/FeatureManager$SetFeaturesTask;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/talk/FeatureManager$SetFeaturesTask;-><init>(Landroid/content/Context;JLjava/lang/Runnable;)V

    .line 76
    .local v0, asyncDetermineFeaturesTask:Lcom/google/android/talk/FeatureManager$SetFeaturesTask;
    invoke-virtual {v0}, Lcom/google/android/talk/FeatureManager$SetFeaturesTask;->execute()V

    .line 77
    return-void
.end method

.method public static setAvailableFeaturesAllAccounts(Landroid/content/Context;Ljava/lang/Runnable;)V
    .registers 3
    .parameter "context"
    .parameter "doneRunnable"

    .prologue
    .line 67
    new-instance v0, Lcom/google/android/talk/FeatureManager$SetFeaturesTask;

    invoke-direct {v0, p0, p1}, Lcom/google/android/talk/FeatureManager$SetFeaturesTask;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 69
    .local v0, asyncInspectCapabilitiesTask:Lcom/google/android/talk/FeatureManager$SetFeaturesTask;
    invoke-virtual {v0}, Lcom/google/android/talk/FeatureManager$SetFeaturesTask;->execute()V

    .line 70
    return-void
.end method

.method public static videoChatEnabled()Z
    .registers 1

    .prologue
    .line 80
    sget-boolean v0, Lcom/google/android/talk/FeatureManager;->sVideoChatEnabled:Z

    return v0
.end method
