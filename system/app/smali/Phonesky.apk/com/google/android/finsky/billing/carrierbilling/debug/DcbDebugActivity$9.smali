.class Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity$9;
.super Ljava/lang/Object;
.source "DcbDebugActivity.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->refreshDcbParams(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;

.field final synthetic val$successRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;Ljava/lang/Runnable;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 368
    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity$9;->this$0:Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;

    iput-object p2, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity$9;->val$successRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;)V
    .registers 4
    .parameter "response"

    .prologue
    .line 371
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierParamsAction;

    invoke-direct {v0, p1}, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierParamsAction;-><init>(Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;)V

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity$9;->val$successRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierParamsAction;->run(Ljava/lang/Runnable;)V

    .line 372
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 368
    check-cast p1, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity$9;->onResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;)V

    return-void
.end method