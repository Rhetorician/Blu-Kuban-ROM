.class public Lcom/android/facelock/FaceLockService;
.super Landroid/app/Service;
.source "FaceLockService.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;
.implements Landroid/hardware/SensorEventListener;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/facelock/FaceLockService$InitializeState;
    }
.end annotation


# static fields
.field private static BLACK_SCREEN_CUTOFF:I

.field private static CANCEL_WAIT:I

.field private static DETECT_CUTOFF:I

.field private static FAIL_WAIT:I

.field private static RECOG_CUTOFF:I

.field private static UNLOCK_WAIT:I

.field private static final mInitializeErrorLock:Ljava/lang/Object;

.field private static volatile mInitialized:Z

.field private static final mLock:Ljava/lang/Object;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final binder:Lcom/android/internal/policy/IFaceLockInterface$Stub;

.field final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/android/internal/policy/IFaceLockCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mCamera:Landroid/hardware/Camera;

.field private mCancelButton:Landroid/widget/ImageButton;

.field private volatile mClosingDown:Z

.field private mDone:Z

.field private mFader:Landroid/animation/ValueAnimator;

.field private mFail:Z

.field private mFirstFrameTime:J

.field private mFoundFace:Z

.field private mFrontCameraId:I

.field private mGotFirstFrame:Z

.field private mHandler:Landroid/os/Handler;

.field private mInfoText:Landroid/widget/TextView;

.field private mInitializeFailed:Z

.field private mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mLight:Landroid/hardware/Sensor;

.field private mLockFadeIn:Landroid/animation/ObjectAnimator;

.field private mLockInfoXFade:Landroid/animation/ValueAnimator;

.field private volatile mModelsLoaded:Z

.field private mNeedFrame:Z

.field private mPreview:Lcom/android/facelockutil/Preview;

.field private mPreviewShowing:Z

.field private mProximity:Landroid/hardware/Sensor;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mShowWelcome:Z

.field private mThread:Lcom/android/facelock/ProcessingThread;

.field private volatile mTooClose:Z

.field private volatile mTooDark:Z

.field private mUseLightSensor:Z

.field private mView:Landroid/view/View;

.field private mViewCreated:Z

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/16 v1, 0x7d0

    const/16 v0, 0x2ee

    .line 115
    sput v1, Lcom/android/facelock/FaceLockService;->UNLOCK_WAIT:I

    .line 116
    sput v0, Lcom/android/facelock/FaceLockService;->CANCEL_WAIT:I

    .line 117
    sput v0, Lcom/android/facelock/FaceLockService;->FAIL_WAIT:I

    .line 120
    const/16 v0, 0x4e2

    sput v0, Lcom/android/facelock/FaceLockService;->BLACK_SCREEN_CUTOFF:I

    .line 121
    sput v1, Lcom/android/facelock/FaceLockService;->DETECT_CUTOFF:I

    .line 122
    const/16 v0, 0xfa0

    sput v0, Lcom/android/facelock/FaceLockService;->RECOG_CUTOFF:I

    .line 145
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/facelock/FaceLockService;->mInitialized:Z

    .line 161
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/facelock/FaceLockService;->mLock:Ljava/lang/Object;

    .line 163
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/facelock/FaceLockService;->mInitializeErrorLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 76
    const-string v0, "FaceLockService"

    iput-object v0, p0, Lcom/android/facelock/FaceLockService;->TAG:Ljava/lang/String;

    .line 128
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/facelock/FaceLockService;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 139
    iput v1, p0, Lcom/android/facelock/FaceLockService;->mFrontCameraId:I

    .line 140
    iput-boolean v1, p0, Lcom/android/facelock/FaceLockService;->mPreviewShowing:Z

    .line 146
    iput-boolean v1, p0, Lcom/android/facelock/FaceLockService;->mModelsLoaded:Z

    .line 147
    iput-boolean v1, p0, Lcom/android/facelock/FaceLockService;->mInitializeFailed:Z

    .line 149
    iput-boolean v1, p0, Lcom/android/facelock/FaceLockService;->mGotFirstFrame:Z

    .line 150
    iput-boolean v1, p0, Lcom/android/facelock/FaceLockService;->mFoundFace:Z

    .line 152
    iput-boolean v1, p0, Lcom/android/facelock/FaceLockService;->mNeedFrame:Z

    .line 153
    iput-boolean v1, p0, Lcom/android/facelock/FaceLockService;->mDone:Z

    .line 154
    iput-boolean v1, p0, Lcom/android/facelock/FaceLockService;->mShowWelcome:Z

    .line 164
    iput-boolean v1, p0, Lcom/android/facelock/FaceLockService;->mFail:Z

    .line 820
    new-instance v0, Lcom/android/facelock/FaceLockService$6;

    invoke-direct {v0, p0}, Lcom/android/facelock/FaceLockService$6;-><init>(Lcom/android/facelock/FaceLockService;)V

    iput-object v0, p0, Lcom/android/facelock/FaceLockService;->binder:Lcom/android/internal/policy/IFaceLockInterface$Stub;

    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .prologue
    .line 74
    sget-boolean v0, Lcom/android/facelock/FaceLockService;->mInitialized:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 74
    sput-boolean p0, Lcom/android/facelock/FaceLockService;->mInitialized:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/facelock/FaceLockService;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/facelock/FaceLockService;->getFilesPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/facelock/FaceLockService;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/facelock/FaceLockService;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/facelock/FaceLockService;)Landroid/view/WindowManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/facelock/FaceLockService;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/facelock/FaceLockService;)Landroid/animation/ObjectAnimator;
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/facelock/FaceLockService;->mLockFadeIn:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/facelock/FaceLockService;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/facelock/FaceLockService;->mInfoText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/facelock/FaceLockService;)Landroid/widget/ImageButton;
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/facelock/FaceLockService;->mCancelButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/facelock/FaceLockService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/facelock/FaceLockService;->sendRemoveViewMessage()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/facelock/FaceLockService;Lcom/android/facelock/FaceLockService$InitializeState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/facelock/FaceLockService;->displayIfInitializationError(Lcom/android/facelock/FaceLockService$InitializeState;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/facelock/FaceLockService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/facelock/FaceLockService;->loadGallery()V

    return-void
.end method

.method static synthetic access$400()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 74
    sget-object v0, Lcom/android/facelock/FaceLockService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/facelock/FaceLockService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/android/facelock/FaceLockService;->mDone:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/facelock/FaceLockService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/facelock/FaceLockService;->startShutdown()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/facelock/FaceLockService;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/facelock/FaceLockService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/facelock/FaceLockService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/android/facelock/FaceLockService;->mPreviewShowing:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/facelock/FaceLockService;)Landroid/view/WindowManager$LayoutParams;
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/facelock/FaceLockService;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/facelock/FaceLockService;Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManager$LayoutParams;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/facelock/FaceLockService;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    return-object p1
.end method

.method private closeCamera()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 745
    iget-object v1, p0, Lcom/android/facelock/FaceLockService;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 746
    const/4 v0, 0x0

    .line 747
    .local v0, camera:Landroid/hardware/Camera;
    sget-object v2, Lcom/android/facelock/FaceLockService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 748
    const/4 v1, 0x1

    :try_start_b
    iput-boolean v1, p0, Lcom/android/facelock/FaceLockService;->mDone:Z

    .line 749
    iget-object v0, p0, Lcom/android/facelock/FaceLockService;->mCamera:Landroid/hardware/Camera;

    .line 750
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/facelock/FaceLockService;->mCamera:Landroid/hardware/Camera;

    .line 751
    monitor-exit v2
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_25

    .line 752
    if-eqz v0, :cond_21

    .line 753
    invoke-virtual {v0, v3}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 754
    iget-object v1, p0, Lcom/android/facelock/FaceLockService;->mPreview:Lcom/android/facelockutil/Preview;

    invoke-virtual {v1, v3}, Lcom/android/facelockutil/Preview;->setCamera(Landroid/hardware/Camera;)V

    .line 755
    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 756
    const/4 v0, 0x0

    .line 758
    :cond_21
    invoke-virtual {p0}, Lcom/android/facelock/FaceLockService;->interruptThread()V

    .line 759
    return-void

    .line 751
    :catchall_25
    move-exception v1

    :try_start_26
    monitor-exit v2
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v1
.end method

