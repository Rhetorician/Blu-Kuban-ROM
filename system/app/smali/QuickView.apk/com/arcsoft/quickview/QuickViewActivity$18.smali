.class Lcom/arcsoft/quickview/QuickViewActivity$18;
.super Ljava/lang/Object;
.source "QuickViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/arcsoft/quickview/QuickViewActivity;->showRenameDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/arcsoft/quickview/QuickViewActivity;

.field final synthetic val$editText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/arcsoft/quickview/QuickViewActivity;Landroid/widget/EditText;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1465
    iput-object p1, p0, Lcom/arcsoft/quickview/QuickViewActivity$18;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    iput-object p2, p0, Lcom/arcsoft/quickview/QuickViewActivity$18;->val$editText:Landroid/widget/EditText;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1467
    iget-object v1, p0, Lcom/arcsoft/quickview/QuickViewActivity$18;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/arcsoft/quickview/QuickViewActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1468
    .local v0, mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/arcsoft/quickview/QuickViewActivity$18;->val$editText:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 1469
    return-void
.end method