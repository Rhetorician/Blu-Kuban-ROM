.class Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$3;
.super Ljava/lang/Object;
.source "AccountSetupOptionsForSeven.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->onDone()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;

.field final synthetic val$changedSettings:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;Ljava/util/HashMap;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 402
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$3;->this$0:Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;

    iput-object p2, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$3;->val$changedSettings:Ljava/util/HashMap;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 406
    :try_start_0
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$3;->this$0:Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;

    #getter for: Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->zHandler:Lcom/digc/seven/Z7MailHandler;
    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->access$000(Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;)Lcom/digc/seven/Z7MailHandler;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$3;->val$changedSettings:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3}, Lcom/digc/seven/Z7MailHandler;->updateSettings(ILjava/util/Map;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    .line 431
    :goto_c
    return-void

    .line 407
    :catch_d
    move-exception v0

    .line 408
    .local v0, e:Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$3;->this$0:Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;

    new-instance v2, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$3$1;

    invoke-direct {v2, p0, v0}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$3$1;-><init>(Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$3;Landroid/os/RemoteException;)V

    invoke-virtual {v1, v2}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_c
.end method