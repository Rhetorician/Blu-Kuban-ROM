.class Lcom/google/android/music/albumwall/Model$RequestableCount;
.super Lcom/google/android/music/albumwall/Model$Requestable;
.source "Model.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/albumwall/Model;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RequestableCount"
.end annotation


# instance fields
.field mCount:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 217
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/music/albumwall/Model$Requestable;-><init>(Lcom/google/android/music/albumwall/Model$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/music/albumwall/Model$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 217
    invoke-direct {p0}, Lcom/google/android/music/albumwall/Model$RequestableCount;-><init>()V

    return-void
.end method
