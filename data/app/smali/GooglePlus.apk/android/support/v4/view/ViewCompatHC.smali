.class Landroid/support/v4/view/ViewCompatHC;
.super Ljava/lang/Object;
.source "ViewCompatHC.java"


# direct methods
.method static getFrameTime()J
    .registers 2

    .prologue
    .line 23
    invoke-static {}, Landroid/animation/ValueAnimator;->getFrameDelay()J

    move-result-wide v0

    return-wide v0
.end method
