.class Landroid/widget/TextView$SelectionEndHandleView;
.super Landroid/widget/TextView$HandleView;
.source "TextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionEndHandleView"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 5
    .parameter
    .parameter "drawableLtr"
    .parameter "drawableRtl"

    .prologue
    .line 11618
    iput-object p1, p0, Landroid/widget/TextView$SelectionEndHandleView;->this$0:Landroid/widget/TextView;

    .line 11620
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/TextView$HandleView;-><init>(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Z)V

    .line 11621
    return-void
.end method


# virtual methods
.method public getCurrentCursorOffset()I
    .registers 2

    .prologue
    .line 11634
    iget-object v0, p0, Landroid/widget/TextView$SelectionEndHandleView;->this$0:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    return v0
.end method

.method protected getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
    .registers 4
    .parameter "drawable"
    .parameter "isRtlRun"

    .prologue
    .line 11625
    if-eqz p2, :cond_b

    .line 11626
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    .line 11628
    :goto_a
    return v0

    :cond_b
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    goto :goto_a
.end method

.method public setActionPopupWindow(Landroid/widget/TextView$ActionPopupWindow;)V
    .registers 2
    .parameter "actionPopupWindow"

    .prologue
    .line 11658
    iput-object p1, p0, Landroid/widget/TextView$HandleView;->mActionPopupWindow:Landroid/widget/TextView$ActionPopupWindow;

    .line 11659
    return-void
.end method

.method public updatePosition(FF)V
    .registers 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 11645
    iget-object v2, p0, Landroid/widget/TextView$SelectionEndHandleView;->this$0:Landroid/widget/TextView;

    invoke-virtual {v2, p1, p2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    .line 11649
    .local v0, offset:I
    iget-object v2, p0, Landroid/widget/TextView$SelectionEndHandleView;->this$0:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 11651
    .local v1, selectionStart:I
    if-ne v0, v1, :cond_f

    .line 11655
    :goto_e
    return-void

    .line 11654
    :cond_f
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/widget/TextView$SelectionEndHandleView;->positionAtCursorOffset(IZ)V

    goto :goto_e
.end method

.method public updateSelection(I)V
    .registers 4
    .parameter "offset"

    .prologue
    .line 11639
    iget-object v0, p0, Landroid/widget/TextView$SelectionEndHandleView;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/widget/TextView;->access$600(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    iget-object v1, p0, Landroid/widget/TextView$SelectionEndHandleView;->this$0:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 11640
    invoke-virtual {p0}, Landroid/widget/TextView$SelectionEndHandleView;->updateDrawable()V

    .line 11641
    return-void
.end method
