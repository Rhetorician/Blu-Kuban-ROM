.class public Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Landroid/widget/Checkable;


# instance fields
.field private a:Z

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/CheckBox;

.field private e:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v3, p0, Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;->a:Z

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030008

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;->setClickable(Z)V

    invoke-virtual {p0, v2}, Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;->setFocusable(Z)V

    const v0, 0x1020016

    invoke-virtual {p0, v0}, Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;->b:Landroid/widget/TextView;

    const v0, 0x1020010

    invoke-virtual {p0, v0}, Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f0b0020

    invoke-virtual {p0, v0}, Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;->d:Landroid/widget/CheckBox;

    const v0, 0x7f0b001f

    invoke-virtual {p0, v0}, Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;->e:Landroid/widget/ImageView;

    const v0, 0x1080062

    invoke-virtual {p0, v0}, Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;->setBackgroundResource(I)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 3

    iget-object v0, p0, Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public isChecked()Z
    .registers 2

    iget-boolean v0, p0, Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;->a:Z

    return v0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    if-eqz p1, :cond_12

    iget-object v0, p0, Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setPressed(Z)V

    iget-object v0, p0, Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setPressed(Z)V

    :goto_11
    return-void

    :cond_12
    iget-object v0, p0, Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPressed(Z)V

    iget-object v0, p0, Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPressed(Z)V

    iget-object v0, p0, Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;->d:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto :goto_11
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 6

    const/4 v2, 0x1

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_26

    :cond_c
    :goto_c
    return v0

    :pswitch_d
    const/16 v1, 0x42

    if-eq p1, v1, :cond_15

    const/16 v1, 0x17

    if-ne p1, v1, :cond_c

    :cond_15
    iget-object v1, p0, Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setPressed(Z)V

    iget-object v1, p0, Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setPressed(Z)V

    iget-object v1, p0, Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;->d:Landroid/widget/CheckBox;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto :goto_c

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_d
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_7e

    :cond_d
    :goto_d
    return v0

    :pswitch_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    const/high16 v2, -0x3e38

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2a

    iget-object v1, p0, Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setPressed(Z)V

    iget-object v1, p0, Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setPressed(Z)V

    iget-object v1, p0, Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;->d:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setPressed(Z)V

    invoke-virtual {p0, v3}, Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;->setPressed(Z)V

    :cond_2a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0}, Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;->getHeight()I

    move-result v2

    add-int/lit8 v2, v2, 0x19

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_d

    iget-object v1, p0, Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setPressed(Z)V

    iget-object v1, p0, Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setPressed(Z)V

    iget-object v1, p0, Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;->d:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setPressed(Z)V

    invoke-virtual {p0, v3}, Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;->setPressed(Z)V

    goto :goto_d

    :pswitch_4c
    iget-object v1, p0, Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setPressed(Z)V

    iget-object v1, p0, Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setPressed(Z)V

    iget-object v1, p0, Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;->d:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setPressed(Z)V

    invoke-virtual {p0, v2}, Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;->setPressed(Z)V

    goto :goto_d

    :pswitch_5f
    iget-object v1, p0, Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;->isFocused()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setPressed(Z)V

    iget-object v1, p0, Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;->isFocused()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setPressed(Z)V

    iget-object v1, p0, Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;->d:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setPressed(Z)V

    invoke-virtual {p0}, Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;->isFocused()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;->setPressed(Z)V

    goto :goto_d

    :pswitch_data_7e
    .packed-switch 0x0
        :pswitch_4c
        :pswitch_5f
        :pswitch_e
        :pswitch_5f
        :pswitch_5f
    .end packed-switch
.end method

.method public performClick()Z
    .registers 2

    invoke-virtual {p0}, Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;->toggle()V

    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v0

    return v0
.end method

.method public setChecked(Z)V
    .registers 4

    iput-boolean p1, p0, Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;->a:Z

    iget-object v0, p0, Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;->d:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;->a:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

.method public toggle()V
    .registers 2

    iget-boolean v0, p0, Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;->a:Z

    if-nez v0, :cond_9

    const/4 v0, 0x1

    :goto_5
    invoke-virtual {p0, v0}, Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;->setChecked(Z)V

    return-void

    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method
