.class public Lcom/sec/android/app/myfiles/AllFileBrowserThumb;
.super Landroid/app/Activity;
.source "AllFileBrowserThumb.java"


# static fields
.field public static mLoader:Lcom/sec/android/app/myfiles/MediaLoader;

.field public static sMyThis:Lcom/sec/android/app/myfiles/AllFileBrowserThumb;


# instance fields
.field public a:Landroid/app/Activity;

.field public directoryEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/myfiles/SimpleItem;",
            ">;"
        }
    .end annotation
.end field

.field private mAdapter:Lcom/sec/android/app/myfiles/ListAdapterThumb;

.field private mCurrentFolder:Ljava/lang/String;

.field private mCurrentSortBy:I

.field private mGrid:Landroid/widget/GridView;

.field private mHandler:Landroid/os/Handler;

.field private mHomeBtn:Landroid/view/View;

.field private mHomeDirectory:Ljava/lang/String;

.field private mInitRunnable:Ljava/lang/Runnable;

.field private mLastModifiedTime:J

.field private mListPositionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadingHandler:Landroid/os/Handler;

.field private mLoadingThread:Ljava/lang/Thread;

.field private mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mPleaseWaitString:Ljava/lang/String;

.field private mSdIcon:Landroid/widget/ImageView;

.field public mThreadState:I

.field private mTitlePath:Landroid/widget/TextView;

.field private mToast:Landroid/widget/Toast;

.field private mUpBtn:Landroid/view/View;

.field private mWaitProgressDlg:Landroid/app/ProgressDialog;

.field public mWaitingHandler:Landroid/os/Handler;