.method private displayIfInitializationError(Lcom/android/facelock/FaceLockService$InitializeState;)V
    .registers 7
    .parameter "state"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 227
    const/4 v0, 0x0

    .line 228
    .local v0, issueError:Z
    sget-object v3, Lcom/android/facelock/FaceLockService;->mInitializeErrorLock:Ljava/lang/Object;

    monitor-enter v3

    .line 229
    :try_start_6
    sget-object v4, Lcom/android/facelock/FaceLockService$InitializeState;->INITIALIZE_FAILED:Lcom/android/facelock/FaceLockService$InitializeState;

    if-ne p1, v4, :cond_30

    .line 230
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/facelock/FaceLockService;->mInitializeFailed:Z

    .line 234
    :cond_d
    :goto_d
    iget-boolean v4, p0, Lcom/android/facelock/FaceLockService;->mViewCreated:Z

    if-eqz v4, :cond_3b

    iget-boolean v4, p0, Lcom/android/facelock/FaceLockService;->mInitializeFailed:Z

    if-eqz v4, :cond_3b

    move v0, v1

    .line 235
    :goto_16
    if-eqz v0, :cond_1b

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/facelock/FaceLockService;->mViewCreated:Z

    .line 236
    :cond_1b
    monitor-exit v3
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_38

    .line 237
    if-eqz v0, :cond_2f

    .line 239
    invoke-direct {p0}, Lcom/android/facelock/FaceLockService;->closeCamera()V

    .line 240
    iget-object v1, p0, Lcom/android/facelock/FaceLockService;->mCancelButton:Landroid/widget/ImageButton;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 241
    iget-object v1, p0, Lcom/android/facelock/FaceLockService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 243
    :cond_2f
    return-void

    .line 231
    :cond_30
    :try_start_30
    sget-object v4, Lcom/android/facelock/FaceLockService$InitializeState;->SET_VIEW:Lcom/android/facelock/FaceLockService$InitializeState;

    if-ne p1, v4, :cond_d

    .line 232
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/facelock/FaceLockService;->mViewCreated:Z

    goto :goto_d

    .line 236
    :catchall_38
    move-exception v1

    monitor-exit v3
    :try_end_3a
    .catchall {:try_start_30 .. :try_end_3a} :catchall_38

    throw v1

    :cond_3b
    move v0, v2

    .line 234
    goto :goto_16
.end method

.method private getFilesPath()Ljava/lang/String;
    .registers 4

    .prologue
    .line 211
    :try_start_0
    invoke-virtual {p0}, Lcom/android/facelock/FaceLockService;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v1

    .line 214
    :goto_8
    return-object v1

    .line 212
    :catch_9
    move-exception v0

    .line 213
    .local v0, e:Ljava/io/IOException;
    const-string v1, "FaceLockService"

    const-string v2, "IOException in getFilesPath()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const/4 v1, 0x0

    goto :goto_8
.end method

