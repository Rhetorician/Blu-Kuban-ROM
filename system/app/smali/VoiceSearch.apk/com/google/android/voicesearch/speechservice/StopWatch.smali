.class public Lcom/google/android/voicesearch/speechservice/StopWatch;
.super Ljava/lang/Object;
.source "StopWatch.java"


# instance fields
.field private mStart:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/voicesearch/speechservice/StopWatch;->mStart:J

    .line 29
    return-void
.end method

.method public constructor <init>(J)V
    .registers 5
    .parameter "start"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/voicesearch/speechservice/StopWatch;->mStart:J

    .line 32
    iput-wide p1, p0, Lcom/google/android/voicesearch/speechservice/StopWatch;->mStart:J

    .line 33
    return-void
.end method


# virtual methods
.method public getElapsedTime()I
    .registers 5

    .prologue
    .line 44
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/voicesearch/speechservice/StopWatch;->mStart:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public isStarted()Z
    .registers 5

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/google/android/voicesearch/speechservice/StopWatch;->mStart:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public start()V
    .registers 3

    .prologue
    .line 40
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/voicesearch/speechservice/StopWatch;->mStart:J

    .line 41
    return-void
.end method
