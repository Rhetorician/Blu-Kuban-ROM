.class final Lcom/google/android/finsky/utils/PurchaseInitiator$1;
.super Ljava/lang/Object;
.source "PurchaseInitiator.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/utils/PurchaseInitiator;->createFreePurchaseListener(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;)Lcom/android/volley/Response$Listener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$account:Landroid/accounts/Account;

.field final synthetic val$continueUrl:Ljava/lang/String;

.field final synthetic val$doc:Lcom/google/android/finsky/api/model/Document;

.field final synthetic val$externalReferrer:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/google/android/finsky/utils/PurchaseInitiator$1;->val$account:Landroid/accounts/Account;

    iput-object p2, p0, Lcom/google/android/finsky/utils/PurchaseInitiator$1;->val$doc:Lcom/google/android/finsky/api/model/Document;

    iput-object p3, p0, Lcom/google/android/finsky/utils/PurchaseInitiator$1;->val$externalReferrer:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/finsky/utils/PurchaseInitiator$1;->val$continueUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;)V
    .registers 10
    .parameter "buyResponse"

    .prologue
    const/4 v3, 0x0

    .line 40
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasPurchaseResponse()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 41
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->getPurchaseResponse()Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;

    move-result-object v7

    .line 43
    .local v7, purchaseResponse:Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;
    invoke-virtual {v7}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;->getStatus()I

    move-result v0

    if-nez v0, :cond_32

    .line 44
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasPurchaseStatusResponse()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 45
    iget-object v0, p0, Lcom/google/android/finsky/utils/PurchaseInitiator$1;->val$account:Landroid/accounts/Account;

    iget-object v1, p0, Lcom/google/android/finsky/utils/PurchaseInitiator$1;->val$doc:Lcom/google/android/finsky/api/model/Document;

    iget-object v2, p0, Lcom/google/android/finsky/utils/PurchaseInitiator$1;->val$externalReferrer:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/finsky/utils/PurchaseInitiator$1;->val$continueUrl:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->getPurchaseStatusResponse()Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;

    move-result-object v4

    const/4 v5, 0x1

    const-string v6, "free_purchase"

    invoke-static/range {v0 .. v6}, Lcom/google/android/finsky/utils/PurchaseInitiator;->processPurchaseStatusResponse(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;ZLjava/lang/String;)V

    .line 62
    .end local v7           #purchaseResponse:Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;
    :goto_29
    return-void

    .line 51
    .restart local v7       #purchaseResponse:Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;
    :cond_2a
    const-string v0, "Expected PurchaseStatusResponse."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_29

    .line 54
    :cond_32
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    const v3, 0x7f0700fe

    invoke-virtual {v0, v3}, Lcom/google/android/finsky/FinskyApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, error:Ljava/lang/String;
    invoke-virtual {v7}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;->getLocalizedErrorMessage()Ljava/lang/String;

    move-result-object v2

    .line 56
    .local v2, errorMessage:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getNotifier()Lcom/google/android/finsky/utils/Notifier;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/finsky/utils/PurchaseInitiator$1;->val$doc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v4

    iget-object v3, p0, Lcom/google/android/finsky/utils/PurchaseInitiator$1;->val$doc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->getDetailsUrl()Ljava/lang/String;

    move-result-object v5

    move-object v3, v2

    invoke-interface/range {v0 .. v5}, Lcom/google/android/finsky/utils/Notifier;->showPurchaseErrorMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_29

    .line 60
    .end local v1           #error:Ljava/lang/String;
    .end local v2           #errorMessage:Ljava/lang/String;
    .end local v7           #purchaseResponse:Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;
    :cond_5a
    const-string v0, "Expected PurchaseResponse."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_29
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    check-cast p1, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/utils/PurchaseInitiator$1;->onResponse(Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;)V

    return-void
.end method
