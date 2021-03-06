.class public Lcom/android/volley/NetworkDispatcher;
.super Ljava/lang/Thread;
.source "NetworkDispatcher.java"


# instance fields
.field private final mCache:Lcom/android/volley/Cache;

.field private final mDelivery:Lcom/android/volley/ResponseDelivery;

.field private final mNetwork:Lcom/android/volley/Network;

.field private final mQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/android/volley/Request;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mQuit:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Lcom/android/volley/Network;Lcom/android/volley/Cache;Lcom/android/volley/ResponseDelivery;)V
    .registers 6
    .parameter
    .parameter "network"
    .parameter "cache"
    .parameter "delivery"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/android/volley/Request;",
            ">;",
            "Lcom/android/volley/Network;",
            "Lcom/android/volley/Cache;",
            "Lcom/android/volley/ResponseDelivery;",
            ")V"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, queue:Ljava/util/concurrent/BlockingQueue;,"Ljava/util/concurrent/BlockingQueue<Lcom/android/volley/Request;>;"
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/volley/NetworkDispatcher;->mQuit:Z

    .line 54
    iput-object p1, p0, Lcom/android/volley/NetworkDispatcher;->mQueue:Ljava/util/concurrent/BlockingQueue;

    .line 55
    iput-object p2, p0, Lcom/android/volley/NetworkDispatcher;->mNetwork:Lcom/android/volley/Network;

    .line 56
    iput-object p3, p0, Lcom/android/volley/NetworkDispatcher;->mCache:Lcom/android/volley/Cache;

    .line 57
    iput-object p4, p0, Lcom/android/volley/NetworkDispatcher;->mDelivery:Lcom/android/volley/ResponseDelivery;

    .line 58
    return-void
.end method

