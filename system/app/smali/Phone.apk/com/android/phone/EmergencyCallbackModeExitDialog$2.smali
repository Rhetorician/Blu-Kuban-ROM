.class Lcom/android/phone/EmergencyCallbackModeExitDialog$2;
.super Ljava/lang/Object;
.source "EmergencyCallbackModeExitDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/EmergencyCallbackModeExitDialog;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/EmergencyCallbackModeExitDialog;


# direct methods
.method constructor <init>(Lcom/android/phone/EmergencyCallbackModeExitDialog;)V
    .registers 2
    .parameter

    .prologue
    .line 239
    iput-object p1, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog$2;->this$0:Lcom/android/phone/EmergencyCallbackModeExitDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v4, 0x0

    .line 243
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iput-boolean v4, v0, Lcom/android/phone/PhoneApp;->mIsEcbmExitDialog:Z

    .line 247
    iget-object v0, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog$2;->this$0:Lcom/android/phone/EmergencyCallbackModeExitDialog;

    const/4 v1, -0x1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "exit_ecm_result"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/EmergencyCallbackModeExitDialog;->setResult(ILandroid/content/Intent;)V

    .line 249
    iget-object v0, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog$2;->this$0:Lcom/android/phone/EmergencyCallbackModeExitDialog;

    invoke-virtual {v0}, Lcom/android/phone/EmergencyCallbackModeExitDialog;->finish()V

    .line 250
    return-void
.end method