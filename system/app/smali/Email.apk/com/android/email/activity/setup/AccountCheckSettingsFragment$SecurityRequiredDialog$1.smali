.class Lcom/android/email/activity/setup/AccountCheckSettingsFragment$SecurityRequiredDialog$1;
.super Ljava/lang/Object;
.source "AccountCheckSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountCheckSettingsFragment$SecurityRequiredDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$SecurityRequiredDialog;

.field final synthetic val$target:Lcom/android/email/activity/setup/AccountCheckSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountCheckSettingsFragment$SecurityRequiredDialog;Lcom/android/email/activity/setup/AccountCheckSettingsFragment;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 909
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$SecurityRequiredDialog$1;->this$0:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$SecurityRequiredDialog;

    iput-object p2, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$SecurityRequiredDialog$1;->val$target:Lcom/android/email/activity/setup/AccountCheckSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 911
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$SecurityRequiredDialog$1;->this$0:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$SecurityRequiredDialog;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$SecurityRequiredDialog;->dismiss()V

    .line 912
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$SecurityRequiredDialog$1;->val$target:Lcom/android/email/activity/setup/AccountCheckSettingsFragment;

    const/4 v1, 0x0

    #calls: Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->onSecurityRequiredDialogResultOk(Z)V
    invoke-static {v0, v1}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->access$500(Lcom/android/email/activity/setup/AccountCheckSettingsFragment;Z)V

    .line 913
    return-void
.end method
