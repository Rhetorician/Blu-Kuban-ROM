.class public Lcom/actionbarsherlock/internal/widget/IcsSpinner;
.super Lcom/actionbarsherlock/internal/widget/IcsAbsSpinner;
.source "IcsSpinner.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final MAX_ITEMS_MEASURED:I = 0xf

.field public static final MODE_DROPDOWN:I = 0x1


# instance fields
.field private mDisableChildrenWhenDisabled:Z

.field mDropDownWidth:I

.field private mGravity:I

.field private mPopup:Lcom/actionbarsherlock/internal/widget/IcsSpinner$SpinnerPopup;

.field private mTempAdapter:Lcom/actionbarsherlock/internal/widget/IcsSpinner$DropDownAdapter;

.field private mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 82
    sget v0, Lcom/actionbarsherlock/R$attr;->actionDropDownStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/actionbarsherlock/internal/widget/IcsSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 98
    invoke-direct {p0, p1, p2, p3}, Lcom/actionbarsherlock/internal/widget/IcsAbsSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->mTempRect:Landroid/graphics/Rect;

    .line 101
    sget-object v0, Lcom/actionbarsherlock/R$styleable;->SherlockSpinner:[I

    .line 100
    invoke-virtual {p1, p2, v0, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 104
    new-instance v1, Lcom/actionbarsherlock/internal/widget/IcsSpinner$DropdownPopup;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/actionbarsherlock/internal/widget/IcsSpinner$DropdownPopup;-><init>(Lcom/actionbarsherlock/internal/widget/IcsSpinner;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 107
    const/4 v2, 0x4

    .line 108
    const/4 v3, -0x2

    .line 106
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    iput v2, p0, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->mDropDownWidth:I

    .line 110
    const/4 v2, 0x2

    .line 109
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/internal/widget/IcsSpinner$DropdownPopup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 112
    const/4 v2, 0x6

    .line 111
    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    .line 113
    if-eqz v2, :cond_30

    .line 114
    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/internal/widget/IcsSpinner$DropdownPopup;->setVerticalOffset(I)V

    .line 118
    :cond_30
    const/4 v2, 0x5

    .line 117
    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    .line 119
    if-eqz v2, :cond_3a

    .line 120
    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/internal/widget/IcsSpinner$DropdownPopup;->setHorizontalOffset(I)V

    .line 123
    :cond_3a
    iput-object v1, p0, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->mPopup:Lcom/actionbarsherlock/internal/widget/IcsSpinner$SpinnerPopup;

    .line 125
    const/16 v1, 0x11

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->mGravity:I

    .line 127
    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->mPopup:Lcom/actionbarsherlock/internal/widget/IcsSpinner$SpinnerPopup;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/actionbarsherlock/internal/widget/IcsSpinner$SpinnerPopup;->setPromptText(Ljava/lang/CharSequence;)V

    .line 129
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->mDisableChildrenWhenDisabled:Z

    .line 131
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 135
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->mTempAdapter:Lcom/actionbarsherlock/internal/widget/IcsSpinner$DropDownAdapter;

    if-eqz v0, :cond_62

    .line 136
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->mPopup:Lcom/actionbarsherlock/internal/widget/IcsSpinner$SpinnerPopup;

    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->mTempAdapter:Lcom/actionbarsherlock/internal/widget/IcsSpinner$DropDownAdapter;

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/internal/widget/IcsSpinner$SpinnerPopup;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->mTempAdapter:Lcom/actionbarsherlock/internal/widget/IcsSpinner$DropDownAdapter;

    .line 139
    :cond_62
    return-void
.end method

.method static synthetic access$0(Lcom/actionbarsherlock/internal/widget/IcsSpinner;)Landroid/graphics/Rect;
    .registers 2
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->mTempRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method private makeAndAddView(I)Landroid/view/View;
    .registers 4
    .parameter

    .prologue
    .line 317
    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->mDataChanged:Z

    if-nez v0, :cond_10

    .line 318
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->mRecycler:Lcom/actionbarsherlock/internal/widget/IcsAbsSpinner$RecycleBin;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/internal/widget/IcsAbsSpinner$RecycleBin;->get(I)Landroid/view/View;

    move-result-object v0

    .line 319
    if-eqz v0, :cond_10

    .line 321
    invoke-direct {p0, v0}, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->setUpChild(Landroid/view/View;)V

    .line 333
    :goto_f
    return-object v0

    .line 328
    :cond_10
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 331
    invoke-direct {p0, v0}, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->setUpChild(Landroid/view/View;)V

    goto :goto_f
.end method

.method private setUpChild(Landroid/view/View;)V
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 346
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 347
    if-nez v0, :cond_b

    .line 348
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 351
    :cond_b
    invoke-virtual {p0, p1, v5, v0}, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 353
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->hasFocus()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    .line 354
    iget-boolean v1, p0, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->mDisableChildrenWhenDisabled:Z

    if-eqz v1, :cond_20

    .line 355
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->isEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 359
    :cond_20
    iget v1, p0, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->mHeightMeasureSpec:I

    .line 360
    iget-object v2, p0, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 359
    invoke-static {v1, v2, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 361
    iget v2, p0, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->mWidthMeasureSpec:I

    .line 362
    iget-object v3, p0, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 361
    invoke-static {v2, v3, v0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    .line 365
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    .line 371
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 372
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    .line 373
    iget-object v2, p0, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 372
    sub-int/2addr v1, v2

    .line 373
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 372
    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 371
    add-int/2addr v0, v1

    .line 374
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v0

    .line 376
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 377
    add-int/lit8 v2, v2, 0x0

    .line 380
    invoke-virtual {p1, v5, v0, v2, v1}, Landroid/view/View;->layout(IIII)V

    .line 381
    return-void
.end method


# virtual methods
.method public getBaseline()I
    .registers 5

    .prologue
    const/4 v0, -0x1

    const/4 v3, 0x0

    .line 183
    const/4 v1, 0x0

    .line 185
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->getChildCount()I

    move-result v2

    if-lez v2, :cond_1b

    .line 186
    invoke-virtual {p0, v3}, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 193
    :cond_d
    :goto_d
    if-eqz v1, :cond_1a

    .line 194
    invoke-virtual {v1}, Landroid/view/View;->getBaseline()I

    move-result v2

    .line 195
    if-ltz v2, :cond_1a

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v0

    add-int/2addr v0, v2

    .line 197
    :cond_1a
    return v0

    .line 187
    :cond_1b
    iget-object v2, p0, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v2}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v2

    if-lez v2, :cond_d

    .line 188
    invoke-direct {p0, v3}, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->makeAndAddView(I)Landroid/view/View;

    move-result-object v1

    .line 189
    iget-object v2, p0, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->mRecycler:Lcom/actionbarsherlock/internal/widget/IcsAbsSpinner$RecycleBin;

    invoke-virtual {v2, v3, v1}, Lcom/actionbarsherlock/internal/widget/IcsAbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 190
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->removeAllViewsInLayout()V

    goto :goto_d
.end method

.method public getPrompt()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 423
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->mPopup:Lcom/actionbarsherlock/internal/widget/IcsSpinner$SpinnerPopup;

    invoke-interface {v0}, Lcom/actionbarsherlock/internal/widget/IcsSpinner$SpinnerPopup;->getHintText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method layout(IZ)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 255
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 256
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->getRight()I

    move-result v1

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    .line 258
    iget-boolean v2, p0, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->mDataChanged:Z

    if-eqz v2, :cond_1f

    .line 259
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->handleDataChanged()V

    .line 263
    :cond_1f
    iget v2, p0, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->mItemCount:I

    if-nez v2, :cond_27

    .line 264
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->resetList()V

    .line 302
    :goto_26
    return-void

    .line 268
    :cond_27
    iget v2, p0, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->mNextSelectedPosition:I

    if-ltz v2, :cond_30

    .line 269
    iget v2, p0, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->mNextSelectedPosition:I

    invoke-virtual {p0, v2}, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->setSelectedPositionInt(I)V

    .line 272
    :cond_30
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->recycleAllViews()V

    .line 275
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->removeAllViewsInLayout()V

    .line 278
    iget v2, p0, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->mSelectedPosition:I

    iput v2, p0, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->mFirstPosition:I

    .line 279
    iget v2, p0, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->mSelectedPosition:I

    invoke-direct {p0, v2}, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->makeAndAddView(I)Landroid/view/View;

    move-result-object v2

    .line 280
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 282
    iget v4, p0, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->mGravity:I

    and-int/lit8 v4, v4, 0x7

    sparse-switch v4, :sswitch_data_6e

    .line 290
    :goto_4b
    invoke-virtual {v2, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 293
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->mRecycler:Lcom/actionbarsherlock/internal/widget/IcsAbsSpinner$RecycleBin;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/widget/IcsAbsSpinner$RecycleBin;->clear()V

    .line 295
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->invalidate()V

    .line 297
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->checkSelectionChanged()V

    .line 299
    iput-boolean v5, p0, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->mDataChanged:Z

    .line 300
    iput-boolean v5, p0, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->mNeedSync:Z

    .line 301
    iget v0, p0, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->mSelectedPosition:I

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->setNextSelectedPositionInt(I)V

    goto :goto_26

    .line 284
    :sswitch_63
    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    div-int/lit8 v1, v3, 0x2

    sub-int/2addr v0, v1

    .line 285
    goto :goto_4b

    .line 287
    :sswitch_6a
    add-int/2addr v0, v1

    sub-int/2addr v0, v3

    goto :goto_4b

    .line 282
    nop

    :sswitch_data_6e
    .sparse-switch
        0x1 -> :sswitch_63
        0x5 -> :sswitch_6a
    .end sparse-switch
.end method

.method measureContentWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I
    .registers 13
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v9, -0x2

    const/4 v0, 0x0

    .line 427
    if-nez p1, :cond_6

    .line 467
    :goto_5
    return v0

    .line 435
    :cond_6
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 437
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 441
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->getSelectedItemPosition()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 442
    invoke-interface {p1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v3

    add-int/lit8 v4, v1, 0xf

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 443
    sub-int v3, v8, v1

    .line 444
    rsub-int/lit8 v3, v3, 0xf

    sub-int/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v5, v1

    move-object v3, v2

    move v4, v0

    move v1, v0

    .line 445
    :goto_2d
    if-lt v5, v8, :cond_41

    .line 462
    if-eqz p2, :cond_6a

    .line 463
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 464
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    goto :goto_5

    .line 446
    :cond_41
    invoke-interface {p1, v5}, Landroid/widget/SpinnerAdapter;->getItemViewType(I)I

    move-result v0

    .line 447
    if-eq v0, v1, :cond_6c

    move-object v1, v2

    .line 451
    :goto_48
    invoke-interface {p1, v5, v1, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 452
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_5a

    .line 453
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .line 455
    invoke-direct {v1, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 453
    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 457
    :cond_5a
    invoke-virtual {v3, v6, v7}, Landroid/view/View;->measure(II)V

    .line 458
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 445
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move v1, v0

    goto :goto_2d

    :cond_6a
    move v0, v4

    goto :goto_5

    :cond_6c
    move v0, v1

    move-object v1, v3

    goto :goto_48
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 399
    invoke-virtual {p0, p2}, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->setSelection(I)V

    .line 400
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 401
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 203
    invoke-super {p0}, Lcom/actionbarsherlock/internal/widget/IcsAbsSpinner;->onDetachedFromWindow()V

    .line 205
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->mPopup:Lcom/actionbarsherlock/internal/widget/IcsSpinner$SpinnerPopup;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->mPopup:Lcom/actionbarsherlock/internal/widget/IcsSpinner$SpinnerPopup;

    invoke-interface {v0}, Lcom/actionbarsherlock/internal/widget/IcsSpinner$SpinnerPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 206
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->mPopup:Lcom/actionbarsherlock/internal/widget/IcsSpinner$SpinnerPopup;

    invoke-interface {v0}, Lcom/actionbarsherlock/internal/widget/IcsSpinner$SpinnerPopup;->dismiss()V

    .line 208
    :cond_14
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 241
    invoke-super/range {p0 .. p5}, Lcom/actionbarsherlock/internal/widget/IcsAbsSpinner;->onLayout(ZIIII)V

    .line 242
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->mInLayout:Z

    .line 243
    invoke-virtual {p0, v1, v1}, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->layout(IZ)V

    .line 244
    iput-boolean v1, p0, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->mInLayout:Z

    .line 245
    return-void
.end method

.method protected onMeasure(II)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 223
    invoke-super {p0, p1, p2}, Lcom/actionbarsherlock/internal/widget/IcsAbsSpinner;->onMeasure(II)V

    .line 224
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->mPopup:Lcom/actionbarsherlock/internal/widget/IcsSpinner$SpinnerPopup;

    if-eqz v0, :cond_32

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x8000

    if-ne v0, v1, :cond_32

    .line 225
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->getMeasuredWidth()I

    move-result v0

    .line 227
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->measureContentWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v1

    .line 226
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 228
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 226
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 229
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->getMeasuredHeight()I

    move-result v1

    .line 226
    invoke-virtual {p0, v0, v1}, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->setMeasuredDimension(II)V

    .line 231
    :cond_32
    return-void
.end method

.method public performClick()Z
    .registers 3

    .prologue
    .line 385
    invoke-super {p0}, Lcom/actionbarsherlock/internal/widget/IcsAbsSpinner;->performClick()Z

    move-result v0

    .line 387
    if-nez v0, :cond_14

    .line 388
    const/4 v0, 0x1

    .line 390
    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->mPopup:Lcom/actionbarsherlock/internal/widget/IcsSpinner$SpinnerPopup;

    invoke-interface {v1}, Lcom/actionbarsherlock/internal/widget/IcsSpinner$SpinnerPopup;->isShowing()Z

    move-result v1

    if-nez v1, :cond_14

    .line 391
    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->mPopup:Lcom/actionbarsherlock/internal/widget/IcsSpinner$SpinnerPopup;

    invoke-interface {v1}, Lcom/actionbarsherlock/internal/widget/IcsSpinner$SpinnerPopup;->show()V

    .line 395
    :cond_14
    return v0
.end method

.method public setAdapter(Landroid/widget/SpinnerAdapter;)V
    .registers 4
    .parameter

    .prologue
    .line 172
    invoke-super {p0, p1}, Lcom/actionbarsherlock/internal/widget/IcsAbsSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 174
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->mPopup:Lcom/actionbarsherlock/internal/widget/IcsSpinner$SpinnerPopup;

    if-eqz v0, :cond_12

    .line 175
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->mPopup:Lcom/actionbarsherlock/internal/widget/IcsSpinner$SpinnerPopup;

    new-instance v1, Lcom/actionbarsherlock/internal/widget/IcsSpinner$DropDownAdapter;

    invoke-direct {v1, p1}, Lcom/actionbarsherlock/internal/widget/IcsSpinner$DropDownAdapter;-><init>(Landroid/widget/SpinnerAdapter;)V

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/internal/widget/IcsSpinner$SpinnerPopup;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 179
    :goto_11
    return-void

    .line 177
    :cond_12
    new-instance v0, Lcom/actionbarsherlock/internal/widget/IcsSpinner$DropDownAdapter;

    invoke-direct {v0, p1}, Lcom/actionbarsherlock/internal/widget/IcsSpinner$DropDownAdapter;-><init>(Landroid/widget/SpinnerAdapter;)V

    iput-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->mTempAdapter:Lcom/actionbarsherlock/internal/widget/IcsSpinner$DropDownAdapter;

    goto :goto_11
.end method

.method public setEnabled(Z)V
    .registers 5
    .parameter

    .prologue
    .line 143
    invoke-super {p0, p1}, Lcom/actionbarsherlock/internal/widget/IcsAbsSpinner;->setEnabled(Z)V

    .line 144
    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->mDisableChildrenWhenDisabled:Z

    if-eqz v0, :cond_e

    .line 145
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->getChildCount()I

    move-result v1

    .line 146
    const/4 v0, 0x0

    :goto_c
    if-lt v0, v1, :cond_f

    .line 150
    :cond_e
    return-void

    .line 147
    :cond_f
    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 146
    add-int/lit8 v0, v0, 0x1

    goto :goto_c
.end method

.method public setGravity(I)V
    .registers 3
    .parameter

    .prologue
    .line 161
    iget v0, p0, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->mGravity:I

    if-eq v0, p1, :cond_f

    .line 162
    and-int/lit8 v0, p1, 0x7

    if-nez v0, :cond_a

    .line 163
    or-int/lit8 p1, p1, 0x3

    .line 165
    :cond_a
    iput p1, p0, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->mGravity:I

    .line 166
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->requestLayout()V

    .line 168
    :cond_f
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 4
    .parameter

    .prologue
    .line 218
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setOnItemClickListener cannot be used with a spinner."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPrompt(Ljava/lang/CharSequence;)V
    .registers 3
    .parameter

    .prologue
    .line 408
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->mPopup:Lcom/actionbarsherlock/internal/widget/IcsSpinner$SpinnerPopup;

    invoke-interface {v0, p1}, Lcom/actionbarsherlock/internal/widget/IcsSpinner$SpinnerPopup;->setPromptText(Ljava/lang/CharSequence;)V

    .line 409
    return-void
.end method

.method public setPromptId(I)V
    .registers 3
    .parameter

    .prologue
    .line 416
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 417
    return-void
.end method
