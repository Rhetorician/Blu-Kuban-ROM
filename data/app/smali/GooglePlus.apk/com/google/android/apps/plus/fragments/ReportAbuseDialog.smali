.class public Lcom/google/android/apps/plus/fragments/ReportAbuseDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "ReportAbuseDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final ABUSE_TYPES:[I

.field private static final MOBILE_ABUSE_TYPES:[I


# instance fields
.field private mAbuseType:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x6

    .line 29
    new-array v0, v1, [I

    fill-array-data v0, :array_10

    sput-object v0, Lcom/google/android/apps/plus/fragments/ReportAbuseDialog;->MOBILE_ABUSE_TYPES:[I

    .line 42
    new-array v0, v1, [I

    fill-array-data v0, :array_20

    sput-object v0, Lcom/google/android/apps/plus/fragments/ReportAbuseDialog;->ABUSE_TYPES:[I

    return-void

    .line 29
    :array_10
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    .line 42
    :array_20
    .array-data 0x4
        0xc6t 0x2t 0x8t 0x7ft
        0xc3t 0x2t 0x8t 0x7ft
        0xc5t 0x2t 0x8t 0x7ft
        0xc2t 0x2t 0x8t 0x7ft
        0xc1t 0x2t 0x8t 0x7ft
        0xc4t 0x2t 0x8t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/plus/fragments/ReportAbuseDialog;->mAbuseType:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 92
    packed-switch p2, :pswitch_data_22

    .line 106
    if-ltz p2, :cond_7

    .line 107
    iput p2, p0, Lcom/google/android/apps/plus/fragments/ReportAbuseDialog;->mAbuseType:I

    .line 111
    :cond_7
    :goto_7
    return-void

    .line 94
    :pswitch_8
    iget v0, p0, Lcom/google/android/apps/plus/fragments/ReportAbuseDialog;->mAbuseType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    .line 95
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ReportAbuseDialog;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;

    sget-object v1, Lcom/google/android/apps/plus/fragments/ReportAbuseDialog;->MOBILE_ABUSE_TYPES:[I

    iget v2, p0, Lcom/google/android/apps/plus/fragments/ReportAbuseDialog;->mAbuseType:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->reportAbuse(I)V

    goto :goto_7

    .line 101
    :pswitch_1d
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_7

    .line 92
    nop

    :pswitch_data_22
    .packed-switch -0x2
        :pswitch_1d
        :pswitch_8
    .end packed-switch
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    .line 58
    if-eqz p1, :cond_a

    .line 59
    const-string v4, "abuse_type"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/google/android/apps/plus/fragments/ReportAbuseDialog;->mAbuseType:I

    .line 61
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ReportAbuseDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 62
    .local v1, activity:Landroid/support/v4/app/FragmentActivity;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 63
    .local v2, builder:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0802c0

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 65
    const v4, 0x104000a

    invoke-virtual {v2, v4, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 66
    const/high16 v4, 0x104

    invoke-virtual {v2, v4, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 67
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 69
    sget-object v4, Lcom/google/android/apps/plus/fragments/ReportAbuseDialog;->ABUSE_TYPES:[I

    array-length v4, v4

    new-array v0, v4, [Ljava/lang/String;

    .line 70
    .local v0, abuseTypes:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2e
    sget-object v4, Lcom/google/android/apps/plus/fragments/ReportAbuseDialog;->ABUSE_TYPES:[I

    array-length v4, v4

    if-ge v3, v4, :cond_40

    .line 71
    sget-object v4, Lcom/google/android/apps/plus/fragments/ReportAbuseDialog;->ABUSE_TYPES:[I

    aget v4, v4, v3

    invoke-virtual {v1, v4}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    .line 70
    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    .line 73
    :cond_40
    iget v4, p0, Lcom/google/android/apps/plus/fragments/ReportAbuseDialog;->mAbuseType:I

    invoke-virtual {v2, v0, v4, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 75
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 83
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 84
    const-string v0, "abuse_type"

    iget v1, p0, Lcom/google/android/apps/plus/fragments/ReportAbuseDialog;->mAbuseType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 85
    return-void
.end method
