.class Lcom/google/android/finsky/library/Libraries$6;
.super Ljava/lang/Object;
.source "Libraries.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/library/Libraries;->fireAllLibrariesLoaded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/library/Libraries;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/library/Libraries;)V
    .registers 2
    .parameter

    .prologue
    .line 251
    iput-object p1, p0, Lcom/google/android/finsky/library/Libraries$6;->this$0:Lcom/google/android/finsky/library/Libraries;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 254
    iget-object v2, p0, Lcom/google/android/finsky/library/Libraries$6;->this$0:Lcom/google/android/finsky/library/Libraries;

    #getter for: Lcom/google/android/finsky/library/Libraries;->mListeners:Ljava/util/List;
    invoke-static {v2}, Lcom/google/android/finsky/library/Libraries;->access$600(Lcom/google/android/finsky/library/Libraries;)Ljava/util/List;

    move-result-object v3

    monitor-enter v3

    .line 255
    :try_start_7
    iget-object v2, p0, Lcom/google/android/finsky/library/Libraries$6;->this$0:Lcom/google/android/finsky/library/Libraries;

    #getter for: Lcom/google/android/finsky/library/Libraries;->mListeners:Ljava/util/List;
    invoke-static {v2}, Lcom/google/android/finsky/library/Libraries;->access$600(Lcom/google/android/finsky/library/Libraries;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/library/Libraries$Listener;

    .line 256
    .local v1, listener:Lcom/google/android/finsky/library/Libraries$Listener;
    invoke-interface {v1}, Lcom/google/android/finsky/library/Libraries$Listener;->onAllLibrariesLoaded()V

    goto :goto_11

    .line 258
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/google/android/finsky/library/Libraries$Listener;
    :catchall_21
    move-exception v2

    monitor-exit v3
    :try_end_23
    .catchall {:try_start_7 .. :try_end_23} :catchall_21

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_24
    :try_start_24
    monitor-exit v3
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_21

    .line 259
    return-void
.end method
