.class public Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandMessageButton;
.super Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;
.source "FeedExpandViewWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ExpandMessageButton"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;


# direct methods
.method public constructor <init>(Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;Landroid/view/View;)V
    .registers 4
    .parameter
    .parameter "view"

    .prologue
    .line 192
    iput-object p1, p0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandMessageButton;->this$0:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;

    .line 193
    invoke-direct {p0, p1, p2}, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;-><init>(Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;Landroid/view/View;)V

    .line 194
    const v0, 0x7f0b00ad

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->mLinearLayout:Landroid/widget/LinearLayout;

    .line 195
    return-void
.end method