.class public Lcom/google/android/apps/uploader/googlemobile/debug/Settings;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/uploader/googlemobile/debug/Settings$Mmapi;,
        Lcom/google/android/apps/uploader/googlemobile/debug/Settings$Jsr179;
    }
.end annotation


# static fields
.field private static final provider:Lcom/google/android/apps/uploader/googlemobile/debug/SettingsProvider;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/google/android/apps/uploader/googlemobile/debug/Settings;->settingsProvider()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/uploader/googlemobile/debug/DebugUtil;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/uploader/googlemobile/debug/SettingsProvider;

    sput-object v0, Lcom/google/android/apps/uploader/googlemobile/debug/Settings;->provider:Lcom/google/android/apps/uploader/googlemobile/debug/SettingsProvider;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Z)Z
    .registers 3

    invoke-static {p0, p1}, Lcom/google/android/apps/uploader/googlemobile/debug/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p0, p1}, Lcom/google/android/apps/uploader/googlemobile/debug/Settings;->error(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static error(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attribute method \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "()\' must not be called "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "when capability \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' is not present."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getBoolean(Ljava/lang/String;Z)Z
    .registers 3

    sget-object v0, Lcom/google/android/apps/uploader/googlemobile/debug/Settings;->provider:Lcom/google/android/apps/uploader/googlemobile/debug/SettingsProvider;

    invoke-interface {v0, p0, p1}, Lcom/google/android/apps/uploader/googlemobile/debug/SettingsProvider;->getAttributeBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static getInt(Ljava/lang/String;I)I
    .registers 3

    sget-object v0, Lcom/google/android/apps/uploader/googlemobile/debug/Settings;->provider:Lcom/google/android/apps/uploader/googlemobile/debug/SettingsProvider;

    invoke-interface {v0, p0, p1}, Lcom/google/android/apps/uploader/googlemobile/debug/SettingsProvider;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static getLong(Ljava/lang/String;J)J
    .registers 5

    sget-object v0, Lcom/google/android/apps/uploader/googlemobile/debug/Settings;->provider:Lcom/google/android/apps/uploader/googlemobile/debug/SettingsProvider;

    invoke-interface {v0, p0, p1, p2}, Lcom/google/android/apps/uploader/googlemobile/debug/SettingsProvider;->getAttributeLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getScreenHeight()I
    .registers 2

    const-string v0, "screenHeight"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/apps/uploader/googlemobile/debug/Settings;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getScreenWidth()I
    .registers 2

    const-string v0, "screenWidth"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/apps/uploader/googlemobile/debug/Settings;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/google/android/apps/uploader/googlemobile/debug/Settings;->provider:Lcom/google/android/apps/uploader/googlemobile/debug/SettingsProvider;

    invoke-interface {v0, p0, p1}, Lcom/google/android/apps/uploader/googlemobile/debug/SettingsProvider;->getAttributeString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hasBolide()Z
    .registers 1

    const/4 v0, 0x0

    return v0
.end method

.method private static hasCapability(Ljava/lang/String;)Z
    .registers 2

    sget-object v0, Lcom/google/android/apps/uploader/googlemobile/debug/Settings;->provider:Lcom/google/android/apps/uploader/googlemobile/debug/SettingsProvider;

    invoke-interface {v0, p0}, Lcom/google/android/apps/uploader/googlemobile/debug/SettingsProvider;->hasCapability(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static hasCldc10()Z
    .registers 1

    const/4 v0, 0x0

    return v0
.end method

.method public static hasCldc11()Z
    .registers 1

    const/4 v0, 0x1

    return v0
.end method

.method public static hasDoja()Z
    .registers 1

    const/4 v0, 0x0

    return v0
.end method

.method public static hasJsr179()Z
    .registers 1

    const/4 v0, 0x0

    return v0
.end method

.method public static hasJsr211()Z
    .registers 1

    const/4 v0, 0x0

    return v0
.end method

.method public static hasJsr234()Z
    .registers 1

    const/4 v0, 0x0

    return v0
.end method

.method public static hasJsr256()Z
    .registers 1

    const/4 v0, 0x0

    return v0
.end method

.method public static hasJsr75()Z
    .registers 1

    const/4 v0, 0x0

    return v0
.end method

.method public static hasJsr82()Z
    .registers 1

    const/4 v0, 0x0

    return v0
.end method

.method public static hasMidp10()Z
    .registers 1

    const/4 v0, 0x0

    return v0
.end method

.method public static hasMidp20()Z
    .registers 1

    const/4 v0, 0x0

    return v0
.end method

.method public static hasMidpJP8()Z
    .registers 1

    const/4 v0, 0x0

    return v0
.end method

.method public static hasMmapi()Z
    .registers 1

    const/4 v0, 0x0

    return v0
.end method

.method public static hasMultiLocale()Z
    .registers 1

    const/4 v0, 0x0

    return v0
.end method

.method public static hasNokiaui()Z
    .registers 1

    const/4 v0, 0x0

    return v0
.end method

.method public static hasRim40()Z
    .registers 1

    const/4 v0, 0x0

    return v0
.end method

.method public static hasRim41()Z
    .registers 1

    const/4 v0, 0x0

    return v0
.end method

.method public static hasRim42()Z
    .registers 1

    const/4 v0, 0x0

    return v0
.end method

.method public static hasRim43()Z
    .registers 1

    const/4 v0, 0x0

    return v0
.end method

.method public static hasRim46()Z
    .registers 1

    const/4 v0, 0x0

    return v0
.end method

.method public static hasRim47()Z
    .registers 1

    const/4 v0, 0x0

    return v0
.end method

.method public static hasRtsp()Z
    .registers 1

    const/4 v0, 0x0

    return v0
.end method

.method public static hasStar()Z
    .registers 1

    const/4 v0, 0x0

    return v0
.end method

.method public static hasTouchScreen()Z
    .registers 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isAssertEnabled()Z
    .registers 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isDebugEnabled()Z
    .registers 1

    const/4 v0, 0x0

    return v0
.end method

.method private static isEnabled(Ljava/lang/String;)Z
    .registers 2

    sget-object v0, Lcom/google/android/apps/uploader/googlemobile/debug/Settings;->provider:Lcom/google/android/apps/uploader/googlemobile/debug/SettingsProvider;

    invoke-interface {v0, p0}, Lcom/google/android/apps/uploader/googlemobile/debug/SettingsProvider;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isLogEnabled()Z
    .registers 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isProductionEnabled()Z
    .registers 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isProfileEnabled()Z
    .registers 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isTestEnabled()Z
    .registers 1

    const/4 v0, 0x0

    return v0
.end method

.method private static settingsProvider()Ljava/lang/Class;
    .registers 1

    new-instance v0, Lcom/google/android/apps/uploader/googlemobile/debug/NullSettingsProvider;

    invoke-direct {v0}, Lcom/google/android/apps/uploader/googlemobile/debug/NullSettingsProvider;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
