.class final Lcom/google/android/youtube/core/b/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/cache/j;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/b/j;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/core/b/j;)V
    .registers 2
    .parameter

    .prologue
    .line 1028
    iput-object p1, p0, Lcom/google/android/youtube/core/b/p;->a:Lcom/google/android/youtube/core/b/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/core/b/j;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1028
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/b/p;-><init>(Lcom/google/android/youtube/core/b/j;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/youtube/core/cache/a;)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1028
    check-cast p2, Lcom/google/android/youtube/core/async/Timestamped;

    iget-object v0, p2, Lcom/google/android/youtube/core/async/Timestamped;->element:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/youtube/core/model/LiveEvent;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/LiveEvent;->video:Lcom/google/android/youtube/core/model/Video;

    iget-object v1, p0, Lcom/google/android/youtube/core/b/p;->a:Lcom/google/android/youtube/core/b/j;

    invoke-static {v1}, Lcom/google/android/youtube/core/b/j;->a(Lcom/google/android/youtube/core/b/j;)Lcom/google/android/youtube/core/async/GDataRequestFactory;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->a(Ljava/lang/String;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v1

    new-instance v2, Lcom/google/android/youtube/core/async/Timestamped;

    iget-wide v3, p2, Lcom/google/android/youtube/core/async/Timestamped;->timestamp:J

    invoke-direct {v2, v0, v3, v4}, Lcom/google/android/youtube/core/async/Timestamped;-><init>(Ljava/lang/Object;J)V

    invoke-interface {p3, v1, v2}, Lcom/google/android/youtube/core/cache/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
