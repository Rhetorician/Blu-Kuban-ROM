.class Lcom/google/android/music/MusicPlaybackService$Shuffler;
.super Ljava/lang/Object;
.source "MusicPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/MusicPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Shuffler"
.end annotation


# instance fields
.field private mPrevious:I

.field private mRandom:Ljava/util/Random;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 2324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2326
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/MusicPlaybackService$Shuffler;->mRandom:Ljava/util/Random;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/music/MusicPlaybackService$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 2324
    invoke-direct {p0}, Lcom/google/android/music/MusicPlaybackService$Shuffler;-><init>()V

    return-void
.end method


# virtual methods
.method public nextInt(I)I
    .registers 4
    .parameter "interval"

    .prologue
    .line 2330
    :cond_0
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$Shuffler;->mRandom:Ljava/util/Random;

    invoke-virtual {v1, p1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 2331
    .local v0, ret:I
    iget v1, p0, Lcom/google/android/music/MusicPlaybackService$Shuffler;->mPrevious:I

    if-ne v0, v1, :cond_d

    const/4 v1, 0x1

    if-gt p1, v1, :cond_0

    .line 2332
    :cond_d
    iput v0, p0, Lcom/google/android/music/MusicPlaybackService$Shuffler;->mPrevious:I

    .line 2333
    return v0
.end method
