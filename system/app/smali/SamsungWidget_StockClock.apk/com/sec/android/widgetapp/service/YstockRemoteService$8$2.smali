.class Lcom/sec/android/widgetapp/service/YstockRemoteService$8$2;
.super Ljava/lang/Object;
.source "YstockRemoteService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/service/YstockRemoteService$8;->onHttpResult(IILjava/lang/Object;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/widgetapp/service/YstockRemoteService$8;

.field final synthetic val$list:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/service/YstockRemoteService$8;Ljava/util/ArrayList;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 903
    iput-object p1, p0, Lcom/sec/android/widgetapp/service/YstockRemoteService$8$2;->this$1:Lcom/sec/android/widgetapp/service/YstockRemoteService$8;

    iput-object p2, p0, Lcom/sec/android/widgetapp/service/YstockRemoteService$8$2;->val$list:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 906
    iget-object v3, p0, Lcom/sec/android/widgetapp/service/YstockRemoteService$8$2;->this$1:Lcom/sec/android/widgetapp/service/YstockRemoteService$8;

    iget-object v3, v3, Lcom/sec/android/widgetapp/service/YstockRemoteService$8;->this$0:Lcom/sec/android/widgetapp/service/YstockRemoteService;

    iget-object v3, v3, Lcom/sec/android/widgetapp/service/YstockRemoteService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 907
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_b
    if-ge v2, v0, :cond_35

    .line 911
    :try_start_d
    const-string v3, ""

    const-string v4, "CurrencyArrived"

    invoke-static {v3, v4}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    iget-object v3, p0, Lcom/sec/android/widgetapp/service/YstockRemoteService$8$2;->this$1:Lcom/sec/android/widgetapp/service/YstockRemoteService$8;

    iget-object v3, v3, Lcom/sec/android/widgetapp/service/YstockRemoteService$8;->this$0:Lcom/sec/android/widgetapp/service/YstockRemoteService;

    iget-object v3, v3, Lcom/sec/android/widgetapp/service/YstockRemoteService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/sec/android/widgetapp/service/YstockRemoteServiceCallback;

    iget-object v4, p0, Lcom/sec/android/widgetapp/service/YstockRemoteService$8$2;->this$1:Lcom/sec/android/widgetapp/service/YstockRemoteService$8;

    iget-object v4, v4, Lcom/sec/android/widgetapp/service/YstockRemoteService$8;->this$0:Lcom/sec/android/widgetapp/service/YstockRemoteService;

    iget-object v5, p0, Lcom/sec/android/widgetapp/service/YstockRemoteService$8$2;->val$list:Ljava/util/ArrayList;

    #calls: Lcom/sec/android/widgetapp/service/YstockRemoteService;->currency2Map(Ljava/util/ArrayList;)Ljava/util/Map;
    invoke-static {v4, v5}, Lcom/sec/android/widgetapp/service/YstockRemoteService;->access$1100(Lcom/sec/android/widgetapp/service/YstockRemoteService;Ljava/util/ArrayList;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/sec/android/widgetapp/service/YstockRemoteServiceCallback;->CurrencyArrived(Ljava/util/Map;)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_2d} :catch_30

    .line 907
    :goto_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 914
    :catch_30
    move-exception v1

    .line 916
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2d

    .line 919
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_35
    iget-object v3, p0, Lcom/sec/android/widgetapp/service/YstockRemoteService$8$2;->this$1:Lcom/sec/android/widgetapp/service/YstockRemoteService$8;

    iget-object v3, v3, Lcom/sec/android/widgetapp/service/YstockRemoteService$8;->this$0:Lcom/sec/android/widgetapp/service/YstockRemoteService;

    iget-object v3, v3, Lcom/sec/android/widgetapp/service/YstockRemoteService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 920
    return-void
.end method