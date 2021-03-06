.class Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;
.super Lcom/google/common/util/concurrent/AbstractListenableFuture;
.source "Futures.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/Futures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ChainingListenableFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/AbstractListenableFuture",
        "<TO;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private final function:Lcom/google/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Function",
            "<-TI;+",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<+TO;>;>;"
        }
    .end annotation
.end field

.field private final inputFuture:Lcom/google/common/util/concurrent/UninterruptibleFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/UninterruptibleFuture",
            "<+TI;>;"
        }
    .end annotation
.end field


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 439
    .local p0, this:Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;,"Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture<TI;TO;>;"
    :try_start_0
    iget-object v3, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->inputFuture:Lcom/google/common/util/concurrent/UninterruptibleFuture;

    invoke-interface {v3}, Lcom/google/common/util/concurrent/UninterruptibleFuture;->get()Ljava/lang/Object;
    :try_end_5
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_5} :catch_1b
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_5} :catch_29
    .catch Ljava/lang/reflect/UndeclaredThrowableException; {:try_start_0 .. :try_end_5} :catch_20
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_5} :catch_32
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_5} :catch_37

    move-result-object v2

    .line 450
    .local v2, sourceResult:Ljava/lang/Object;,"TI;"
    :try_start_6
    iget-object v3, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->function:Lcom/google/common/base/Function;

    invoke-interface {v3, v2}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 452
    .local v1, outputFuture:Lcom/google/common/util/concurrent/ListenableFuture;,"Lcom/google/common/util/concurrent/ListenableFuture<+TO;>;"
    new-instance v3, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture$1;

    invoke-direct {v3, p0, v1}, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture$1;-><init>(Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;Lcom/google/common/util/concurrent/ListenableFuture;)V

    invoke-static {}, Lcom/google/common/util/concurrent/Executors;->sameThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 478
    .end local v1           #outputFuture:Lcom/google/common/util/concurrent/ListenableFuture;,"Lcom/google/common/util/concurrent/ListenableFuture<+TO;>;"
    .end local v2           #sourceResult:Ljava/lang/Object;,"TI;"
    :goto_1a
    return-void

    .line 440
    :catch_1b
    move-exception v0

    .line 442
    .local v0, e:Ljava/util/concurrent/CancellationException;
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->cancel()Z
    :try_end_1f
    .catch Ljava/lang/reflect/UndeclaredThrowableException; {:try_start_6 .. :try_end_1f} :catch_20
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_1f} :catch_32
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_1f} :catch_37

    goto :goto_1a

    .line 465
    .end local v0           #e:Ljava/util/concurrent/CancellationException;
    :catch_20
    move-exception v0

    .line 467
    .local v0, e:Ljava/lang/reflect/UndeclaredThrowableException;
    invoke-virtual {v0}, Ljava/lang/reflect/UndeclaredThrowableException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->setException(Ljava/lang/Throwable;)Z

    goto :goto_1a

    .line 444
    .end local v0           #e:Ljava/lang/reflect/UndeclaredThrowableException;
    :catch_29
    move-exception v0

    .line 446
    .local v0, e:Ljava/util/concurrent/ExecutionException;
    :try_start_2a
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->setException(Ljava/lang/Throwable;)Z
    :try_end_31
    .catch Ljava/lang/reflect/UndeclaredThrowableException; {:try_start_2a .. :try_end_31} :catch_20
    .catch Ljava/lang/RuntimeException; {:try_start_2a .. :try_end_31} :catch_32
    .catch Ljava/lang/Error; {:try_start_2a .. :try_end_31} :catch_37

    goto :goto_1a

    .line 468
    .end local v0           #e:Ljava/util/concurrent/ExecutionException;
    :catch_32
    move-exception v0

    .line 471
    .local v0, e:Ljava/lang/RuntimeException;
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->setException(Ljava/lang/Throwable;)Z

    goto :goto_1a

    .line 472
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catch_37
    move-exception v0

    .line 475
    .local v0, e:Ljava/lang/Error;
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 476
    throw v0
.end method
