.class public Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;
.super Lcom/android/contacts/model/EntityDelta$ValuesDelta;
.source "CustomContactListFilterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/CustomContactListFilterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "GroupDelta"
.end annotation


# instance fields
.field private mAccountHasGroups:Z

.field private mUngrouped:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 309
    invoke-direct {p0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;-><init>()V

    .line 305
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->mUngrouped:Z

    .line 310
    return-void
.end method

.method static synthetic access$500(Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 304
    iget-boolean v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->mUngrouped:Z

    return v0
.end method

.method public static fromAfter(Landroid/content/ContentValues;)Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;
    .registers 3
    .parameter "after"

    .prologue
    .line 359
    new-instance v0, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;

    invoke-direct {v0}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;-><init>()V

    .line 360
    .local v0, entry:Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    .line 361
    iput-object p0, v0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    .line 362
    return-object v0
.end method

.method public static fromBefore(Landroid/content/ContentValues;)Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;
    .registers 3
    .parameter "before"

    .prologue
    .line 352
    new-instance v0, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;

    invoke-direct {v0}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;-><init>()V

    .line 353
    .local v0, entry:Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;
    iput-object p0, v0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    .line 354
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    iput-object v1, v0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    .line 355
    return-object v0
.end method

.method public static fromSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;
    .registers 14
    .parameter "resolver"
    .parameter "accountName"
    .parameter "accountType"
    .parameter "dataSet"
    .parameter "accountHasGroups"

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 319
    sget-object v0, Landroid/provider/ContactsContract$Settings;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "account_name"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "account_type"

    invoke-virtual {v0, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    .line 322
    .local v7, settingsUri:Landroid/net/Uri$Builder;
    if-eqz p3, :cond_1c

    .line 323
    const-string v0, "data_set"

    invoke-virtual {v7, v0, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 325
    :cond_1c
    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "should_sync"

    aput-object v0, v2, v4

    const-string v0, "ungrouped_visible"

    aput-object v0, v2, v5

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 330
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_32
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 331
    .local v8, values:Landroid/content/ContentValues;
    const-string v0, "account_name"

    invoke-virtual {v8, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    const-string v0, "account_type"

    invoke-virtual {v8, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    const-string v0, "data_set"

    invoke-virtual {v8, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    if-eqz v6, :cond_78

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_78

    .line 337
    const-string v0, "should_sync"

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 338
    const-string v0, "ungrouped_visible"

    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 339
    invoke-static {v8}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->fromBefore(Landroid/content/ContentValues;)Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->setUngrouped(Z)Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;
    :try_end_71
    .catchall {:try_start_32 .. :try_end_71} :catchall_9a

    move-result-object v0

    .line 347
    if-eqz v6, :cond_77

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_77
    :goto_77
    return-object v0

    .line 342
    :cond_78
    :try_start_78
    const-string v0, "should_sync"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 343
    const-string v0, "ungrouped_visible"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 344
    invoke-static {v8}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->fromAfter(Landroid/content/ContentValues;)Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->setUngrouped(Z)Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;
    :try_end_93
    .catchall {:try_start_78 .. :try_end_93} :catchall_9a

    move-result-object v0

    .line 347
    if-eqz v6, :cond_77

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_77

    .end local v8           #values:Landroid/content/ContentValues;
    :catchall_9a
    move-exception v0

    if-eqz v6, :cond_a0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_a0
    throw v0
.end method

.method private getAccountType()Ljava/lang/String;
    .registers 3

    .prologue
    .line 395
    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    :goto_6
    const-string v1, "account_type"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_d
    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    goto :goto_6
.end method


# virtual methods
.method public beforeExists()Z
    .registers 2

    .prologue
    .line 373
    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public buildDiff()Landroid/content/ContentProviderOperation;
    .registers 11

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 427
    invoke-virtual {p0}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->isInsert()Z

    move-result v6

    if-eqz v6, :cond_2e

    .line 429
    iget-boolean v5, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->mUngrouped:Z

    if-eqz v5, :cond_26

    .line 430
    iget-object v5, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    iget-object v6, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mIdColumn:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 431
    sget-object v5, Landroid/provider/ContactsContract$Settings;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    .line 465
    :cond_25
    :goto_25
    return-object v5

    .line 436
    :cond_26
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Unexpected diff"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 438
    :cond_2e
    invoke-virtual {p0}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->isUpdate()Z

    move-result v6

    if-eqz v6, :cond_25

    .line 439
    iget-boolean v6, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->mUngrouped:Z

    if-eqz v6, :cond_86

    .line 440
    const-string v5, "account_name"

    invoke-virtual {p0, v5}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 441
    .local v0, accountName:Ljava/lang/String;
    const-string v5, "account_type"

    invoke-virtual {p0, v5}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 442
    .local v1, accountType:Ljava/lang/String;
    const-string v5, "data_set"

    invoke-virtual {p0, v5}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 443
    .local v2, dataSet:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "account_name=? AND account_type=?"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 446
    .local v3, selection:Ljava/lang/StringBuilder;
    if-nez v2, :cond_77

    .line 447
    const-string v5, " AND data_set IS NULL"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    new-array v4, v9, [Ljava/lang/String;

    aput-object v0, v4, v7

    aput-object v1, v4, v8

    .line 453
    .local v4, selectionArgs:[Ljava/lang/String;
    :goto_5e
    sget-object v5, Landroid/provider/ContactsContract$Settings;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    goto :goto_25

    .line 450
    .end local v4           #selectionArgs:[Ljava/lang/String;
    :cond_77
    const-string v5, " AND data_set=?"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    const/4 v5, 0x3

    new-array v4, v5, [Ljava/lang/String;

    aput-object v0, v4, v7

    aput-object v1, v4, v8

    aput-object v2, v4, v9

    .restart local v4       #selectionArgs:[Ljava/lang/String;
    goto :goto_5e

    .line 458
    .end local v0           #accountName:Ljava/lang/String;
    .end local v1           #accountType:Ljava/lang/String;
    .end local v2           #dataSet:Ljava/lang/String;
    .end local v3           #selection:Ljava/lang/StringBuilder;
    .end local v4           #selectionArgs:[Ljava/lang/String;
    :cond_86
    sget-object v6, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    #calls: Lcom/android/contacts/list/CustomContactListFilterActivity;->addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;
    invoke-static {v6}, Lcom/android/contacts/list/CustomContactListFilterActivity;->access$200(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v6

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->getId()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    goto/16 :goto_25
.end method

.method public getShouldSync()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 377
    iget-boolean v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->mUngrouped:Z

    if-eqz v0, :cond_17

    const-string v0, "should_sync"

    :goto_7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->getAsInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_1a

    move v0, v1

    :goto_16
    return v0

    :cond_17
    const-string v0, "should_sync"

    goto :goto_7

    :cond_1a
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public getSystemId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 470
    const-string v0, "system_id"

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;
    .registers 8
    .parameter "context"

    .prologue
    .line 399
    iget-boolean v3, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->mUngrouped:Z

    if-eqz v3, :cond_23

    .line 400
    invoke-direct {p0}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->getAccountType()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/android/contacts/util/LocalizedNameResolver;->getAllContactsName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 402
    .local v0, customAllContactsName:Ljava/lang/String;
    if-eqz v0, :cond_f

    .line 416
    .end local v0           #customAllContactsName:Ljava/lang/String;
    :goto_e
    return-object v0

    .line 405
    .restart local v0       #customAllContactsName:Ljava/lang/String;
    :cond_f
    iget-boolean v3, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->mAccountHasGroups:Z

    if-eqz v3, :cond_1b

    .line 406
    const v3, 0x7f0a0117

    invoke-virtual {p1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_e

    .line 408
    :cond_1b
    const v3, 0x7f0a0118

    invoke-virtual {p1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_e

    .line 411
    .end local v0           #customAllContactsName:Ljava/lang/String;
    :cond_23
    const-string v3, "title_res"

    invoke-virtual {p0, v3}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 412
    .local v2, titleRes:Ljava/lang/Integer;
    if-eqz v2, :cond_3f

    .line 413
    const-string v3, "res_package"

    invoke-virtual {p0, v3}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 414
    .local v1, packageName:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v4, v5}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_e

    .line 416
    .end local v1           #packageName:Ljava/lang/String;
    :cond_3f
    const-string v3, "title"

    invoke-virtual {p0, v3}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method public getVisible()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 382
    iget-boolean v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->mUngrouped:Z

    if-eqz v0, :cond_17

    const-string v0, "ungrouped_visible"

    :goto_7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->getAsInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    :goto_16
    return v0

    :cond_17
    const-string v0, "group_visible"

    goto :goto_7

    :cond_1a
    move v0, v1

    goto :goto_16
.end method

.method public putShouldSync(Z)V
    .registers 4
    .parameter "shouldSync"

    .prologue
    .line 387
    iget-boolean v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->mUngrouped:Z

    if-eqz v0, :cond_e

    const-string v0, "should_sync"

    move-object v1, v0

    :goto_7
    if-eqz p1, :cond_12

    const/4 v0, 0x1

    :goto_a
    invoke-virtual {p0, v1, v0}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->put(Ljava/lang/String;I)V

    .line 388
    return-void

    .line 387
    :cond_e
    const-string v0, "should_sync"

    move-object v1, v0

    goto :goto_7

    :cond_12
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public putVisible(Z)V
    .registers 4
    .parameter "visible"

    .prologue
    .line 391
    iget-boolean v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->mUngrouped:Z

    if-eqz v0, :cond_e

    const-string v0, "ungrouped_visible"

    move-object v1, v0

    :goto_7
    if-eqz p1, :cond_12

    const/4 v0, 0x1

    :goto_a
    invoke-virtual {p0, v1, v0}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->put(Ljava/lang/String;I)V

    .line 392
    return-void

    .line 391
    :cond_e
    const-string v0, "group_visible"

    move-object v1, v0

    goto :goto_7

    :cond_12
    const/4 v0, 0x0

    goto :goto_a
.end method

.method protected setUngrouped(Z)Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;
    .registers 3
    .parameter "accountHasGroups"

    .prologue
    .line 366
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->mUngrouped:Z

    .line 367
    iput-boolean p1, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->mAccountHasGroups:Z

    .line 368
    return-object p0
.end method