.method private parseAndDeliverNetworkError(Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V
    .registers 4
    .parameter
    .parameter "error"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request",
            "<*>;",
            "Lcom/android/volley/VolleyError;",
            ")V"
        }
    .end annotation

    .prologue
    .line 129
    .local p1, request:Lcom/android/volley/Request;,"Lcom/android/volley/Request<*>;"
    invoke-virtual {p1, p2}, Lcom/android/volley/Request;->parseNetworkError(Lcom/android/volley/VolleyError;)Lcom/android/volley/VolleyError;

    move-result-object p2

    .line 130
    iget-object v0, p0, Lcom/android/volley/NetworkDispatcher;->mDelivery:Lcom/android/volley/ResponseDelivery;

    invoke-interface {v0, p1, p2}, Lcom/android/volley/ResponseDelivery;->postError(Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V

    .line 131
    return-void
.end method


# virtual methods
.method public quit()V
    .registers 2

    .prologue
    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/volley/NetworkDispatcher;->mQuit:Z

    .line 66
    invoke-virtual {p0}, Lcom/android/volley/NetworkDispatcher;->interrupt()V

    .line 67
    return-void
.end method

.method public run()V
    .registers 10

    .prologue
    .line 75
    :cond_0
    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/android/volley/NetworkDispatcher;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v5}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/volley/Request;
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_8} :catch_1e

    .line 85
    .local v2, request:Lcom/android/volley/Request;
    :try_start_8
    const-string v5, "network-queue-take"

    invoke-virtual {v2, v5}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v2}, Lcom/android/volley/Request;->isCanceled()Z

    move-result v5

    if-eqz v5, :cond_24

    .line 90
    const-string v5, "network-discard-cancelled"

    invoke-virtual {v2, v5}, Lcom/android/volley/Request;->finish(Ljava/lang/String;)V
    :try_end_18
    .catch Lcom/android/volley/VolleyError; {:try_start_8 .. :try_end_18} :catch_19
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_18} :catch_3f

    goto :goto_0

    .line 119
    :catch_19
    move-exception v4

    .line 120
    .local v4, volleyError:Lcom/android/volley/VolleyError;
    invoke-direct {p0, v2, v4}, Lcom/android/volley/NetworkDispatcher;->parseAndDeliverNetworkError(Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V

    goto :goto_0

    .line 76
    .end local v2           #request:Lcom/android/volley/Request;
    .end local v4           #volleyError:Lcom/android/volley/VolleyError;
    :catch_1e
    move-exception v0

    .line 78
    .local v0, e:Ljava/lang/InterruptedException;
    iget-boolean v5, p0, Lcom/android/volley/NetworkDispatcher;->mQuit:Z

    if-eqz v5, :cond_0

    .line 79
    return-void

    .line 95
    .end local v0           #e:Ljava/lang/InterruptedException;
    .restart local v2       #request:Lcom/android/volley/Request;
    :cond_24
    :try_start_24
    iget-object v5, p0, Lcom/android/volley/NetworkDispatcher;->mNetwork:Lcom/android/volley/Network;

    invoke-interface {v5, v2}, Lcom/android/volley/Network;->performRequest(Lcom/android/volley/Request;)Lcom/android/volley/NetworkResponse;

    move-result-object v1

    .line 96
    .local v1, networkResponse:Lcom/android/volley/NetworkResponse;
    const-string v5, "network-http-complete"

    invoke-virtual {v2, v5}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 100
    iget-boolean v5, v1, Lcom/android/volley/NetworkResponse;->notModified:Z

    if-eqz v5, :cond_5a

    invoke-virtual {v2}, Lcom/android/volley/Request;->hasHadResponseDelivered()Z

    move-result v5

    if-eqz v5, :cond_5a

    .line 101
    const-string v5, "not-modified"

    invoke-virtual {v2, v5}, Lcom/android/volley/Request;->finish(Ljava/lang/String;)V
    :try_end_3e
    .catch Lcom/android/volley/VolleyError; {:try_start_24 .. :try_end_3e} :catch_19
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_3e} :catch_3f

    goto :goto_0

    .line 121
    .end local v1           #networkResponse:Lcom/android/volley/NetworkResponse;
    :catch_3f
    move-exception v0

    .line 122
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "Unhandled exception %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/android/volley/VolleyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    iget-object v5, p0, Lcom/android/volley/NetworkDispatcher;->mDelivery:Lcom/android/volley/ResponseDelivery;

    new-instance v6, Lcom/android/volley/VolleyError;

    invoke-direct {v6, v0}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v5, v2, v6}, Lcom/android/volley/ResponseDelivery;->postError(Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V

    goto :goto_0

    .line 106
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #networkResponse:Lcom/android/volley/NetworkResponse;
    :cond_5a
    :try_start_5a
    invoke-virtual {v2, v1}, Lcom/android/volley/Request;->parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;

    move-result-object v3

    .line 107
    .local v3, response:Lcom/android/volley/Response;,"Lcom/android/volley/Response<*>;"
    const-string v5, "network-parse-complete"

    invoke-virtual {v2, v5}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v2}, Lcom/android/volley/Request;->shouldCache()Z

    move-result v5

    if-eqz v5, :cond_7d

    iget-object v5, v3, Lcom/android/volley/Response;->cacheEntry:Lcom/android/volley/Cache$Entry;

    if-eqz v5, :cond_7d

    .line 112
    iget-object v5, p0, Lcom/android/volley/NetworkDispatcher;->mCache:Lcom/android/volley/Cache;

    invoke-virtual {v2}, Lcom/android/volley/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v3, Lcom/android/volley/Response;->cacheEntry:Lcom/android/volley/Cache$Entry;

    invoke-interface {v5, v6, v7}, Lcom/android/volley/Cache;->put(Ljava/lang/String;Lcom/android/volley/Cache$Entry;)V

    .line 113
    const-string v5, "network-cache-written"

    invoke-virtual {v2, v5}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 117
    :cond_7d
    invoke-virtual {v2}, Lcom/android/volley/Request;->markDelivered()V

    .line 118
    iget-object v5, p0, Lcom/android/volley/NetworkDispatcher;->mDelivery:Lcom/android/volley/ResponseDelivery;

    invoke-interface {v5, v2, v3}, Lcom/android/volley/ResponseDelivery;->postResponse(Lcom/android/volley/Request;Lcom/android/volley/Response;)V
    :try_end_85
    .catch Lcom/android/volley/VolleyError; {:try_start_5a .. :try_end_85} :catch_19
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_85} :catch_3f

    goto/16 :goto_0
.end method
