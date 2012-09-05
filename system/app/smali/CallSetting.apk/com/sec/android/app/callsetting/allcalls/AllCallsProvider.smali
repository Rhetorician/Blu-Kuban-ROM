.class public Lcom/sec/android/app/callsetting/allcalls/AllCallsProvider;
.super Landroid/content/ContentProvider;
.source "AllCallsProvider.java"


# instance fields
.field private autoreject:Lcom/sec/android/app/callsetting/allcalls/AutoRejectDB;

.field autoreject_db:Landroid/database/sqlite/SQLiteDatabase;

.field private mChangedLanguage:Z

.field prefix_db:Landroid/database/sqlite/SQLiteDatabase;

.field private prefixnum:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingDB;

.field private rejectmsg:Lcom/sec/android/app/callsetting/allcalls/RejectMsgDB;

.field rejectmsg_db:Landroid/database/sqlite/SQLiteDatabase;

.field private uriMatcher:Landroid/content/UriMatcher;

.field private whitelist:Lcom/sec/android/app/callsetting/allcalls/WhiteListDB;

.field whitelist_db:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/callsetting/allcalls/AllCallsProvider;->mChangedLanguage:Z

    .line 67
    iput-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/AllCallsProvider;->autoreject_db:Landroid/database/sqlite/SQLiteDatabase;

    .line 68
    iput-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/AllCallsProvider;->prefix_db:Landroid/database/sqlite/SQLiteDatabase;

    .line 69
    iput-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/AllCallsProvider;->rejectmsg_db:Landroid/database/sqlite/SQLiteDatabase;

    .line 70
    iput-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/AllCallsProvider;->whitelist_db:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method private appendRowId(Ljava/lang/String;J)Ljava/lang/String;
    .registers 7
    .parameter "selection"
    .parameter "id"

    .prologue
    .line 568
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_37

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " AND ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2e
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_37
    const-string v0, ""

    goto :goto_2e
.end method

