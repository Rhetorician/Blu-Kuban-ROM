.class Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog$1;
.super Ljava/lang/Object;
.source "AccountCheckSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;

.field final synthetic val$target:Lcom/android/email/activity/setup/AccountCheckSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;Lcom/android/email/activity/setup/AccountCheckSettingsFragment;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 729
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog$1;->this$0:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;

    iput-object p2, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog$1;->val$target:Lcom/android/email/activity/setup/AccountCheckSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 731
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog$1;->this$0:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->dismiss()V

    .line 732
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog$1;->val$target:Lcom/android/email/activity/setup/AccountCheckSettingsFragment;

    #calls: Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->onCheckingDialogCancel()V
    invoke-static {v0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->access$100(Lcom/android/email/activity/setup/AccountCheckSettingsFragment;)V

    .line 733
    return-void
.end method
