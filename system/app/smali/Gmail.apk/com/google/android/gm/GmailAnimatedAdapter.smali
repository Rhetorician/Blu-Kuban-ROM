.class Lcom/google/android/gm/GmailAnimatedAdapter;
.super Lcom/google/android/gm/AnimatedAdapter;
.source "GmailAnimatedAdapter.java"


# instance fields
.field private final mAdapter:Lcom/google/android/gm/provider/Gmail$MailCursorAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/BaseAdapter;Lcom/google/android/gm/ConversationSelectionSet;)V
    .registers 4
    .parameter "context"
    .parameter "a"
    .parameter "set"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gm/AnimatedAdapter;-><init>(Landroid/content/Context;Landroid/widget/BaseAdapter;Lcom/google/android/gm/ConversationSelectionSet;)V

    .line 24
    check-cast p2, Lcom/google/android/gm/provider/Gmail$MailCursorAdapter;

    .end local p2
    iput-object p2, p0, Lcom/google/android/gm/GmailAnimatedAdapter;->mAdapter:Lcom/google/android/gm/provider/Gmail$MailCursorAdapter;

    .line 25
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gm/GmailAnimatedAdapter;Lcom/google/android/gm/provider/Gmail$ConversationCursor;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/google/android/gm/GmailAnimatedAdapter;->diff(Lcom/google/android/gm/provider/Gmail$ConversationCursor;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/gm/GmailAnimatedAdapter;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/google/android/gm/GmailAnimatedAdapter;->updateNearbyWindowInternal(I)V

    return-void
.end method

.method private diff(Lcom/google/android/gm/provider/Gmail$ConversationCursor;)V
    .registers 10
    .parameter "cursor"

    .prologue
    const/16 v7, 0x32

    .line 47
    invoke-virtual {p0}, Lcom/google/android/gm/GmailAnimatedAdapter;->shouldDiff()Z

    move-result v5

    if-nez v5, :cond_9

    .line 68
    :cond_8
    :goto_8
    return-void

    .line 50
    :cond_9
    if-eqz p1, :cond_8

    .line 52
    invoke-virtual {p0}, Lcom/google/android/gm/GmailAnimatedAdapter;->getFirstNearbyPosition()I

    move-result v1

    .line 53
    .local v1, firstPos:I
    new-array v4, v7, [J

    .line 54
    .local v4, newNearbyIds:[J
    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->count()I

    move-result v0

    .line 55
    .local v0, cursorCount:I
    if-ltz v1, :cond_2f

    .line 56
    const/4 v2, 0x0

    .local v2, i:I
    :goto_18
    if-ge v2, v7, :cond_2f

    .line 57
    add-int v3, v1, v2

    .line 58
    .local v3, index:I
    if-ge v3, v0, :cond_2a

    .line 59
    invoke-virtual {p1, v3}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->moveTo(I)Z

    .line 60
    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getConversationId()J

    move-result-wide v5

    aput-wide v5, v4, v2

    .line 56
    :goto_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 62
    :cond_2a
    const-wide/16 v5, -0x1

    aput-wide v5, v4, v2

    goto :goto_27

    .line 66
    .end local v2           #i:I
    .end local v3           #index:I
    :cond_2f
    invoke-super {p0, v4}, Lcom/google/android/gm/AnimatedAdapter;->diff([J)V

    goto :goto_8
.end method

.method private performAnimatedAdapterCursorTask(Lcom/google/android/gm/provider/Gmail$ConversationCursor;Ljava/lang/Runnable;)V
    .registers 6
    .parameter "cursor"
    .parameter "task"

    .prologue
    .line 95
    const/4 v0, -0x1

    .line 96
    .local v0, initialPosition:I
    const/4 v1, 0x0

    .line 97
    .local v1, wasActiveNetworkCursor:Z
    if-eqz p1, :cond_c

    .line 100
    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->position()I

    move-result v0

    .line 101
    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->becomeInactiveNetworkCursor()Z

    move-result v1

    .line 104
    :cond_c
    :try_start_c
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_1a

    .line 106
    if-eqz p1, :cond_19

    .line 109
    invoke-virtual {p1, v0}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->moveTo(I)Z

    .line 111
    if-eqz v1, :cond_19

    .line 112
    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->becomeActiveNetworkCursor()V

    .line 116
    :cond_19
    return-void

    .line 106
    :catchall_1a
    move-exception v2

    if-eqz p1, :cond_25

    .line 109
    invoke-virtual {p1, v0}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->moveTo(I)Z

    .line 111
    if-eqz v1, :cond_25

    .line 112
    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->becomeActiveNetworkCursor()V

    :cond_25
    throw v2
.end method

.method private updateNearbyWindowInternal(I)V
    .registers 2
    .parameter "position"

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/google/android/gm/AnimatedAdapter;->updateNearbyWindow(I)V

    .line 86
    return-void
.end method


# virtual methods
.method public isValid()Z
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/gm/GmailAnimatedAdapter;->mAdapter:Lcom/google/android/gm/provider/Gmail$MailCursorAdapter;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/Gmail$MailCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public swapMailCursor(Lcom/google/android/gm/provider/Gmail$ConversationCursor;Z)V
    .registers 5
    .parameter "cursor"
    .parameter "animateChanges"

    .prologue
    .line 33
    invoke-virtual {p0, p2}, Lcom/google/android/gm/GmailAnimatedAdapter;->animateChanges(Z)V

    .line 35
    move-object v0, p1

    .line 36
    .local v0, conversationCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;
    new-instance v1, Lcom/google/android/gm/GmailAnimatedAdapter$1;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gm/GmailAnimatedAdapter$1;-><init>(Lcom/google/android/gm/GmailAnimatedAdapter;Lcom/google/android/gm/provider/Gmail$ConversationCursor;)V

    invoke-direct {p0, p1, v1}, Lcom/google/android/gm/GmailAnimatedAdapter;->performAnimatedAdapterCursorTask(Lcom/google/android/gm/provider/Gmail$ConversationCursor;Ljava/lang/Runnable;)V

    .line 43
    iget-object v1, p0, Lcom/google/android/gm/GmailAnimatedAdapter;->mAdapter:Lcom/google/android/gm/provider/Gmail$MailCursorAdapter;

    invoke-virtual {v1, p1}, Lcom/google/android/gm/provider/Gmail$MailCursorAdapter;->swapMailCursor(Lcom/google/android/gm/provider/Gmail$MailCursor;)V

    .line 44
    return-void
.end method

.method protected updateNearbyWindow(I)V
    .registers 5
    .parameter "position"

    .prologue
    .line 72
    iget-object v2, p0, Lcom/google/android/gm/GmailAnimatedAdapter;->mAdapter:Lcom/google/android/gm/provider/Gmail$MailCursorAdapter;

    invoke-virtual {v2}, Lcom/google/android/gm/provider/Gmail$MailCursorAdapter;->getMailCursor()Lcom/google/android/gm/provider/Gmail$MailCursor;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    .line 75
    .local v0, conversationCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;
    move v1, p1

    .line 76
    .local v1, cursorPosition:I
    new-instance v2, Lcom/google/android/gm/GmailAnimatedAdapter$2;

    invoke-direct {v2, p0, v1}, Lcom/google/android/gm/GmailAnimatedAdapter$2;-><init>(Lcom/google/android/gm/GmailAnimatedAdapter;I)V

    invoke-direct {p0, v0, v2}, Lcom/google/android/gm/GmailAnimatedAdapter;->performAnimatedAdapterCursorTask(Lcom/google/android/gm/provider/Gmail$ConversationCursor;Ljava/lang/Runnable;)V

    .line 82
    return-void
.end method
