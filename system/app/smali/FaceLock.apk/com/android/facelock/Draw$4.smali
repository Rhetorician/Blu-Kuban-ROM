.class Lcom/android/facelock/Draw$4;
.super Ljava/lang/Object;
.source "Draw.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/facelock/Draw;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/facelock/Draw;


# direct methods
.method constructor <init>(Lcom/android/facelock/Draw;)V
    .registers 2
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/facelock/Draw$4;->this$0:Lcom/android/facelock/Draw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 156
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .parameter "animation"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/facelock/Draw$4;->this$0:Lcom/android/facelock/Draw;

    const/16 v1, 0xff

    #setter for: Lcom/android/facelock/Draw;->mCheckAlpha:I
    invoke-static {v0, v1}, Lcom/android/facelock/Draw;->access$402(Lcom/android/facelock/Draw;I)I

    .line 160
    iget-object v0, p0, Lcom/android/facelock/Draw$4;->this$0:Lcom/android/facelock/Draw;

    invoke-virtual {v0}, Lcom/android/facelock/Draw;->invalidate()V

    .line 161
    iget-object v0, p0, Lcom/android/facelock/Draw$4;->this$0:Lcom/android/facelock/Draw;

    sget-object v1, Lcom/android/facelock/Draw$State;->COMPLETE:Lcom/android/facelock/Draw$State;

    #setter for: Lcom/android/facelock/Draw;->mState:Lcom/android/facelock/Draw$State;
    invoke-static {v0, v1}, Lcom/android/facelock/Draw;->access$102(Lcom/android/facelock/Draw;Lcom/android/facelock/Draw$State;)Lcom/android/facelock/Draw$State;

    .line 162
    iget-object v0, p0, Lcom/android/facelock/Draw$4;->this$0:Lcom/android/facelock/Draw;

    #getter for: Lcom/android/facelock/Draw;->mListener:Lcom/android/facelock/Draw$DrawListener;
    invoke-static {v0}, Lcom/android/facelock/Draw;->access$500(Lcom/android/facelock/Draw;)Lcom/android/facelock/Draw$DrawListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/facelock/Draw$DrawListener;->onDrawComplete()V

    .line 163
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 164
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 165
    return-void
.end method