.method private log(Ljava/lang/String;)V
    .registers 3
    .parameter "string"

    .prologue
    .line 576
    const-string v0, "AllCallsProvider"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 10
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const/4 v4, 0x1

    .line 133
    const/4 v0, 0x0

    .line 135
    .local v0, count:I
    invoke-virtual {p0, p1}, Lcom/sec/android/app/callsetting/allcalls/AllCallsProvider;->getDatabase(Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 136
    const/4 v2, 0x0

    .line 211
    :goto_9
    return v2

    .line 139
    :cond_a
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/AllCallsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    packed-switch v2, :pswitch_data_11c

    .line 206
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown URI "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 144
    :pswitch_2c
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/AllCallsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    if-ne v2, v4, :cond_4a

    .line 146
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/AllCallsProvider;->autoreject_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "reject_num"

    invoke-virtual {v2, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 210
    :goto_3c
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/AllCallsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    move v2, v0

    .line 211
    goto :goto_9

    .line 150
    :cond_4a
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 151
    .local v1, id:Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/AllCallsProvider;->autoreject_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "reject_num"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 154
    goto :goto_3c

    .line 160
    .end local v1           #id:Ljava/lang/String;
    :pswitch_70
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/AllCallsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_82

    .line 162
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/AllCallsProvider;->whitelist_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "whitelist_num"

    invoke-virtual {v2, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_3c

    .line 166
    :cond_82
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 167
    .restart local v1       #id:Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/AllCallsProvider;->whitelist_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "whitelist_num"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 170
    goto :goto_3c

    .line 176
    .end local v1           #id:Ljava/lang/String;
    :pswitch_a8
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/AllCallsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_ba

    .line 178
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/AllCallsProvider;->prefix_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "prefix_num"

    invoke-virtual {v2, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_3c

    .line 182
    :cond_ba
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 183
    .restart local v1       #id:Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/AllCallsProvider;->prefix_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "prefix_num"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 186
    goto/16 :goto_3c

    .line 193
    .end local v1           #id:Ljava/lang/String;
    :pswitch_e1
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/AllCallsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_f4

    .line 195
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/AllCallsProvider;->rejectmsg_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "reject_msg"

    invoke-virtual {v2, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_3c

    .line 199
    :cond_f4
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 200
    .restart local v1       #id:Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/AllCallsProvider;->rejectmsg_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "reject_msg"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 203
    goto/16 :goto_3c

    .line 139
    nop

    :pswitch_data_11c
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_2c
        :pswitch_a8
        :pswitch_a8
        :pswitch_e1
        :pswitch_e1
        :pswitch_70
        :pswitch_70
    .end packed-switch
.end method

.method public getDatabase(Landroid/net/Uri;)Z
    .registers 6
    .parameter "uri"

    .prologue
    const/4 v1, 0x0

    .line 74
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/AllCallsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    packed-switch v2, :pswitch_data_7c

    .line 124
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown URI "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 77
    :pswitch_23
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/AllCallsProvider;->autoreject_db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_2f

    .line 79
    :try_start_27
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/AllCallsProvider;->autoreject:Lcom/sec/android/app/callsetting/allcalls/AutoRejectDB;

    invoke-virtual {v2}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/AllCallsProvider;->autoreject_db:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_2f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_27 .. :try_end_2f} :catch_31

    .line 126
    :cond_2f
    :goto_2f
    const/4 v1, 0x1

    :goto_30
    return v1

    .line 80
    :catch_31
    move-exception v0

    .line 81
    .local v0, exception:Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/callsetting/allcalls/AllCallsProvider;->log(Ljava/lang/String;)V

    goto :goto_30

    .line 89
    .end local v0           #exception:Landroid/database/sqlite/SQLiteException;
    :pswitch_3a
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/AllCallsProvider;->whitelist_db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_2f

    .line 91
    :try_start_3e
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/AllCallsProvider;->whitelist:Lcom/sec/android/app/callsetting/allcalls/WhiteListDB;

    invoke-virtual {v2}, Lcom/sec/android/app/callsetting/allcalls/WhiteListDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/AllCallsProvider;->whitelist_db:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_46
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3e .. :try_end_46} :catch_47

    goto :goto_2f

    .line 92
    :catch_47
    move-exception v0

    .line 93
    .restart local v0       #exception:Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/callsetting/allcalls/AllCallsProvider;->log(Ljava/lang/String;)V

    goto :goto_30

    .line 101
    .end local v0           #exception:Landroid/database/sqlite/SQLiteException;
    :pswitch_50
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/AllCallsProvider;->prefix_db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_2f

    .line 103
    :try_start_54
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/AllCallsProvider;->prefixnum:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingDB;

    invoke-virtual {v2}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/AllCallsProvider;->prefix_db:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_5c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_54 .. :try_end_5c} :catch_5d

    goto :goto_2f

    .line 104
    :catch_5d
    move-exception v0

    .line 105
    .restart local v0       #exception:Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/callsetting/allcalls/AllCallsProvider;->log(Ljava/lang/String;)V

    goto :goto_30

    .line 113
    .end local v0           #exception:Landroid/database/sqlite/SQLiteException;
    :pswitch_66
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/AllCallsProvider;->rejectmsg_db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_2f

    .line 115
    :try_start_6a
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/AllCallsProvider;->rejectmsg:Lcom/sec/android/app/callsetting/allcalls/RejectMsgDB;

    invoke-virtual {v2}, Lcom/sec/android/app/callsetting/allcalls/RejectMsgDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/AllCallsProvider;->rejectmsg_db:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_72
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6a .. :try_end_72} :catch_73

    goto :goto_2f

    .line 116
    :catch_73
    move-exception v0

    .line 117
    .restart local v0       #exception:Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/callsetting/allcalls/AllCallsProvider;->log(Ljava/lang/String;)V

    goto :goto_30

    .line 74
    :pswitch_data_7c
    .packed-switch 0x1
        :pswitch_23
        :pswitch_23
        :pswitch_50
        :pswitch_50
        :pswitch_66
        :pswitch_66
        :pswitch_3a
        :pswitch_3a
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 5
    .parameter "uri"

    .prologue
    .line 217
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/AllCallsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_28

    .line 232
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :pswitch_22
    const-string v0, "vnd.android.cursor.dir/vnd.sec.android.app.callsetting.allcalls"

    .line 229
    :goto_24
    return-object v0

    :pswitch_25
    const-string v0, "vnd.android.cursor.item/vnd.sec.android.app.callsetting.allcalls"

    goto :goto_24

    .line 217
    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_22
        :pswitch_25
        :pswitch_22
        :pswitch_25
        :pswitch_22
        :pswitch_25
        :pswitch_22
        :pswitch_25
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 10
    .parameter "uri"
    .parameter "values"

    .prologue
    const/4 v4, 0x0

    .line 241
    const/4 v3, 0x0

    .line 243
    .local v3, newUri:Landroid/net/Uri;
    invoke-virtual {p0, p1}, Lcom/sec/android/app/callsetting/allcalls/AllCallsProvider;->getDatabase(Landroid/net/Uri;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 331
    :goto_8
    return-object v4

    .line 247
    :cond_9
    iget-object v5, p0, Lcom/sec/android/app/callsetting/allcalls/AllCallsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    packed-switch v5, :pswitch_data_fa

    .line 329
    :goto_12
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/AllCallsProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    move-object v4, v3

    .line 331
    goto :goto_8

    .line 255
    :pswitch_1f
    iget-object v5, p0, Lcom/sec/android/app/callsetting/allcalls/AllCallsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_41

    .line 256
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown URI "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 259
    :cond_41
    const-string v5, "reject_match"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_54

    .line 260
    const/4 v0, 0x0

    .line 261
    .local v0, MATCH_EQUAL:I
    const-string v5, "reject_match"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 265
    .end local v0           #MATCH_EQUAL:I
    :cond_54
    iget-object v5, p0, Lcom/sec/android/app/callsetting/allcalls/AllCallsProvider;->autoreject_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "reject_num"

    invoke-virtual {v5, v6, v4, p2}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 269
    .local v1, id:J
    sget-object v5, Lcom/sec/android/app/callsetting/allcalls/ProviderConstants;->AUTOREJECT_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 271
    goto :goto_12

    .line 279
    .end local v1           #id:J
    :pswitch_63
    iget-object v5, p0, Lcom/sec/android/app/callsetting/allcalls/AllCallsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    const/4 v6, 0x7

    if-eq v5, v6, :cond_85

    .line 280
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown URI "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 284
    :cond_85
    iget-object v5, p0, Lcom/sec/android/app/callsetting/allcalls/AllCallsProvider;->whitelist_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "whitelist_num"

    invoke-virtual {v5, v6, v4, p2}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 287
    .restart local v1       #id:J
    sget-object v5, Lcom/sec/android/app/callsetting/allcalls/ProviderConstants;->WHITELIST_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 289
    goto/16 :goto_12

    .line 297
    .end local v1           #id:J
    :pswitch_95
    iget-object v5, p0, Lcom/sec/android/app/callsetting/allcalls/AllCallsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_b7

    .line 298
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown URI "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 302
    :cond_b7
    iget-object v5, p0, Lcom/sec/android/app/callsetting/allcalls/AllCallsProvider;->prefix_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "prefix_num"

    invoke-virtual {v5, v6, v4, p2}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 305
    .restart local v1       #id:J
    sget-object v5, Lcom/sec/android/app/callsetting/allcalls/ProviderConstants;->PREFIX_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 307
    goto/16 :goto_12

    .line 316
    .end local v1           #id:J
    :pswitch_c7
    iget-object v5, p0, Lcom/sec/android/app/callsetting/allcalls/AllCallsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    const/4 v6, 0x5

    if-eq v5, v6, :cond_e9

    .line 317
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown URI "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 321
    :cond_e9
    iget-object v5, p0, Lcom/sec/android/app/callsetting/allcalls/AllCallsProvider;->rejectmsg_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "reject_msg"

    invoke-virtual {v5, v6, v4, p2}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 324
    .restart local v1       #id:J
    sget-object v5, Lcom/sec/android/app/callsetting/allcalls/ProviderConstants;->REJECTMSG_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 326
    goto/16 :goto_12

    .line 247
    nop

    :pswitch_data_fa
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_1f
        :pswitch_95
        :pswitch_95
        :pswitch_c7
        :pswitch_c7
        :pswitch_63
        :pswitch_63
    .end packed-switch
.end method

.method public onCreate()Z
    .registers 5

    .prologue
    .line 337
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/AllCallsProvider;->uriMatcher:Landroid/content/UriMatcher;

    .line 339
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/AllCallsProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.callsetting.allcalls"

    const-string v2, "reject_num"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 340
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/AllCallsProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.callsetting.allcalls"

    const-string v2, "reject_num/#"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 341
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/AllCallsProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.callsetting.allcalls"

    const-string v2, "whitelist_num"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 342
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/AllCallsProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.callsetting.allcalls"

    const-string v2, "whitelist_num/#"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 344
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/AllCallsProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.callsetting.allcalls"

    const-string v2, "prefix_num"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 345
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/AllCallsProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.callsetting.allcalls"

    const-string v2, "prefix_num/#"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 347
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/AllCallsProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.callsetting.allcalls"

    const-string v2, "reject_msg"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 348
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/AllCallsProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.callsetting.allcalls"

    const-string v2, "reject_msg/#"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 350
    new-instance v0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectDB;

    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/AllCallsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectDB;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/AllCallsProvider;->autoreject:Lcom/sec/android/app/callsetting/allcalls/AutoRejectDB;

    .line 351
    new-instance v0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingDB;

    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/AllCallsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingDB;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/AllCallsProvider;->prefixnum:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingDB;

    .line 352
    new-instance v0, Lcom/sec/android/app/callsetting/allcalls/RejectMsgDB;

    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/AllCallsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/callsetting/allcalls/RejectMsgDB;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/AllCallsProvider;->rejectmsg:Lcom/sec/android/app/callsetting/allcalls/RejectMsgDB;

    .line 353
    new-instance v0, Lcom/sec/android/app/callsetting/allcalls/WhiteListDB;

    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/AllCallsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/callsetting/allcalls/WhiteListDB;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/AllCallsProvider;->whitelist:Lcom/sec/android/app/callsetting/allcalls/WhiteListDB;

    .line 355
    const/4 v0, 0x0

    return v0
.end method

.method public onLowMemory()V
    .registers 2

    .prologue
    .line 384
    const-string v0, "LOWMEMORY"

    invoke-direct {p0, v0}, Lcom/sec/android/app/callsetting/allcalls/AllCallsProvider;->log(Ljava/lang/String;)V

    .line 385
    invoke-super {p0}, Landroid/content/ContentProvider;->onLowMemory()V

    .line 387
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/AllCallsProvider;->rejectmsg_db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_14

    .line 388
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/AllCallsProvider;->rejectmsg_db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 390
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/AllCallsProvider;->rejectmsg_db:Landroid/database/sqlite/SQLiteDatabase;

    .line 392
    :cond_14
    return-void
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 23
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 397
    const/4 v10, 0x0

    .line 399
    .local v10, cursor:Landroid/database/Cursor;
    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/app/callsetting/allcalls/AllCallsProvider;->getDatabase(Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 400
    const/4 v2, 0x0

    .line 475
    :goto_8
    return-object v2

    .line 403
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/callsetting/allcalls/AllCallsProvider;->uriMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    packed-switch v2, :pswitch_data_13c

    .line 471
    :cond_16
    :goto_16
    if-eqz v10, :cond_25

    .line 472
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/callsetting/allcalls/AllCallsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-interface {v10, v2, v0}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :cond_25
    move-object v2, v10

    .line 475
    goto :goto_8

    .line 406
    :pswitch_27
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/callsetting/allcalls/AllCallsProvider;->uriMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4b

    .line 407
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 408
    .local v11, id:J
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v11, v12}, Lcom/sec/android/app/callsetting/allcalls/AllCallsProvider;->appendRowId(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p3

    .line 413
    .end local v11           #id:J
    :cond_4b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/callsetting/allcalls/AllCallsProvider;->autoreject_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "reject_num"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v9, p5

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 416
    goto :goto_16

    .line 420
    :pswitch_60
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/callsetting/allcalls/AllCallsProvider;->uriMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_85

    .line 421
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 422
    .restart local v11       #id:J
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v11, v12}, Lcom/sec/android/app/callsetting/allcalls/AllCallsProvider;->appendRowId(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p3

    .line 426
    .end local v11           #id:J
    :cond_85
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/callsetting/allcalls/AllCallsProvider;->whitelist_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "whitelist_num"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v9, p5

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 429
    goto/16 :goto_16

    .line 433
    :pswitch_9b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/callsetting/allcalls/AllCallsProvider;->uriMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_bf

    .line 434
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 435
    .restart local v11       #id:J
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v11, v12}, Lcom/sec/android/app/callsetting/allcalls/AllCallsProvider;->appendRowId(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p3

    .line 439
    .end local v11           #id:J
    :cond_bf
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/callsetting/allcalls/AllCallsProvider;->prefix_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "prefix_num"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v9, p5

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 441
    goto/16 :goto_16

    .line 445
    :pswitch_d5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/callsetting/allcalls/AllCallsProvider;->uriMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_f9

    .line 446
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 447
    .restart local v11       #id:J
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v11, v12}, Lcom/sec/android/app/callsetting/allcalls/AllCallsProvider;->appendRowId(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p3

    .line 449
    .end local v11           #id:J
    :cond_f9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/callsetting/allcalls/AllCallsProvider;->rejectmsg_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "reject_msg"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v9, p5

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 451
    const/4 v13, 0x0

    .line 452
    .local v13, idx:I
    const/4 v14, 0x1

    .line 453
    .local v14, mEdited:I
    if-eqz v10, :cond_16

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 455
    :cond_117
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 456
    .restart local v11       #id:J
    const/4 v2, 0x2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 458
    const/4 v2, 0x1

    if-ne v14, v2, :cond_131

    .line 459
    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 464
    :goto_129
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_117

    goto/16 :goto_16

    .line 461
    :cond_131
    const/4 v2, 0x2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 462
    .local v16, resource:I
    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    goto :goto_129

    .line 403
    nop

    :pswitch_data_13c
    .packed-switch 0x1
        :pswitch_27
        :pswitch_27
        :pswitch_9b
        :pswitch_9b
        :pswitch_d5
        :pswitch_d5
        :pswitch_60
        :pswitch_60
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 11
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const/4 v5, 0x1

    .line 485
    invoke-virtual {p0, p1}, Lcom/sec/android/app/callsetting/allcalls/AllCallsProvider;->getDatabase(Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 486
    const/4 v0, 0x0

    .line 563
    :goto_8
    return v0

    .line 489
    :cond_9
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/AllCallsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    packed-switch v3, :pswitch_data_ee

    .line 557
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown URI "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 495
    :pswitch_2b
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/AllCallsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    if-ne v3, v5, :cond_48

    .line 497
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/AllCallsProvider;->autoreject_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "reject_num"

    invoke-virtual {v3, v4, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 561
    .local v0, count:I
    :goto_3b
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/AllCallsProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_8

    .line 501
    .end local v0           #count:I
    :cond_48
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 502
    .local v1, id:J
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/AllCallsProvider;->autoreject_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "reject_num"

    invoke-direct {p0, p3, v1, v2}, Lcom/sec/android/app/callsetting/allcalls/AllCallsProvider;->appendRowId(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, p2, v5, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 505
    .restart local v0       #count:I
    goto :goto_3b

    .line 511
    .end local v0           #count:I
    .end local v1           #id:J
    :pswitch_63
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/AllCallsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_75

    .line 513
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/AllCallsProvider;->whitelist_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "whitelist_num"

    invoke-virtual {v3, v4, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .restart local v0       #count:I
    goto :goto_3b

    .line 517
    .end local v0           #count:I
    :cond_75
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 518
    .restart local v1       #id:J
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/AllCallsProvider;->whitelist_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "whitelist_num"

    invoke-direct {p0, p3, v1, v2}, Lcom/sec/android/app/callsetting/allcalls/AllCallsProvider;->appendRowId(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, p2, v5, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 521
    .restart local v0       #count:I
    goto :goto_3b

    .line 527
    .end local v0           #count:I
    .end local v1           #id:J
    :pswitch_90
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/AllCallsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_a2

    .line 529
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/AllCallsProvider;->prefix_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "prefix_num"

    invoke-virtual {v3, v4, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .restart local v0       #count:I
    goto :goto_3b

    .line 533
    .end local v0           #count:I
    :cond_a2
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 534
    .restart local v1       #id:J
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/AllCallsProvider;->prefix_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "prefix_num"

    invoke-direct {p0, p3, v1, v2}, Lcom/sec/android/app/callsetting/allcalls/AllCallsProvider;->appendRowId(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, p2, v5, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 537
    .restart local v0       #count:I
    goto/16 :goto_3b

    .line 544
    .end local v0           #count:I
    .end local v1           #id:J
    :pswitch_be
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/AllCallsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_d1

    .line 546
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/AllCallsProvider;->rejectmsg_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "reject_msg"

    invoke-virtual {v3, v4, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .restart local v0       #count:I
    goto/16 :goto_3b

    .line 550
    .end local v0           #count:I
    :cond_d1
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 551
    .restart local v1       #id:J
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/AllCallsProvider;->rejectmsg_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "reject_msg"

    invoke-direct {p0, p3, v1, v2}, Lcom/sec/android/app/callsetting/allcalls/AllCallsProvider;->appendRowId(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, p2, v5, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 554
    .restart local v0       #count:I
    goto/16 :goto_3b

    .line 489
    nop

    :pswitch_data_ee
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_2b
        :pswitch_90
        :pswitch_90
        :pswitch_be
        :pswitch_be
        :pswitch_63
        :pswitch_63
    .end packed-switch
.end method
