.class public Lcom/google/android/gsf/UseLocationForServices;
.super Ljava/lang/Object;
.source "UseLocationForServices.java"


# static fields
.field private static final GOOGLE_GEOLOCATION_ORIGINS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 83
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "http://www.google.com"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "http://www.google.co.uk"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gsf/UseLocationForServices;->GOOGLE_GEOLOCATION_ORIGINS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addGoogleOrigins(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "setting"

    .prologue
    .line 162
    invoke-static {p0}, Lcom/google/android/gsf/UseLocationForServices;->parseAllowGeolocationOrigins(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v4

    .line 163
    .local v4, origins:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    sget-object v0, Lcom/google/android/gsf/UseLocationForServices;->GOOGLE_GEOLOCATION_ORIGINS:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_8
    if-ge v2, v3, :cond_12

    aget-object v1, v0, v2

    .line 164
    .local v1, googleOrigin:Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 163
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 166
    .end local v1           #googleOrigin:Ljava/lang/String;
    :cond_12
    invoke-static {v4}, Lcom/google/android/gsf/UseLocationForServices;->formatAllowGeolocationOrigins(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private static formatAllowGeolocationOrigins(Ljava/util/Collection;)Ljava/lang/String;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 208
    .local p0, origins:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 209
    .local v2, sb:Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 210
    .local v1, origin:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_20

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 211
    :cond_20
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 213
    .end local v1           #origin:Ljava/lang/String;
    :cond_24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getUseLocationForServices(Landroid/content/Context;)I
    .registers 4
    .parameter "context"

    .prologue
    .line 95
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "use_location_for_services"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/GoogleSettingsContract$Partner;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static parseAllowGeolocationOrigins(Ljava/lang/String;)Ljava/util/HashSet;
    .registers 7
    .parameter "setting"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 190
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 191
    .local v4, origins:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_23

    .line 192
    const-string v5, "\\s+"

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_13
    if-ge v1, v2, :cond_23

    aget-object v3, v0, v1

    .line 193
    .local v3, origin:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_20

    .line 194
    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 192
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 198
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #origin:Ljava/lang/String;
    :cond_23
    return-object v4
.end method

.method public static registerUseLocationForServicesObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V
    .registers 5
    .parameter "context"
    .parameter "observer"

    .prologue
    .line 129
    const-string v1, "use_location_for_services"

    invoke-static {v1}, Lcom/google/android/gsf/GoogleSettingsContract$Partner;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 131
    .local v0, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 132
    return-void
.end method

.method private static removeGoogleOrigins(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "setting"

    .prologue
    .line 176
    invoke-static {p0}, Lcom/google/android/gsf/UseLocationForServices;->parseAllowGeolocationOrigins(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v4

    .line 177
    .local v4, origins:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    sget-object v0, Lcom/google/android/gsf/UseLocationForServices;->GOOGLE_GEOLOCATION_ORIGINS:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_8
    if-ge v2, v3, :cond_12

    aget-object v1, v0, v2

    .line 178
    .local v1, googleOrigin:Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 177
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 180
    .end local v1           #googleOrigin:Ljava/lang/String;
    :cond_12
    invoke-static {v4}, Lcom/google/android/gsf/UseLocationForServices;->formatAllowGeolocationOrigins(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private static setGoogleBrowserGeolocation(Landroid/content/Context;Z)V
    .registers 9
    .parameter "context"
    .parameter "allow"

    .prologue
    .line 139
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 143
    .local v3, resolver:Landroid/content/ContentResolver;
    const-string v4, "allowed_geolocation_origins"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 145
    .local v2, oldValue:Ljava/lang/String;
    if-eqz p1, :cond_16

    invoke-static {v2}, Lcom/google/android/gsf/UseLocationForServices;->addGoogleOrigins(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, newValue:Ljava/lang/String;
    :goto_10
    const-string v4, "allowed_geolocation_origins"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 153
    .end local v1           #newValue:Ljava/lang/String;
    .end local v2           #oldValue:Ljava/lang/String;
    .end local v3           #resolver:Landroid/content/ContentResolver;
    :goto_15
    return-void

    .line 145
    .restart local v2       #oldValue:Ljava/lang/String;
    .restart local v3       #resolver:Landroid/content/ContentResolver;
    :cond_16
    invoke-static {v2}, Lcom/google/android/gsf/UseLocationForServices;->removeGoogleOrigins(Ljava/lang/String;)Ljava/lang/String;
    :try_end_19
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_19} :catch_1b

    move-result-object v1

    goto :goto_10

    .line 148
    .end local v2           #oldValue:Ljava/lang/String;
    .end local v3           #resolver:Landroid/content/ContentResolver;
    :catch_1b
    move-exception v0

    .line 151
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v4, "UseLocationForServices"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to set browser geolocation permissions: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15
.end method

.method public static setUseLocationForServices(Landroid/content/Context;Z)Z
    .registers 5
    .parameter "context"
    .parameter "value"

    .prologue
    .line 114
    invoke-static {p0, p1}, Lcom/google/android/gsf/UseLocationForServices;->setGoogleBrowserGeolocation(Landroid/content/Context;Z)V

    .line 115
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "use_location_for_services"

    if-eqz p1, :cond_11

    const/4 v0, 0x1

    :goto_c
    invoke-static {v1, v2, v0}, Lcom/google/android/gsf/GoogleSettingsContract$Partner;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_c
.end method
