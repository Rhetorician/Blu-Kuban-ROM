.class public Lcom/google/android/maps/driveabout/app/SqueezedLabelView;
.super Landroid/widget/TextView;


# instance fields
.field private a:F

.field private b:F

.field private c:I

.field private d:F

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->c:I

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->c:I

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->b()V

    sget-object v0, Lcom/google/android/apps/maps/b;->c:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    cmpl-float v2, v1, v4

    if-lez v2, :cond_1d

    invoke-virtual {p0, v1}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->a(F)V

    :cond_1d
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    cmpl-float v2, v1, v4

    if-lez v2, :cond_2a

    invoke-virtual {p0, v1}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->b(F)V

    :cond_2a
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private b(I)I
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private final b()V
    .registers 4

    const/4 v0, 0x1

    const/high16 v1, 0x4180

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->a:F

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->b:F

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->a:F

    invoke-virtual {p0, v0, v1}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->setTextSize(IF)V

    return-void
.end method

.method private c()V
    .registers 2

    const/high16 v0, -0x4080

    iput v0, p0, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->d:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->e:I

    return-void
.end method


# virtual methods
.method public a()F
    .registers 2

    iget v0, p0, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->a:F

    return v0
.end method

.method public a(F)V
    .registers 4

    const/high16 v0, 0x3f80

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->a:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_17

    iput v0, p0, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->a:F

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->c()V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->requestLayout()V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->invalidate()V

    :cond_17
    return-void
.end method

.method a(I)V
    .registers 7

    const/4 v4, 0x0

    const/high16 v2, 0x3f80

    iput p1, p0, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->e:I

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->getTextSize()F

    move-result v0

    iget v1, p0, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->a:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_14

    iget v0, p0, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->a:F

    invoke-super {p0, v4, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_14
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->getTextScaleX()F

    move-result v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1f

    invoke-super {p0, v2}, Landroid/widget/TextView;->setTextScaleX(F)V

    :cond_1f
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->d:F

    int-to-float v2, p1

    cmpl-float v2, v0, v2

    if-lez v2, :cond_6a

    const v2, 0x3f333333

    int-to-float v3, p1

    div-float v0, v3, v0

    const v3, 0x3c23d70a

    sub-float/2addr v0, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-super {p0, v0}, Landroid/widget/TextView;->setTextScaleX(F)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v0

    :goto_4b
    int-to-float v2, p1

    cmpl-float v2, v0, v2

    if-lez v2, :cond_6a

    iget v2, p0, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->b:F

    int-to-float v3, p1

    div-float v0, v3, v0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->getTextSize()F

    move-result v3

    mul-float/2addr v0, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    int-to-float v2, v0

    invoke-super {p0, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    int-to-float v0, v0

    iget v2, p0, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->b:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_6b

    :cond_6a
    return-void

    :cond_6b
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v0

    goto :goto_4b
.end method

.method public b(F)V
    .registers 4

    const/high16 v0, 0x3f80

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->b:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_17

    iput v0, p0, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->b:F

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->c()V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->requestLayout()V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->invalidate()V

    :cond_17
    return-void
.end method

.method public onMeasure(II)V
    .registers 6

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v2, p0, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->c:I

    if-lez v2, :cond_18

    if-eqz v1, :cond_18

    iget v2, p0, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->c:I

    if-le v0, v2, :cond_18

    iget v0, p0, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->c:I

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_18
    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->b(I)I

    move-result v0

    if-nez v1, :cond_28

    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->a(I)V

    :cond_24
    :goto_24
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    return-void

    :cond_28
    iget v1, p0, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->d:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_33

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->a(I)V

    goto :goto_24

    :cond_33
    iget v1, p0, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->d:F

    int-to-float v2, v0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_24

    iget v1, p0, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->e:I

    if-eq v1, v0, :cond_24

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->a(I)V

    goto :goto_24
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->c()V

    return-void
.end method

.method public setMaxWidth(I)V
    .registers 3

    iget v0, p0, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->c:I

    if-eq p1, v0, :cond_9

    iput p1, p0, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->c:I

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->c()V

    :cond_9
    return-void
.end method

.method public setPadding(IIII)V
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->c()V

    return-void
.end method

.method public setTextScaleX(F)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextScaleX(F)V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->c()V

    return-void
.end method

.method public setTextSize(F)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->c()V

    return-void
.end method