.method private getGivenName()Ljava/lang/String;
    .registers 15

    .prologue
    const/4 v13, 0x1

    const/4 v3, 0x0

    const/4 v9, 0x0

    .line 180
    const-wide/16 v11, -0x1

    .line 181
    .local v11, rawContactId:J
    invoke-virtual {p0}, Lcom/android/facelock/FaceLockService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v13, [Ljava/lang/String;

    const-string v4, "name_raw_contact_id"

    aput-object v4, v2, v9

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 184
    .local v10, c:Landroid/database/Cursor;
    :try_start_17
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_21
    .catchall {:try_start_17 .. :try_end_21} :catchall_60

    move-result-wide v11

    .line 186
    :cond_22
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 190
    const-wide/16 v0, -0x1

    cmp-long v0, v11, v0

    if-eqz v0, :cond_5f

    .line 191
    invoke-virtual {p0}, Lcom/android/facelock/FaceLockService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v0, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "data"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    new-array v6, v13, [Ljava/lang/String;

    const-string v0, "data2"

    aput-object v0, v6, v9

    const-string v7, "mimetype=? AND raw_contact_id=?"

    const/4 v0, 0x2

    new-array v8, v0, [Ljava/lang/String;

    const-string v0, "vnd.android.cursor.item/name"

    aput-object v0, v8, v9

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v13

    move-object v9, v3

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 201
    :try_start_51
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_65

    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_5b
    .catchall {:try_start_51 .. :try_end_5b} :catchall_69

    move-result-object v3

    .line 203
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 206
    :cond_5f
    :goto_5f
    return-object v3

    .line 186
    :catchall_60
    move-exception v0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v0

    .line 203
    :cond_65
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_5f

    :catchall_69
    move-exception v0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private initializeIfNecessary()V
    .registers 3

    .prologue
    .line 537
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/facelock/FaceLockService;->mModelsLoaded:Z

    .line 539
    new-instance v0, Lcom/android/facelock/FaceLockService$1;

    invoke-direct {v0, p0}, Lcom/android/facelock/FaceLockService$1;-><init>(Lcom/android/facelock/FaceLockService;)V

    .line 562
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ThreadGroup;->getMaxPriority()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 563
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 564
    return-void
.end method

.method private loadGallery()V
    .registers 3

    .prologue
    .line 523
    invoke-static {}, Lcom/android/facelockutil/FaceLockUtil;->unlockReadGallery()Z

    move-result v0

    if-nez v0, :cond_13

    .line 524
    const-string v0, "FaceLockService"

    const-string v1, "Read gallery failed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    sget-object v0, Lcom/android/facelock/FaceLockService$InitializeState;->INITIALIZE_FAILED:Lcom/android/facelock/FaceLockService$InitializeState;

    invoke-direct {p0, v0}, Lcom/android/facelock/FaceLockService;->displayIfInitializationError(Lcom/android/facelock/FaceLockService$InitializeState;)V

    .line 533
    :cond_12
    :goto_12
    return-void

    .line 527
    :cond_13
    invoke-static {}, Lcom/android/facelockutil/FaceLockUtil;->unlockLoadRecognitionModels()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/facelock/FaceLockService;->mModelsLoaded:Z

    .line 528
    iget-boolean v0, p0, Lcom/android/facelock/FaceLockService;->mModelsLoaded:Z

    if-nez v0, :cond_12

    .line 529
    const-string v0, "FaceLockService"

    const-string v1, "Model load failed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    sget-object v0, Lcom/android/facelock/FaceLockService$InitializeState;->INITIALIZE_FAILED:Lcom/android/facelock/FaceLockService$InitializeState;

    invoke-direct {p0, v0}, Lcom/android/facelock/FaceLockService;->displayIfInitializationError(Lcom/android/facelock/FaceLockService$InitializeState;)V

    goto :goto_12
.end method

.method private removeView()V
    .registers 3

    .prologue
    .line 250
    iget-boolean v0, p0, Lcom/android/facelock/FaceLockService;->mPreviewShowing:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/facelock/FaceLockService;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_f

    .line 251
    iget-object v0, p0, Lcom/android/facelock/FaceLockService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/facelock/FaceLockService;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 253
    :cond_f
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/facelock/FaceLockService;->mPreviewShowing:Z

    .line 255
    return-void
.end method

.method private sendRemoveViewMessage()V
    .registers 3

    .prologue
    .line 765
    invoke-virtual {p0}, Lcom/android/facelock/FaceLockService;->stopAnimation()V

    .line 766
    iget-object v0, p0, Lcom/android/facelock/FaceLockService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 767
    return-void
.end method

.method private startShutdown()V
    .registers 3

    .prologue
    .line 259
    sget-object v1, Lcom/android/facelock/FaceLockService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 260
    :try_start_3
    iget-object v0, p0, Lcom/android/facelock/FaceLockService;->mFader:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/facelock/FaceLockService;->mFader:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 261
    :cond_10
    monitor-exit v1

    .line 262
    return-void

    .line 261
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method


# virtual methods
.method public doCallback(I)V
    .registers 7
    .parameter "callbackType"

    .prologue
    .line 788
    iget-object v3, p0, Lcom/android/facelock/FaceLockService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 789
    .local v2, n:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-ge v1, v2, :cond_5b

    .line 791
    packed-switch p1, :pswitch_data_62

    .line 808
    :try_start_c
    const-string v3, "FaceLockService"

    const-string v4, "Unknown callback type"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    :goto_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 793
    :pswitch_16
    iget-object v3, p0, Lcom/android/facelock/FaceLockService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/IFaceLockCallback;

    invoke-interface {v3}, Lcom/android/internal/policy/IFaceLockCallback;->unlock()V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_21} :catch_22

    goto :goto_13

    .line 810
    :catch_22
    move-exception v0

    .line 811
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "FaceLockService"

    const-string v4, "Remote exception during unlock"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 796
    .end local v0           #e:Landroid/os/RemoteException;
    :pswitch_2b
    :try_start_2b
    iget-object v3, p0, Lcom/android/facelock/FaceLockService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/IFaceLockCallback;

    invoke-interface {v3}, Lcom/android/internal/policy/IFaceLockCallback;->cancel()V

    goto :goto_13

    .line 799
    :pswitch_37
    iget-object v3, p0, Lcom/android/facelock/FaceLockService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/IFaceLockCallback;

    invoke-interface {v3}, Lcom/android/internal/policy/IFaceLockCallback;->reportFailedAttempt()V

    goto :goto_13

    .line 802
    :pswitch_43
    iget-object v3, p0, Lcom/android/facelock/FaceLockService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/IFaceLockCallback;

    invoke-interface {v3}, Lcom/android/internal/policy/IFaceLockCallback;->exposeFallback()V

    goto :goto_13

    .line 805
    :pswitch_4f
    iget-object v3, p0, Lcom/android/facelock/FaceLockService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/IFaceLockCallback;

    invoke-interface {v3}, Lcom/android/internal/policy/IFaceLockCallback;->pokeWakelock()V
    :try_end_5a
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_5a} :catch_22

    goto :goto_13

    .line 816
    :cond_5b
    iget-object v3, p0, Lcom/android/facelock/FaceLockService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 817
    return-void

    .line 791
    nop

    :pswitch_data_62
    .packed-switch 0x0
        :pswitch_16
        :pswitch_2b
        :pswitch_37
        :pswitch_43
        :pswitch_4f
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 13
    .parameter "msg"

    .prologue
    const/4 v8, 0x4

    const/16 v7, 0x8

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 267
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_28e

    .line 486
    :pswitch_a
    const-string v4, "FaceLockService"

    const-string v6, "Invalid message"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    invoke-virtual {p0}, Lcom/android/facelock/FaceLockService;->interruptThread()V

    .line 488
    invoke-direct {p0}, Lcom/android/facelock/FaceLockService;->startShutdown()V

    move v4, v5

    .line 492
    :goto_18
    return v4

    .line 270
    :pswitch_19
    iget-object v4, p0, Lcom/android/facelock/FaceLockService;->mInfoText:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 272
    iget-object v4, p0, Lcom/android/facelock/FaceLockService;->mView:Landroid/view/View;

    if-eqz v4, :cond_2a

    iget-object v4, p0, Lcom/android/facelock/FaceLockService;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v4, :cond_2a

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v4, :cond_3a

    .line 273
    :cond_2a
    const-string v4, "FaceLockService"

    const-string v5, "View could not open"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object v4, p0, Lcom/android/facelock/FaceLockService;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x13

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_38
    :goto_38
    move v4, v6

    .line 492
    goto :goto_18

    .line 277
    :cond_3a
    iget-object v7, p0, Lcom/android/facelock/FaceLockService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v8, p0, Lcom/android/facelock/FaceLockService;->mView:Landroid/view/View;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v7, v8, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 278
    iput-boolean v6, p0, Lcom/android/facelock/FaceLockService;->mPreviewShowing:Z

    .line 279
    iput-boolean v5, p0, Lcom/android/facelock/FaceLockService;->mGotFirstFrame:Z

    .line 282
    sget-object v5, Lcom/android/facelock/FaceLockService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 283
    const/4 v4, 0x1

    :try_start_4d
    iput-boolean v4, p0, Lcom/android/facelock/FaceLockService;->mNeedFrame:Z

    .line 284
    monitor-exit v5
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_56

    .line 285
    sget-object v4, Lcom/android/facelock/FaceLockService$InitializeState;->SET_VIEW:Lcom/android/facelock/FaceLockService$InitializeState;

    invoke-direct {p0, v4}, Lcom/android/facelock/FaceLockService;->displayIfInitializationError(Lcom/android/facelock/FaceLockService$InitializeState;)V

    goto :goto_38

    .line 284
    :catchall_56
    move-exception v4

    :try_start_57
    monitor-exit v5
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_56

    throw v4

    .line 288
    :pswitch_59
    invoke-direct {p0}, Lcom/android/facelock/FaceLockService;->removeView()V

    goto :goto_38

    .line 291
    :pswitch_5d
    iget-object v4, p0, Lcom/android/facelock/FaceLockService;->mInfoText:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 292
    iget-boolean v4, p0, Lcom/android/facelock/FaceLockService;->mDone:Z

    if-nez v4, :cond_38

    iget-object v4, p0, Lcom/android/facelock/FaceLockService;->mLockFadeIn:Landroid/animation/ObjectAnimator;

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_38

    .line 296
    :pswitch_6c
    sget-object v5, Lcom/android/facelock/FaceLockService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 297
    :try_start_6f
    iget-boolean v4, p0, Lcom/android/facelock/FaceLockService;->mDone:Z

    if-nez v4, :cond_94

    .line 298
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/facelock/FaceLockService;->mDone:Z

    .line 299
    iget-object v4, p0, Lcom/android/facelock/FaceLockService;->mInfoText:Landroid/widget/TextView;

    const v7, 0x7f070027

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(I)V

    .line 300
    iget-object v4, p0, Lcom/android/facelock/FaceLockService;->mInfoText:Landroid/widget/TextView;

    const v7, 0x7f060009

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 301
    iget-object v4, p0, Lcom/android/facelock/FaceLockService;->mInfoText:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 303
    iget-object v4, p0, Lcom/android/facelock/FaceLockService;->mLockInfoXFade:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    .line 305
    invoke-virtual {p0}, Lcom/android/facelock/FaceLockService;->sendCancel()V

    .line 307
    :cond_94
    monitor-exit v5

    goto :goto_38

    :catchall_96
    move-exception v4

    monitor-exit v5
    :try_end_98
    .catchall {:try_start_6f .. :try_end_98} :catchall_96

    throw v4

    .line 311
    :pswitch_99
    sget-object v5, Lcom/android/facelock/FaceLockService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 312
    :try_start_9c
    iget-boolean v4, p0, Lcom/android/facelock/FaceLockService;->mDone:Z

    if-nez v4, :cond_c1

    .line 313
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/facelock/FaceLockService;->mDone:Z

    .line 314
    iget-object v4, p0, Lcom/android/facelock/FaceLockService;->mInfoText:Landroid/widget/TextView;

    const v7, 0x7f070023

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(I)V

    .line 315
    iget-object v4, p0, Lcom/android/facelock/FaceLockService;->mInfoText:Landroid/widget/TextView;

    const v7, 0x7f060005

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 316
    iget-object v4, p0, Lcom/android/facelock/FaceLockService;->mInfoText:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 318
    iget-object v4, p0, Lcom/android/facelock/FaceLockService;->mLockInfoXFade:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    .line 320
    invoke-virtual {p0}, Lcom/android/facelock/FaceLockService;->sendCancel()V

    .line 322
    :cond_c1
    monitor-exit v5

    goto/16 :goto_38

    :catchall_c4
    move-exception v4

    monitor-exit v5
    :try_end_c6
    .catchall {:try_start_9c .. :try_end_c6} :catchall_c4

    throw v4

    .line 325
    :pswitch_c7
    sget-object v5, Lcom/android/facelock/FaceLockService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 327
    :try_start_ca
    iget-boolean v4, p0, Lcom/android/facelock/FaceLockService;->mDone:Z

    if-nez v4, :cond_f2

    .line 328
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/facelock/FaceLockService;->mDone:Z

    .line 329
    iget-object v4, p0, Lcom/android/facelock/FaceLockService;->mInfoText:Landroid/widget/TextView;

    const v7, 0x7f070024

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(I)V

    .line 330
    iget-object v4, p0, Lcom/android/facelock/FaceLockService;->mInfoText:Landroid/widget/TextView;

    const v7, 0x7f060006

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 331
    iget-object v4, p0, Lcom/android/facelock/FaceLockService;->mInfoText:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 333
    iget-object v4, p0, Lcom/android/facelock/FaceLockService;->mLockInfoXFade:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    .line 335
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/facelock/FaceLockService;->mFail:Z

    .line 336
    invoke-virtual {p0}, Lcom/android/facelock/FaceLockService;->sendCancel()V

    .line 338
    :cond_f2
    monitor-exit v5

    goto/16 :goto_38

    :catchall_f5
    move-exception v4

    monitor-exit v5
    :try_end_f7
    .catchall {:try_start_ca .. :try_end_f7} :catchall_f5

    throw v4

    .line 343
    :pswitch_f8
    iget-object v4, p0, Lcom/android/facelock/FaceLockService;->mInfoText:Landroid/widget/TextView;

    const v7, 0x7f070026

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(I)V

    .line 344
    iget-object v4, p0, Lcom/android/facelock/FaceLockService;->mInfoText:Landroid/widget/TextView;

    const v7, 0x7f060008

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 345
    iget-object v4, p0, Lcom/android/facelock/FaceLockService;->mInfoText:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 347
    iget-object v4, p0, Lcom/android/facelock/FaceLockService;->mInfoText:Landroid/widget/TextView;

    const/high16 v5, 0x3f80

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setAlpha(F)V

    .line 349
    iget-object v4, p0, Lcom/android/facelock/FaceLockService;->mHandler:Landroid/os/Handler;

    const/16 v5, 0xb

    sget v7, Lcom/android/facelock/FaceLockService;->CANCEL_WAIT:I

    int-to-long v7, v7

    invoke-virtual {v4, v5, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_38

    .line 352
    :pswitch_120
    sget-object v5, Lcom/android/facelock/FaceLockService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 353
    :try_start_123
    iget-boolean v4, p0, Lcom/android/facelock/FaceLockService;->mDone:Z

    if-nez v4, :cond_131

    .line 355
    iget-object v4, p0, Lcom/android/facelock/FaceLockService;->mInfoText:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 356
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/facelock/FaceLockService;->mNeedFrame:Z

    .line 358
    :cond_131
    monitor-exit v5

    goto/16 :goto_38

    :catchall_134
    move-exception v4

    monitor-exit v5
    :try_end_136
    .catchall {:try_start_123 .. :try_end_136} :catchall_134

    throw v4

    .line 362
    :pswitch_137
    sget-object v5, Lcom/android/facelock/FaceLockService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 363
    const/4 v4, 0x1

    :try_start_13b
    iput-boolean v4, p0, Lcom/android/facelock/FaceLockService;->mNeedFrame:Z

    .line 364
    monitor-exit v5

    goto/16 :goto_38

    :catchall_140
    move-exception v4

    monitor-exit v5
    :try_end_142
    .catchall {:try_start_13b .. :try_end_142} :catchall_140

    throw v4

    .line 368
    :pswitch_143
    iget-boolean v4, p0, Lcom/android/facelock/FaceLockService;->mTooClose:Z

    if-eqz v4, :cond_14f

    .line 369
    iget-object v4, p0, Lcom/android/facelock/FaceLockService;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_38

    .line 372
    :cond_14f
    sget-object v5, Lcom/android/facelock/FaceLockService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 373
    :try_start_152
    iget-boolean v4, p0, Lcom/android/facelock/FaceLockService;->mDone:Z

    if-nez v4, :cond_1bb

    .line 375
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/facelock/FaceLockService;->mDone:Z

    .line 376
    iget-object v4, p0, Lcom/android/facelock/FaceLockService;->mPreview:Lcom/android/facelockutil/Preview;

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Lcom/android/facelockutil/Preview;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 378
    iget-boolean v4, p0, Lcom/android/facelock/FaceLockService;->mShowWelcome:Z

    if-eqz v4, :cond_1ca

    .line 379
    invoke-direct {p0}, Lcom/android/facelock/FaceLockService;->getGivenName()Ljava/lang/String;

    move-result-object v0

    .line 380
    .local v0, givenName:Ljava/lang/String;
    if-eqz v0, :cond_1c1

    .line 381
    iget-object v4, p0, Lcom/android/facelock/FaceLockService;->mInfoText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/facelock/FaceLockService;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070022

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v0, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 387
    :goto_17f
    iget-object v4, p0, Lcom/android/facelock/FaceLockService;->mInfoText:Landroid/widget/TextView;

    const v7, 0x7f060004

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 388
    iget-object v4, p0, Lcom/android/facelock/FaceLockService;->mInfoText:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 389
    iget-object v4, p0, Lcom/android/facelock/FaceLockService;->mLockInfoXFade:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    .line 396
    .end local v0           #givenName:Ljava/lang/String;
    :goto_192
    iget-object v4, p0, Lcom/android/facelock/FaceLockService;->mCamera:Landroid/hardware/Camera;

    if-eqz v4, :cond_19b

    iget-object v4, p0, Lcom/android/facelock/FaceLockService;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->stopPreview()V

    .line 399
    :cond_19b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 400
    .local v1, starttime:J
    invoke-direct {p0}, Lcom/android/facelock/FaceLockService;->closeCamera()V

    .line 401
    sget v4, Lcom/android/facelock/FaceLockService;->UNLOCK_WAIT:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v1

    long-to-int v7, v7

    sub-int v3, v4, v7

    .line 402
    .local v3, waitTime:I
    if-ltz v3, :cond_1b2

    iget-boolean v4, p0, Lcom/android/facelock/FaceLockService;->mShowWelcome:Z

    if-nez v4, :cond_1b3

    :cond_1b2
    const/4 v3, 0x0

    .line 403
    :cond_1b3
    iget-object v4, p0, Lcom/android/facelock/FaceLockService;->mHandler:Landroid/os/Handler;

    const/16 v7, 0xa

    int-to-long v8, v3

    invoke-virtual {v4, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 405
    .end local v1           #starttime:J
    .end local v3           #waitTime:I
    :cond_1bb
    monitor-exit v5

    goto/16 :goto_38

    :catchall_1be
    move-exception v4

    monitor-exit v5
    :try_end_1c0
    .catchall {:try_start_152 .. :try_end_1c0} :catchall_1be

    throw v4

    .line 384
    .restart local v0       #givenName:Ljava/lang/String;
    :cond_1c1
    :try_start_1c1
    iget-object v4, p0, Lcom/android/facelock/FaceLockService;->mInfoText:Landroid/widget/TextView;

    const v7, 0x7f070021

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_17f

    .line 391
    .end local v0           #givenName:Ljava/lang/String;
    :cond_1ca
    iget-object v4, p0, Lcom/android/facelock/FaceLockService;->mInfoText:Landroid/widget/TextView;

    const/4 v7, 0x4

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 392
    iget-object v4, p0, Lcom/android/facelock/FaceLockService;->mCancelButton:Landroid/widget/ImageButton;

    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Landroid/widget/ImageButton;->setVisibility(I)V
    :try_end_1d7
    .catchall {:try_start_1c1 .. :try_end_1d7} :catchall_1be

    goto :goto_192

    .line 408
    :pswitch_1d8
    sget-object v5, Lcom/android/facelock/FaceLockService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 409
    :try_start_1db
    iget-boolean v4, p0, Lcom/android/facelock/FaceLockService;->mDone:Z

    if-nez v4, :cond_206

    .line 411
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/facelock/FaceLockService;->mDone:Z

    .line 412
    iget-object v4, p0, Lcom/android/facelock/FaceLockService;->mInfoText:Landroid/widget/TextView;

    const v7, 0x7f070024

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(I)V

    .line 413
    iget-object v4, p0, Lcom/android/facelock/FaceLockService;->mInfoText:Landroid/widget/TextView;

    const v7, 0x7f060006

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 414
    iget-object v4, p0, Lcom/android/facelock/FaceLockService;->mInfoText:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 416
    iget-object v4, p0, Lcom/android/facelock/FaceLockService;->mLockInfoXFade:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    .line 417
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/facelock/FaceLockService;->mFoundFace:Z

    .line 419
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/facelock/FaceLockService;->mFail:Z

    .line 420
    invoke-virtual {p0}, Lcom/android/facelock/FaceLockService;->sendCancel()V

    .line 422
    :cond_206
    monitor-exit v5

    goto/16 :goto_38

    :catchall_209
    move-exception v4

    monitor-exit v5
    :try_end_20b
    .catchall {:try_start_1db .. :try_end_20b} :catchall_209

    throw v4

    .line 425
    :pswitch_20c
    sget-object v5, Lcom/android/facelock/FaceLockService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 426
    :try_start_20f
    iget-boolean v4, p0, Lcom/android/facelock/FaceLockService;->mDone:Z

    if-nez v4, :cond_220

    .line 428
    iget-object v4, p0, Lcom/android/facelock/FaceLockService;->mInfoText:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 429
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/facelock/FaceLockService;->mFoundFace:Z

    .line 430
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/facelock/FaceLockService;->mNeedFrame:Z

    .line 432
    :cond_220
    monitor-exit v5

    goto/16 :goto_38

    :catchall_223
    move-exception v4

    monitor-exit v5
    :try_end_225
    .catchall {:try_start_20f .. :try_end_225} :catchall_223

    throw v4

    .line 435
    :pswitch_226
    sget-object v5, Lcom/android/facelock/FaceLockService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 436
    :try_start_229
    iget-boolean v4, p0, Lcom/android/facelock/FaceLockService;->mDone:Z

    if-nez v4, :cond_237

    .line 438
    iget-object v4, p0, Lcom/android/facelock/FaceLockService;->mInfoText:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 439
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/facelock/FaceLockService;->mNeedFrame:Z

    .line 441
    :cond_237
    monitor-exit v5

    goto/16 :goto_38

    :catchall_23a
    move-exception v4

    monitor-exit v5
    :try_end_23c
    .catchall {:try_start_229 .. :try_end_23c} :catchall_23a

    throw v4

    .line 444
    :pswitch_23d
    sget-object v5, Lcom/android/facelock/FaceLockService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 445
    :try_start_240
    iget-boolean v4, p0, Lcom/android/facelock/FaceLockService;->mDone:Z

    if-nez v4, :cond_251

    .line 447
    iget-object v4, p0, Lcom/android/facelock/FaceLockService;->mInfoText:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 448
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/facelock/FaceLockService;->mFoundFace:Z

    .line 449
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/facelock/FaceLockService;->mNeedFrame:Z

    .line 451
    :cond_251
    monitor-exit v5

    goto/16 :goto_38

    :catchall_254
    move-exception v4

    monitor-exit v5
    :try_end_256
    .catchall {:try_start_240 .. :try_end_256} :catchall_254

    throw v4

    .line 454
    :pswitch_257
    iget-object v4, p0, Lcom/android/facelock/FaceLockService;->mPreview:Lcom/android/facelockutil/Preview;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/facelockutil/Preview;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 456
    invoke-direct {p0}, Lcom/android/facelock/FaceLockService;->startShutdown()V

    goto/16 :goto_38

    .line 460
    :pswitch_262
    iget-boolean v4, p0, Lcom/android/facelock/FaceLockService;->mClosingDown:Z

    if-nez v4, :cond_38

    .line 461
    invoke-virtual {p0, v5}, Lcom/android/facelock/FaceLockService;->doCallback(I)V

    goto/16 :goto_38

    .line 465
    :pswitch_26b
    invoke-direct {p0}, Lcom/android/facelock/FaceLockService;->startShutdown()V

    goto/16 :goto_38

    .line 469
    :pswitch_270
    invoke-direct {p0}, Lcom/android/facelock/FaceLockService;->removeView()V

    .line 471
    iget-boolean v4, p0, Lcom/android/facelock/FaceLockService;->mClosingDown:Z

    if-nez v4, :cond_38

    .line 472
    invoke-direct {p0}, Lcom/android/facelock/FaceLockService;->closeCamera()V

    .line 473
    iget-boolean v4, p0, Lcom/android/facelock/FaceLockService;->mFail:Z

    if-eqz v4, :cond_284

    .line 474
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lcom/android/facelock/FaceLockService;->doCallback(I)V

    goto/16 :goto_38

    .line 476
    :cond_284
    invoke-virtual {p0, v6}, Lcom/android/facelock/FaceLockService;->doCallback(I)V

    goto/16 :goto_38

    .line 483
    :pswitch_289
    invoke-virtual {p0, v8}, Lcom/android/facelock/FaceLockService;->doCallback(I)V

    goto/16 :goto_38

    .line 267
    :pswitch_data_28e
    .packed-switch 0x0
        :pswitch_19
        :pswitch_59
        :pswitch_137
        :pswitch_120
        :pswitch_143
        :pswitch_1d8
        :pswitch_20c
        :pswitch_226
        :pswitch_23d
        :pswitch_257
        :pswitch_262
        :pswitch_26b
        :pswitch_a
        :pswitch_289
        :pswitch_5d
        :pswitch_6c
        :pswitch_99
        :pswitch_c7
        :pswitch_f8
        :pswitch_270
    .end packed-switch
.end method

.method public interruptThread()V
    .registers 5

    .prologue
    .line 504
    sget-object v2, Lcom/android/facelock/FaceLockService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 505
    :try_start_3
    iget-object v1, p0, Lcom/android/facelock/FaceLockService;->mCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/facelock/FaceLockService;->mCamera:Landroid/hardware/Camera;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 506
    :cond_d
    iget-object v1, p0, Lcom/android/facelock/FaceLockService;->mThread:Lcom/android/facelock/ProcessingThread;

    if-eqz v1, :cond_19

    .line 507
    iget-object v0, p0, Lcom/android/facelock/FaceLockService;->mThread:Lcom/android/facelock/ProcessingThread;

    .line 508
    .local v0, thread:Lcom/android/facelock/ProcessingThread;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/facelock/FaceLockService;->mThread:Lcom/android/facelock/ProcessingThread;

    .line 509
    invoke-virtual {v0}, Lcom/android/facelock/ProcessingThread;->quit()Z

    .line 511
    .end local v0           #thread:Lcom/android/facelock/ProcessingThread;
    :cond_19
    monitor-exit v2

    .line 512
    return-void

    .line 511
    :catchall_1b
    move-exception v1

    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 958
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 8
    .parameter "intent"

    .prologue
    .line 701
    iget-boolean v3, p0, Lcom/android/facelock/FaceLockService;->mInitializeFailed:Z

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/facelock/FaceLockService;->binder:Lcom/android/internal/policy/IFaceLockInterface$Stub;

    .line 740
    :goto_6
    return-object v3

    .line 704
    :cond_7
    :try_start_7
    iget-object v3, p0, Lcom/android/facelock/FaceLockService;->mProximity:Landroid/hardware/Sensor;

    if-eqz v3, :cond_1d

    .line 705
    iget-object v3, p0, Lcom/android/facelock/FaceLockService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/android/facelock/FaceLockService;->mProximity:Landroid/hardware/Sensor;

    const/4 v5, 0x3

    invoke-virtual {v3, p0, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v2

    .line 707
    .local v2, supported:Z
    if-nez v2, :cond_1d

    const-string v3, "FaceLockService"

    const-string v4, "proximity sensor not supported"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    .end local v2           #supported:Z
    :cond_1d
    iget-object v3, p0, Lcom/android/facelock/FaceLockService;->mLight:Landroid/hardware/Sensor;

    if-eqz v3, :cond_33

    .line 710
    iget-object v3, p0, Lcom/android/facelock/FaceLockService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/android/facelock/FaceLockService;->mLight:Landroid/hardware/Sensor;

    const/4 v5, 0x0

    invoke-virtual {v3, p0, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v2

    .line 712
    .restart local v2       #supported:Z
    if-nez v2, :cond_33

    const-string v3, "FaceLockService"

    const-string v4, "light sensor not supported"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    .end local v2           #supported:Z
    :cond_33
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/facelock/FaceLockService;->mGotFirstFrame:Z

    .line 715
    invoke-static {}, Lcom/android/facelock/EventLogTags;->writeFacelockActivated()V

    .line 718
    iget v3, p0, Lcom/android/facelock/FaceLockService;->mFrontCameraId:I

    invoke-static {v3}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v3

    iput-object v3, p0, Lcom/android/facelock/FaceLockService;->mCamera:Landroid/hardware/Camera;

    .line 724
    iget-object v3, p0, Lcom/android/facelock/FaceLockService;->mPreview:Lcom/android/facelockutil/Preview;

    iget-object v4, p0, Lcom/android/facelock/FaceLockService;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3, v4}, Lcom/android/facelockutil/Preview;->setCamera(Landroid/hardware/Camera;)V

    .line 725
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 726
    .local v0, cameraInfo:Landroid/hardware/Camera$CameraInfo;
    iget v3, p0, Lcom/android/facelock/FaceLockService;->mFrontCameraId:I

    invoke-static {v3, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 727
    iget-object v3, p0, Lcom/android/facelock/FaceLockService;->mPreview:Lcom/android/facelockutil/Preview;

    invoke-virtual {v3, v0}, Lcom/android/facelockutil/Preview;->setCameraInfo(Landroid/hardware/Camera$CameraInfo;)V

    .line 728
    iget-object v3, p0, Lcom/android/facelock/FaceLockService;->mPreview:Lcom/android/facelockutil/Preview;

    invoke-virtual {v3, p0}, Lcom/android/facelockutil/Preview;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 729
    iget-object v3, p0, Lcom/android/facelock/FaceLockService;->mPreview:Lcom/android/facelockutil/Preview;

    invoke-virtual {v3}, Lcom/android/facelockutil/Preview;->start()V
    :try_end_61
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_61} :catch_64

    .line 740
    .end local v0           #cameraInfo:Landroid/hardware/Camera$CameraInfo;
    :goto_61
    iget-object v3, p0, Lcom/android/facelock/FaceLockService;->binder:Lcom/android/internal/policy/IFaceLockInterface$Stub;

    goto :goto_6

    .line 730
    :catch_64
    move-exception v1

    .line 731
    .local v1, e:Ljava/lang/RuntimeException;
    const-string v3, "FaceLockService"

    const-string v4, "Runtime exception during camera.open"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    sget-object v3, Lcom/android/facelock/FaceLockService$InitializeState;->INITIALIZE_FAILED:Lcom/android/facelock/FaceLockService$InitializeState;

    invoke-direct {p0, v3}, Lcom/android/facelock/FaceLockService;->displayIfInitializationError(Lcom/android/facelock/FaceLockService$InitializeState;)V

    goto :goto_61
.end method

.method public onCreate()V
    .registers 13

    .prologue
    const-wide/16 v10, 0x12c

    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 568
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 572
    invoke-virtual {p0}, Lcom/android/facelock/FaceLockService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "facelock_use_light_sensor"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_155

    move v4, v5

    :goto_16
    iput-boolean v4, p0, Lcom/android/facelock/FaceLockService;->mUseLightSensor:Z

    .line 573
    const-string v4, "sensor"

    invoke-virtual {p0, v4}, Lcom/android/facelock/FaceLockService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/SensorManager;

    iput-object v4, p0, Lcom/android/facelock/FaceLockService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 574
    iget-object v4, p0, Lcom/android/facelock/FaceLockService;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v4

    iput-object v4, p0, Lcom/android/facelock/FaceLockService;->mProximity:Landroid/hardware/Sensor;

    .line 575
    iget-object v4, p0, Lcom/android/facelock/FaceLockService;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v7, 0x5

    invoke-virtual {v4, v7}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v4

    iput-object v4, p0, Lcom/android/facelock/FaceLockService;->mLight:Landroid/hardware/Sensor;

    .line 576
    iput-boolean v6, p0, Lcom/android/facelock/FaceLockService;->mTooDark:Z

    .line 577
    iput-boolean v6, p0, Lcom/android/facelock/FaceLockService;->mInitializeFailed:Z

    .line 578
    iput-boolean v6, p0, Lcom/android/facelock/FaceLockService;->mDone:Z

    .line 579
    iput-boolean v6, p0, Lcom/android/facelock/FaceLockService;->mClosingDown:Z

    .line 580
    iput-boolean v6, p0, Lcom/android/facelock/FaceLockService;->mTooClose:Z

    .line 581
    iput-object v9, p0, Lcom/android/facelock/FaceLockService;->mCamera:Landroid/hardware/Camera;

    .line 582
    iput-boolean v6, p0, Lcom/android/facelock/FaceLockService;->mPreviewShowing:Z

    .line 583
    iput-boolean v6, p0, Lcom/android/facelock/FaceLockService;->mViewCreated:Z

    .line 584
    iput-boolean v6, p0, Lcom/android/facelock/FaceLockService;->mGotFirstFrame:Z

    .line 585
    iput-boolean v6, p0, Lcom/android/facelock/FaceLockService;->mFoundFace:Z

    .line 588
    const-string v4, "persist.facelock.show_welcome"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/facelock/FaceLockService;->mShowWelcome:Z

    .line 589
    const-string v4, "persist.facelock.welcome_wait"

    sget v6, Lcom/android/facelock/FaceLockService;->UNLOCK_WAIT:I

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/android/facelock/FaceLockService;->UNLOCK_WAIT:I

    .line 590
    const-string v4, "persist.facelock.cancel_wait"

    sget v6, Lcom/android/facelock/FaceLockService;->CANCEL_WAIT:I

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/android/facelock/FaceLockService;->CANCEL_WAIT:I

    .line 591
    const-string v4, "persist.facelock.detect_cutoff"

    sget v6, Lcom/android/facelock/FaceLockService;->DETECT_CUTOFF:I

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/android/facelock/FaceLockService;->DETECT_CUTOFF:I

    .line 592
    const-string v4, "persist.facelock.recog_cutoff"

    sget v6, Lcom/android/facelock/FaceLockService;->RECOG_CUTOFF:I

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/android/facelock/FaceLockService;->RECOG_CUTOFF:I

    .line 600
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v4, p0, Lcom/android/facelock/FaceLockService;->mHandler:Landroid/os/Handler;

    .line 602
    new-instance v4, Lcom/android/facelock/ProcessingThread;

    const-string v6, "ProcessingThread"

    iget-object v7, p0, Lcom/android/facelock/FaceLockService;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, v6, v7}, Lcom/android/facelock/ProcessingThread;-><init>(Ljava/lang/String;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/facelock/FaceLockService;->mThread:Lcom/android/facelock/ProcessingThread;

    .line 603
    iget-object v4, p0, Lcom/android/facelock/FaceLockService;->mThread:Lcom/android/facelock/ProcessingThread;

    invoke-virtual {v4}, Lcom/android/facelock/ProcessingThread;->start()V

    .line 604
    iget-object v4, p0, Lcom/android/facelock/FaceLockService;->mThread:Lcom/android/facelock/ProcessingThread;

    invoke-virtual {v4}, Lcom/android/facelock/ProcessingThread;->waitUntilReady()V

    .line 607
    const-string v4, "window"

    invoke-virtual {p0, v4}, Lcom/android/facelock/FaceLockService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    iput-object v4, p0, Lcom/android/facelock/FaceLockService;->mWindowManager:Landroid/view/WindowManager;

    .line 608
    const v4, 0x7f040001

    invoke-static {p0, v4, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/facelock/FaceLockService;->mView:Landroid/view/View;

    .line 609
    iget-object v4, p0, Lcom/android/facelock/FaceLockService;->mView:Landroid/view/View;

    const v6, 0x7f0a0006

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/facelockutil/Preview;

    iput-object v4, p0, Lcom/android/facelock/FaceLockService;->mPreview:Lcom/android/facelockutil/Preview;

    .line 610
    iget-object v4, p0, Lcom/android/facelock/FaceLockService;->mPreview:Lcom/android/facelockutil/Preview;

    iget-object v6, p0, Lcom/android/facelock/FaceLockService;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {v4, v6}, Lcom/android/facelockutil/Preview;->setWindowManager(Landroid/view/WindowManager;)V

    .line 611
    iget-object v4, p0, Lcom/android/facelock/FaceLockService;->mView:Landroid/view/View;

    const v6, 0x7f0a0009

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/facelock/FaceLockService;->mInfoText:Landroid/widget/TextView;

    .line 613
    iget-object v4, p0, Lcom/android/facelock/FaceLockService;->mView:Landroid/view/View;

    const v6, 0x7f0a0008

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/android/facelock/FaceLockService;->mCancelButton:Landroid/widget/ImageButton;

    .line 614
    iget-object v4, p0, Lcom/android/facelock/FaceLockService;->mCancelButton:Landroid/widget/ImageButton;

    new-instance v6, Lcom/android/facelock/FaceLockService$2;

    invoke-direct {v6, p0}, Lcom/android/facelock/FaceLockService$2;-><init>(Lcom/android/facelock/FaceLockService;)V

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 625
    new-array v4, v8, [F

    fill-array-data v4, :array_160

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    iput-object v4, p0, Lcom/android/facelock/FaceLockService;->mFader:Landroid/animation/ValueAnimator;

    .line 626
    iget-object v4, p0, Lcom/android/facelock/FaceLockService;->mFader:Landroid/animation/ValueAnimator;

    new-instance v6, Lcom/android/facelock/FaceLockService$3;

    invoke-direct {v6, p0}, Lcom/android/facelock/FaceLockService$3;-><init>(Lcom/android/facelock/FaceLockService;)V

    invoke-virtual {v4, v6}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 634
    iget-object v4, p0, Lcom/android/facelock/FaceLockService;->mFader:Landroid/animation/ValueAnimator;

    new-instance v6, Lcom/android/facelock/FaceLockService$4;

    invoke-direct {v6, p0}, Lcom/android/facelock/FaceLockService$4;-><init>(Lcom/android/facelock/FaceLockService;)V

    invoke-virtual {v4, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 648
    iget-object v4, p0, Lcom/android/facelock/FaceLockService;->mFader:Landroid/animation/ValueAnimator;

    invoke-virtual {v4, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 650
    const/high16 v4, 0x7f05

    invoke-static {p0, v4}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v4

    check-cast v4, Landroid/animation/ObjectAnimator;

    iput-object v4, p0, Lcom/android/facelock/FaceLockService;->mLockFadeIn:Landroid/animation/ObjectAnimator;

    .line 651
    iget-object v4, p0, Lcom/android/facelock/FaceLockService;->mLockFadeIn:Landroid/animation/ObjectAnimator;

    iget-object v6, p0, Lcom/android/facelock/FaceLockService;->mCancelButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v6}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 653
    new-array v4, v8, [F

    fill-array-data v4, :array_168

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    iput-object v4, p0, Lcom/android/facelock/FaceLockService;->mLockInfoXFade:Landroid/animation/ValueAnimator;

    .line 654
    iget-object v4, p0, Lcom/android/facelock/FaceLockService;->mLockInfoXFade:Landroid/animation/ValueAnimator;

    invoke-virtual {v4, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 655
    iget-object v4, p0, Lcom/android/facelock/FaceLockService;->mLockInfoXFade:Landroid/animation/ValueAnimator;

    new-instance v6, Lcom/android/facelock/FaceLockService$5;

    invoke-direct {v6, p0}, Lcom/android/facelock/FaceLockService$5;-><init>(Lcom/android/facelock/FaceLockService;)V

    invoke-virtual {v4, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 670
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v3

    .line 671
    .local v3, numberOfCameras:I
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 672
    .local v0, cameraInfo:Landroid/hardware/Camera$CameraInfo;
    const/4 v1, 0x0

    .line 673
    .local v1, foundId:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_13a
    if-ge v2, v3, :cond_146

    .line 674
    invoke-static {v2, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 675
    iget v4, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v4, v5, :cond_158

    .line 676
    iput v2, p0, Lcom/android/facelock/FaceLockService;->mFrontCameraId:I

    .line 677
    const/4 v1, 0x1

    .line 682
    :cond_146
    if-nez v1, :cond_15b

    .line 683
    const-string v4, "FaceLockService"

    const-string v5, "Front camera not found"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    sget-object v4, Lcom/android/facelock/FaceLockService$InitializeState;->INITIALIZE_FAILED:Lcom/android/facelock/FaceLockService$InitializeState;

    invoke-direct {p0, v4}, Lcom/android/facelock/FaceLockService;->displayIfInitializationError(Lcom/android/facelock/FaceLockService$InitializeState;)V

    .line 695
    :goto_154
    return-void

    .end local v0           #cameraInfo:Landroid/hardware/Camera$CameraInfo;
    .end local v1           #foundId:Z
    .end local v2           #i:I
    .end local v3           #numberOfCameras:I
    :cond_155
    move v4, v6

    .line 572
    goto/16 :goto_16

    .line 673
    .restart local v0       #cameraInfo:Landroid/hardware/Camera$CameraInfo;
    .restart local v1       #foundId:Z
    .restart local v2       #i:I
    .restart local v3       #numberOfCameras:I
    :cond_158
    add-int/lit8 v2, v2, 0x1

    goto :goto_13a

    .line 688
    :cond_15b
    invoke-direct {p0}, Lcom/android/facelock/FaceLockService;->initializeIfNecessary()V

    goto :goto_154

    .line 625
    nop

    :array_160
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 653
    :array_168
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 874
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 876
    return-void
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .registers 15
    .parameter "data"
    .parameter "camera"

    .prologue
    const/16 v11, 0xf

    .line 881
    iget-boolean v7, p0, Lcom/android/facelock/FaceLockService;->mDone:Z

    if-nez v7, :cond_a

    iget-boolean v7, p0, Lcom/android/facelock/FaceLockService;->mModelsLoaded:Z

    if-nez v7, :cond_b

    .line 953
    :cond_a
    :goto_a
    return-void

    .line 893
    :cond_b
    iget-boolean v7, p0, Lcom/android/facelock/FaceLockService;->mGotFirstFrame:Z

    if-nez v7, :cond_3f

    .line 894
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/facelock/FaceLockService;->mGotFirstFrame:Z

    .line 895
    iget-object v7, p0, Lcom/android/facelock/FaceLockService;->mHandler:Landroid/os/Handler;

    const/16 v8, 0xe

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 896
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/facelock/FaceLockService;->mFirstFrameTime:J

    .line 901
    const/4 v7, 0x3

    invoke-virtual {p0, v7}, Lcom/android/facelock/FaceLockService;->doCallback(I)V

    .line 902
    iget-object v7, p0, Lcom/android/facelock/FaceLockService;->mLight:Landroid/hardware/Sensor;

    if-eqz v7, :cond_2e

    iget-object v7, p0, Lcom/android/facelock/FaceLockService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v8, p0, Lcom/android/facelock/FaceLockService;->mLight:Landroid/hardware/Sensor;

    invoke-virtual {v7, p0, v8}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 903
    :cond_2e
    iget-boolean v7, p0, Lcom/android/facelock/FaceLockService;->mTooDark:Z

    if-eqz v7, :cond_3f

    .line 904
    invoke-static {}, Lcom/android/facelock/EventLogTags;->writeFacelockTooDark()V

    .line 905
    iget-boolean v7, p0, Lcom/android/facelock/FaceLockService;->mUseLightSensor:Z

    if-eqz v7, :cond_3f

    .line 906
    iget-object v7, p0, Lcom/android/facelock/FaceLockService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_a

    .line 912
    :cond_3f
    iget-object v7, p0, Lcom/android/facelock/FaceLockService;->mThread:Lcom/android/facelock/ProcessingThread;

    iget-boolean v7, v7, Lcom/android/facelock/ProcessingThread;->mInitialBlackScreen:Z

    if-eqz v7, :cond_ae

    .line 913
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/android/facelock/FaceLockService;->mFirstFrameTime:J

    sub-long v3, v7, v9

    .line 914
    .local v3, timeSinceFirstFrame:J
    sget v7, Lcom/android/facelock/FaceLockService;->BLACK_SCREEN_CUTOFF:I

    int-to-long v7, v7

    cmp-long v7, v3, v7

    if-lez v7, :cond_5f

    .line 916
    invoke-virtual {p0}, Lcom/android/facelock/FaceLockService;->interruptThread()V

    .line 917
    invoke-static {}, Lcom/android/facelock/EventLogTags;->writeFacelockLowLight()V

    .line 918
    iget-object v7, p0, Lcom/android/facelock/FaceLockService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 936
    .end local v3           #timeSinceFirstFrame:J
    :cond_5f
    :goto_5f
    sget-object v8, Lcom/android/facelock/FaceLockService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 937
    :try_start_62
    iget-boolean v7, p0, Lcom/android/facelock/FaceLockService;->mNeedFrame:Z

    if-eqz v7, :cond_a8

    iget-object v7, p0, Lcom/android/facelock/FaceLockService;->mThread:Lcom/android/facelock/ProcessingThread;

    if-eqz v7, :cond_a8

    .line 939
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/facelock/FaceLockService;->mNeedFrame:Z

    .line 940
    iget-object v7, p0, Lcom/android/facelock/FaceLockService;->mThread:Lcom/android/facelock/ProcessingThread;

    iget-object v9, p0, Lcom/android/facelock/FaceLockService;->mPreview:Lcom/android/facelockutil/Preview;

    invoke-virtual {v9}, Lcom/android/facelockutil/Preview;->getPreviewRotation()I

    move-result v9

    invoke-virtual {v7, v9}, Lcom/android/facelock/ProcessingThread;->setRotation(I)V

    .line 941
    iget-object v7, p0, Lcom/android/facelock/FaceLockService;->mThread:Lcom/android/facelock/ProcessingThread;

    iget-boolean v9, p0, Lcom/android/facelock/FaceLockService;->mTooClose:Z

    invoke-virtual {v7, v9}, Lcom/android/facelock/ProcessingThread;->setTooClose(Z)V

    .line 943
    iget-object v7, p0, Lcom/android/facelock/FaceLockService;->mPreview:Lcom/android/facelockutil/Preview;

    invoke-virtual {v7}, Lcom/android/facelockutil/Preview;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 946
    .local v2, size:Landroid/hardware/Camera$Size;
    iget v7, v2, Landroid/hardware/Camera$Size;->width:I

    iget v9, v2, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v7, v9

    new-array v0, v7, [B

    .line 947
    .local v0, image:[B
    const/4 v7, 0x0

    const/4 v9, 0x0

    iget v10, v2, Landroid/hardware/Camera$Size;->width:I

    iget v11, v2, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v10, v11

    invoke-static {p1, v7, v0, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 948
    iget-object v7, p0, Lcom/android/facelock/FaceLockService;->mThread:Lcom/android/facelock/ProcessingThread;

    invoke-virtual {v7}, Lcom/android/facelock/ProcessingThread;->getHandler()Landroid/os/Handler;

    move-result-object v7

    const/4 v9, 0x0

    iget v10, v2, Landroid/hardware/Camera$Size;->width:I

    iget v11, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v7, v9, v10, v11, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 950
    .local v1, message:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 952
    .end local v0           #image:[B
    .end local v1           #message:Landroid/os/Message;
    .end local v2           #size:Landroid/hardware/Camera$Size;
    :cond_a8
    monitor-exit v8

    goto/16 :goto_a

    :catchall_ab
    move-exception v7

    monitor-exit v8
    :try_end_ad
    .catchall {:try_start_62 .. :try_end_ad} :catchall_ab

    throw v7

    .line 921
    :cond_ae
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-object v9, p0, Lcom/android/facelock/FaceLockService;->mThread:Lcom/android/facelock/ProcessingThread;

    iget-wide v9, v9, Lcom/android/facelock/ProcessingThread;->mFirstNonBlackFrameTime:J

    sub-long v5, v7, v9

    .line 923
    .local v5, timeSinceFirstNonBlackFrame:J
    iget-boolean v7, p0, Lcom/android/facelock/FaceLockService;->mFoundFace:Z

    if-nez v7, :cond_d0

    sget v7, Lcom/android/facelock/FaceLockService;->DETECT_CUTOFF:I

    int-to-long v7, v7

    cmp-long v7, v5, v7

    if-lez v7, :cond_d0

    .line 925
    invoke-virtual {p0}, Lcom/android/facelock/FaceLockService;->interruptThread()V

    .line 926
    invoke-static {}, Lcom/android/facelock/EventLogTags;->writeFacelockDetectionTimeout()V

    .line 927
    iget-object v7, p0, Lcom/android/facelock/FaceLockService;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x10

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 929
    :cond_d0
    sget v7, Lcom/android/facelock/FaceLockService;->RECOG_CUTOFF:I

    int-to-long v7, v7

    cmp-long v7, v5, v7

    if-lez v7, :cond_5f

    .line 931
    invoke-virtual {p0}, Lcom/android/facelock/FaceLockService;->interruptThread()V

    .line 932
    invoke-static {}, Lcom/android/facelock/EventLogTags;->writeFacelockRecognitionTimeout()V

    .line 933
    iget-object v7, p0, Lcom/android/facelock/FaceLockService;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x11

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_5f
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 9
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 963
    iget-object v3, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    .line 964
    .local v0, type:I
    const/16 v3, 0x8

    if-ne v0, v3, :cond_12

    .line 965
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v1, v1

    if-lt v1, v2, :cond_11

    .line 973
    :cond_11
    :goto_11
    return-void

    .line 968
    :cond_12
    const/4 v3, 0x5

    if-ne v0, v3, :cond_11

    .line 969
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v3, v3

    if-lt v3, v2, :cond_11

    .line 970
    iget-boolean v3, p0, Lcom/android/facelock/FaceLockService;->mTooDark:Z

    if-nez v3, :cond_29

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v1

    float-to-double v3, v3

    const-wide/high16 v5, 0x4024

    cmpg-double v3, v3, v5

    if-gtz v3, :cond_2a

    :cond_29
    move v1, v2

    :cond_2a
    iput-boolean v1, p0, Lcom/android/facelock/FaceLockService;->mTooDark:Z

    goto :goto_11
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .registers 4
    .parameter "intent"

    .prologue
    .line 771
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/facelock/FaceLockService;->mClosingDown:Z

    .line 773
    invoke-static {}, Lcom/android/facelock/EventLogTags;->writeFacelockDeactivated()V

    .line 775
    invoke-direct {p0}, Lcom/android/facelock/FaceLockService;->closeCamera()V

    .line 776
    iget-object v0, p0, Lcom/android/facelock/FaceLockService;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_13

    .line 777
    iget-object v0, p0, Lcom/android/facelock/FaceLockService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 781
    :cond_13
    iget-boolean v0, p0, Lcom/android/facelock/FaceLockService;->mPreviewShowing:Z

    if-eqz v0, :cond_1a

    invoke-direct {p0}, Lcom/android/facelock/FaceLockService;->sendRemoveViewMessage()V

    .line 783
    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method public sendCancel()V
    .registers 5

    .prologue
    .line 497
    sget-object v1, Lcom/android/facelock/FaceLockService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 498
    :try_start_3
    iget-object v0, p0, Lcom/android/facelock/FaceLockService;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/facelock/FaceLockService;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 499
    :cond_c
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_18

    .line 500
    iget-object v0, p0, Lcom/android/facelock/FaceLockService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    sget v2, Lcom/android/facelock/FaceLockService;->CANCEL_WAIT:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 501
    return-void

    .line 499
    :catchall_18
    move-exception v0

    :try_start_19
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public stopAnimation()V
    .registers 3

    .prologue
    .line 516
    sget-object v1, Lcom/android/facelock/FaceLockService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 517
    :try_start_3
    iget-object v0, p0, Lcom/android/facelock/FaceLockService;->mFader:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/facelock/FaceLockService;->mFader:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 518
    :cond_10
    monitor-exit v1

    .line 519
    return-void

    .line 518
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method
