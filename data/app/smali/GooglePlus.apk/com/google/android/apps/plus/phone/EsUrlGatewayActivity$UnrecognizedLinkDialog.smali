.class public Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity$UnrecognizedLinkDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "EsUrlGatewayActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnrecognizedLinkDialog"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 750
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter "dialog"

    .prologue
    .line 793
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity$UnrecognizedLinkDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 794
    .local v0, activity:Landroid/support/v4/app/FragmentActivity;
    if-eqz v0, :cond_9

    .line 795
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 797
    :cond_9
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 774
    packed-switch p2, :pswitch_data_26

    .line 786
    :goto_3
    return-void

    .line 776
    :pswitch_4
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity$UnrecognizedLinkDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 777
    .local v0, url:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity$UnrecognizedLinkDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->launchBrowser(Landroid/net/Uri;)V

    goto :goto_3

    .line 781
    .end local v0           #url:Landroid/net/Uri;
    :pswitch_1a
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 782
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity$UnrecognizedLinkDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_3

    .line 774
    nop

    :pswitch_data_26
    .packed-switch -0x2
        :pswitch_1a
        :pswitch_4
    .end packed-switch
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 757
    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity$UnrecognizedLinkDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0f000e

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 759
    .local v1, context:Landroid/content/Context;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 760
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f08032f

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 761
    const v2, 0x7f080330

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 763
    const v2, 0x104000a

    invoke-virtual {v0, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 764
    const/high16 v2, 0x104

    invoke-virtual {v0, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 765
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 766
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method