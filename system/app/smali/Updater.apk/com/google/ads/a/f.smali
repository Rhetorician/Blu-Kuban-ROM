.class final Lcom/google/ads/a/f;
.super Ljava/util/HashMap;


# direct methods
.method constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "/open"

    new-instance v1, Lcom/google/ads/ax;

    invoke-direct {v1}, Lcom/google/ads/ax;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/a/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "/canOpenURLs"

    new-instance v1, Lcom/google/ads/ao;

    invoke-direct {v1}, Lcom/google/ads/ao;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/a/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "/close"

    new-instance v1, Lcom/google/ads/aq;

    invoke-direct {v1}, Lcom/google/ads/aq;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/a/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "/evalInOpener"

    new-instance v1, Lcom/google/ads/ar;

    invoke-direct {v1}, Lcom/google/ads/ar;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/a/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "/log"

    new-instance v1, Lcom/google/ads/aw;

    invoke-direct {v1}, Lcom/google/ads/aw;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/a/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "/click"

    new-instance v1, Lcom/google/ads/ap;

    invoke-direct {v1}, Lcom/google/ads/ap;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/a/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "/httpTrack"

    new-instance v1, Lcom/google/ads/as;

    invoke-direct {v1}, Lcom/google/ads/as;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/a/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "/touch"

    new-instance v1, Lcom/google/ads/ay;

    invoke-direct {v1}, Lcom/google/ads/ay;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/a/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "/video"

    new-instance v1, Lcom/google/ads/az;

    invoke-direct {v1}, Lcom/google/ads/az;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/a/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "/plusOne"

    new-instance v1, Lcom/google/ads/r;

    invoke-direct {v1}, Lcom/google/ads/r;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/a/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
