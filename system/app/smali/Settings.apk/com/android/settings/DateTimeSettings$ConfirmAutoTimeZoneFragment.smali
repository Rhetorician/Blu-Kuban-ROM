.class public Lcom/android/settings/DateTimeSettings$ConfirmAutoTimeZoneFragment;
.super Landroid/app/DialogFragment;
.source "DateTimeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DateTimeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmAutoTimeZoneFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 613
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter "dialog"

    .prologue
    .line 672
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings$ConfirmAutoTimeZoneFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/DateTimeSettings;

    .line 673
    .local v0, target:Lcom/android/settings/DateTimeSettings;
    if-eqz v0, :cond_b

    .line 674
    #calls: Lcom/android/settings/DateTimeSettings;->initUI()V
    invoke-static {v0}, Lcom/android/settings/DateTimeSettings;->access$500(Lcom/android/settings/DateTimeSettings;)V

    .line 676
    :cond_b
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 624
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings$ConfirmAutoTimeZoneFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 626
    .local v1, context:Landroid/content/Context;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 627
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0b084c

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1080027

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b084d

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 631
    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/DateTimeSettings$ConfirmAutoTimeZoneFragment$1;

    invoke-direct {v3, p0, v1}, Lcom/android/settings/DateTimeSettings$ConfirmAutoTimeZoneFragment$1;-><init>(Lcom/android/settings/DateTimeSettings$ConfirmAutoTimeZoneFragment;Landroid/content/Context;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 658
    const/high16 v2, 0x104

    new-instance v3, Lcom/android/settings/DateTimeSettings$ConfirmAutoTimeZoneFragment$2;

    invoke-direct {v3, p0}, Lcom/android/settings/DateTimeSettings$ConfirmAutoTimeZoneFragment$2;-><init>(Lcom/android/settings/DateTimeSettings$ConfirmAutoTimeZoneFragment;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 667
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method