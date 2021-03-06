.class public Lcom/google/android/apps/plus/util/MediaStoreUtils;
.super Ljava/lang/Object;
.source "MediaStoreUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/util/MediaStoreUtils$VideoQuery;
    }
.end annotation


# static fields
.field private static final PAT_RESOLUTION:Ljava/util/regex/Pattern;

.field public static final PHONE_STORAGE_IMAGES_URI:Landroid/net/Uri;

.field public static final PHONE_STORAGE_VIDEO_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    const-string v0, "phoneStorage"

    invoke-static {v0}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/util/MediaStoreUtils;->PHONE_STORAGE_IMAGES_URI:Landroid/net/Uri;

    .line 36
    const-string v0, "phoneStorage"

    invoke-static {v0}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/util/MediaStoreUtils;->PHONE_STORAGE_VIDEO_URI:Landroid/net/Uri;

    .line 57
    const-string v0, "(\\d+)[xX](\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/util/MediaStoreUtils;->PAT_RESOLUTION:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static deleteLocalFileAndMediaStore(Landroid/content/ContentResolver;Landroid/net/Uri;)Z
    .registers 6
    .parameter "resolver"
    .parameter "localContentUri"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 159
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/util/MediaStoreUtils;->getFilePath(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 161
    .local v1, filePath:Ljava/lang/String;
    invoke-virtual {p0, p1, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-ne v3, v2, :cond_20

    .line 163
    .local v2, status:Z
    :goto_c
    if-eqz v2, :cond_1f

    if-eqz v1, :cond_1f

    .line 164
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 165
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 166
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v2

    .line 170
    .end local v0           #file:Ljava/io/File;
    :cond_1f
    return v2

    .line 161
    .end local v2           #status:Z
    :cond_20
    const/4 v2, 0x0

    goto :goto_c
.end method

.method private static getFilePath(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;
    .registers 11
    .parameter "cr"
    .parameter "uri"

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x5

    const/4 v3, 0x0

    .line 267
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v1

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 269
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_35

    .line 270
    const-string v0, "MediaStoreUtils"

    invoke-static {v0, v8}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 271
    const-string v0, "MediaStoreUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFilePath: query returned null cursor for uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :cond_34
    :goto_34
    return-object v3

    .line 276
    :cond_35
    const/4 v7, 0x0

    .line 278
    .local v7, path:Ljava/lang/String;
    :try_start_36
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_61

    .line 279
    const-string v0, "MediaStoreUtils"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 280
    const-string v0, "MediaStoreUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFilePath: query returned empty cursor for uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5d
    .catchall {:try_start_36 .. :try_end_5d} :catchall_96

    .line 294
    :cond_5d
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_34

    .line 285
    :cond_61
    const/4 v0, 0x0

    :try_start_62
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 286
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_91

    .line 287
    const-string v0, "MediaStoreUtils"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 288
    const-string v0, "MediaStoreUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFilePath: MediaColumns.DATA was empty for uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8d
    .catchall {:try_start_62 .. :try_end_8d} :catchall_96

    .line 294
    :cond_8d
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_34

    :cond_91
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v3, v7

    .line 296
    goto :goto_34

    .line 294
    :catchall_96
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getThumbnail(Landroid/content/Context;Landroid/net/Uri;I)Landroid/graphics/Bitmap;
    .registers 5
    .parameter "context"
    .parameter "uri"
    .parameter "kind"

    .prologue
    .line 125
    invoke-static {p0, p2}, Lcom/google/android/apps/plus/util/ImageUtils;->getMaxThumbnailDimension(Landroid/content/Context;I)I

    move-result v0

    .line 126
    .local v0, microSize:I
    invoke-static {p0, p1, v0, v0, p2}, Lcom/google/android/apps/plus/util/MediaStoreUtils;->getThumbnailHelper(Landroid/content/Context;Landroid/net/Uri;III)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static getThumbnail(Landroid/content/Context;Landroid/net/Uri;II)Landroid/graphics/Bitmap;
    .registers 7
    .parameter "context"
    .parameter "uri"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v0, 0x3

    .line 140
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/util/ImageUtils;->getMaxThumbnailDimension(Landroid/content/Context;I)I

    move-result v1

    .line 142
    .local v1, microSize:I
    if-gt p2, v1, :cond_9

    if-le p3, v1, :cond_a

    :cond_9
    const/4 v0, 0x1

    .line 146
    .local v0, kind:I
    :cond_a
    invoke-static {p0, p1, p2, p3, v0}, Lcom/google/android/apps/plus/util/MediaStoreUtils;->getThumbnailHelper(Landroid/content/Context;Landroid/net/Uri;III)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method private static getThumbnailHelper(Landroid/content/Context;Landroid/net/Uri;III)Landroid/graphics/Bitmap;
    .registers 14
    .parameter "context"
    .parameter "uri"
    .parameter "width"
    .parameter "height"
    .parameter "kind"

    .prologue
    const/4 v0, 0x0

    .line 312
    if-nez p1, :cond_4

    .line 351
    :cond_3
    :goto_3
    return-object v0

    .line 317
    :cond_4
    invoke-static {p1}, Lcom/google/android/apps/plus/util/MediaStoreUtils;->isExternalMediaStoreUri(Landroid/net/Uri;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 321
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 322
    .local v1, cr:Landroid/content/ContentResolver;
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 325
    .local v2, id:J
    invoke-static {v1, p1}, Lcom/google/android/apps/plus/util/MediaStoreUtils;->safeGetMimeType(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    .line 327
    .local v4, mimeType:Ljava/lang/String;
    invoke-static {v4}, Lcom/google/android/apps/plus/util/MediaStoreUtils;->isImageMimeType(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3b

    .line 328
    invoke-static {v1, v2, v3, p4, v0}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 341
    .local v0, bmp:Landroid/graphics/Bitmap;
    :goto_20
    if-eqz v0, :cond_3

    .line 342
    invoke-static {v1, p1, v0}, Lcom/google/android/apps/plus/util/ImageUtils;->rotateBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 344
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    if-ne v6, p2, :cond_32

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-eq v6, p3, :cond_3

    .line 345
    :cond_32
    invoke-static {v0, p2, p3}, Lcom/google/android/apps/plus/util/ImageUtils;->resizeAndCropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 347
    .local v5, resizedBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 348
    move-object v0, v5

    goto :goto_3

    .line 330
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v5           #resizedBitmap:Landroid/graphics/Bitmap;
    :cond_3b
    invoke-static {v4}, Lcom/google/android/apps/plus/util/MediaStoreUtils;->isVideoMimeType(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_46

    .line 331
    invoke-static {v1, v2, v3, p4, v0}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .restart local v0       #bmp:Landroid/graphics/Bitmap;
    goto :goto_20

    .line 334
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    :cond_46
    const-string v6, "MediaStoreUtils"

    const/4 v7, 0x5

    invoke-static {v6, v7}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 335
    const-string v6, "MediaStoreUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getThumbnail: unrecognized mimeType="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", uri="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public static isExternalMediaStoreUri(Landroid/net/Uri;)Z
    .registers 6
    .parameter "uri"

    .prologue
    const/4 v3, 0x0

    .line 91
    invoke-static {p0}, Lcom/google/android/apps/plus/util/MediaStoreUtils;->isMediaStoreUri(Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 92
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 93
    .local v2, path:Ljava/lang/String;
    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, externalImagePrefix:Ljava/lang/String;
    sget-object v4, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, externalVideoPrefix:Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_23

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_24

    :cond_23
    const/4 v3, 0x1

    .line 97
    .end local v0           #externalImagePrefix:Ljava/lang/String;
    .end local v1           #externalVideoPrefix:Ljava/lang/String;
    .end local v2           #path:Ljava/lang/String;
    :cond_24
    return v3
.end method

.method public static isImageMimeType(Ljava/lang/String;)Z
    .registers 2
    .parameter "mimeType"

    .prologue
    .line 105
    if-eqz p0, :cond_c

    const-string v0, "image/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static isMediaStoreUri(Landroid/net/Uri;)Z
    .registers 3
    .parameter "uri"

    .prologue
    .line 71
    if-eqz p0, :cond_1c

    const-string v0, "content"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string v0, "media"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public static isVideoMimeType(Ljava/lang/String;)Z
    .registers 2
    .parameter "mimeType"

    .prologue
    .line 112
    if-eqz p0, :cond_c

    const-string v0, "video/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static safeGetMimeType(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;
    .registers 7
    .parameter "resolver"
    .parameter "uri"

    .prologue
    .line 183
    const/4 v1, 0x0

    .line 185
    .local v1, mimeType:Ljava/lang/String;
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_6

    move-result-object v1

    .line 191
    :cond_5
    :goto_5
    return-object v1

    .line 186
    :catch_6
    move-exception v0

    .line 187
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "MediaStoreUtils"

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 188
    const-string v2, "MediaStoreUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "safeGetMimeType failed for uri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public static toVideoData(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/wireless/tacotruck/proto/Data$VideoData;
    .registers 18
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 215
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 216
    .local v1, cr:Landroid/content/ContentResolver;
    move-object/from16 v0, p1

    invoke-static {v1, v0}, Lcom/google/android/apps/plus/util/MediaStoreUtils;->safeGetMimeType(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/plus/util/MediaStoreUtils;->isVideoMimeType(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 217
    const/4 v13, 0x0

    .line 259
    :goto_11
    return-object v13

    .line 221
    :cond_12
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;

    move-result-object v14

    .line 222
    .local v14, vs:Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->setStreamUrl(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;

    .line 225
    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->setFormatId(I)Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;

    .line 228
    const/4 v15, 0x0

    .line 229
    .local v15, width:I
    const/4 v10, 0x0

    .line 230
    .local v10, height:I
    const-wide/16 v8, 0x0

    .line 231
    .local v8, durationMsec:J
    sget-object v3, Lcom/google/android/apps/plus/util/MediaStoreUtils$VideoQuery;->PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 232
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_65

    .line 234
    :try_start_32
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_62

    .line 235
    const/4 v2, 0x1

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 237
    const/4 v2, 0x2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 238
    .local v12, resolution:Ljava/lang/String;
    if-eqz v12, :cond_62

    .line 239
    sget-object v2, Lcom/google/android/apps/plus/util/MediaStoreUtils;->PAT_RESOLUTION:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v12}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    .line 240
    .local v11, m:Ljava/util/regex/Matcher;
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_62

    .line 241
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 242
    const/4 v2, 0x2

    invoke-virtual {v11, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_61
    .catchall {:try_start_32 .. :try_end_61} :catchall_82

    move-result v10

    .line 247
    .end local v11           #m:Ljava/util/regex/Matcher;
    .end local v12           #resolution:Ljava/lang/String;
    :cond_62
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 250
    :cond_65
    invoke-virtual {v14, v15}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->setVideoWidth(I)Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;

    .line 251
    invoke-virtual {v14, v10}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->setVideoHeight(I)Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;

    .line 254
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;

    move-result-object v2

    sget-object v3, Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;->FINAL:Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;

    invoke-virtual {v2, v3}, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->setStatus(Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;)Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->setDuration(J)Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;

    move-result-object v2

    invoke-virtual {v2, v14}, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->addStream(Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;)Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    move-result-object v13

    .line 259
    .local v13, vd:Lcom/google/wireless/tacotruck/proto/Data$VideoData;
    goto :goto_11

    .line 247
    .end local v13           #vd:Lcom/google/wireless/tacotruck/proto/Data$VideoData;
    :catchall_82
    move-exception v2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method public static toVideoDataBytes(Landroid/content/Context;Landroid/net/Uri;)[B
    .registers 4
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 202
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/util/MediaStoreUtils;->toVideoData(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    move-result-object v0

    .line 203
    .local v0, videoData:Lcom/google/wireless/tacotruck/proto/Data$VideoData;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    :goto_7
    return-object v1

    :cond_8
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->toByteArray()[B

    move-result-object v1

    goto :goto_7
.end method
