.class final Lcom/google/android/gm/AccountHelper$4;
.super Ljava/lang/Object;
.source "AccountHelper.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/AccountHelper;->verifyAccountGmailFeatures(Landroid/content/Context;Landroid/accounts/Account;Lcom/google/android/gm/AccountHelper$GmailAccountValidityResultsCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$account:Landroid/accounts/Account;

.field final synthetic val$callback:Lcom/google/android/gm/AccountHelper$GmailAccountValidityResultsCallback;


# direct methods
.method constructor <init>(Lcom/google/android/gm/AccountHelper$GmailAccountValidityResultsCallback;Landroid/accounts/Account;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 357
    iput-object p1, p0, Lcom/google/android/gm/AccountHelper$4;->val$callback:Lcom/google/android/gm/AccountHelper$GmailAccountValidityResultsCallback;

    iput-object p2, p0, Lcom/google/android/gm/AccountHelper$4;->val$account:Landroid/accounts/Account;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 359
    .local p1, future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Ljava/lang/Boolean;>;"
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 361
    iget-object v2, p0, Lcom/google/android/gm/AccountHelper$4;->val$callback:Lcom/google/android/gm/AccountHelper$GmailAccountValidityResultsCallback;

    if-eqz v2, :cond_12

    .line 362
    iget-object v2, p0, Lcom/google/android/gm/AccountHelper$4;->val$callback:Lcom/google/android/gm/AccountHelper$GmailAccountValidityResultsCallback;

    iget-object v3, p0, Lcom/google/android/gm/AccountHelper$4;->val$account:Landroid/accounts/Account;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/google/android/gm/AccountHelper$GmailAccountValidityResultsCallback;->onResult(Landroid/accounts/Account;Z)V

    .line 381
    :cond_12
    :goto_12
    return-void

    .line 367
    :cond_13
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 369
    .local v1, result:Ljava/lang/Boolean;
    :try_start_15
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/Boolean;

    move-object v1, v0
    :try_end_1d
    .catch Landroid/accounts/OperationCanceledException; {:try_start_15 .. :try_end_1d} :catch_31
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1d} :catch_2f
    .catch Landroid/accounts/AuthenticatorException; {:try_start_15 .. :try_end_1d} :catch_2d

    .line 378
    :goto_1d
    iget-object v2, p0, Lcom/google/android/gm/AccountHelper$4;->val$callback:Lcom/google/android/gm/AccountHelper$GmailAccountValidityResultsCallback;

    if-eqz v2, :cond_12

    .line 379
    iget-object v2, p0, Lcom/google/android/gm/AccountHelper$4;->val$callback:Lcom/google/android/gm/AccountHelper$GmailAccountValidityResultsCallback;

    iget-object v3, p0, Lcom/google/android/gm/AccountHelper$4;->val$account:Landroid/accounts/Account;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/google/android/gm/AccountHelper$GmailAccountValidityResultsCallback;->onResult(Landroid/accounts/Account;Z)V

    goto :goto_12

    .line 374
    :catch_2d
    move-exception v2

    goto :goto_1d

    .line 372
    :catch_2f
    move-exception v2

    goto :goto_1d

    .line 370
    :catch_31
    move-exception v2

    goto :goto_1d
.end method
