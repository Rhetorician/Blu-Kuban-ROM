.class public Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;
.super Landroid/app/DialogFragment;
.source "AccountCheckSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountCheckSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CheckingDialog"
.end annotation


# instance fields
.field private final EXTRA_PROGRESS_STRING:Ljava/lang/String;

.field private mProgressString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 681
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 686
    const-string v0, "CheckProgressDialog.Progress"

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->EXTRA_PROGRESS_STRING:Ljava/lang/String;

    return-void
.end method

.method private getProgressString(I)Ljava/lang/String;
    .registers 4
    .parameter "progress"

    .prologue
    .line 760
    const/4 v0, 0x0

    .line 761
    .local v0, stringId:I
    packed-switch p1, :pswitch_data_1a

    .line 772
    :goto_4
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 763
    :pswitch_d
    const v0, 0x7f0800bb

    .line 764
    goto :goto_4

    .line 766
    :pswitch_11
    const v0, 0x7f0800bc

    .line 767
    goto :goto_4

    .line 769
    :pswitch_15
    const v0, 0x7f0800bd

    goto :goto_4

    .line 761
    nop

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_d
        :pswitch_11
        :pswitch_15
    .end packed-switch
.end method

.method public static newInstance(Lcom/android/email/activity/setup/AccountCheckSettingsFragment;I)Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;
    .registers 3
    .parameter "parentFragment"
    .parameter "progress"

    .prologue
    .line 697
    new-instance v0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;

    invoke-direct {v0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;-><init>()V

    .line 698
    .local v0, f:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;
    invoke-virtual {v0, p0, p1}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 699
    return-object v0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter "dialog"

    .prologue
    .line 744
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;

    .line 746
    .local v0, target:Lcom/android/email/activity/setup/AccountCheckSettingsFragment;
    #calls: Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->onCheckingDialogCancel()V
    invoke-static {v0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->access$100(Lcom/android/email/activity/setup/AccountCheckSettingsFragment;)V

    .line 747
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 748
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    .line 714
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 715
    .local v0, context:Landroid/content/Context;
    if-eqz p1, :cond_e

    .line 716
    const-string v3, "CheckProgressDialog.Progress"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->mProgressString:Ljava/lang/String;

    .line 718
    :cond_e
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->mProgressString:Ljava/lang/String;

    if-nez v3, :cond_1c

    .line 719
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->getTargetRequestCode()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->getProgressString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->mProgressString:Ljava/lang/String;

    .line 721
    :cond_1c
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;

    .line 724
    .local v2, target:Lcom/android/email/activity/setup/AccountCheckSettingsFragment;
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 725
    .local v1, dialog:Landroid/app/ProgressDialog;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 726
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->mProgressString:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 727
    const/4 v3, -0x2

    const v4, 0x7f08000a

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog$1;

    invoke-direct {v5, p0, v2}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog$1;-><init>(Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;Lcom/android/email/activity/setup/AccountCheckSettingsFragment;)V

    invoke-virtual {v1, v3, v4, v5}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 735
    return-object v1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 752
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 753
    const-string v0, "CheckProgressDialog.Progress"

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->mProgressString:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    return-void
.end method

.method public updateProgress(I)V
    .registers 4
    .parameter "progress"

    .prologue
    .line 707
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->getProgressString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->mProgressString:Ljava/lang/String;

    .line 708
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    .line 709
    .local v0, dialog:Landroid/app/AlertDialog;
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->mProgressString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 710
    return-void
.end method
