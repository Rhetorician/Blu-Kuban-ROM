.class public Lcom/google/android/finsky/library/Libraries;
.super Ljava/lang/Object;
.source "Libraries.java"

# interfaces
.implements Lcom/google/android/finsky/library/Library;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/library/Libraries$Listener;
    }
.end annotation


# instance fields
.field private final mAccounts:Lcom/google/android/finsky/library/Accounts;

.field private final mBackgroundHandler:Landroid/os/Handler;

.field private final mLibraries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/accounts/Account;",
            "Lcom/google/android/finsky/library/AccountLibrary;",
            ">;"
        }
    .end annotation
.end field

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/library/Libraries$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadedAccountHash:I

.field private final mLoadingCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mNotificationHandler:Landroid/os/Handler;

.field private final mSQLiteLibrary:Lcom/google/android/finsky/library/SQLiteLibrary;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/library/Accounts;Lcom/google/android/finsky/library/SQLiteLibrary;Landroid/os/Handler;Landroid/os/Handler;)V
    .registers 6
    .parameter "accounts"
    .parameter "sqLiteLibrary"
    .parameter "notificationHandler"
    .parameter "backgroundHandler"

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/library/Libraries;->mLibraries:Ljava/util/Map;

    .line 51
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/library/Libraries;->mLoadingCallbacks:Ljava/util/List;

    .line 56
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/library/Libraries;->mListeners:Ljava/util/List;

    .line 63
    iput-object p1, p0, Lcom/google/android/finsky/library/Libraries;->mAccounts:Lcom/google/android/finsky/library/Accounts;

    .line 64
    iput-object p2, p0, Lcom/google/android/finsky/library/Libraries;->mSQLiteLibrary:Lcom/google/android/finsky/library/SQLiteLibrary;

    .line 65
    iput-object p4, p0, Lcom/google/android/finsky/library/Libraries;->mBackgroundHandler:Landroid/os/Handler;

    .line 66
    iput-object p3, p0, Lcom/google/android/finsky/library/Libraries;->mNotificationHandler:Landroid/os/Handler;

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/library/Libraries;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/google/android/finsky/library/Libraries;->fireAllLibrariesLoaded()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/finsky/library/Libraries;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/google/android/finsky/library/Libraries;->runAndClearLoadingCallbacks()V

    return-void
.end method

