.class Lcom/google/android/gm/UndoBarView$4;
.super Ljava/lang/Object;
.source "UndoBarView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/UndoBarView;->getUndoHideAnimation()Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/UndoBarView;


# direct methods
.method constructor <init>(Lcom/google/android/gm/UndoBarView;)V
    .registers 2
    .parameter

    .prologue
    .line 207
    iput-object p1, p0, Lcom/google/android/gm/UndoBarView$4;->this$0:Lcom/google/android/gm/UndoBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3
    .parameter "animation"

    .prologue
    .line 211
    iget-object v0, p0, Lcom/google/android/gm/UndoBarView$4;->this$0:Lcom/google/android/gm/UndoBarView;

    #getter for: Lcom/google/android/gm/UndoBarView;->mUndoHideListener:Landroid/animation/Animator$AnimatorListener;
    invoke-static {v0}, Lcom/google/android/gm/UndoBarView;->access$200(Lcom/google/android/gm/UndoBarView;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 212
    iget-object v0, p0, Lcom/google/android/gm/UndoBarView$4;->this$0:Lcom/google/android/gm/UndoBarView;

    #getter for: Lcom/google/android/gm/UndoBarView;->mUndoHideListener:Landroid/animation/Animator$AnimatorListener;
    invoke-static {v0}, Lcom/google/android/gm/UndoBarView;->access$200(Lcom/google/android/gm/UndoBarView;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 214
    :cond_11
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .parameter "animation"

    .prologue
    .line 218
    iget-object v0, p0, Lcom/google/android/gm/UndoBarView$4;->this$0:Lcom/google/android/gm/UndoBarView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/gm/UndoBarView;->setVisibility(I)V

    .line 219
    iget-object v0, p0, Lcom/google/android/gm/UndoBarView$4;->this$0:Lcom/google/android/gm/UndoBarView;

    #getter for: Lcom/google/android/gm/UndoBarView;->mUndoHideListener:Landroid/animation/Animator$AnimatorListener;
    invoke-static {v0}, Lcom/google/android/gm/UndoBarView;->access$200(Lcom/google/android/gm/UndoBarView;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 220
    iget-object v0, p0, Lcom/google/android/gm/UndoBarView$4;->this$0:Lcom/google/android/gm/UndoBarView;

    #getter for: Lcom/google/android/gm/UndoBarView;->mUndoHideListener:Landroid/animation/Animator$AnimatorListener;
    invoke-static {v0}, Lcom/google/android/gm/UndoBarView;->access$200(Lcom/google/android/gm/UndoBarView;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 222
    :cond_18
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 3
    .parameter "animation"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/google/android/gm/UndoBarView$4;->this$0:Lcom/google/android/gm/UndoBarView;

    #getter for: Lcom/google/android/gm/UndoBarView;->mUndoHideListener:Landroid/animation/Animator$AnimatorListener;
    invoke-static {v0}, Lcom/google/android/gm/UndoBarView;->access$200(Lcom/google/android/gm/UndoBarView;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 227
    iget-object v0, p0, Lcom/google/android/gm/UndoBarView$4;->this$0:Lcom/google/android/gm/UndoBarView;

    #getter for: Lcom/google/android/gm/UndoBarView;->mUndoHideListener:Landroid/animation/Animator$AnimatorListener;
    invoke-static {v0}, Lcom/google/android/gm/UndoBarView;->access$200(Lcom/google/android/gm/UndoBarView;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationRepeat(Landroid/animation/Animator;)V

    .line 229
    :cond_11
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3
    .parameter "animation"

    .prologue
    .line 233
    iget-object v0, p0, Lcom/google/android/gm/UndoBarView$4;->this$0:Lcom/google/android/gm/UndoBarView;

    #getter for: Lcom/google/android/gm/UndoBarView;->mUndoHideListener:Landroid/animation/Animator$AnimatorListener;
    invoke-static {v0}, Lcom/google/android/gm/UndoBarView;->access$200(Lcom/google/android/gm/UndoBarView;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 234
    iget-object v0, p0, Lcom/google/android/gm/UndoBarView$4;->this$0:Lcom/google/android/gm/UndoBarView;

    #getter for: Lcom/google/android/gm/UndoBarView;->mUndoHideListener:Landroid/animation/Animator$AnimatorListener;
    invoke-static {v0}, Lcom/google/android/gm/UndoBarView;->access$200(Lcom/google/android/gm/UndoBarView;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    .line 236
    :cond_11
    return-void
.end method
