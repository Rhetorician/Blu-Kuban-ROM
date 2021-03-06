.class public Lcom/google/android/music/albumwall/BitmapPool;
.super Ljava/lang/Object;
.source "BitmapPool.java"


# instance fields
.field private mBitmaps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxPooled:I


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .parameter "maxPooled"

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/albumwall/BitmapPool;->mBitmaps:Ljava/util/ArrayList;

    .line 16
    iput p1, p0, Lcom/google/android/music/albumwall/BitmapPool;->mMaxPooled:I

    .line 17
    return-void
.end method


# virtual methods
.method public declared-synchronized get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .registers 8
    .parameter "w"
    .parameter "h"
    .parameter "config"

    .prologue
    .line 20
    monitor-enter p0

    :try_start_1
    iget-object v3, p0, Lcom/google/android/music/albumwall/BitmapPool;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 21
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_8
    if-ge v2, v1, :cond_32

    .line 22
    iget-object v3, p0, Lcom/google/android/music/albumwall/BitmapPool;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 23
    .local v0, b:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ne v3, p1, :cond_2f

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-ne v3, p2, :cond_2f

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    if-ne v3, p3, :cond_2f

    .line 24
    iget-object v3, p0, Lcom/google/android/music/albumwall/BitmapPool;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 25
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/graphics/Bitmap;->eraseColor(I)V
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_37

    .line 29
    .end local v0           #b:Landroid/graphics/Bitmap;
    :goto_2d
    monitor-exit p0

    return-object v0

    .line 21
    .restart local v0       #b:Landroid/graphics/Bitmap;
    :cond_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 29
    .end local v0           #b:Landroid/graphics/Bitmap;
    :cond_32
    :try_start_32
    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_37

    move-result-object v0

    goto :goto_2d

    .line 20
    .end local v1           #count:I
    .end local v2           #i:I
    :catchall_37
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized recycle(Landroid/graphics/Bitmap;)V
    .registers 5
    .parameter "bitmap"

    .prologue
    .line 33
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/music/albumwall/BitmapPool;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/google/android/music/albumwall/BitmapPool;->mMaxPooled:I

    if-lt v1, v2, :cond_17

    .line 34
    iget-object v1, p0, Lcom/google/android/music/albumwall/BitmapPool;->mBitmaps:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 35
    .local v0, oldest:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 37
    .end local v0           #oldest:Landroid/graphics/Bitmap;
    :cond_17
    iget-object v1, p0, Lcom/google/android/music/albumwall/BitmapPool;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1e

    .line 38
    monitor-exit p0

    return-void

    .line 33
    :catchall_1e
    move-exception v1

    monitor-exit p0

    throw v1
.end method
