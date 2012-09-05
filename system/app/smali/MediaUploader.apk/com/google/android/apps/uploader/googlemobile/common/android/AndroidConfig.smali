.class public Lcom/google/android/apps/uploader/googlemobile/common/android/AndroidConfig;
.super Lcom/google/android/apps/uploader/googlemobile/common/Config;


# static fields
.field public static final LOCALE_SEPARATOR:Ljava/lang/String; = " "

.field public static final SUPPORTED_LOCALES:Ljava/lang/String; = "en"

.field private static stringResourceContext:Landroid/content/Context;

.field private static uiThread:Ljava/lang/Thread;


# instance fields
.field private final clock:Lcom/google/android/apps/uploader/googlemobile/common/Clock;

.field protected connectionFactory:Lcom/google/android/apps/uploader/googlemobile/common/io/android/AndroidHttpConnectionFactory;

.field protected final context:Landroid/content/Context;

.field protected fontFactory:Lcom/google/android/apps/uploader/googlemobile/common/graphics/FontFactory;

.field protected imageFactory:Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidImageFactory;

.field protected persistentStore:Lcom/google/android/apps/uploader/googlemobile/common/io/PersistentStore;

.field private final pixelsPerInch:I

.field protected tcpConnFactory:Lcom/google/android/apps/uploader/googlemobile/common/io/TcpConnectionFactory;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/uploader/googlemobile/common/android/AndroidConfig;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/google/android/apps/uploader/googlemobile/common/Config;-><init>()V

    new-instance v0, Lcom/google/android/apps/uploader/googlemobile/common/android/AndroidClock;

    invoke-direct {v0}, Lcom/google/android/apps/uploader/googlemobile/common/android/AndroidClock;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/android/AndroidConfig;->clock:Lcom/google/android/apps/uploader/googlemobile/common/Clock;

    iput-object p1, p0, Lcom/google/android/apps/uploader/googlemobile/common/android/AndroidConfig;->context:Landroid/content/Context;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/uploader/googlemobile/common/android/AndroidConfig;->uiThread:Ljava/lang/Thread;

    invoke-static {p0}, Lcom/google/android/apps/uploader/googlemobile/common/android/AndroidConfig;->setConfig(Lcom/google/android/apps/uploader/googlemobile/common/Config;)V

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/googlemobile/common/android/AndroidConfig;->init()V

    sput-boolean v1, Lcom/google/android/apps/uploader/googlemobile/common/android/AndroidConfig;->USE_NATIVE_COMMANDS:Z

    sput-boolean v1, Lcom/google/android/apps/uploader/googlemobile/common/android/AndroidConfig;->USE_NATIVE_MENUS:Z

    const/4 v0, 0x4

    sput v0, Lcom/google/android/apps/uploader/googlemobile/common/android/AndroidConfig;->KEY_BACK:I

    if-eqz p1, :cond_4c

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->xdpi:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->ydpi:F

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/android/AndroidConfig;->pixelsPerInch:I

    :goto_45
    invoke-virtual {p0, p2}, Lcom/google/android/apps/uploader/googlemobile/common/android/AndroidConfig;->initPortabilityFields(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/apps/uploader/googlemobile/common/android/AndroidConfig;->initLocale()V

    return-void

    :cond_4c
    const/16 v0, 0x80

    iput v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/android/AndroidConfig;->pixelsPerInch:I

    goto :goto_45
.end method

.method public static androidString(I)Ljava/lang/String;
    .registers 4

    sget-object v0, Lcom/google/android/apps/uploader/googlemobile/common/android/AndroidConfig;->stringResourceContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x7c

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSetting(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const/4 v6, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/android/AndroidConfig;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.google.settings/partner"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "value"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "name=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_4a

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4a

    const-string v1, "value"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_45} :catch_47

    move-result-object v0

    :goto_46
    return-object v0

    :catch_47
    move-exception v0

    move-object v0, v6

    goto :goto_46

    :cond_4a
    move-object v0, v6

    goto :goto_46
.end method

.method private initLocale()V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/googlemobile/common/android/AndroidConfig;->getI18n()Lcom/google/android/apps/uploader/googlemobile/common/I18n;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/uploader/googlemobile/common/I18n;->setSystemLocale(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/googlemobile/common/android/AndroidConfig;->getI18n()Lcom/google/android/apps/uploader/googlemobile/common/I18n;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/uploader/googlemobile/common/I18n;->setUiLocale(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public assertNotOnUiThread()V
    .registers 1

    return-void
.end method

.method public assertOnUiThread()V
    .registers 1

    return-void
.end method

.method public configurationChanged()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/apps/uploader/googlemobile/common/android/AndroidConfig;->initLocale()V

    return-void
.end method

.method public getAppProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public getClock()Lcom/google/android/apps/uploader/googlemobile/common/Clock;
    .registers 2

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/android/AndroidConfig;->clock:Lcom/google/android/apps/uploader/googlemobile/common/Clock;

    return-object v0
.end method

.method public bridge synthetic getConnectionFactory()Lcom/google/android/apps/uploader/googlemobile/common/io/HttpConnectionFactory;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/googlemobile/common/android/AndroidConfig;->getConnectionFactory()Lcom/google/android/apps/uploader/googlemobile/common/io/android/AndroidHttpConnectionFactory;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionFactory()Lcom/google/android/apps/uploader/googlemobile/common/io/android/AndroidHttpConnectionFactory;
    .registers 2

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/android/AndroidConfig;->connectionFactory:Lcom/google/android/apps/uploader/googlemobile/common/io/android/AndroidHttpConnectionFactory;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/android/AndroidConfig;->context:Landroid/content/Context;

    return-object v0
.end method

.method protected getDistributionChannelInternal()Ljava/lang/String;
    .registers 4

    const-string v0, "maps_client_id"

    invoke-direct {p0, v0}, Lcom/google/android/apps/uploader/googlemobile/common/android/AndroidConfig;->getSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/uploader/googlemobile/common/util/text/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const-string v0, "client_id"

    invoke-direct {p0, v0}, Lcom/google/android/apps/uploader/googlemobile/common/android/AndroidConfig;->getSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/uploader/googlemobile/common/util/text/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const-string v0, "Web"

    :cond_1a
    :goto_1a
    return-object v0

    :cond_1b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gmm-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1a
.end method

.method public getFontFactory()Lcom/google/android/apps/uploader/googlemobile/common/graphics/FontFactory;
    .registers 2

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/android/AndroidConfig;->fontFactory:Lcom/google/android/apps/uploader/googlemobile/common/graphics/FontFactory;

    return-object v0
.end method

.method public getGameAction(Ljava/lang/Object;I)I
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic getImageFactory()Lcom/google/android/apps/uploader/googlemobile/common/graphics/ImageFactory;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/googlemobile/common/android/AndroidConfig;->getImageFactory()Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidImageFactory;

    move-result-object v0

    return-object v0
.end method

.method public getImageFactory()Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidImageFactory;
    .registers 2

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/android/AndroidConfig;->imageFactory:Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidImageFactory;

    return-object v0
.end method

.method public getLocationManager()Landroid/location/LocationManager;
    .registers 3

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/android/AndroidConfig;->context:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/LocationManager;

    return-object p0
.end method

.method public getMinTouchablePixels()I
    .registers 2

    const/16 v0, 0x22

    return v0
.end method

.method public getNativeDateTimeFieldFactory()Lcom/google/android/apps/uploader/googlemobile/common/ui/NativeDateTimeFieldFactory;
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Native DateTime Fields not used on Android."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNativeTextFieldFactory()Lcom/google/android/apps/uploader/googlemobile/common/ui/NativeTextFieldFactory;
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Native Text Fields not used on Android."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNetworkType()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/android/AndroidConfig;->context:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_38

    :cond_17
    :goto_17
    const-string v0, "Unknown"

    :goto_19
    return-object v0

    :pswitch_1a
    const-string v0, "WiFi"

    goto :goto_19

    :pswitch_1d
    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/android/AndroidConfig;->context:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    packed-switch v0, :pswitch_data_40

    goto :goto_17

    :pswitch_2f
    const-string v0, "GPRS"

    goto :goto_19

    :pswitch_32
    const-string v0, "UMTS"

    goto :goto_19

    :pswitch_35
    const-string v0, "EDGE"

    goto :goto_19

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1a
    .end packed-switch

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_35
        :pswitch_32
    .end packed-switch
.end method

.method public getPersistentStore()Lcom/google/android/apps/uploader/googlemobile/common/io/PersistentStore;
    .registers 2

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/android/AndroidConfig;->persistentStore:Lcom/google/android/apps/uploader/googlemobile/common/io/PersistentStore;

    return-object v0
.end method

.method public getPixelsPerInch()I
    .registers 2

    iget v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/android/AndroidConfig;->pixelsPerInch:I

    return v0
.end method

.method public declared-synchronized getTcpConnectionFactory()Lcom/google/android/apps/uploader/googlemobile/common/io/TcpConnectionFactory;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/android/AndroidConfig;->tcpConnFactory:Lcom/google/android/apps/uploader/googlemobile/common/io/TcpConnectionFactory;

    if-nez v0, :cond_e

    new-instance v0, Lcom/google/android/apps/uploader/googlemobile/common/io/android/AndroidTcpConnectionFactory;

    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/android/AndroidConfig;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/apps/uploader/googlemobile/common/io/android/AndroidTcpConnectionFactory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/android/AndroidConfig;->tcpConnFactory:Lcom/google/android/apps/uploader/googlemobile/common/io/TcpConnectionFactory;

    :cond_e
    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/android/AndroidConfig;->tcpConnFactory:Lcom/google/android/apps/uploader/googlemobile/common/io/TcpConnectionFactory;
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    monitor-exit p0

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    const-string v0, "${version}"

    return-object v0
.end method

.method protected initPortabilityFields(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/android/AndroidConfig;->context:Landroid/content/Context;

    if-nez v0, :cond_25

    new-instance v0, Lcom/google/android/apps/uploader/googlemobile/common/io/InMemoryPersistentStore;

    invoke-direct {v0}, Lcom/google/android/apps/uploader/googlemobile/common/io/InMemoryPersistentStore;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/android/AndroidConfig;->persistentStore:Lcom/google/android/apps/uploader/googlemobile/common/io/PersistentStore;

    :goto_b
    new-instance v0, Lcom/google/android/apps/uploader/googlemobile/common/io/android/AndroidHttpConnectionFactory;

    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/android/AndroidConfig;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/apps/uploader/googlemobile/common/io/android/AndroidHttpConnectionFactory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/android/AndroidConfig;->connectionFactory:Lcom/google/android/apps/uploader/googlemobile/common/io/android/AndroidHttpConnectionFactory;

    new-instance v0, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidFontFactory;

    invoke-direct {v0}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidFontFactory;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/android/AndroidConfig;->fontFactory:Lcom/google/android/apps/uploader/googlemobile/common/graphics/FontFactory;

    new-instance v0, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidImageFactory;

    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/android/AndroidConfig;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidImageFactory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/android/AndroidConfig;->imageFactory:Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidImageFactory;

    return-void

    :cond_25
    if-eqz p1, :cond_2f

    new-instance v0, Lcom/google/android/apps/uploader/googlemobile/common/io/android/AndroidFixedPersistentStore;

    invoke-direct {v0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/android/AndroidFixedPersistentStore;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/android/AndroidConfig;->persistentStore:Lcom/google/android/apps/uploader/googlemobile/common/io/PersistentStore;

    goto :goto_b

    :cond_2f
    new-instance v0, Lcom/google/android/apps/uploader/googlemobile/common/io/android/AndroidPersistentStore;

    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/android/AndroidConfig;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/apps/uploader/googlemobile/common/io/android/AndroidPersistentStore;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/android/AndroidConfig;->persistentStore:Lcom/google/android/apps/uploader/googlemobile/common/io/PersistentStore;

    goto :goto_b
.end method

.method public isFire(Ljava/lang/Object;I)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method public setFontFactory(Lcom/google/android/apps/uploader/googlemobile/common/graphics/FontFactory;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/apps/uploader/googlemobile/common/android/AndroidConfig;->fontFactory:Lcom/google/android/apps/uploader/googlemobile/common/graphics/FontFactory;

    return-void
.end method

.method public setStringResourceContext(Landroid/content/Context;)V
    .registers 2

    sput-object p1, Lcom/google/android/apps/uploader/googlemobile/common/android/AndroidConfig;->stringResourceContext:Landroid/content/Context;

    return-void
.end method

.method protected setupGzipper()V
    .registers 2

    new-instance v0, Lcom/google/android/apps/uploader/googlemobile/common/android/AndroidConfig$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/uploader/googlemobile/common/android/AndroidConfig$1;-><init>(Lcom/google/android/apps/uploader/googlemobile/common/android/AndroidConfig;)V

    invoke-static {v0}, Lcom/google/android/apps/uploader/googlemobile/common/io/Gunzipper;->setImplementation(Lcom/google/android/apps/uploader/googlemobile/common/io/Gunzipper$GunzipInterface;)V

    return-void
.end method

.method public supportsTranslucency()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected testSupportsJpeg()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public useNativeTextButtons()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
