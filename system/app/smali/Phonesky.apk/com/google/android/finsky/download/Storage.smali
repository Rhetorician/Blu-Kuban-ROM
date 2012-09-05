.class public Lcom/google/android/finsky/download/Storage;
.super Ljava/lang/Object;
.source "Storage.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cachePartitionAvailableSpace()J
    .registers 5

    .prologue
    .line 36
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 37
    .local v0, stat:Landroid/os/StatFs;
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    int-to-long v3, v3

    mul-long/2addr v1, v3

    return-wide v1
.end method

.method public static dataPartitionAvailableSpace()J
    .registers 5

    .prologue
    .line 41
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 42
    .local v0, stat:Landroid/os/StatFs;
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    int-to-long v3, v3

    mul-long/2addr v1, v3

    return-wide v1
.end method

.method public static externalStorageAvailable()Z
    .registers 2

    .prologue
    .line 20
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 21
    .local v0, state:Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static externalStorageAvailableSpace()J
    .registers 5

    .prologue
    .line 28
    invoke-static {}, Lcom/google/android/finsky/download/Storage;->externalStorageAvailable()Z

    move-result v1

    if-nez v1, :cond_9

    .line 29
    const-wide/16 v1, -0x1

    .line 32
    .local v0, stat:Landroid/os/StatFs;
    :goto_8
    return-wide v1

    .line 31
    .end local v0           #stat:Landroid/os/StatFs;
    :cond_9
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 32
    .restart local v0       #stat:Landroid/os/StatFs;
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    int-to-long v3, v3

    mul-long/2addr v1, v3

    goto :goto_8
.end method

.method public static getFileUriForContentUri(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 10
    .parameter "contentUri"

    .prologue
    const/4 v8, 0x0

    .line 46
    const/4 v7, 0x0

    .line 47
    .local v7, fileName:Ljava/lang/String;
    const/4 v6, 0x0

    .line 49
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_3
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_data"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 52
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 53
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_2d

    move-result-object v7

    .line 56
    :cond_26
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 59
    if-nez v7, :cond_32

    move-object v0, v8

    .line 63
    :goto_2c
    return-object v0

    .line 56
    :catchall_2d
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 63
    :cond_32
    new-instance v0, Ljava/io/File;

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_2c
.end method