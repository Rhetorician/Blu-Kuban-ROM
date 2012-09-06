.class public Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "ContactHistoryListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ContactInfo;,
        Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;,
        Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$LogInfo;
    }
.end annotation


# static fields
.field private static PAYPHONE_NUMBER:Ljava/lang/String;

.field private static PRIVATE_NUMBER:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;

.field private static UNKNOWN_NUMBER:Ljava/lang/String;

.field private static mIsDeleteMode:Z


# instance fields
.field mContactInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ContactInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mFragment:Landroid/app/Fragment;

.field private mIndexer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIsSmsView:Z

.field private mLoading:Z

.field private mMsgId:J

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private final mRequests:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$LogInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSdfNow:Ljava/text/SimpleDateFormat;

.field private mSections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 57
    const-string v0, "ContactHistoryListAdapter"

    sput-object v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->TAG:Ljava/lang/String;

    .line 98
    const-string v0, "-1"

    sput-object v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->UNKNOWN_NUMBER:Ljava/lang/String;

    .line 99
    const-string v0, "-2"

    sput-object v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->PRIVATE_NUMBER:Ljava/lang/String;

    .line 100
    const-string v0, "-3"

    sput-object v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->PAYPHONE_NUMBER:Ljava/lang/String;

    .line 126
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mIsDeleteMode:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4
    .parameter "context"
    .parameter "layout"

    .prologue
    const/4 v0, 0x0

    .line 129
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 115
    iput-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mSdfNow:Ljava/text/SimpleDateFormat;

    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mLoading:Z

    .line 273
    new-instance v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$1;-><init>(Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 131
    iput-object p1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;

    .line 133
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContactInfo:Ljava/util/HashMap;

    .line 134
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mRequests:Ljava/util/LinkedList;

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mSections:Ljava/util/ArrayList;

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mIndexer:Ljava/util/ArrayList;

    .line 139
    const v0, 0x7f040032

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->setViewResource(I)V

    .line 141
    invoke-direct {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->setDateFormat()V

    .line 142
    return-void
.end method

.method static synthetic access$100()Z
    .registers 1

    .prologue
    .line 55
    sget-boolean v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mIsDeleteMode:Z

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;)Landroid/app/Fragment;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mFragment:Landroid/app/Fragment;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;IJ)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->verifySmsMms(IJ)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;J)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->verifyEmail(J)V

    return-void
.end method

.method private calcSection(J)Ljava/lang/String;
    .registers 6
    .parameter "lDate"

    .prologue
    .line 464
    const/4 v0, 0x0

    .line 465
    .local v0, date:Ljava/lang/String;
    invoke-static {p1, p2}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 466
    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0264

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 473
    :goto_14
    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_46

    .line 474
    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 477
    .end local v0           #date:Ljava/lang/String;
    :goto_21
    return-object v0

    .line 467
    .restart local v0       #date:Ljava/lang/String;
    :cond_22
    const-wide/32 v1, 0x5265c00

    add-long/2addr v1, p1

    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 468
    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0265

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 470
    :cond_3a
    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mSdfNow:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 477
    :cond_46
    const/4 v0, 0x0

    goto :goto_21
.end method

