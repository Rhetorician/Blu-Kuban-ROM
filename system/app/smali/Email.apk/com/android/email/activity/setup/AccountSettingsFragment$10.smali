.class Lcom/android/email/activity/setup/AccountSettingsFragment$10;
.super Ljava/lang/Object;
.source "AccountSettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSettingsFragment;->loadSettings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 603
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$10;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 6
    .parameter "preference"

    .prologue
    .line 605
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$10;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/Account;
    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$400(Lcom/android/email/activity/setup/AccountSettingsFragment;)Lcom/android/emailcommon/provider/Account;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$10;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    invoke-static {v2, v3}, Lcom/android/email/activity/setup/AccountSettingsFragment$DeleteAccountFragment;->newInstance(Lcom/android/emailcommon/provider/Account;Landroid/app/Fragment;)Lcom/android/email/activity/setup/AccountSettingsFragment$DeleteAccountFragment;

    move-result-object v0

    .line 607
    .local v0, dialogFragment:Lcom/android/email/activity/setup/AccountSettingsFragment$DeleteAccountFragment;
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$10;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    invoke-virtual {v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 608
    .local v1, ft:Landroid/app/FragmentTransaction;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 609
    const-string v2, "DeleteAccountFragment"

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment$DeleteAccountFragment;->show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I

    .line 610
    const/4 v2, 0x1

    return v2
.end method
