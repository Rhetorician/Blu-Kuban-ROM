.class Lcom/google/android/apps/plus/fragments/PostCommentsFragment$MyTextWatcher;
.super Ljava/lang/Object;
.source "PostCommentsFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/PostCommentsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyTextWatcher"
.end annotation


# instance fields
.field private final mCommentButton:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .registers 2
    .parameter "commentButton"

    .prologue
    .line 1653
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1654
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$MyTextWatcher;->mCommentButton:Landroid/view/View;

    .line 1655
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Lcom/google/android/apps/plus/fragments/PostCommentsFragment$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1650
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$MyTextWatcher;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 4
    .parameter "s"

    .prologue
    .line 1667
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$MyTextWatcher;->mCommentButton:Landroid/view/View;

    invoke-static {p1}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v0

    if-lez v0, :cond_d

    const/4 v0, 0x1

    :goto_9
    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 1668
    return-void

    .line 1667
    :cond_d
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 1663
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 1659
    return-void
.end method