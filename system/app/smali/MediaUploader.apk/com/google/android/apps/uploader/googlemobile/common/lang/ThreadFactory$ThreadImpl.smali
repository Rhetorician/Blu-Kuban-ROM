.class public Lcom/google/android/apps/uploader/googlemobile/common/lang/ThreadFactory$ThreadImpl;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/uploader/googlemobile/common/lang/ThreadFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ThreadImpl"
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field private runnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/google/android/apps/uploader/googlemobile/common/lang/ThreadFactory;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/uploader/googlemobile/common/lang/ThreadFactory;Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/apps/uploader/googlemobile/common/lang/ThreadFactory$ThreadImpl;->this$0:Lcom/google/android/apps/uploader/googlemobile/common/lang/ThreadFactory;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    #calls: Lcom/google/android/apps/uploader/googlemobile/common/lang/ThreadFactory;->incrementCreatedCount()V
    invoke-static {p1}, Lcom/google/android/apps/uploader/googlemobile/common/lang/ThreadFactory;->access$000(Lcom/google/android/apps/uploader/googlemobile/common/lang/ThreadFactory;)V

    iput-object p2, p0, Lcom/google/android/apps/uploader/googlemobile/common/lang/ThreadFactory$ThreadImpl;->name:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/apps/uploader/googlemobile/common/lang/ThreadFactory$ThreadImpl;->runnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/lang/ThreadFactory$ThreadImpl;->this$0:Lcom/google/android/apps/uploader/googlemobile/common/lang/ThreadFactory;

    #calls: Lcom/google/android/apps/uploader/googlemobile/common/lang/ThreadFactory;->incrementRunningCount()V
    invoke-static {v0}, Lcom/google/android/apps/uploader/googlemobile/common/lang/ThreadFactory;->access$100(Lcom/google/android/apps/uploader/googlemobile/common/lang/ThreadFactory;)V

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/lang/ThreadFactory$ThreadImpl;->runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_1a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_a} :catch_10

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/lang/ThreadFactory$ThreadImpl;->this$0:Lcom/google/android/apps/uploader/googlemobile/common/lang/ThreadFactory;

    #calls: Lcom/google/android/apps/uploader/googlemobile/common/lang/ThreadFactory;->decrementRunningCount()V
    invoke-static {v0}, Lcom/google/android/apps/uploader/googlemobile/common/lang/ThreadFactory;->access$200(Lcom/google/android/apps/uploader/googlemobile/common/lang/ThreadFactory;)V

    :goto_f
    return-void

    :catch_10
    move-exception v0

    :try_start_11
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_1a

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/lang/ThreadFactory$ThreadImpl;->this$0:Lcom/google/android/apps/uploader/googlemobile/common/lang/ThreadFactory;

    #calls: Lcom/google/android/apps/uploader/googlemobile/common/lang/ThreadFactory;->decrementRunningCount()V
    invoke-static {v0}, Lcom/google/android/apps/uploader/googlemobile/common/lang/ThreadFactory;->access$200(Lcom/google/android/apps/uploader/googlemobile/common/lang/ThreadFactory;)V

    goto :goto_f

    :catchall_1a
    move-exception v0

    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/lang/ThreadFactory$ThreadImpl;->this$0:Lcom/google/android/apps/uploader/googlemobile/common/lang/ThreadFactory;

    #calls: Lcom/google/android/apps/uploader/googlemobile/common/lang/ThreadFactory;->decrementRunningCount()V
    invoke-static {v1}, Lcom/google/android/apps/uploader/googlemobile/common/lang/ThreadFactory;->access$200(Lcom/google/android/apps/uploader/googlemobile/common/lang/ThreadFactory;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Thread["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/lang/ThreadFactory$ThreadImpl;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/googlemobile/common/lang/ThreadFactory$ThreadImpl;->getPriority()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
