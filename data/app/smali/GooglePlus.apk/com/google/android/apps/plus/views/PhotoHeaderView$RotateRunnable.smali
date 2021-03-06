.class Lcom/google/android/apps/plus/views/PhotoHeaderView$RotateRunnable;
.super Ljava/lang/Object;
.source "PhotoHeaderView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/views/PhotoHeaderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RotateRunnable"
.end annotation


# instance fields
.field private mAppliedRotation:F

.field private final mHeader:Lcom/google/android/apps/plus/views/PhotoHeaderView;

.field private mLastRuntime:J

.field private mRunning:Z

.field private mStop:Z

.field private mTargetRotation:F

.field private mVelocity:F


# direct methods
.method public constructor <init>(Lcom/google/android/apps/plus/views/PhotoHeaderView;)V
    .registers 2
    .parameter "header"

    .prologue
    .line 1598
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1599
    iput-object p1, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$RotateRunnable;->mHeader:Lcom/google/android/apps/plus/views/PhotoHeaderView;

    .line 1600
    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    .line 1629
    iget-boolean v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$RotateRunnable;->mStop:Z

    if-eqz v5, :cond_5

    .line 1655
    :cond_4
    :goto_4
    return-void

    .line 1633
    :cond_5
    iget v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$RotateRunnable;->mAppliedRotation:F

    iget v6, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$RotateRunnable;->mTargetRotation:F

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_62

    .line 1634
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1635
    .local v2, now:J
    iget-wide v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$RotateRunnable;->mLastRuntime:J

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-eqz v5, :cond_6c

    iget-wide v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$RotateRunnable;->mLastRuntime:J

    sub-long v0, v2, v5

    .line 1636
    .local v0, delta:J
    :goto_1d
    iget v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$RotateRunnable;->mVelocity:F

    long-to-float v6, v0

    mul-float v4, v5, v6

    .line 1637
    .local v4, rotationAmount:F
    iget v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$RotateRunnable;->mAppliedRotation:F

    iget v6, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$RotateRunnable;->mTargetRotation:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_33

    iget v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$RotateRunnable;->mAppliedRotation:F

    add-float/2addr v5, v4

    iget v6, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$RotateRunnable;->mTargetRotation:F

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_44

    :cond_33
    iget v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$RotateRunnable;->mAppliedRotation:F

    iget v6, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$RotateRunnable;->mTargetRotation:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_4a

    iget v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$RotateRunnable;->mAppliedRotation:F

    add-float/2addr v5, v4

    iget v6, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$RotateRunnable;->mTargetRotation:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_4a

    .line 1641
    :cond_44
    iget v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$RotateRunnable;->mTargetRotation:F

    iget v6, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$RotateRunnable;->mAppliedRotation:F

    sub-float v4, v5, v6

    .line 1643
    :cond_4a
    iget-object v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$RotateRunnable;->mHeader:Lcom/google/android/apps/plus/views/PhotoHeaderView;

    const/4 v6, 0x0

    #calls: Lcom/google/android/apps/plus/views/PhotoHeaderView;->rotate(FZ)V
    invoke-static {v5, v4, v6}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->access$400(Lcom/google/android/apps/plus/views/PhotoHeaderView;FZ)V

    .line 1644
    iget v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$RotateRunnable;->mAppliedRotation:F

    add-float/2addr v5, v4

    iput v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$RotateRunnable;->mAppliedRotation:F

    .line 1645
    iget v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$RotateRunnable;->mAppliedRotation:F

    iget v6, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$RotateRunnable;->mTargetRotation:F

    cmpl-float v5, v5, v6

    if-nez v5, :cond_60

    .line 1646
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView$RotateRunnable;->stop()V

    .line 1648
    :cond_60
    iput-wide v2, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$RotateRunnable;->mLastRuntime:J

    .line 1651
    .end local v0           #delta:J
    .end local v2           #now:J
    .end local v4           #rotationAmount:F
    :cond_62
    iget-boolean v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$RotateRunnable;->mStop:Z

    if-nez v5, :cond_4

    .line 1654
    iget-object v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$RotateRunnable;->mHeader:Lcom/google/android/apps/plus/views/PhotoHeaderView;

    invoke-virtual {v5, p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->post(Ljava/lang/Runnable;)Z

    goto :goto_4

    .line 1635
    .restart local v2       #now:J
    :cond_6c
    const-wide/16 v0, 0x0

    goto :goto_1d
.end method

.method public start(F)V
    .registers 4
    .parameter "rotation"

    .prologue
    .line 1606
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$RotateRunnable;->mRunning:Z

    if-eqz v0, :cond_5

    .line 1617
    :goto_4
    return-void

    .line 1610
    :cond_5
    iput p1, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$RotateRunnable;->mTargetRotation:F

    .line 1611
    iget v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$RotateRunnable;->mTargetRotation:F

    const/high16 v1, 0x43fa

    div-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$RotateRunnable;->mVelocity:F

    .line 1612
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$RotateRunnable;->mAppliedRotation:F

    .line 1613
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$RotateRunnable;->mLastRuntime:J

    .line 1614
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$RotateRunnable;->mStop:Z

    .line 1615
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$RotateRunnable;->mRunning:Z

    .line 1616
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$RotateRunnable;->mHeader:Lcom/google/android/apps/plus/views/PhotoHeaderView;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->post(Ljava/lang/Runnable;)Z

    goto :goto_4
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 1623
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$RotateRunnable;->mRunning:Z

    .line 1624
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$RotateRunnable;->mStop:Z

    .line 1625
    return-void
.end method
