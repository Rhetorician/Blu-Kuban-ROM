.class final Lcom/google/android/tts/local/AsciiLimiter$UnicodeRange;
.super Ljava/lang/Object;
.source "AsciiLimiter.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/tts/local/AsciiLimiter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UnicodeRange"
.end annotation


# instance fields
.field private final mAsciiSubst:C

.field private final mEnd:C

.field private final mStart:C


# direct methods
.method constructor <init>(CCC)V
    .registers 4
    .parameter "start"
    .parameter "end"
    .parameter "asciiSubst"

    .prologue
    .line 468
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 469
    iput-char p1, p0, Lcom/google/android/tts/local/AsciiLimiter$UnicodeRange;->mStart:C

    .line 470
    iput-char p2, p0, Lcom/google/android/tts/local/AsciiLimiter$UnicodeRange;->mEnd:C

    .line 471
    iput-char p3, p0, Lcom/google/android/tts/local/AsciiLimiter$UnicodeRange;->mAsciiSubst:C

    .line 472
    return-void
.end method


# virtual methods
.method matches(C)I
    .registers 3
    .parameter "input"

    .prologue
    .line 479
    iget-char v0, p0, Lcom/google/android/tts/local/AsciiLimiter$UnicodeRange;->mStart:C

    if-ge p1, v0, :cond_6

    .line 480
    const/4 v0, -0x1

    .line 485
    :goto_5
    return v0

    .line 482
    :cond_6
    iget-char v0, p0, Lcom/google/android/tts/local/AsciiLimiter$UnicodeRange;->mEnd:C

    if-le p1, v0, :cond_c

    .line 483
    const/4 v0, 0x1

    goto :goto_5

    .line 485
    :cond_c
    const/4 v0, 0x0

    goto :goto_5
.end method

.method substitute()C
    .registers 2

    .prologue
    .line 489
    iget-char v0, p0, Lcom/google/android/tts/local/AsciiLimiter$UnicodeRange;->mAsciiSubst:C

    return v0
.end method
