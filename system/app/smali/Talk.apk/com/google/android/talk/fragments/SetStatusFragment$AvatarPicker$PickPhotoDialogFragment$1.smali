.class Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker$PickPhotoDialogFragment$1;
.super Ljava/lang/Object;
.source "SetStatusFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker$PickPhotoDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker$PickPhotoDialogFragment;


# direct methods
.method constructor <init>(Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker$PickPhotoDialogFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 1187
    iput-object p1, p0, Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker$PickPhotoDialogFragment$1;->this$2:Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker$PickPhotoDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1190
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1191
    iget-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker$PickPhotoDialogFragment$1;->this$2:Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker$PickPhotoDialogFragment;

    invoke-virtual {v1}, Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker$PickPhotoDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1192
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1206
    :cond_11
    :goto_11
    return-void

    .line 1195
    :cond_12
    packed-switch p2, :pswitch_data_30

    goto :goto_11

    .line 1197
    :pswitch_16
    iget-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker$PickPhotoDialogFragment$1;->this$2:Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker$PickPhotoDialogFragment;

    iget-object v1, v1, Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker$PickPhotoDialogFragment;->this$1:Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker;

    invoke-virtual {v1}, Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker;->doPickPhotoFromGallery()V

    goto :goto_11

    .line 1200
    :pswitch_1e
    iget-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker$PickPhotoDialogFragment$1;->this$2:Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker$PickPhotoDialogFragment;

    iget-object v1, v1, Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker$PickPhotoDialogFragment;->this$1:Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker;

    invoke-virtual {v1}, Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker;->doTakePhoto()V

    goto :goto_11

    .line 1203
    :pswitch_26
    iget-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker$PickPhotoDialogFragment$1;->this$2:Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker$PickPhotoDialogFragment;

    iget-object v1, v1, Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker$PickPhotoDialogFragment;->this$1:Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker;

    iget-object v1, v1, Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    #calls: Lcom/google/android/talk/fragments/SetStatusFragment;->discardAvatar()V
    invoke-static {v1}, Lcom/google/android/talk/fragments/SetStatusFragment;->access$2800(Lcom/google/android/talk/fragments/SetStatusFragment;)V

    goto :goto_11

    .line 1195
    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_16
        :pswitch_1e
        :pswitch_26
    .end packed-switch
.end method
