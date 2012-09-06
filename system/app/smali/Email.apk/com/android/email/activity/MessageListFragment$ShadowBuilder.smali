.class Lcom/android/email/activity/MessageListFragment$ShadowBuilder;
.super Landroid/view/View$DragShadowBuilder;
.source "MessageListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ShadowBuilder"
.end annotation


# static fields
.field private static sBackground:Landroid/graphics/drawable/Drawable;

.field private static sCountMargin:F

.field private static sCountPaint:Landroid/text/TextPaint;

.field private static sDragOffset:I

.field private static sMessageMargin:F

.field private static sMessagePaint:Landroid/text/TextPaint;

.field private static sTouchX:I


# instance fields
.field private final mCountPoint:Landroid/graphics/PointF;

.field private final mCountText:Ljava/lang/String;

.field private final mDragHeight:I

.field private final mDragWidth:I

.field private final mMessagePoint:Landroid/graphics/PointF;

.field private final mMessageText:Ljava/lang/String;

.field private mOldOrientation:I


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .registers 13
    .parameter "view"
    .parameter "count"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 641
    invoke-direct {p0, p1}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    .line 631
    iput v9, p0, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->mOldOrientation:I

    .line 642
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 643
    .local v4, res:Landroid/content/res/Resources;
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v3, v5, Landroid/content/res/Configuration;->orientation:I

    .line 645
    .local v3, newOrientation:I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    iput v5, p0, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->mDragHeight:I

    .line 646
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    iput v5, p0, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->mDragWidth:I

    .line 649
    sget-object v5, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_25

    iget v5, p0, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->mOldOrientation:I

    if-eq v5, v3, :cond_93

    .line 650
    :cond_25
    iput v3, p0, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->mOldOrientation:I

    .line 652
    const v5, 0x7f020057

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    sput-object v5, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sBackground:Landroid/graphics/drawable/Drawable;

    .line 653
    sget-object v5, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sBackground:Landroid/graphics/drawable/Drawable;

    iget v6, p0, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->mDragWidth:I

    iget v7, p0, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->mDragHeight:I

    invoke-virtual {v5, v9, v9, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 655
    const v5, 0x7f0a0011

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    sput v5, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sDragOffset:I

    .line 657
    new-instance v5, Landroid/text/TextPaint;

    invoke-direct {v5}, Landroid/text/TextPaint;-><init>()V

    sput-object v5, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sMessagePaint:Landroid/text/TextPaint;

    .line 659
    const v5, 0x7f0a0014

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 660
    .local v2, messageTextSize:F
    sget-object v5, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sMessagePaint:Landroid/text/TextPaint;

    invoke-virtual {v5, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 661
    sget-object v5, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sMessagePaint:Landroid/text/TextPaint;

    sget-object v6, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 662
    sget-object v5, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sMessagePaint:Landroid/text/TextPaint;

    invoke-virtual {v5, v8}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 663
    const v5, 0x7f0a0015

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    sput v5, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sMessageMargin:F

    .line 665
    new-instance v5, Landroid/text/TextPaint;

    invoke-direct {v5}, Landroid/text/TextPaint;-><init>()V

    sput-object v5, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountPaint:Landroid/text/TextPaint;

    .line 667
    const v5, 0x7f0a0012

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 668
    .local v1, countTextSize:F
    sget-object v5, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountPaint:Landroid/text/TextPaint;

    invoke-virtual {v5, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 669
    sget-object v5, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountPaint:Landroid/text/TextPaint;

    sget-object v6, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 670
    sget-object v5, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountPaint:Landroid/text/TextPaint;

    invoke-virtual {v5, v8}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 671
    const v5, 0x7f0a0013

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    sput v5, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountMargin:F

    .line 675
    .end local v1           #countTextSize:F
    .end local v2           #messageTextSize:F
    :cond_93
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 677
    .local v0, b:Landroid/graphics/Rect;
    const/high16 v5, 0x7f0c

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v4, v5, p2, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->mMessageText:Ljava/lang/String;

    .line 678
    sget-object v5, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sMessagePaint:Landroid/text/TextPaint;

    iget-object v6, p0, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->mMessageText:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->mMessageText:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v6, v9, v7, v0}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 679
    new-instance v5, Landroid/graphics/PointF;

    iget v6, p0, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->mDragWidth:I

    iget v7, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    sget v7, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sMessageMargin:F

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->mDragHeight:I

    iget v8, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-direct {v5, v6, v7}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v5, p0, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->mMessagePoint:Landroid/graphics/PointF;

    .line 682
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->mCountText:Ljava/lang/String;

    .line 683
    sget-object v5, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountPaint:Landroid/text/TextPaint;

    iget-object v6, p0, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->mCountText:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->mCountText:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v6, v9, v7, v0}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 684
    new-instance v5, Landroid/graphics/PointF;

    sget v6, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountMargin:F

    iget v7, p0, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->mDragHeight:I

    iget v8, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-direct {v5, v6, v7}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v5, p0, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->mCountPoint:Landroid/graphics/PointF;

    .line 686
    return-void
.end method

.method static synthetic access$102(I)I
    .registers 1
    .parameter "x0"

    .prologue
    .line 612
    sput p0, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchX:I

    return p0
.end method


# virtual methods
.method public onDrawShadow(Landroid/graphics/Canvas;)V
    .registers 6
    .parameter "canvas"

    .prologue
    .line 696
    invoke-super {p0, p1}, Landroid/view/View$DragShadowBuilder;->onDrawShadow(Landroid/graphics/Canvas;)V

    .line 697
    sget-object v0, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 698
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->mMessageText:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->mMessagePoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->mMessagePoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sget-object v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sMessagePaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 699
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->mCountText:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->mCountPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->mCountPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sget-object v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 700
    return-void
.end method

.method public onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .registers 6
    .parameter "shadowSize"
    .parameter "shadowTouchPoint"

    .prologue
    .line 690
    iget v0, p0, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->mDragWidth:I

    iget v1, p0, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->mDragHeight:I

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Point;->set(II)V

    .line 691
    sget v0, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchX:I

    iget v1, p0, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->mDragHeight:I

    div-int/lit8 v1, v1, 0x2

    sget v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sDragOffset:I

    add-int/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Point;->set(II)V

    .line 692
    return-void
.end method
