.class Lcom/android/emailcommon/service/PolicyServiceProxy$4;
.super Ljava/lang/Object;
.source "PolicyServiceProxy.java"

# interfaces
.implements Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/emailcommon/service/PolicyServiceProxy;->isSupported(Lcom/android/emailcommon/provider/Policy;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/emailcommon/service/PolicyServiceProxy;

.field final synthetic val$arg0:Lcom/android/emailcommon/provider/Policy;


# direct methods
.method constructor <init>(Lcom/android/emailcommon/service/PolicyServiceProxy;Lcom/android/emailcommon/provider/Policy;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/emailcommon/service/PolicyServiceProxy$4;->this$0:Lcom/android/emailcommon/service/PolicyServiceProxy;

    iput-object p2, p0, Lcom/android/emailcommon/service/PolicyServiceProxy$4;->val$arg0:Lcom/android/emailcommon/provider/Policy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/emailcommon/service/PolicyServiceProxy$4;->this$0:Lcom/android/emailcommon/service/PolicyServiceProxy;

    iget-object v1, p0, Lcom/android/emailcommon/service/PolicyServiceProxy$4;->this$0:Lcom/android/emailcommon/service/PolicyServiceProxy;

    #getter for: Lcom/android/emailcommon/service/PolicyServiceProxy;->mService:Lcom/android/emailcommon/service/IPolicyService;
    invoke-static {v1}, Lcom/android/emailcommon/service/PolicyServiceProxy;->access$100(Lcom/android/emailcommon/service/PolicyServiceProxy;)Lcom/android/emailcommon/service/IPolicyService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/emailcommon/service/PolicyServiceProxy$4;->val$arg0:Lcom/android/emailcommon/provider/Policy;

    invoke-interface {v1, v2}, Lcom/android/emailcommon/service/IPolicyService;->isSupported(Lcom/android/emailcommon/provider/Policy;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    #setter for: Lcom/android/emailcommon/service/PolicyServiceProxy;->mReturn:Ljava/lang/Object;
    invoke-static {v0, v1}, Lcom/android/emailcommon/service/PolicyServiceProxy;->access$002(Lcom/android/emailcommon/service/PolicyServiceProxy;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    return-void
.end method