.method private clearCache()V
    .registers 3

    .prologue
    .line 177
    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContactInfo:Ljava/util/HashMap;

    monitor-enter v1

    .line 178
    :try_start_3
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContactInfo:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 179
    monitor-exit v1

    .line 180
    return-void

    .line 179
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method private enqueueRequest(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7
    .parameter "number"
    .parameter "name"
    .parameter "logType"

    .prologue
    .line 511
    new-instance v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$LogInfo;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$LogInfo;-><init>()V

    .line 512
    .local v0, ciq:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$LogInfo;
    iput-object p1, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$LogInfo;->number:Ljava/lang/String;

    .line 513
    iput-object p2, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$LogInfo;->name:Ljava/lang/String;

    .line 514
    iput p3, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$LogInfo;->logType:I

    .line 516
    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mRequests:Ljava/util/LinkedList;

    monitor-enter v2

    .line 517
    :try_start_e
    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 518
    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 519
    monitor-exit v2

    .line 520
    return-void

    .line 519
    :catchall_1a
    move-exception v1

    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_e .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method private findThreadId(Landroid/content/Context;)J
    .registers 15
    .parameter "context"

    .prologue
    const-wide/16 v8, -0x1

    const/4 v12, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 432
    const/4 v7, 0x0

    .line 433
    .local v7, cursor:Landroid/database/Cursor;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 435
    .local v1, cr:Landroid/content/ContentResolver;
    iget-wide v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mMsgId:J

    const-wide/16 v10, 0x0

    cmp-long v0, v2, v10

    if-gtz v0, :cond_14

    move-wide v2, v8

    .line 460
    :goto_13
    return-wide v2

    .line 439
    :cond_14
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mIsSmsView:Z

    if-eqz v0, :cond_3f

    .line 440
    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    new-array v3, v12, [Ljava/lang/String;

    const-string v0, "thread_id"

    aput-object v0, v3, v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v10, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mMsgId:J

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, p1

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 449
    :goto_3b
    if-nez v7, :cond_68

    move-wide v2, v8

    .line 450
    goto :goto_13

    .line 444
    :cond_3f
    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "thread_id"

    aput-object v0, v3, v4

    const-string v0, "m_type"

    aput-object v0, v3, v12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v10, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mMsgId:J

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, p1

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    goto :goto_3b

    .line 454
    :cond_68
    :try_start_68
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v12, :cond_7d

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 455
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_78
    .catchall {:try_start_68 .. :try_end_78} :catchall_82

    move-result-wide v2

    .line 458
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_13

    :cond_7d
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-wide v2, v8

    .line 460
    goto :goto_13

    .line 458
    :catchall_82
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getFormatDuration(J)Ljava/lang/String;
    .registers 12
    .parameter "elapsedSeconds"

    .prologue
    .line 669
    const-wide/16 v1, 0x0

    .line 670
    .local v1, hours:J
    const-wide/16 v3, 0x0

    .line 671
    .local v3, minutes:J
    const-wide/16 v5, 0x0

    .line 673
    .local v5, seconds:J
    const-wide/16 v7, 0xe10

    cmp-long v7, p1, v7

    if-ltz v7, :cond_14

    .line 674
    const-wide/16 v7, 0xe10

    div-long v1, p1, v7

    .line 675
    const-wide/16 v7, 0xe10

    mul-long/2addr v7, v1

    sub-long/2addr p1, v7

    .line 677
    :cond_14
    const-wide/16 v7, 0x3c

    cmp-long v7, p1, v7

    if-ltz v7, :cond_22

    .line 678
    const-wide/16 v7, 0x3c

    div-long v3, p1, v7

    .line 679
    const-wide/16 v7, 0x3c

    mul-long/2addr v7, v3

    sub-long/2addr p1, v7

    .line 681
    :cond_22
    move-wide v5, p1

    .line 683
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 684
    .local v0, duration:Ljava/lang/StringBuffer;
    const-wide/16 v7, 0xa

    cmp-long v7, v1, v7

    if-gez v7, :cond_33

    .line 685
    const/16 v7, 0x30

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 687
    :cond_33
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 688
    const/16 v7, 0x3a

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 690
    const-wide/16 v7, 0xa

    cmp-long v7, v3, v7

    if-gez v7, :cond_46

    .line 691
    const/16 v7, 0x30

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 693
    :cond_46
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 694
    const/16 v7, 0x3a

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 696
    const-wide/16 v7, 0xa

    cmp-long v7, v5, v7

    if-gez v7, :cond_59

    .line 697
    const/16 v7, 0x30

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 699
    :cond_59
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 701
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method private setContentsText(ILjava/lang/String;Ljava/lang/String;Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;)V
    .registers 8
    .parameter "logType"
    .parameter "subject"
    .parameter "contents"
    .parameter "cache"

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 626
    sparse-switch p1, :sswitch_data_56

    .line 655
    iget-object v0, p4, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tContents:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 658
    :goto_b
    return-void

    .line 628
    :sswitch_c
    if-eqz p2, :cond_19

    .line 629
    iget-object v0, p4, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tContents:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 632
    :goto_13
    iget-object v0, p4, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tContents:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_b

    .line 631
    :cond_19
    iget-object v0, p4, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tContents:Landroid/widget/TextView;

    const v1, 0x7f0a0266

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_13

    .line 636
    :sswitch_22
    if-eqz p3, :cond_2f

    .line 637
    iget-object v0, p4, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tContents:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 638
    iget-object v0, p4, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tContents:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_b

    .line 640
    :cond_2f
    iget-object v0, p4, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tContents:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_b

    .line 644
    :sswitch_35
    if-eqz p2, :cond_42

    .line 645
    iget-object v0, p4, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tContents:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 646
    iget-object v0, p4, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tContents:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_b

    .line 647
    :cond_42
    if-eqz p3, :cond_4f

    .line 648
    iget-object v0, p4, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tContents:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 649
    iget-object v0, p4, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tContents:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_b

    .line 651
    :cond_4f
    iget-object v0, p4, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tContents:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_b

    .line 626
    nop

    :sswitch_data_56
    .sparse-switch
        0xc8 -> :sswitch_35
        0x12c -> :sswitch_22
        0x190 -> :sswitch_c
    .end sparse-switch
.end method

.method private setDateFormat()V
    .registers 4

    .prologue
    .line 482
    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "date_format"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 485
    .local v0, dateType:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/contacts/util/DateUtils;->getSettingDateFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mSdfNow:Ljava/text/SimpleDateFormat;

    .line 486
    return-void
.end method

.method private setDurationText(Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;Ljava/lang/String;I)V
    .registers 7
    .parameter "cache"
    .parameter "duration"
    .parameter "logType"

    .prologue
    .line 535
    const/16 v0, 0x64

    if-eq p3, v0, :cond_c

    const/16 v0, 0x1f4

    if-eq p3, v0, :cond_c

    const/16 v0, 0x320

    if-ne p3, v0, :cond_20

    .line 537
    :cond_c
    iget-object v0, p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tDuration:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 538
    iget-object v0, p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tDuration:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->getFormatDuration(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 542
    :goto_1f
    return-void

    .line 540
    :cond_20
    iget-object v0, p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tDuration:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1f
.end method

.method private setHeaderView(Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;I)V
    .registers 7
    .parameter "cache"
    .parameter "id"

    .prologue
    .line 523
    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mIndexer:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 524
    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mIndexer:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 525
    .local v0, index:I
    iget-object v2, p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->headerView:Landroid/view/View;

    const v3, 0x7f0d0113

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 526
    .local v1, title:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 527
    iget-object v2, p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->headerView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 531
    .end local v0           #index:I
    .end local v1           #title:Landroid/widget/TextView;
    :goto_32
    return-void

    .line 529
    :cond_33
    iget-object v2, p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->headerView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_32
.end method

.method private setLogTypeText(Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;I)V
    .registers 5
    .parameter "cache"
    .parameter "logType"

    .prologue
    .line 571
    sparse-switch p2, :sswitch_data_3a

    .line 593
    :goto_3
    return-void

    .line 573
    :sswitch_4
    iget-object v0, p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->iType:Landroid/widget/ImageView;

    const v1, 0x7f0201ed

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 576
    :sswitch_d
    iget-object v0, p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->iType:Landroid/widget/ImageView;

    const v1, 0x7f0201ec

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 579
    :sswitch_16
    iget-object v0, p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->iType:Landroid/widget/ImageView;

    const v1, 0x7f0201e7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 582
    :sswitch_1f
    iget-object v0, p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->iType:Landroid/widget/ImageView;

    const v1, 0x7f0201eb

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 585
    :sswitch_28
    iget-object v0, p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->iType:Landroid/widget/ImageView;

    const v1, 0x7f0201e8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 588
    :sswitch_31
    iget-object v0, p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->iType:Landroid/widget/ImageView;

    const v1, 0x7f020187

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 571
    :sswitch_data_3a
    .sparse-switch
        0x64 -> :sswitch_4
        0xc8 -> :sswitch_28
        0x12c -> :sswitch_1f
        0x190 -> :sswitch_31
        0x1f4 -> :sswitch_d
        0x320 -> :sswitch_16
    .end sparse-switch
.end method

.method private setNumber(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "view"
    .parameter "number"
    .parameter "name"

    .prologue
    .line 610
    if-eqz p2, :cond_a

    sget-object v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->UNKNOWN_NUMBER:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 611
    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a007f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 612
    move-object p2, p3

    .line 620
    :cond_16
    :goto_16
    return-object p2

    .line 613
    :cond_17
    sget-object v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->PRIVATE_NUMBER:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 614
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0080

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 615
    move-object p2, p3

    goto :goto_16

    .line 616
    :cond_2c
    sget-object v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->PAYPHONE_NUMBER:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 617
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0081

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 618
    move-object p2, p3

    goto :goto_16
.end method

.method private setNumberText(Landroid/view/View;Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 9
    .parameter "view"
    .parameter "cache"
    .parameter "number"
    .parameter "name"
    .parameter "logType"

    .prologue
    .line 597
    if-eqz p3, :cond_1a

    sget-object v1, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->UNKNOWN_NUMBER:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    sget-object v1, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->PRIVATE_NUMBER:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    sget-object v1, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->PAYPHONE_NUMBER:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 599
    :cond_1a
    invoke-direct {p0, p1, p3, p4}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->setNumber(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 602
    :cond_1e
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 603
    .local v0, numberbuff:Ljava/lang/StringBuffer;
    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 604
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p3

    .line 605
    iget-object v1, p2, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tNumber:Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 606
    iget-object v1, p2, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tSubject:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 607
    return-void
.end method

.method private setSendTypeIcon(Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;I)V
    .registers 5
    .parameter "cache"
    .parameter "type"

    .prologue
    .line 545
    packed-switch p2, :pswitch_data_28

    .line 561
    :goto_3
    return-void

    .line 547
    :pswitch_4
    iget-object v0, p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->iSendType:Landroid/widget/ImageView;

    const v1, 0x7f020198

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 550
    :pswitch_d
    iget-object v0, p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->iSendType:Landroid/widget/ImageView;

    const v1, 0x7f02019a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 553
    :pswitch_16
    iget-object v0, p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->iSendType:Landroid/widget/ImageView;

    const v1, 0x7f020199

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 558
    :pswitch_1f
    iget-object v0, p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->iSendType:Landroid/widget/ImageView;

    const v1, 0x7f020204

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 545
    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_4
        :pswitch_d
        :pswitch_16
        :pswitch_1f
        :pswitch_1f
    .end packed-switch
.end method

.method private setTimeText(Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;Ljava/lang/String;)V
    .registers 10
    .parameter "cache"
    .parameter "time"

    .prologue
    .line 564
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 565
    .local v1, lTime:J
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;

    const/16 v5, 0x101

    move-wide v3, v1

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v6

    .line 567
    .local v6, dateClause:Ljava/lang/CharSequence;
    iget-object v0, p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tTime:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 568
    return-void
.end method

.method private updateContactInfo(ILjava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "logType"
    .parameter "number"
    .parameter "name"

    .prologue
    .line 489
    const/16 v1, 0x258

    if-eq p1, v1, :cond_1f

    .line 491
    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContactInfo:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ContactInfo;

    .line 492
    .local v0, info:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ContactInfo;
    if-nez v0, :cond_20

    .line 493
    sget-object v1, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->TAG:Ljava/lang/String;

    const-string v2, "info null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    sget-object v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ContactInfo;->EMPTY:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ContactInfo;

    .line 497
    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContactInfo:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    invoke-direct {p0, p2, p3, p1}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->enqueueRequest(Ljava/lang/String;Ljava/lang/String;I)V

    .line 508
    .end local v0           #info:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ContactInfo;
    :cond_1f
    :goto_1f
    return-void

    .line 499
    .restart local v0       #info:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ContactInfo;
    :cond_20
    sget-object v1, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ContactInfo;->EMPTY:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ContactInfo;

    if-eq v0, v1, :cond_1f

    .line 500
    iget-object v1, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ContactInfo;->name:Ljava/lang/String;

    invoke-static {v1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 502
    invoke-direct {p0, p2, p3, p1}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->enqueueRequest(Ljava/lang/String;Ljava/lang/String;I)V

    .line 504
    :cond_2f
    iget-object p3, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ContactInfo;->name:Ljava/lang/String;

    goto :goto_1f
.end method

.method private verifyEmail(J)V
    .registers 14
    .parameter "messageId"

    .prologue
    const/4 v2, 0x0

    .line 410
    const-string v0, "content://com.android.email.provider/message"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 411
    .local v1, mUri:Landroid/net/Uri;
    const-string v9, "_id"

    .line 413
    .local v9, id:Ljava/lang/String;
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 415
    .local v8, cursor:Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 416
    const-string v6, "com.android.email.MessageView_message_id"

    .line 417
    .local v6, EXTRA_MESSAGE_ID:Ljava/lang/String;
    const-string v7, "com.android.email.LogProvider"

    .line 418
    .local v7, LOG_VIEW_ACTION:Ljava/lang/String;
    new-instance v10, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 419
    .local v10, intent:Landroid/content/Intent;
    const-string v0, "vnd.android.cursor.item/email"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 420
    invoke-virtual {v10, v6, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 421
    invoke-virtual {v10, v7, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 422
    const/high16 v0, 0x1000

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 423
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v10}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 429
    .end local v6           #EXTRA_MESSAGE_ID:Ljava/lang/String;
    .end local v7           #LOG_VIEW_ACTION:Ljava/lang/String;
    .end local v10           #intent:Landroid/content/Intent;
    :goto_52
    return-void

    .line 425
    :cond_53
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0267

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_52
.end method

.method private verifySmsMms(IJ)V
    .registers 12
    .parameter "type"
    .parameter "messageId"

    .prologue
    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    .line 373
    const/4 v0, 0x0

    .line 374
    .local v0, isThreadView:Z
    const-wide/16 v2, -0x1

    .line 376
    .local v2, threadId:J
    iput-boolean v7, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mIsSmsView:Z

    .line 378
    const/16 v4, 0x12c

    if-ne p1, v4, :cond_3d

    cmp-long v4, p2, v5

    if-lez v4, :cond_3d

    .line 379
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mIsSmsView:Z

    .line 380
    iput-wide p2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mMsgId:J

    .line 386
    :cond_15
    :goto_15
    iget-object v4, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p0, v4}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->findThreadId(Landroid/content/Context;)J

    move-result-wide v2

    cmp-long v4, v2, v5

    if-lez v4, :cond_6c

    .line 387
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 388
    .local v1, smsMmsIntent:Landroid/content/Intent;
    const-string v4, "thread_id"

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 389
    const-string v4, "vnd.android-dir/mms-sms"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 390
    const/high16 v4, 0x1000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 392
    if-eqz v0, :cond_4a

    .line 401
    :goto_37
    iget-object v4, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 407
    .end local v1           #smsMmsIntent:Landroid/content/Intent;
    :goto_3c
    return-void

    .line 381
    :cond_3d
    const/16 v4, 0xc8

    if-ne p1, v4, :cond_15

    cmp-long v4, p2, v5

    if-lez v4, :cond_15

    .line 382
    iput-boolean v7, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mIsSmsView:Z

    .line 383
    iput-wide p2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mMsgId:J

    goto :goto_15

    .line 394
    .restart local v1       #smsMmsIntent:Landroid/content/Intent;
    :cond_4a
    iget-boolean v4, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mIsSmsView:Z

    if-eqz v4, :cond_5d

    .line 395
    const-string v4, "select_id"

    iget-wide v5, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mMsgId:J

    invoke-virtual {v1, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 396
    const-string v4, "message_type"

    const-string v5, "sms"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_37

    .line 398
    :cond_5d
    const-string v4, "select_id"

    iget-wide v5, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mMsgId:J

    invoke-virtual {v1, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 399
    const-string v4, "message_type"

    const-string v5, "mms"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_37

    .line 403
    .end local v1           #smsMmsIntent:Landroid/content/Intent;
    :cond_6c
    iget-object v4, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0267

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_3c
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 16
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 242
    sget-object v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->TAG:Ljava/lang/String;

    const-string v1, "= bindView() ="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;

    .line 244
    .local v2, cache:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;
    const/4 v0, 0x0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 245
    .local v8, id:I
    const/4 v0, 0x1

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 246
    .local v5, logType:I
    const/4 v0, 0x2

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 247
    .local v11, type:I
    const/4 v0, 0x3

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 248
    .local v4, name:Ljava/lang/String;
    const/4 v0, 0x4

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 249
    .local v3, number:Ljava/lang/String;
    const/4 v0, 0x7

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 250
    .local v9, subject:Ljava/lang/String;
    const/16 v0, 0x8

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 251
    .local v6, contents:Ljava/lang/String;
    const/4 v0, 0x5

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 252
    .local v10, time:Ljava/lang/String;
    const/16 v0, 0x9

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 253
    .local v7, duration:Ljava/lang/String;
    invoke-direct {p0, v5, v3, v4}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->updateContactInfo(ILjava/lang/String;Ljava/lang/String;)V

    .line 254
    iget-object v0, v2, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->listItemView:Landroid/widget/LinearLayout;

    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 255
    sget-boolean v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mIsDeleteMode:Z

    if-eqz v0, :cond_7c

    .line 256
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mFragment:Landroid/app/Fragment;

    iget-object v1, v2, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->listItemView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/app/Fragment;->unregisterForContextMenu(Landroid/view/View;)V

    .line 257
    iget-object v0, v2, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->checkBox:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 262
    :goto_5d
    iget-object v0, v2, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->listItemView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    invoke-direct {p0, v2, v8}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->setHeaderView(Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;I)V

    .line 264
    invoke-direct {p0, v2, v11}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->setSendTypeIcon(Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;I)V

    .line 265
    invoke-direct {p0, v2, v10}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->setTimeText(Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;Ljava/lang/String;)V

    .line 266
    invoke-direct {p0, v2, v7, v5}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->setDurationText(Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;Ljava/lang/String;I)V

    .line 267
    invoke-direct {p0, v2, v5}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->setLogTypeText(Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;I)V

    move-object v0, p0

    move-object v1, p1

    .line 268
    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->setNumberText(Landroid/view/View;Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;Ljava/lang/String;Ljava/lang/String;I)V

    .line 269
    invoke-direct {p0, v5, v9, v6, v2}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->setContentsText(ILjava/lang/String;Ljava/lang/String;Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;)V

    .line 271
    return-void

    .line 259
    :cond_7c
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mFragment:Landroid/app/Fragment;

    iget-object v1, v2, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->listItemView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/app/Fragment;->registerForContextMenu(Landroid/view/View;)V

    .line 260
    iget-object v0, v2, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->checkBox:Landroid/widget/CheckBox;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_5d
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .registers 10
    .parameter "cursor"

    .prologue
    .line 146
    iget-object v6, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 147
    iget-object v6, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mIndexer:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 149
    invoke-direct {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->clearCache()V

    .line 151
    if-nez p1, :cond_13

    .line 152
    invoke-super {p0, p1}, Landroid/widget/ResourceCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 174
    :goto_12
    return-void

    .line 156
    :cond_13
    if-eqz p1, :cond_55

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-eqz v6, :cond_55

    .line 157
    const/4 v6, -0x1

    invoke-interface {p1, v6}, Landroid/database/Cursor;->move(I)Z

    .line 158
    const-string v0, ""

    .line 159
    .local v0, date:Ljava/lang/String;
    const-wide/16 v3, 0x0

    .line 160
    .local v3, lDate:J
    const/4 v2, 0x0

    .line 161
    .local v2, id:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_25
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_55

    .line 162
    const-string v6, "date"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 163
    const-string v6, "_id"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 164
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 166
    invoke-direct {p0, v3, v4}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->calcSection(J)Ljava/lang/String;

    move-result-object v5

    .line 167
    .local v5, sectionName:Ljava/lang/String;
    if-eqz v5, :cond_52

    .line 168
    iget-object v6, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mIndexer:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    :cond_52
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 173
    .end local v0           #date:Ljava/lang/String;
    .end local v1           #i:I
    .end local v2           #id:I
    .end local v3           #lDate:J
    .end local v5           #sectionName:Ljava/lang/String;
    :cond_55
    invoke-super {p0, p1}, Landroid/widget/ResourceCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_12
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 201
    sget-object v2, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->TAG:Ljava/lang/String;

    const-string v3, "= getView() ="

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 203
    .local v0, mCursor:Landroid/database/Cursor;
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-nez v2, :cond_2a

    .line 204
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could\'t move to cursor position "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 209
    :cond_2a
    if-eqz p2, :cond_34

    if-eqz p2, :cond_40

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_40

    .line 210
    :cond_34
    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2, v0, p3}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 214
    .local v1, v:Landroid/view/View;
    :goto_3a
    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, v2, v0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 215
    return-object v1

    .line 212
    .end local v1           #v:Landroid/view/View;
    :cond_40
    move-object v1, p2

    .restart local v1       #v:Landroid/view/View;
    goto :goto_3a
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 196
    invoke-super {p0}, Landroid/widget/ResourceCursorAdapter;->getViewTypeCount()I

    move-result v0

    return v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 220
    sget-object v2, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->TAG:Ljava/lang/String;

    const-string v3, "= newView() ="

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 222
    .local v1, view:Landroid/view/View;
    new-instance v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;-><init>(Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$1;)V

    .line 224
    .local v0, cache:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;
    const v2, 0x7f0d00d5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->headerView:Landroid/view/View;

    .line 225
    const v2, 0x7f0d00d7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->iSendType:Landroid/widget/ImageView;

    .line 226
    const v2, 0x7f0d00d8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tTime:Landroid/widget/TextView;

    .line 227
    const v2, 0x7f0d00d9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tDuration:Landroid/widget/TextView;

    .line 228
    const v2, 0x7f0d00da

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tNumber:Landroid/widget/TextView;

    .line 229
    const v2, 0x7f0d00db

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tSubject:Landroid/widget/TextView;

    .line 230
    const v2, 0x7f0d00dc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tContents:Landroid/widget/TextView;

    .line 231
    const v2, 0x7f0d00dd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->iType:Landroid/widget/ImageView;

    .line 233
    const v2, 0x7f0d00d6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->listItemView:Landroid/widget/LinearLayout;

    .line 234
    const v2, 0x7f0d00de

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->checkBox:Landroid/widget/CheckBox;

    .line 235
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 237
    return-object v1
.end method

.method public setFragment(Landroid/app/Fragment;)V
    .registers 2
    .parameter "fragment"

    .prologue
    .line 183
    iput-object p1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mFragment:Landroid/app/Fragment;

    .line 184
    return-void
.end method

.method public setLoading(Z)V
    .registers 2
    .parameter "loading"

    .prologue
    .line 661
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mLoading:Z

    .line 662
    return-void
.end method

.method public setMode(Z)V
    .registers 2
    .parameter "isDeleteMode"

    .prologue
    .line 187
    sput-boolean p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mIsDeleteMode:Z

    .line 188
    return-void
.end method