.method static synthetic access$202(Lcom/google/android/finsky/library/Libraries;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput p1, p0, Lcom/google/android/finsky/library/Libraries;->mLoadedAccountHash:I

    return p1
.end method

.method static synthetic access$300(Lcom/google/android/finsky/library/Libraries;)Lcom/google/android/finsky/library/SQLiteLibrary;
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/finsky/library/Libraries;->mSQLiteLibrary:Lcom/google/android/finsky/library/SQLiteLibrary;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/finsky/library/Libraries;)Lcom/google/android/finsky/library/Accounts;
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/finsky/library/Libraries;->mAccounts:Lcom/google/android/finsky/library/Accounts;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/finsky/library/Libraries;Lcom/google/android/finsky/library/AccountLibrary;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/google/android/finsky/library/Libraries;->notifyLibraryChanged(Lcom/google/android/finsky/library/AccountLibrary;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/finsky/library/Libraries;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/finsky/library/Libraries;->mListeners:Ljava/util/List;

    return-object v0
.end method

.method private computeAccountHash(Ljava/util/List;)I
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/accounts/Account;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 219
    .local p1, accounts:Ljava/util/List;,"Ljava/util/List<Landroid/accounts/Account;>;"
    const/4 v2, 0x0

    .line 220
    .local v2, result:I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 221
    .local v0, account:Landroid/accounts/Account;
    invoke-virtual {v0}, Landroid/accounts/Account;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_5

    .line 223
    .end local v0           #account:Landroid/accounts/Account;
    :cond_17
    return v2
.end method

.method private fireAllLibrariesLoaded()V
    .registers 3

    .prologue
    .line 251
    iget-object v0, p0, Lcom/google/android/finsky/library/Libraries;->mNotificationHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/finsky/library/Libraries$6;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/library/Libraries$6;-><init>(Lcom/google/android/finsky/library/Libraries;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 261
    return-void
.end method

.method private notifyLibraryChanged(Lcom/google/android/finsky/library/AccountLibrary;)V
    .registers 4
    .parameter "library"

    .prologue
    .line 238
    iget-object v0, p0, Lcom/google/android/finsky/library/Libraries;->mNotificationHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/finsky/library/Libraries$5;

    invoke-direct {v1, p0, p1}, Lcom/google/android/finsky/library/Libraries$5;-><init>(Lcom/google/android/finsky/library/Libraries;Lcom/google/android/finsky/library/AccountLibrary;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 248
    return-void
.end method

.method private declared-synchronized runAndClearLoadingCallbacks()V
    .registers 4

    .prologue
    .line 264
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/google/android/finsky/library/Libraries;->mLoadingCallbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_7
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 265
    .local v1, loadingCallback:Ljava/lang/Runnable;
    if-eqz v1, :cond_7

    .line 266
    iget-object v2, p0, Lcom/google/android/finsky/library/Libraries;->mNotificationHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1b

    goto :goto_7

    .line 264
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #loadingCallback:Ljava/lang/Runnable;
    :catchall_1b
    move-exception v2

    monitor-exit p0

    throw v2

    .line 269
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_1e
    :try_start_1e
    iget-object v2, p0, Lcom/google/android/finsky/library/Libraries;->mLoadingCallbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V
    :try_end_23
    .catchall {:try_start_1e .. :try_end_23} :catchall_1b

    .line 270
    monitor-exit p0

    return-void
.end method

.method private setupAccountLibrary(Landroid/accounts/Account;)Lcom/google/android/finsky/library/AccountLibrary;
    .registers 4
    .parameter "account"

    .prologue
    .line 227
    new-instance v0, Lcom/google/android/finsky/library/AccountLibrary;

    iget-object v1, p0, Lcom/google/android/finsky/library/Libraries;->mNotificationHandler:Landroid/os/Handler;

    invoke-direct {v0, p1, v1}, Lcom/google/android/finsky/library/AccountLibrary;-><init>(Landroid/accounts/Account;Landroid/os/Handler;)V

    .line 228
    .local v0, accountLibrary:Lcom/google/android/finsky/library/AccountLibrary;
    new-instance v1, Lcom/google/android/finsky/library/Libraries$4;

    invoke-direct {v1, p0, v0}, Lcom/google/android/finsky/library/Libraries$4;-><init>(Lcom/google/android/finsky/library/Libraries;Lcom/google/android/finsky/library/AccountLibrary;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/library/AccountLibrary;->addListener(Lcom/google/android/finsky/library/AccountLibrary$Listener;)V

    .line 234
    return-object v0
.end method


# virtual methods
.method public declared-synchronized addListener(Lcom/google/android/finsky/library/Libraries$Listener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 73
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/finsky/library/Libraries;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 74
    monitor-exit p0

    return-void

    .line 73
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public blockingLoad()V
    .registers 5

    .prologue
    .line 97
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/library/Libraries;->mNotificationHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v2, v3, :cond_18

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/library/Libraries;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_1e

    .line 99
    :cond_18
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 102
    :cond_1e
    invoke-virtual {p0}, Lcom/google/android/finsky/library/Libraries;->isLoaded()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 118
    :goto_24
    return-void

    .line 106
    :cond_25
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 107
    .local v0, countDownLatch:Ljava/util/concurrent/CountDownLatch;
    new-instance v2, Lcom/google/android/finsky/library/Libraries$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/finsky/library/Libraries$1;-><init>(Lcom/google/android/finsky/library/Libraries;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/library/Libraries;->load(Ljava/lang/Runnable;)V

    .line 114
    :try_start_33
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_36
    .catch Ljava/lang/InterruptedException; {:try_start_33 .. :try_end_36} :catch_37

    goto :goto_24

    .line 115
    :catch_37
    move-exception v1

    .line 116
    .local v1, e:Ljava/lang/InterruptedException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public declared-synchronized cleanup()V
    .registers 3

    .prologue
    .line 208
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/finsky/library/Libraries;->mBackgroundHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/finsky/library/Libraries$3;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/library/Libraries$3;-><init>(Lcom/google/android/finsky/library/Libraries;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 216
    monitor-exit p0

    return-void

    .line 208
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized contains(Lcom/google/android/finsky/library/LibraryEntry;)Z
    .registers 5
    .parameter "entry"

    .prologue
    .line 282
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/google/android/finsky/library/Libraries;->mLibraries:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/library/AccountLibrary;

    .line 283
    .local v0, accountLibrary:Lcom/google/android/finsky/library/AccountLibrary;
    invoke-virtual {v0, p1}, Lcom/google/android/finsky/library/AccountLibrary;->contains(Lcom/google/android/finsky/library/LibraryEntry;)Z
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_22

    move-result v2

    if-eqz v2, :cond_b

    .line 284
    const/4 v2, 0x1

    .line 287
    .end local v0           #accountLibrary:Lcom/google/android/finsky/library/AccountLibrary;
    :goto_1e
    monitor-exit p0

    return v2

    :cond_20
    const/4 v2, 0x0

    goto :goto_1e

    .line 282
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_22
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public dumpState()V
    .registers 5

    .prologue
    .line 404
    const-string v2, "FinskyLibrary"

    const-string v3, "| Libraries {"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    iget-object v2, p0, Lcom/google/android/finsky/library/Libraries;->mLibraries:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/library/AccountLibrary;

    .line 406
    .local v0, accountLibrary:Lcom/google/android/finsky/library/AccountLibrary;
    const-string v2, "|   "

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/library/AccountLibrary;->dumpState(Ljava/lang/String;)V

    goto :goto_11

    .line 408
    .end local v0           #accountLibrary:Lcom/google/android/finsky/library/AccountLibrary;
    :cond_23
    const-string v2, "FinskyLibrary"

    const-string v3, "| }"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    return-void
.end method

.method public declared-synchronized getAccountLibraries()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/finsky/library/AccountLibrary;",
            ">;"
        }
    .end annotation

    .prologue
    .line 273
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/finsky/library/Libraries;->mLibraries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/finsky/utils/Lists;->newArrayList(Ljava/util/Collection;)Ljava/util/ArrayList;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_d

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAccountLibrary(Landroid/accounts/Account;)Lcom/google/android/finsky/library/AccountLibrary;
    .registers 3
    .parameter "account"

    .prologue
    .line 277
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/finsky/library/Libraries;->mLibraries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/library/AccountLibrary;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAppEntries(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .parameter "docId"
    .parameter "certificateHashes"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/library/LibraryAppEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 344
    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 345
    .local v3, result:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/library/LibraryAppEntry;>;"
    iget-object v4, p0, Lcom/google/android/finsky/library/Libraries;->mLibraries:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_f
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/library/AccountLibrary;

    .line 346
    .local v0, accountLibrary:Lcom/google/android/finsky/library/AccountLibrary;
    invoke-virtual {v0, p1}, Lcom/google/android/finsky/library/AccountLibrary;->getAppEntry(Ljava/lang/String;)Lcom/google/android/finsky/library/LibraryAppEntry;

    move-result-object v1

    .line 347
    .local v1, appEntry:Lcom/google/android/finsky/library/LibraryAppEntry;
    if-eqz v1, :cond_f

    invoke-virtual {v1, p2}, Lcom/google/android/finsky/library/LibraryAppEntry;->hasMatchingCertificateHash([Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 348
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_2b

    goto :goto_f

    .line 344
    .end local v0           #accountLibrary:Lcom/google/android/finsky/library/AccountLibrary;
    .end local v1           #appEntry:Lcom/google/android/finsky/library/LibraryAppEntry;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #result:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/library/LibraryAppEntry;>;"
    :catchall_2b
    move-exception v4

    monitor-exit p0

    throw v4

    .line 351
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #result:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/library/LibraryAppEntry;>;"
    :cond_2e
    monitor-exit p0

    return-object v3
.end method

.method public declared-synchronized getAppOwners(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .parameter "docId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation

    .prologue
    .line 333
    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/google/android/finsky/library/LibraryAppEntry;->ANY_CERTIFICATE_HASHES:[Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/library/Libraries;->getAppOwners(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAppOwners(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .parameter "docId"
    .parameter "certificateHashes"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation

    .prologue
    .line 313
    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 314
    .local v3, result:Ljava/util/List;,"Ljava/util/List<Landroid/accounts/Account;>;"
    iget-object v4, p0, Lcom/google/android/finsky/library/Libraries;->mLibraries:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_f
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_38

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 315
    .local v0, accountAndLibrary:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/accounts/Account;Lcom/google/android/finsky/library/AccountLibrary;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/finsky/library/AccountLibrary;

    invoke-virtual {v4, p1}, Lcom/google/android/finsky/library/AccountLibrary;->getAppEntry(Ljava/lang/String;)Lcom/google/android/finsky/library/LibraryAppEntry;

    move-result-object v1

    .line 316
    .local v1, appEntry:Lcom/google/android/finsky/library/LibraryAppEntry;
    if-eqz v1, :cond_f

    invoke-virtual {v1, p2}, Lcom/google/android/finsky/library/LibraryAppEntry;->hasMatchingCertificateHash([Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 317
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_34
    .catchall {:try_start_1 .. :try_end_34} :catchall_35

    goto :goto_f

    .line 313
    .end local v0           #accountAndLibrary:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/accounts/Account;Lcom/google/android/finsky/library/AccountLibrary;>;"
    .end local v1           #appEntry:Lcom/google/android/finsky/library/LibraryAppEntry;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #result:Ljava/util/List;,"Ljava/util/List<Landroid/accounts/Account;>;"
    :catchall_35
    move-exception v4

    monitor-exit p0

    throw v4

    .line 320
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #result:Ljava/util/List;,"Ljava/util/List<Landroid/accounts/Account;>;"
    :cond_38
    monitor-exit p0

    return-object v3
.end method

.method public declared-synchronized hasSubscriptions()Z
    .registers 4

    .prologue
    .line 358
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/google/android/finsky/library/Libraries;->mLibraries:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 359
    .local v0, accountAndLibrary:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/accounts/Account;Lcom/google/android/finsky/library/AccountLibrary;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/library/AccountLibrary;

    invoke-virtual {v2}, Lcom/google/android/finsky/library/AccountLibrary;->getAppSubscriptionsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_2c

    move-result v2

    if-nez v2, :cond_b

    .line 360
    const/4 v2, 0x1

    .line 363
    .end local v0           #accountAndLibrary:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/accounts/Account;Lcom/google/android/finsky/library/AccountLibrary;>;"
    :goto_28
    monitor-exit p0

    return v2

    :cond_2a
    const/4 v2, 0x0

    goto :goto_28

    .line 358
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_2c
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized isLoaded()Z
    .registers 3

    .prologue
    .line 87
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/finsky/library/Libraries;->mLoadedAccountHash:I

    iget-object v1, p0, Lcom/google/android/finsky/library/Libraries;->mAccounts:Lcom/google/android/finsky/library/Accounts;

    invoke-interface {v1}, Lcom/google/android/finsky/library/Accounts;->getAccounts()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/finsky/library/Libraries;->computeAccountHash(Ljava/util/List;)I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_14

    move-result v1

    if-ne v0, v1, :cond_12

    const/4 v0, 0x1

    :goto_10
    monitor-exit p0

    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_10

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/android/finsky/library/LibraryEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 397
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public declared-synchronized load(Ljava/lang/Runnable;)V
    .registers 16
    .parameter "callback"

    .prologue
    const/4 v1, 0x1

    .line 127
    monitor-enter p0

    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/finsky/library/Libraries;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 128
    iget-object v0, p0, Lcom/google/android/finsky/library/Libraries;->mNotificationHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_4d

    .line 200
    :cond_d
    :goto_d
    monitor-exit p0

    return-void

    .line 132
    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/google/android/finsky/library/Libraries;->mLoadingCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    iget-object v0, p0, Lcom/google/android/finsky/library/Libraries;->mLoadingCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v1, :cond_d

    .line 138
    iget-object v0, p0, Lcom/google/android/finsky/library/Libraries;->mAccounts:Lcom/google/android/finsky/library/Accounts;

    invoke-interface {v0}, Lcom/google/android/finsky/library/Accounts;->getAccounts()Ljava/util/List;

    move-result-object v7

    .line 139
    .local v7, accounts:Ljava/util/List;,"Ljava/util/List<Landroid/accounts/Account;>;"
    invoke-direct {p0, v7}, Lcom/google/android/finsky/library/Libraries;->computeAccountHash(Ljava/util/List;)I

    move-result v5

    .line 143
    .local v5, accountsHash:I
    const/4 v9, 0x0

    .line 144
    .local v9, librariesToUnload:Ljava/util/List;,"Ljava/util/List<Landroid/accounts/Account;>;"
    iget-object v0, p0, Lcom/google/android/finsky/library/Libraries;->mLibraries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_31
    :goto_31
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    .line 145
    .local v2, account:Landroid/accounts/Account;
    if-nez v9, :cond_43

    .line 146
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v9

    .line 148
    :cond_43
    invoke-interface {v7, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 149
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4c
    .catchall {:try_start_f .. :try_end_4c} :catchall_4d

    goto :goto_31

    .line 127
    .end local v2           #account:Landroid/accounts/Account;
    .end local v5           #accountsHash:I
    .end local v7           #accounts:Ljava/util/List;,"Ljava/util/List<Landroid/accounts/Account;>;"
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v9           #librariesToUnload:Ljava/util/List;,"Ljava/util/List<Landroid/accounts/Account;>;"
    :catchall_4d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 152
    .restart local v5       #accountsHash:I
    .restart local v7       #accounts:Ljava/util/List;,"Ljava/util/List<Landroid/accounts/Account;>;"
    .restart local v8       #i$:Ljava/util/Iterator;
    .restart local v9       #librariesToUnload:Ljava/util/List;,"Ljava/util/List<Landroid/accounts/Account;>;"
    :cond_50
    if-eqz v9, :cond_79

    .line 153
    :try_start_52
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_56
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_79

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    .line 154
    .restart local v2       #account:Landroid/accounts/Account;
    const-string v0, "Unloading AccountLibrary for account: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v13}, Lcom/google/android/finsky/utils/FinskyLog;->scrubPii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v1, v12

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    iget-object v0, p0, Lcom/google/android/finsky/library/Libraries;->mLibraries:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_56

    .line 161
    .end local v2           #account:Landroid/accounts/Account;
    :cond_79
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 162
    .local v4, librariesToLoad:Ljava/util/List;,"Ljava/util/List<Landroid/accounts/Account;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_81
    :goto_81
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    .line 163
    .restart local v2       #account:Landroid/accounts/Account;
    iget-object v0, p0, Lcom/google/android/finsky/library/Libraries;->mLibraries:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_81

    .line 164
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    invoke-direct {p0, v2}, Lcom/google/android/finsky/library/Libraries;->setupAccountLibrary(Landroid/accounts/Account;)Lcom/google/android/finsky/library/AccountLibrary;

    move-result-object v6

    .line 166
    .local v6, accountLibrary:Lcom/google/android/finsky/library/AccountLibrary;
    iget-object v0, p0, Lcom/google/android/finsky/library/Libraries;->mLibraries:Ljava/util/Map;

    invoke-interface {v0, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_81

    .line 171
    .end local v2           #account:Landroid/accounts/Account;
    .end local v6           #accountLibrary:Lcom/google/android/finsky/library/AccountLibrary;
    :cond_a2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_b2

    .line 172
    invoke-direct {p0}, Lcom/google/android/finsky/library/Libraries;->fireAllLibrariesLoaded()V

    .line 173
    invoke-direct {p0}, Lcom/google/android/finsky/library/Libraries;->runAndClearLoadingCallbacks()V

    .line 174
    iput v5, p0, Lcom/google/android/finsky/library/Libraries;->mLoadedAccountHash:I

    goto/16 :goto_d

    .line 178
    :cond_b2
    const/4 v0, 0x1

    new-array v3, v0, [I

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput v1, v3, v0

    .line 179
    .local v3, loadedLibrariesCount:[I
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_bd
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    .line 180
    .restart local v2       #account:Landroid/accounts/Account;
    iget-object v0, p0, Lcom/google/android/finsky/library/Libraries;->mLibraries:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/finsky/library/AccountLibrary;

    .line 181
    .local v10, library:Lcom/google/android/finsky/library/AccountLibrary;
    new-instance v11, Lcom/google/android/finsky/library/LibraryLoader;

    iget-object v0, p0, Lcom/google/android/finsky/library/Libraries;->mSQLiteLibrary:Lcom/google/android/finsky/library/SQLiteLibrary;

    iget-object v1, p0, Lcom/google/android/finsky/library/Libraries;->mNotificationHandler:Landroid/os/Handler;

    iget-object v12, p0, Lcom/google/android/finsky/library/Libraries;->mBackgroundHandler:Landroid/os/Handler;

    invoke-direct {v11, v0, v10, v1, v12}, Lcom/google/android/finsky/library/LibraryLoader;-><init>(Lcom/google/android/finsky/library/SQLiteLibrary;Lcom/google/android/finsky/library/AccountLibrary;Landroid/os/Handler;Landroid/os/Handler;)V

    .line 183
    .local v11, loader:Lcom/google/android/finsky/library/LibraryLoader;
    new-instance v0, Lcom/google/android/finsky/library/Libraries$2;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/library/Libraries$2;-><init>(Lcom/google/android/finsky/library/Libraries;Landroid/accounts/Account;[ILjava/util/List;I)V

    invoke-virtual {v11, v0}, Lcom/google/android/finsky/library/LibraryLoader;->load(Ljava/lang/Runnable;)V
    :try_end_e5
    .catchall {:try_start_52 .. :try_end_e5} :catchall_4d

    goto :goto_bd
.end method

.method public remove(Lcom/google/android/finsky/library/LibraryEntry;)V
    .registers 3
    .parameter "entry"

    .prologue
    .line 378
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public declared-synchronized removeListener(Lcom/google/android/finsky/library/Libraries$Listener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 80
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/finsky/library/Libraries;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 81
    monitor-exit p0

    return-void

    .line 80
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized size()I
    .registers 5

    .prologue
    .line 383
    monitor-enter p0

    const/4 v2, 0x0

    .line 384
    .local v2, size:I
    :try_start_2
    iget-object v3, p0, Lcom/google/android/finsky/library/Libraries;->mLibraries:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/library/AccountLibrary;

    .line 385
    .local v0, accountLibrary:Lcom/google/android/finsky/library/AccountLibrary;
    invoke-virtual {v0}, Lcom/google/android/finsky/library/AccountLibrary;->size()I
    :try_end_1b
    .catchall {:try_start_2 .. :try_end_1b} :catchall_20

    move-result v3

    add-int/2addr v2, v3

    goto :goto_c

    .line 387
    .end local v0           #accountLibrary:Lcom/google/android/finsky/library/AccountLibrary;
    :cond_1e
    monitor-exit p0

    return v2

    .line 383
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_20
    move-exception v3

    monitor-exit p0

    throw v3
.end method
