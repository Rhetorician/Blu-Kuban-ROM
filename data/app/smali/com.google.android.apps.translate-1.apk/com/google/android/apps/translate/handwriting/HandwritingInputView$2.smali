.class Lcom/google/android/apps/translate/handwriting/HandwritingInputView$2;
.super Ljava/lang/Object;
.source "HandwritingInputView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->initialize(Lcom/google/research/handwriting/gui/CandidateViewHandler;Landroid/widget/EditText;Lcom/google/android/apps/translate/editor/InputMethodView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/translate/handwriting/HandwritingInputView;


# direct methods
.method constructor <init>(Lcom/google/android/apps/translate/handwriting/HandwritingInputView;)V
    .registers 2
    .parameter

    .prologue
    .line 552
    iput-object p1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView$2;->this$0:Lcom/google/android/apps/translate/handwriting/HandwritingInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 4
    .parameter "s"

    .prologue
    const/4 v1, 0x0

    .line 555
    iget-object v0, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView$2;->this$0:Lcom/google/android/apps/translate/handwriting/HandwritingInputView;

    #calls: Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->setInputBoxIcons(ZZ)V
    invoke-static {v0, v1, v1}, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->access$800(Lcom/google/android/apps/translate/handwriting/HandwritingInputView;ZZ)V

    .line 556
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 561
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 566
    return-void
.end method
