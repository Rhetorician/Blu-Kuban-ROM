.class public Lcom/android/mms/ui/HDMessageListItem;
.super Lcom/android/mms/ui/MessageListItem;
.source "HDMessageListItem.java"


# instance fields
.field private mDateSeperator:Landroid/widget/TextView;

.field private mLeftDateAndIcons:Landroid/widget/LinearLayout;

.field private mRightDateAndIcons:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;-><init>(Landroid/content/Context;)V

    .line 41
    iput-object v0, p0, Lcom/android/mms/ui/HDMessageListItem;->mLeftDateAndIcons:Landroid/widget/LinearLayout;

    .line 42
    iput-object v0, p0, Lcom/android/mms/ui/HDMessageListItem;->mRightDateAndIcons:Landroid/widget/LinearLayout;

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/MessageListItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    iput-object v0, p0, Lcom/android/mms/ui/HDMessageListItem;->mLeftDateAndIcons:Landroid/widget/LinearLayout;

    .line 42
    iput-object v0, p0, Lcom/android/mms/ui/HDMessageListItem;->mRightDateAndIcons:Landroid/widget/LinearLayout;

    .line 51
    return-void
.end method

.method private formatDate(Landroid/content/Context;J)Ljava/lang/String;
    .registers 6
    .parameter "context"
    .parameter "when"

    .prologue
    .line 60
    invoke-static {p1}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    .line 61
    .local v0, df:Ljava/text/DateFormat;
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bind(Lcom/android/mms/ui/MessageItem;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 11
    .parameter "msgItem"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 69
    iget-boolean v2, p1, Lcom/android/mms/ui/MessageItem;->mHasSeperator:Z

    if-eqz v2, :cond_93

    .line 70
    iget-object v2, p0, Lcom/android/mms/ui/HDMessageListItem;->mDateSeperator:Landroid/widget/TextView;

    iget-wide v3, p1, Lcom/android/mms/ui/MessageItem;->mTime:J

    invoke-direct {p0, p2, v3, v4}, Lcom/android/mms/ui/HDMessageListItem;->formatDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v2, p0, Lcom/android/mms/ui/HDMessageListItem;->mDateSeperator:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 75
    :goto_17
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_9a

    .line 77
    iget-object v2, p0, Lcom/android/mms/ui/HDMessageListItem;->mLeftDateAndIcons:Landroid/widget/LinearLayout;

    if-nez v2, :cond_40

    .line 78
    const v2, 0x7f08007a

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/HDMessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/mms/ui/HDMessageListItem;->mLeftDateAndIcons:Landroid/widget/LinearLayout;

    .line 79
    iget-object v2, p0, Lcom/android/mms/ui/HDMessageListItem;->mLeftDateAndIcons:Landroid/widget/LinearLayout;

    const v3, 0x7f08008a

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mProgressBar:Landroid/widget/ProgressBar;

    .line 82
    :cond_40
    iget-object v1, p0, Lcom/android/mms/ui/HDMessageListItem;->mLeftDateAndIcons:Landroid/widget/LinearLayout;

    .line 83
    .local v1, visibleView:Landroid/view/View;
    iget-object v0, p0, Lcom/android/mms/ui/HDMessageListItem;->mRightDateAndIcons:Landroid/widget/LinearLayout;

    .line 94
    .local v0, invisibleView:Landroid/view/View;
    :goto_44
    if-eqz v1, :cond_8a

    .line 95
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 96
    const v2, 0x7f08008b

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mDateView:Landroid/widget/TextView;

    .line 97
    iget-object v2, p0, Lcom/android/mms/ui/HDMessageListItem;->mRightDateAndIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bb

    .line 98
    const v2, 0x7f080087

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mLockView:Landroid/widget/ImageView;

    .line 102
    :goto_67
    const v2, 0x7f080088

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mMmsIndicatorView:Landroid/widget/TextView;

    .line 103
    iget-object v2, p0, Lcom/android/mms/ui/HDMessageListItem;->mRightDateAndIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c7

    .line 104
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mMmsIndicatorView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/mms/ui/HDMessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070013

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 110
    :cond_8a
    :goto_8a
    if-eqz v0, :cond_8f

    .line 111
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 113
    :cond_8f
    invoke-super {p0, p1, p2, p3}, Lcom/android/mms/ui/MessageListItem;->bind(Lcom/android/mms/ui/MessageItem;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 114
    return-void

    .line 73
    .end local v0           #invisibleView:Landroid/view/View;
    .end local v1           #visibleView:Landroid/view/View;
    :cond_93
    iget-object v2, p0, Lcom/android/mms/ui/HDMessageListItem;->mDateSeperator:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_17

    .line 85
    :cond_9a
    iget-object v2, p0, Lcom/android/mms/ui/HDMessageListItem;->mRightDateAndIcons:Landroid/widget/LinearLayout;

    if-nez v2, :cond_b6

    .line 86
    const v2, 0x7f080082

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/HDMessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/mms/ui/HDMessageListItem;->mRightDateAndIcons:Landroid/widget/LinearLayout;

    .line 87
    iget-object v2, p0, Lcom/android/mms/ui/HDMessageListItem;->mRightDateAndIcons:Landroid/widget/LinearLayout;

    const/16 v3, 0x53

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 90
    :cond_b6
    iget-object v1, p0, Lcom/android/mms/ui/HDMessageListItem;->mRightDateAndIcons:Landroid/widget/LinearLayout;

    .line 91
    .restart local v1       #visibleView:Landroid/view/View;
    iget-object v0, p0, Lcom/android/mms/ui/HDMessageListItem;->mLeftDateAndIcons:Landroid/widget/LinearLayout;

    .restart local v0       #invisibleView:Landroid/view/View;
    goto :goto_44

    .line 100
    :cond_bb
    const v2, 0x7f080089

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mLockView:Landroid/widget/ImageView;

    goto :goto_67

    .line 106
    :cond_c7
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mMmsIndicatorView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/mms/ui/HDMessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070014

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_8a
.end method

.method protected findDateAndIconsView()V
    .registers 2

    .prologue
    .line 56
    const v0, 0x7f080078

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/HDMessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/HDMessageListItem;->mDateSeperator:Landroid/widget/TextView;

    .line 57
    return-void
.end method
