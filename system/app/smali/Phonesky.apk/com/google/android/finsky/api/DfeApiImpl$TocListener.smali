.class Lcom/google/android/finsky/api/DfeApiImpl$TocListener;
.super Ljava/lang/Object;
.source "DfeApiImpl.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/api/DfeApiImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TocListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private final mListener:Lcom/android/volley/Response$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/android/finsky/api/DfeApiImpl;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/api/DfeApiImpl;Lcom/android/volley/Response$Listener;)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 148
    .local p2, listener:Lcom/android/volley/Response$Listener;,"Lcom/android/volley/Response$Listener<Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;>;"
    iput-object p1, p0, Lcom/google/android/finsky/api/DfeApiImpl$TocListener;->this$0:Lcom/google/android/finsky/api/DfeApiImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-object p2, p0, Lcom/google/android/finsky/api/DfeApiImpl$TocListener;->mListener:Lcom/android/volley/Response$Listener;

    .line 150
    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;)V
    .registers 4
    .parameter "response"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/android/finsky/api/DfeApiImpl$TocListener;->this$0:Lcom/google/android/finsky/api/DfeApiImpl;

    #getter for: Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;
    invoke-static {v0}, Lcom/google/android/finsky/api/DfeApiImpl;->access$000(Lcom/google/android/finsky/api/DfeApiImpl;)Lcom/google/android/finsky/api/DfeApiContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/api/DfeApiContext;->getExperiments()Lcom/google/android/finsky/experiments/Experiments;

    move-result-object v0

    if-eqz v0, :cond_27

    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->hasExperiments()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 155
    iget-object v0, p0, Lcom/google/android/finsky/api/DfeApiImpl$TocListener;->this$0:Lcom/google/android/finsky/api/DfeApiImpl;

    #getter for: Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;
    invoke-static {v0}, Lcom/google/android/finsky/api/DfeApiImpl;->access$000(Lcom/google/android/finsky/api/DfeApiImpl;)Lcom/google/android/finsky/api/DfeApiContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/api/DfeApiContext;->getExperiments()Lcom/google/android/finsky/experiments/Experiments;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->getExperiments()Lcom/google/android/finsky/remoting/protos/Toc$Experiments;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/Toc$Experiments;->getExperimentIdList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/finsky/experiments/Experiments;->setExperiments(Ljava/util/Collection;)V

    .line 158
    :cond_27
    iget-object v0, p0, Lcom/google/android/finsky/api/DfeApiImpl$TocListener;->mListener:Lcom/android/volley/Response$Listener;

    if-eqz v0, :cond_30

    .line 159
    iget-object v0, p0, Lcom/google/android/finsky/api/DfeApiImpl$TocListener;->mListener:Lcom/android/volley/Response$Listener;

    invoke-interface {v0, p1}, Lcom/android/volley/Response$Listener;->onResponse(Ljava/lang/Object;)V

    .line 161
    :cond_30
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 145
    check-cast p1, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/api/DfeApiImpl$TocListener;->onResponse(Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;)V

    return-void
.end method
