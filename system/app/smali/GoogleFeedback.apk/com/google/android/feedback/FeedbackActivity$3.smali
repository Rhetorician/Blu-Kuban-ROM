.class Lcom/google/android/feedback/FeedbackActivity$3;
.super Ljava/lang/Object;
.source "FeedbackActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/feedback/FeedbackActivity;->showToast(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/feedback/FeedbackActivity;

.field final synthetic val$resId:I


# direct methods
.method constructor <init>(Lcom/google/android/feedback/FeedbackActivity;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 451
    iput-object p1, p0, Lcom/google/android/feedback/FeedbackActivity$3;->this$0:Lcom/google/android/feedback/FeedbackActivity;

    iput p2, p0, Lcom/google/android/feedback/FeedbackActivity$3;->val$resId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 454
    iget-object v0, p0, Lcom/google/android/feedback/FeedbackActivity$3;->this$0:Lcom/google/android/feedback/FeedbackActivity;

    iget v1, p0, Lcom/google/android/feedback/FeedbackActivity$3;->val$resId:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 455
    return-void
.end method
