.class public Lcom/google/android/gsf/update/SystemUpdateService$ThreadPerTaskExecutor;
.super Ljava/lang/Object;
.source "SystemUpdateService.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/update/SystemUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThreadPerTaskExecutor"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 992
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .registers 3
    .parameter "r"

    .prologue
    .line 994
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 995
    return-void
.end method