.field public tempDirectoryEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/myfiles/SimpleItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 109
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->sMyThis:Lcom/sec/android/app/myfiles/AllFileBrowserThumb;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 107
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->directoryEntries:Ljava/util/List;

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->tempDirectoryEntries:Ljava/util/List;

    .line 141
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mCurrentSortBy:I

    .line 145
    iput-object v2, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mToast:Landroid/widget/Toast;

    .line 149
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mLastModifiedTime:J

    .line 153
    iput-object v2, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mHomeDirectory:Ljava/lang/String;

    .line 161
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mHandler:Landroid/os/Handler;

    .line 185
    iput-object v2, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mWaitProgressDlg:Landroid/app/ProgressDialog;

    .line 221
    const/16 v0, 0x14

    iput v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mThreadState:I

    .line 225
    new-instance v0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/myfiles/AllFileBrowserThumb$1;-><init>(Lcom/sec/android/app/myfiles/AllFileBrowserThumb;)V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mInitRunnable:Ljava/lang/Runnable;

    .line 526
    new-instance v0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb$11;

    invoke-direct {v0, p0}, Lcom/sec/android/app/myfiles/AllFileBrowserThumb$11;-><init>(Lcom/sec/android/app/myfiles/AllFileBrowserThumb;)V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mLoadingHandler:Landroid/os/Handler;

    .line 615
    new-instance v0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb$12;

    invoke-direct {v0, p0}, Lcom/sec/android/app/myfiles/AllFileBrowserThumb$12;-><init>(Lcom/sec/android/app/myfiles/AllFileBrowserThumb;)V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 774
    new-instance v0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb$14;

    invoke-direct {v0, p0}, Lcom/sec/android/app/myfiles/AllFileBrowserThumb$14;-><init>(Lcom/sec/android/app/myfiles/AllFileBrowserThumb;)V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mWaitingHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/myfiles/AllFileBrowserThumb;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->browseToFolder()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/myfiles/AllFileBrowserThumb;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->goToHomeDirectory()V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/app/myfiles/AllFileBrowserThumb;)Lcom/sec/android/app/myfiles/ListAdapterThumb;
    .registers 2
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mAdapter:Lcom/sec/android/app/myfiles/ListAdapterThumb;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/myfiles/AllFileBrowserThumb;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->updateAdapter()V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/android/app/myfiles/AllFileBrowserThumb;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mInitRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/myfiles/AllFileBrowserThumb;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->upOneLevel()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/myfiles/AllFileBrowserThumb;)Landroid/widget/GridView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mGrid:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/myfiles/AllFileBrowserThumb;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mCurrentFolder:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/myfiles/AllFileBrowserThumb;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mListPositionMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/myfiles/AllFileBrowserThumb;ILjava/lang/String;Z)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 107
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->startManagedFileBrowser(ILjava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/app/myfiles/AllFileBrowserThumb;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 107
    iget v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mCurrentSortBy:I

    return v0
.end method

.method static synthetic access$702(Lcom/sec/android/app/myfiles/AllFileBrowserThumb;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput p1, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mCurrentSortBy:I

    return p1
.end method

.method static synthetic access$800(Lcom/sec/android/app/myfiles/AllFileBrowserThumb;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mLoadingHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/myfiles/AllFileBrowserThumb;[Ljava/io/File;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->fill([Ljava/io/File;)V

    return-void
.end method

.method private browseToFolder()V
    .registers 2

    .prologue
    .line 452
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mCurrentFolder:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->browseToFolder(Ljava/lang/String;)V

    .line 453
    return-void
.end method

.method private browseToFolder(Ljava/lang/String;)V
    .registers 7
    .parameter "path"

    .prologue
    .line 455
    iget-object v1, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mGrid:Landroid/widget/GridView;

    if-eqz v1, :cond_6

    if-nez p1, :cond_7

    .line 505
    :cond_6
    :goto_6
    return-void

    .line 458
    :cond_7
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->showWaitProgressDialog(Z)V

    .line 459
    iget-object v1, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mAdapter:Lcom/sec/android/app/myfiles/ListAdapterThumb;

    if-nez v1, :cond_1c

    .line 460
    new-instance v1, Lcom/sec/android/app/myfiles/ListAdapterThumb;

    sget-object v2, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->sMyThis:Lcom/sec/android/app/myfiles/AllFileBrowserThumb;

    iget-object v3, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mGrid:Landroid/widget/GridView;

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/android/app/myfiles/ListAdapterThumb;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/widget/GridView;)V

    iput-object v1, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mAdapter:Lcom/sec/android/app/myfiles/ListAdapterThumb;

    .line 463
    :cond_1c
    iput-object p1, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mCurrentFolder:Ljava/lang/String;

    .line 464
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/myfiles/Util/SharedDataStore;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mCurrentFolder:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->setCurrentDirectory(Ljava/lang/String;)V

    .line 465
    invoke-direct {p0, p1}, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->setTitlePath(Ljava/lang/String;)V

    .line 466
    invoke-direct {p0, p1}, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->setToolbarBtn(Ljava/lang/String;)V

    .line 467
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 468
    .local v0, dir:Ljava/io/File;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/sec/android/app/myfiles/AllFileBrowserThumb$10;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/app/myfiles/AllFileBrowserThumb$10;-><init>(Lcom/sec/android/app/myfiles/AllFileBrowserThumb;Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mLoadingThread:Ljava/lang/Thread;

    .line 498
    iget-object v1, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mLoadingThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 500
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_53

    .line 501
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mLastModifiedTime:J

    .line 503
    :cond_53
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/myfiles/Util/SharedDataStore;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mLastModifiedTime:J

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->setLastModifiedTime(J)V

    goto :goto_6
.end method

.method private createFolder()V
    .registers 4

    .prologue
    .line 669
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 670
    const-string v1, "uri"

    iget-object v2, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mCurrentFolder:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 671
    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->startActivity(Landroid/content/Intent;)V

    .line 672
    return-void
.end method

.method private details(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 739
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/myfiles/activity/DetailsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 740
    const-string v1, "uri"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 741
    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->startActivity(Landroid/content/Intent;)V

    .line 742
    return-void
.end method

.method private declared-synchronized fill([Ljava/io/File;)V
    .registers 16
    .parameter "files"

    .prologue
    .line 650
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->tempDirectoryEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 651
    move-object v10, p1

    .local v10, arr$:[Ljava/io/File;
    array-length v12, v10

    .local v12, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    :goto_9
    if-ge v11, v12, :cond_47

    aget-object v2, v10, v11

    .line 652
    .local v2, currentFile:Ljava/io/File;
    if-eqz v2, :cond_41

    .line 653
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/myfiles/MediaFile;->needThumbnail(Ljava/lang/String;)Z

    move-result v9

    .line 654
    .local v9, isImage:Z
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/myfiles/Utils;->isHiddenItem(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_41

    .line 655
    iget-object v13, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->tempDirectoryEntries:Ljava/util/List;

    new-instance v0, Lcom/sec/android/app/myfiles/SimpleItem;

    new-instance v3, Lcom/sec/android/app/myfiles/SimpleIcon;

    invoke-direct {p0, v2}, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->getIconByType(Ljava/io/File;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {v3, v2, v1}, Lcom/sec/android/app/myfiles/SimpleIcon;-><init>(Ljava/io/File;Landroid/graphics/drawable/Drawable;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_44

    sget-object v7, Lcom/sec/android/app/myfiles/SimpleItem$ItemType;->FILE:Lcom/sec/android/app/myfiles/SimpleItem$ItemType;

    :goto_39
    const/4 v8, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/app/myfiles/SimpleItem;-><init>(Landroid/content/Context;Ljava/io/File;Lcom/sec/android/app/myfiles/SimpleIcon;ZZZLcom/sec/android/app/myfiles/SimpleItem$ItemType;ZZ)V

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 651
    .end local v9           #isImage:Z
    :cond_41
    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    .line 655
    .restart local v9       #isImage:Z
    :cond_44
    sget-object v7, Lcom/sec/android/app/myfiles/SimpleItem$ItemType;->FOLDER:Lcom/sec/android/app/myfiles/SimpleItem$ItemType;
    :try_end_46
    .catchall {:try_start_1 .. :try_end_46} :catchall_49

    goto :goto_39

    .line 662
    .end local v2           #currentFile:Ljava/io/File;
    .end local v9           #isImage:Z
    :cond_47
    monitor-exit p0

    return-void

    .line 650
    .end local v10           #arr$:[Ljava/io/File;
    .end local v11           #i$:I
    .end local v12           #len$:I
    :catchall_49
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getIconByType(Ljava/io/File;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .parameter "f"

    .prologue
    .line 666
    invoke-static {p1, p0}, Lcom/sec/android/app/myfiles/MediaFile;->getLargeIconDrawable(Ljava/io/File;Landroid/app/Activity;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private goToHomeDirectory()V
    .registers 2

    .prologue
    .line 446
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mListPositionMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 447
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mHomeDirectory:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mCurrentFolder:Ljava/lang/String;

    .line 448
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mInitRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 450
    return-void
.end method

.method private hasItem()Z
    .registers 3

    .prologue
    .line 715
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mCurrentFolder:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 716
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 717
    iget-object v1, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mAdapter:Lcom/sec/android/app/myfiles/ListAdapterThumb;

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mAdapter:Lcom/sec/android/app/myfiles/ListAdapterThumb;

    invoke-virtual {v1}, Lcom/sec/android/app/myfiles/ListAdapterThumb;->getCount()I

    move-result v1

    if-nez v1, :cond_2d

    .line 718
    :cond_25
    const v1, 0x7f09003e

    invoke-direct {p0, v1}, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->showToast(I)V

    .line 719
    const/4 v1, 0x0

    .line 722
    :goto_2c
    return v1

    :cond_2d
    const/4 v1, 0x1

    goto :goto_2c
.end method

.method private initToolbar()V
    .registers 6

    .prologue
    const v4, 0x7f0c003e

    const v2, 0x7f0c003c

    const v3, 0x7f0c0037

    .line 262
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->a:Landroid/app/Activity;

    const v1, 0x7f0c0040

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mTitlePath:Landroid/widget/TextView;

    .line 263
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mTitlePath:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 264
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mTitlePath:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 265
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->a:Landroid/app/Activity;

    const v1, 0x7f0c003f

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mSdIcon:Landroid/widget/ImageView;

    .line 266
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->a:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mHomeBtn:Landroid/view/View;

    .line 267
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->a:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;

    check-cast v0, Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;

    const v1, 0x7f0200c5

    const v2, 0x7f09000c

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;->setImageAndText(II)V

    .line 269
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mHomeBtn:Landroid/view/View;

    const v1, 0x7f0200c6

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 270
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->a:Landroid/app/Activity;

    invoke-virtual {v0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mUpBtn:Landroid/view/View;

    .line 272
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->a:Landroid/app/Activity;

    invoke-virtual {v0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;

    check-cast v0, Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;

    const v1, 0x7f0200ca

    const v2, 0x7f09000d

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;->setImageAndText(II)V

    .line 274
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mUpBtn:Landroid/view/View;

    const v1, 0x7f0200c7

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 275
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->setToolbarClickListener()V

    .line 276
    return-void
.end method

.method private rename(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 725
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/myfiles/activity/RenameActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 726
    const-string v1, "uri"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 727
    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->startActivity(Landroid/content/Intent;)V

    .line 728
    return-void
.end method

.method private setTitlePath(Ljava/lang/String;)V
    .registers 5
    .parameter "path"

    .prologue
    const/4 v2, 0x3

    .line 570
    invoke-static {p1}, Lcom/sec/android/app/myfiles/Utils;->enableSdIconOnTitlePath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 571
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mSdIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 572
    const v0, 0x7f0200a4

    invoke-virtual {p0, v2, v0}, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->setFeatureDrawableResource(II)V

    .line 578
    :goto_13
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mTitlePath:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/sec/android/app/myfiles/Utils;->getShowingPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 579
    return-void

    .line 575
    :cond_1d
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mSdIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 576
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V

    goto :goto_13
.end method

.method private setToolbarBtn(Ljava/lang/String;)V
    .registers 7
    .parameter "path"

    .prologue
    const v4, 0x7f0c003e

    const v3, 0x7f0c003c

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 557
    invoke-static {p1}, Lcom/sec/android/app/myfiles/Utils;->isRootFolder(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 558
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->a:Landroid/app/Activity;

    invoke-virtual {v0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;

    check-cast v0, Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;->setEnabled(Z)V

    .line 563
    :goto_1b
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mHomeDirectory:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 564
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->a:Landroid/app/Activity;

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;

    check-cast v0, Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;->setEnabled(Z)V

    .line 568
    :goto_30
    return-void

    .line 560
    :cond_31
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->a:Landroid/app/Activity;

    invoke-virtual {v0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;

    check-cast v0, Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;->setEnabled(Z)V

    goto :goto_1b

    .line 566
    :cond_3f
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->a:Landroid/app/Activity;

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;

    check-cast v0, Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;->setEnabled(Z)V

    goto :goto_30
.end method

.method private setToolbarClickListener()V
    .registers 3

    .prologue
    .line 278
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mHomeBtn:Landroid/view/View;

    if-eqz v0, :cond_e

    .line 279
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mHomeBtn:Landroid/view/View;

    new-instance v1, Lcom/sec/android/app/myfiles/AllFileBrowserThumb$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/myfiles/AllFileBrowserThumb$2;-><init>(Lcom/sec/android/app/myfiles/AllFileBrowserThumb;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    :cond_e
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mUpBtn:Landroid/view/View;

    if-eqz v0, :cond_1c

    .line 288
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mUpBtn:Landroid/view/View;

    new-instance v1, Lcom/sec/android/app/myfiles/AllFileBrowserThumb$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/myfiles/AllFileBrowserThumb$3;-><init>(Lcom/sec/android/app/myfiles/AllFileBrowserThumb;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    :cond_1c
    return-void
.end method

.method private share(Ljava/lang/String;)V
    .registers 5
    .parameter "path"

    .prologue
    .line 730
    const/4 v1, 0x0

    .line 731
    .local v1, uri:Landroid/net/Uri;
    invoke-static {p1, p0}, Lcom/sec/android/app/myfiles/FileUtils;->pathToUri(Ljava/lang/String;Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_10

    .line 732
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 733
    :cond_10
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 734
    .local v0, intent:Landroid/content/Intent;
    invoke-static {p1, p0}, Lcom/sec/android/app/myfiles/MediaFile;->getShareMimeType(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 735
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 736
    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->startActivity(Landroid/content/Intent;)V

    .line 737
    return-void
.end method

.method private showToast(I)V
    .registers 3
    .parameter "resId"

    .prologue
    .line 297
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_11

    .line 298
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mToast:Landroid/widget/Toast;

    .line 303
    :goto_b
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 304
    return-void

    .line 301
    :cond_11
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(I)V

    goto :goto_b
.end method

.method private startManagedFileBrowser(I)V
    .registers 4
    .parameter "operation"

    .prologue
    .line 693
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->hasItem()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 694
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mCurrentFolder:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->startManagedFileBrowser(ILjava/lang/String;Z)V

    .line 696
    :cond_c
    return-void
.end method

.method private startManagedFileBrowser(ILjava/lang/String;Z)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 685
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 686
    const-string v1, "uri"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 687
    const-string v1, "operation"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 688
    const-string v1, "item_select_complete"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 689
    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->startActivityForResult(Landroid/content/Intent;I)V

    .line 690
    return-void
.end method

.method private startRenameFileBrowser()V
    .registers 4

    .prologue
    .line 699
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->hasItem()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 700
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/myfiles/RenameFileBrowser;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 701
    const-string v1, "uri"

    iget-object v2, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mCurrentFolder:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 702
    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->startActivity(Landroid/content/Intent;)V

    .line 704
    :cond_17
    return-void
.end method

.method private startSendAppList()V
    .registers 3

    .prologue
    .line 707
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/myfiles/SendAppListDialogActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 708
    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->startActivity(Landroid/content/Intent;)V

    .line 709
    return-void
.end method

.method private startSettings()V
    .registers 3

    .prologue
    .line 711
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/myfiles/activity/SettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 712
    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->startActivityForResult(Landroid/content/Intent;I)V

    .line 713
    return-void
.end method

.method private upOneLevel()V
    .registers 3

    .prologue
    .line 440
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mListPositionMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mCurrentFolder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mCurrentFolder:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/myfiles/Utils;->getFolderParent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mCurrentFolder:Ljava/lang/String;

    .line 442
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mInitRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 444
    return-void
.end method

.method private declared-synchronized updateAdapter()V
    .registers 3

    .prologue
    .line 602
    monitor-enter p0

    :try_start_1
    const-string v0, "MyFiles"

    const-string v1, "ThumbBrowser-updaetAdapter => start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mAdapter:Lcom/sec/android/app/myfiles/ListAdapterThumb;

    iget-object v1, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->tempDirectoryEntries:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/ListAdapterThumb;->setListItems(Ljava/util/List;)V

    .line 604
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mGrid:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mAdapter:Lcom/sec/android/app/myfiles/ListAdapterThumb;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 605
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mAdapter:Lcom/sec/android/app/myfiles/ListAdapterThumb;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/ListAdapterThumb;->notifyDataSetChanged()V

    .line 606
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mAdapter:Lcom/sec/android/app/myfiles/ListAdapterThumb;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/ListAdapterThumb;->start()V

    .line 607
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mGrid:Landroid/widget/GridView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelection(I)V

    .line 608
    const-string v0, "MyFiles"

    const-string v1, "ThumbBrowser-updaetAdapter => finish"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->tempDirectoryEntries:Ljava/util/List;

    iput-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->directoryEntries:Ljava/util/List;

    .line 610
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->tempDirectoryEntries:Ljava/util/List;
    :try_end_38
    .catchall {:try_start_1 .. :try_end_38} :catchall_3a

    .line 611
    monitor-exit p0

    return-void

    .line 602
    :catchall_3a
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 8
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    const/4 v2, -0x1

    .line 900
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 901
    const/4 v1, 0x6

    if-ne p1, v1, :cond_17

    .line 902
    if-ne p2, v2, :cond_16

    .line 903
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/myfiles/Util/SharedDataStore;

    move-result-object v1

    const-wide/16 v2, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->setLastModifiedTime(J)V

    .line 916
    :cond_16
    :goto_16
    return-void

    .line 906
    :cond_17
    const/4 v1, 0x3

    if-eq p1, v1, :cond_1d

    const/4 v1, 0x4

    if-ne p1, v1, :cond_16

    .line 907
    :cond_1d
    if-ne p2, v2, :cond_16

    .line 908
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 909
    .local v0, dstFolder:Ljava/lang/String;
    if-eqz v0, :cond_16

    .line 910
    invoke-static {p0}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/myfiles/Util/SharedDataStore;

    move-result-object v1

    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->setCurrentDirectory(Ljava/lang/String;)V

    .line 911
    invoke-static {p0}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/myfiles/Util/SharedDataStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->getCurrentDirectory()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mCurrentFolder:Ljava/lang/String;

    goto :goto_16
.end method

.method public onBackPressed()V
    .registers 4

    .prologue
    .line 429
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mCurrentFolder:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/myfiles/Utils;->isRootFolder(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 430
    const-string v0, "MyFiles"

    const-string v1, "AllFileThumb:OnBackPressed - upOneLevel"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->upOneLevel()V

    .line 438
    :goto_12
    return-void

    .line 433
    :cond_13
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/myfiles/Util/SharedDataStore;

    move-result-object v0

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->setLastModifiedTime(J)V

    .line 434
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/myfiles/Util/SharedDataStore;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->setCurrentDirectory(Ljava/lang/String;)V

    .line 435
    const-string v0, "MyFiles"

    const-string v1, "AllFileThumb:OnBackPressed - super.onBackPressed()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_12
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 9
    .parameter "item"

    .prologue
    const/4 v6, 0x1

    .line 330
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v3

    check-cast v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 331
    .local v3, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v4, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mAdapter:Lcom/sec/android/app/myfiles/ListAdapterThumb;

    iget v5, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v4, v5}, Lcom/sec/android/app/myfiles/ListAdapterThumb;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/myfiles/SimpleItem;

    .line 332
    .local v1, contextItem:Lcom/sec/android/app/myfiles/SimpleItem;
    if-nez v1, :cond_14

    .line 378
    :goto_13
    return v6

    .line 335
    :cond_14
    invoke-virtual {v1}, Lcom/sec/android/app/myfiles/SimpleItem;->getFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 336
    .local v2, file:Ljava/lang/String;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_78

    goto :goto_13

    .line 338
    :pswitch_24
    invoke-direct {p0, v2}, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->share(Ljava/lang/String;)V

    goto :goto_13

    .line 341
    :pswitch_28
    invoke-direct {p0, v2}, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->rename(Ljava/lang/String;)V

    goto :goto_13

    .line 344
    :pswitch_2c
    iget-object v4, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mListPositionMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 345
    const/4 v4, 0x3

    invoke-direct {p0, v4, v2, v6}, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->startManagedFileBrowser(ILjava/lang/String;Z)V

    goto :goto_13

    .line 348
    :pswitch_36
    iget-object v4, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mListPositionMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 349
    const/4 v4, 0x4

    invoke-direct {p0, v4, v2, v6}, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->startManagedFileBrowser(ILjava/lang/String;Z)V

    goto :goto_13

    .line 352
    :pswitch_40
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 353
    .local v0, b:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f090003

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 354
    const v4, 0x7f09004e

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 355
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 356
    const v4, 0x7f090011

    new-instance v5, Lcom/sec/android/app/myfiles/AllFileBrowserThumb$4;

    invoke-direct {v5, p0, v2}, Lcom/sec/android/app/myfiles/AllFileBrowserThumb$4;-><init>(Lcom/sec/android/app/myfiles/AllFileBrowserThumb;Ljava/lang/String;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 364
    const v4, 0x7f090012

    new-instance v5, Lcom/sec/android/app/myfiles/AllFileBrowserThumb$5;

    invoke-direct {v5, p0}, Lcom/sec/android/app/myfiles/AllFileBrowserThumb$5;-><init>(Lcom/sec/android/app/myfiles/AllFileBrowserThumb;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 369
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto :goto_13

    .line 373
    .end local v0           #b:Landroid/app/AlertDialog$Builder;
    :pswitch_73
    invoke-direct {p0, v2}, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->details(Ljava/lang/String;)V

    goto :goto_13

    .line 336
    nop

    :pswitch_data_78
    .packed-switch 0x0
        :pswitch_24
        :pswitch_28
        :pswitch_40
        :pswitch_2c
        :pswitch_36
        :pswitch_73
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "icicle"

    .prologue
    .line 238
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 239
    const-string v0, "MyFiles"

    const-string v1, "AllFileThumb:onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->requestWindowFeature(I)Z

    .line 241
    const v0, 0x7f03000e

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->setContentView(I)V

    .line 242
    new-instance v0, Lcom/sec/android/app/myfiles/MediaLoader;

    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x5

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/android/app/myfiles/MediaLoader;-><init>(Landroid/content/Context;Landroid/content/ContentResolver;I)V

    sput-object v0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mLoader:Lcom/sec/android/app/myfiles/MediaLoader;

    .line 243
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->getParent()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->a:Landroid/app/Activity;

    .line 244
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->initToolbar()V

    .line 245
    const v0, 0x7f090033

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mPleaseWaitString:Ljava/lang/String;

    .line 246
    const v0, 0x7f0c0016

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mGrid:Landroid/widget/GridView;

    .line 247
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mGrid:Landroid/widget/GridView;

    const v1, 0x7f0c000e

    invoke-virtual {p0, v1}, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setEmptyView(Landroid/view/View;)V

    .line 248
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mGrid:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 250
    sput-object p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->sMyThis:Lcom/sec/android/app/myfiles/AllFileBrowserThumb;

    .line 251
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mListPositionMap:Ljava/util/HashMap;

    .line 252
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mGrid:Landroid/widget/GridView;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->registerForContextMenu(Landroid/view/View;)V

    .line 253
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 9
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v4, 0x0

    .line 306
    move-object v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 307
    .local v0, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v2, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mAdapter:Lcom/sec/android/app/myfiles/ListAdapterThumb;

    iget v3, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v2, v3}, Lcom/sec/android/app/myfiles/ListAdapterThumb;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/myfiles/SimpleItem;

    .line 308
    .local v1, item:Lcom/sec/android/app/myfiles/SimpleItem;
    if-nez v1, :cond_11

    .line 328
    :goto_10
    return-void

    .line 311
    :cond_11
    invoke-virtual {v1}, Lcom/sec/android/app/myfiles/SimpleItem;->getText1()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 314
    invoke-virtual {v1}, Lcom/sec/android/app/myfiles/SimpleItem;->isFile()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sec/android/app/myfiles/SimpleItem;->getFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/app/myfiles/drm/DrmUtils;->isForwardable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 315
    const v2, 0x7f090001

    invoke-interface {p1, v4, v4, v4, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 323
    :cond_36
    const/4 v2, 0x2

    const v3, 0x7f090003

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 324
    const/4 v2, 0x4

    const v3, 0x7f090006

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 325
    const/4 v2, 0x3

    const v3, 0x7f090007

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 326
    const/4 v2, 0x1

    const v3, 0x7f090008

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 327
    const/4 v2, 0x5

    const v3, 0x7f090025

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_10
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 7
    .parameter "id"

    .prologue
    const v4, 0x7f090012

    .line 388
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 389
    .local v0, dialog:Landroid/app/AlertDialog$Builder;
    packed-switch p1, :pswitch_data_46

    .line 426
    :goto_b
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1

    .line 391
    :pswitch_10
    const v1, 0x7f090004

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 392
    const/high16 v1, 0x7f06

    const/4 v2, 0x2

    new-instance v3, Lcom/sec/android/app/myfiles/AllFileBrowserThumb$6;

    invoke-direct {v3, p0}, Lcom/sec/android/app/myfiles/AllFileBrowserThumb$6;-><init>(Lcom/sec/android/app/myfiles/AllFileBrowserThumb;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 399
    new-instance v1, Lcom/sec/android/app/myfiles/AllFileBrowserThumb$7;

    invoke-direct {v1, p0}, Lcom/sec/android/app/myfiles/AllFileBrowserThumb$7;-><init>(Lcom/sec/android/app/myfiles/AllFileBrowserThumb;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_b

    .line 407
    :pswitch_2a
    const v1, 0x7f090005

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 408
    const v1, 0x7f060001

    iget v2, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mCurrentSortBy:I

    new-instance v3, Lcom/sec/android/app/myfiles/AllFileBrowserThumb$8;

    invoke-direct {v3, p0}, Lcom/sec/android/app/myfiles/AllFileBrowserThumb$8;-><init>(Lcom/sec/android/app/myfiles/AllFileBrowserThumb;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 418
    new-instance v1, Lcom/sec/android/app/myfiles/AllFileBrowserThumb$9;

    invoke-direct {v1, p0}, Lcom/sec/android/app/myfiles/AllFileBrowserThumb$9;-><init>(Lcom/sec/android/app/myfiles/AllFileBrowserThumb;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_b

    .line 389
    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_2a
        :pswitch_10
    .end packed-switch
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 828
    const-string v0, "MyFiles"

    const-string v1, "AllFileThumb:onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->showWaitProgressDialog(Z)V

    .line 830
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 831
    return-void
.end method

.method protected onListItemClick(Landroid/widget/GridView;Landroid/view/View;IJ)V
    .registers 15
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 621
    const/4 v4, 0x0

    .line 622
    .local v4, item:Lcom/sec/android/app/myfiles/SimpleItem;
    const/4 v5, 0x0

    .line 624
    .local v5, selectedFileString:Ljava/lang/String;
    :try_start_2
    iget-object v6, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->directoryEntries:Ljava/util/List;

    invoke-interface {v6, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/sec/android/app/myfiles/SimpleItem;

    move-object v4, v0

    .line 625
    invoke-virtual {v4}, Lcom/sec/android/app/myfiles/SimpleItem;->getText1()Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_f} :catch_1c

    move-result-object v5

    .line 631
    const-string v6, ".."

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_21

    .line 632
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->upOneLevel()V

    .line 646
    :goto_1b
    return-void

    .line 626
    :catch_1c
    move-exception v1

    .line 627
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1b

    .line 634
    .end local v1           #e:Ljava/lang/Exception;
    :cond_21
    iget-object v6, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mGrid:Landroid/widget/GridView;

    invoke-virtual {v6}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v2

    .line 635
    .local v2, firstPostion:I
    iget-object v6, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mListPositionMap:Ljava/util/HashMap;

    iget-object v7, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mCurrentFolder:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    invoke-virtual {v4}, Lcom/sec/android/app/myfiles/SimpleItem;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_48

    .line 638
    invoke-virtual {v4}, Lcom/sec/android/app/myfiles/SimpleItem;->getFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 639
    .local v3, folderName:Ljava/lang/String;
    iput-object v3, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mCurrentFolder:Ljava/lang/String;

    .line 640
    iget-object v6, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mInitRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v6}, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1b

    .line 643
    .end local v3           #folderName:Ljava/lang/String;
    :cond_48
    invoke-virtual {v4}, Lcom/sec/android/app/myfiles/SimpleItem;->getFile()Ljava/io/File;

    move-result-object v6

    const/4 v7, 0x0

    iget v8, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mCurrentSortBy:I

    invoke-static {v6, p0, v7, v8}, Lcom/sec/android/app/myfiles/FileUtils;->openFile(Ljava/io/File;Landroid/app/Activity;ZI)V

    goto :goto_1b
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 857
    iget-object v1, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mListPositionMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 858
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_3a

    .line 897
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_11
    return v0

    .line 860
    :pswitch_12
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->startSendAppList()V

    goto :goto_11

    .line 863
    :pswitch_16
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->createFolder()V

    goto :goto_11

    .line 866
    :pswitch_1a
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->startManagedFileBrowser(I)V

    goto :goto_11

    .line 870
    :pswitch_1f
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->startManagedFileBrowser(I)V

    goto :goto_11

    .line 873
    :pswitch_24
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->startManagedFileBrowser(I)V

    goto :goto_11

    .line 876
    :pswitch_29
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->startRenameFileBrowser()V

    goto :goto_11

    .line 879
    :pswitch_2d
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->showDialog(I)V

    goto :goto_11

    .line 882
    :pswitch_32
    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->showDialog(I)V

    goto :goto_11

    .line 892
    :pswitch_36
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->startSettings()V

    goto :goto_11

    .line 858
    :pswitch_data_3a
    .packed-switch 0x7f0c0050
        :pswitch_12
        :pswitch_16
        :pswitch_24
        :pswitch_32
        :pswitch_2d
        :pswitch_1a
        :pswitch_1f
        :pswitch_29
        :pswitch_36
    .end packed-switch
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 814
    const-string v0, "MyFiles"

    const-string v1, "AllFileThumb:onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mAdapter:Lcom/sec/android/app/myfiles/ListAdapterThumb;

    if-eqz v0, :cond_10

    .line 816
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mAdapter:Lcom/sec/android/app/myfiles/ListAdapterThumb;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/ListAdapterThumb;->pause()V

    .line 819
    :cond_10
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 820
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 6
    .parameter "id"
    .parameter "dialog"

    .prologue
    const/4 v2, 0x1

    .line 381
    if-ne p1, v2, :cond_d

    .line 382
    check-cast p2, Landroid/app/AlertDialog;

    .end local p2
    invoke-virtual {p2}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 383
    .local v0, lv:Landroid/widget/ListView;
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 385
    .end local v0           #lv:Landroid/widget/ListView;
    :cond_d
    return-void
.end method

.method public onResume()V
    .registers 6

    .prologue
    .line 787
    const-string v0, "MyFiles"

    const-string v1, "AllFileThumb:onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->setToolbarClickListener()V

    .line 789
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/myfiles/Util/SharedDataStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->getCurrentSortBy()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mCurrentSortBy:I

    .line 790
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/myfiles/Util/SharedDataStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->getCurrentDirectory()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mCurrentFolder:Ljava/lang/String;

    .line 791
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/myfiles/Util/SharedDataStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->getHomeDirectory()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mHomeDirectory:Ljava/lang/String;

    .line 792
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/myfiles/Util/SharedDataStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->getLastModifiedTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mLastModifiedTime:J

    .line 794
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mCurrentFolder:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->setTitlePath(Ljava/lang/String;)V

    .line 795
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mCurrentFolder:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->setToolbarBtn(Ljava/lang/String;)V

    .line 796
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mCurrentFolder:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 797
    iget-object v1, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mAdapter:Lcom/sec/android/app/myfiles/ListAdapterThumb;

    if-eqz v1, :cond_69

    iget-wide v1, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mLastModifiedTime:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_69

    iget-wide v1, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mLastModifiedTime:J

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    cmp-long v0, v1, v3

    if-eqz v0, :cond_8c

    .line 799
    :cond_69
    const-string v0, "MyFiles"

    const-string v1, "refresh!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    sput-object p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->sMyThis:Lcom/sec/android/app/myfiles/AllFileBrowserThumb;

    .line 802
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mGrid:Landroid/widget/GridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 803
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->setNumColumnsByConfiguration(Landroid/content/res/Configuration;)V

    .line 805
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mInitRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 811
    :cond_88
    :goto_88
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 812
    return-void

    .line 807
    :cond_8c
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mAdapter:Lcom/sec/android/app/myfiles/ListAdapterThumb;

    if-eqz v0, :cond_88

    iget v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mThreadState:I

    const/16 v1, 0x16

    if-ne v0, v1, :cond_88

    .line 808
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mAdapter:Lcom/sec/android/app/myfiles/ListAdapterThumb;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/ListAdapterThumb;->start()V

    goto :goto_88
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 823
    const-string v0, "MyFiles"

    const-string v1, "AllFileThumb:onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 826
    return-void
.end method

.method public refreshActivity(Z)V
    .registers 6
    .parameter "goToRoot"

    .prologue
    const/4 v3, 0x0

    .line 746
    const-string v0, "MyFiles"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "allfileThumb-refreshActivity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    if-eqz p1, :cond_27

    .line 749
    invoke-static {}, Lcom/sec/android/app/myfiles/Utils;->getRootFolder()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mCurrentFolder:Ljava/lang/String;

    .line 751
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mWaitingHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 756
    :goto_26
    return-void

    .line 754
    :cond_27
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mWaitingHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_26
.end method

.method public setNumColumnsByConfiguration(Landroid/content/res/Configuration;)V
    .registers 5
    .parameter "newConfig"

    .prologue
    .line 833
    iget-object v1, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mGrid:Landroid/widget/GridView;

    if-eqz v1, :cond_23

    .line 834
    iget-object v1, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mGrid:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getSelectedItemPosition()I

    move-result v0

    .line 835
    .local v0, position:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_13

    .line 836
    iget-object v1, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mGrid:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v0

    .line 839
    :cond_13
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_24

    .line 840
    iget-object v1, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mGrid:Landroid/widget/GridView;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 844
    :goto_1e
    iget-object v1, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mGrid:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setSelection(I)V

    .line 846
    .end local v0           #position:I
    :cond_23
    return-void

    .line 842
    .restart local v0       #position:I
    :cond_24
    iget-object v1, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mGrid:Landroid/widget/GridView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setNumColumns(I)V

    goto :goto_1e
.end method

.method public declared-synchronized showWaitProgressDialog(Ljava/lang/String;Z)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 921
    monitor-enter p0

    :try_start_1
    const-string v0, "MyFiles"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showWaitProgressDialog "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    if-eqz p2, :cond_46

    .line 923
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mWaitProgressDlg:Landroid/app/ProgressDialog;

    if-nez v0, :cond_38

    .line 924
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->getParent()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, p1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mWaitProgressDlg:Landroid/app/ProgressDialog;

    .line 931
    :goto_2c
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mWaitProgressDlg:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/sec/android/app/myfiles/AllFileBrowserThumb$15;

    invoke-direct {v1, p0}, Lcom/sec/android/app/myfiles/AllFileBrowserThumb$15;-><init>(Lcom/sec/android/app/myfiles/AllFileBrowserThumb;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V
    :try_end_36
    .catchall {:try_start_1 .. :try_end_36} :catchall_43

    .line 947
    :cond_36
    :goto_36
    monitor-exit p0

    return-void

    .line 926
    :cond_38
    :try_start_38
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mWaitProgressDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 927
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mWaitProgressDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V
    :try_end_42
    .catchall {:try_start_38 .. :try_end_42} :catchall_43

    goto :goto_2c

    .line 921
    :catchall_43
    move-exception v0

    monitor-exit p0

    throw v0

    .line 943
    :cond_46
    :try_start_46
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mWaitProgressDlg:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_36

    .line 944
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mWaitProgressDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_4f
    .catchall {:try_start_46 .. :try_end_4f} :catchall_43

    goto :goto_36
.end method

.method public showWaitProgressDialog(Z)V
    .registers 3
    .parameter "isShow"

    .prologue
    .line 918
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mPleaseWaitString:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->showWaitProgressDialog(Ljava/lang/String;Z)V

    .line 919
    return-void
.end method