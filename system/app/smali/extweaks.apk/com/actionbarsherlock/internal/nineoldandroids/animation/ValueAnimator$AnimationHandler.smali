.class Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator$AnimationHandler;
.super Landroid/os/Handler;
.source "ValueAnimator.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 571
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator$AnimationHandler;)V
    .registers 2
    .parameter

    .prologue
    .line 571
    invoke-direct {p0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator$AnimationHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 14
    .parameter

    .prologue
    .line 586
    const/4 v3, 0x1

    .line 587
    invoke-static {}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->access$2()Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 588
    invoke-static {}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->access$3()Ljava/lang/ThreadLocal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 589
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_12e

    .line 683
    :cond_1a
    :goto_1a
    return-void

    .line 593
    :pswitch_1b
    invoke-static {}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->access$4()Ljava/lang/ThreadLocal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 594
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_31

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_128

    .line 595
    :cond_31
    const/4 v3, 0x0

    move v5, v3

    .line 602
    :cond_33
    :goto_33
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_a4

    .line 621
    :goto_39
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v7

    .line 622
    invoke-static {}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->access$7()Ljava/lang/ThreadLocal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 623
    invoke-static {}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->access$8()Ljava/lang/ThreadLocal;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 627
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 628
    const/4 v4, 0x0

    move v6, v4

    :goto_57
    if-lt v6, v9, :cond_d0

    .line 634
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 635
    if-lez v9, :cond_66

    .line 636
    const/4 v4, 0x0

    move v6, v4

    :goto_61
    if-lt v6, v9, :cond_e4

    .line 642
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 647
    :cond_66
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 648
    const/4 v4, 0x0

    move v6, v4

    move v4, v2

    .line 649
    :goto_6d
    if-lt v6, v4, :cond_f9

    .line 668
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_80

    .line 669
    const/4 v2, 0x0

    move v4, v2

    :goto_77
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v4, v2, :cond_11a

    .line 672
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 677
    :cond_80
    if-eqz v5, :cond_1a

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8e

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 678
    :cond_8e
    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    invoke-static {}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->access$12()J

    move-result-wide v3

    .line 679
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v7

    sub-long/2addr v3, v5

    .line 678
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator$AnimationHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1a

    .line 604
    :cond_a4
    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 605
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 606
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 607
    const/4 v4, 0x0

    move v6, v4

    :goto_b3
    if-ge v6, v7, :cond_33

    .line 608
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;

    .line 610
    #getter for: Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mStartDelay:J
    invoke-static {v4}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->access$5(Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_cc

    .line 611
    #calls: Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->startAnimation()V
    invoke-static {v4}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->access$6(Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;)V

    .line 607
    :goto_c8
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_b3

    .line 613
    :cond_cc
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c8

    .line 629
    :cond_d0
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;

    .line 630
    #calls: Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->delayedAnimationFrame(J)Z
    invoke-static {v4, v7, v8}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->access$9(Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;J)Z

    move-result v10

    if-eqz v10, :cond_df

    .line 631
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 628
    :cond_df
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto/16 :goto_57

    .line 637
    :cond_e4
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;

    .line 638
    #calls: Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->startAnimation()V
    invoke-static {v4}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->access$6(Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;)V

    .line 639
    const/4 v10, 0x1

    #setter for: Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mRunning:Z
    invoke-static {v4, v10}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->access$10(Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;Z)V

    .line 640
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 636
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto/16 :goto_61

    .line 650
    :cond_f9
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;

    .line 651
    invoke-virtual {v2, v7, v8}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->animationFrame(J)Z

    move-result v9

    if-eqz v9, :cond_108

    .line 652
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 654
    :cond_108
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ne v9, v4, :cond_113

    .line 655
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto/16 :goto_6d

    .line 664
    :cond_113
    add-int/lit8 v4, v4, -0x1

    .line 665
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_6d

    .line 670
    :cond_11a
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;

    #calls: Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->endAnimation()V
    invoke-static {v2}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->access$11(Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;)V

    .line 669
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto/16 :goto_77

    :cond_128
    move v5, v3

    goto/16 :goto_33

    :pswitch_12b
    move v5, v3

    goto/16 :goto_39

    .line 589
    :pswitch_data_12e
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_12b
    .end packed-switch
.end method