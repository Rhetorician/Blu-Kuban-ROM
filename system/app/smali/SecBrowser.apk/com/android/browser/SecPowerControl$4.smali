.class Lcom/android/browser/SecPowerControl$4;
.super Ljava/lang/Object;
.source "SecPowerControl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/SecPowerControl;->onDrawPowerCtrl()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/SecPowerControl;


# direct methods
.method constructor <init>(Lcom/android/browser/SecPowerControl;)V
    .registers 2
    .parameter

    .prologue
    .line 191
    iput-object p1, p0, Lcom/android/browser/SecPowerControl$4;->this$0:Lcom/android/browser/SecPowerControl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "arg0"

    .prologue
    .line 194
    const-string v0, "colorize1"

    sput-object v0, Lcom/android/browser/SecPowerControl;->strPowerSavingMode:Ljava/lang/String;

    .line 195
    iget-object v0, p0, Lcom/android/browser/SecPowerControl$4;->this$0:Lcom/android/browser/SecPowerControl;

    #calls: Lcom/android/browser/SecPowerControl;->colorizeFocusSetting()V
    invoke-static {v0}, Lcom/android/browser/SecPowerControl;->access$400(Lcom/android/browser/SecPowerControl;)V

    .line 196
    iget-object v0, p0, Lcom/android/browser/SecPowerControl$4;->this$0:Lcom/android/browser/SecPowerControl;

    invoke-virtual {v0}, Lcom/android/browser/SecPowerControl;->updatePowerSavingMode()V

    .line 197
    return-void
.end method