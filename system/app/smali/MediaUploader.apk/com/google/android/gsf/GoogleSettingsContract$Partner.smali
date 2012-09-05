.class public final Lcom/google/android/gsf/GoogleSettingsContract$Partner;
.super Lcom/google/android/gsf/GoogleSettingsContract$NameValueTable;
.source "GoogleSettingsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/GoogleSettingsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Partner"
.end annotation


# static fields
.field public static final CLIENT_ID:Ljava/lang/String; = "client_id"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DATA_STORE_VERSION:Ljava/lang/String; = "data_store_version"

.field public static final LOGGING_ID2:Ljava/lang/String; = "logging_id2"

.field public static final MAPS_CLIENT_ID:Ljava/lang/String; = "maps_client_id"

.field public static final MARKET_CHECKIN:Ljava/lang/String; = "market_checkin"

.field public static final MARKET_CLIENT_ID:Ljava/lang/String; = "market_client_id"

.field public static final NETWORK_LOCATION_OPT_IN:Ljava/lang/String; = "network_location_opt_in"

.field public static final RLZ:Ljava/lang/String; = "rlz"

.field public static final USE_LOCATION_FOR_SERVICES:Ljava/lang/String; = "use_location_for_services"

.field public static final VOICESEARCH_CLIENT_ID:Ljava/lang/String; = "voicesearch_client_id"

.field public static final YOUTUBE_CLIENT_ID:Ljava/lang/String; = "youtube_client_id"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 186
    const-string v0, "content://com.google.settings/partner"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/GoogleSettingsContract$Partner;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/google/android/gsf/GoogleSettingsContract$NameValueTable;-><init>()V

    return-void
.end method

.method public static getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 147
    invoke-static {p0, p1}, Lcom/google/android/gsf/GoogleSettingsContract$Partner;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 150
    if-eqz v0, :cond_b

    :try_start_6
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_9} :catch_d

    move-result v0

    .line 154
    :goto_a
    return v0

    :cond_b
    move v0, p2

    .line 150
    goto :goto_a

    .line 151
    :catch_d
    move-exception v0

    move v0, p2

    .line 152
    goto :goto_a
.end method

.method public static getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 163
    invoke-static {p0, p1}, Lcom/google/android/gsf/GoogleSettingsContract$Partner;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 166
    if-eqz v0, :cond_b

    :try_start_6
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_9} :catch_d

    move-result-wide v0

    .line 170
    :goto_a
    return-wide v0

    :cond_b
    move-wide v0, p2

    .line 166
    goto :goto_a

    .line 167
    :catch_d
    move-exception v0

    move-wide v0, p2

    .line 168
    goto :goto_a
.end method

.method public static getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 89
    :try_start_1
    sget-object v1, Lcom/google/android/gsf/GoogleSettingsContract$Partner;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "value"

    aput-object v3, v2, v0

    const-string v3, "name=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_5a
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_18} :catch_2d

    move-result-object v0

    .line 91
    if-eqz v0, :cond_72

    :try_start_1b
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_72

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_25
    .catchall {:try_start_1b .. :try_end_25} :catchall_62
    .catch Landroid/database/SQLException; {:try_start_1b .. :try_end_25} :catch_69

    move-result-object v1

    .line 96
    :goto_26
    if-eqz v0, :cond_70

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v1

    .line 98
    :goto_2c
    return-object v0

    .line 92
    :catch_2d
    move-exception v0

    move-object v1, v6

    .line 94
    :goto_2f
    :try_start_2f
    const-string v2, "GoogleSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t get key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/google/android/gsf/GoogleSettingsContract$Partner;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_53
    .catchall {:try_start_2f .. :try_end_53} :catchall_67

    .line 96
    if-eqz v1, :cond_6e

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v0, v6

    goto :goto_2c

    :catchall_5a
    move-exception v0

    move-object v1, v6

    :goto_5c
    if-eqz v1, :cond_61

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_61
    throw v0

    :catchall_62
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_5c

    :catchall_67
    move-exception v0

    goto :goto_5c

    .line 92
    :catch_69
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_2f

    :cond_6e
    move-object v0, v6

    goto :goto_2c

    :cond_70
    move-object v0, v1

    goto :goto_2c

    :cond_72
    move-object v1, v6

    goto :goto_26
.end method

.method public static getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 109
    invoke-static {p0, p1}, Lcom/google/android/gsf/GoogleSettingsContract$Partner;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    if-nez v0, :cond_7

    move-object v0, p2

    .line 114
    :cond_7
    return-object v0
.end method

.method public static getUriFor(Ljava/lang/String;)Landroid/net/Uri;
    .registers 2
    .parameter

    .prologue
    .line 180
    sget-object v0, Lcom/google/android/gsf/GoogleSettingsContract$Partner;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0}, Lcom/google/android/gsf/GoogleSettingsContract$Partner;->getUriFor(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 138
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/google/android/gsf/GoogleSettingsContract$Partner;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 126
    sget-object v0, Lcom/google/android/gsf/GoogleSettingsContract$Partner;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, p1, p2}, Lcom/google/android/gsf/GoogleSettingsContract$Partner;->putString(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
