.class Lcom/android/emailcommon/service/AccountServiceProxy$1;
.super Ljava/lang/Object;
.source "AccountServiceProxy.java"

# interfaces
.implements Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/emailcommon/service/AccountServiceProxy;->notifyLoginFailed(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/emailcommon/service/AccountServiceProxy;

.field final synthetic val$accountId:J


# direct methods
.method constructor <init>(Lcom/android/emailcommon/service/AccountServiceProxy;J)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/emailcommon/service/AccountServiceProxy$1;->this$0:Lcom/android/emailcommon/service/AccountServiceProxy;

    iput-wide p2, p0, Lcom/android/emailcommon/service/AccountServiceProxy$1;->val$accountId:J

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
    .line 52
    iget-object v0, p0, Lcom/android/emailcommon/service/AccountServiceProxy$1;->this$0:Lcom/android/emailcommon/service/AccountServiceProxy;

    #getter for: Lcom/android/emailcommon/service/AccountServiceProxy;->mService:Lcom/android/emailcommon/service/IAccountService;
    invoke-static {v0}, Lcom/android/emailcommon/service/AccountServiceProxy;->access$000(Lcom/android/emailcommon/service/AccountServiceProxy;)Lcom/android/emailcommon/service/IAccountService;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/emailcommon/service/AccountServiceProxy$1;->val$accountId:J

    invoke-interface {v0, v1, v2}, Lcom/android/emailcommon/service/IAccountService;->notifyLoginFailed(J)V

    .line 53
    return-void
.end method
