.class Lcom/android/email/activity/setup/snc/AccountSetupWizard$13;
.super Ljava/lang/Object;
.source "AccountSetupWizard.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/snc/AccountSetupWizard;->showGetMDNDialog(ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/snc/AccountSetupWizard;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/snc/AccountSetupWizard;)V
    .registers 2
    .parameter

    .prologue
    .line 1182
    iput-object p1, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard$13;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupWizard;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 2
    .parameter "dialog"

    .prologue
    .line 1184
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1185
    return-void
.end method