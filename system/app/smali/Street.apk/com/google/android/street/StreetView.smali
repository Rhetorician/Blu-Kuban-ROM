.class Lcom/google/android/street/StreetView;
.super Landroid/view/SurfaceView;
.source "StreetView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Lcom/google/android/common/gesture/MultiTouchListener;
.implements Lcom/google/android/street/PanoramaManager$ConfigFetchListener;
.implements Lcom/google/android/street/Renderer$RenderStatusReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/street/StreetView$OrientationSensorListener;,
        Lcom/google/android/street/StreetView$Status;,
        Lcom/google/android/street/StreetView$Flinger;
    }
.end annotation


# instance fields
.field private final clickToGoUiMode:I

.field private mAnchorPitch:F

.field private mAnchorYaw:F

.field private mAspectRatio:F

.field private mBadPanorama:Z

.field private mCurrentStatus:Lcom/google/android/street/StreetView$Status;

.field private mFlinger:Lcom/google/android/street/StreetView$Flinger;

.field private final mFlingerLock:Ljava/lang/Object;

.field private final mHandler:Landroid/os/Handler;

.field private mHighlighter:Lcom/google/android/street/Highlighter;

.field private mHorizontalTanRatio:F

.field private mInitialPanoId:Ljava/lang/String;

.field private mInitialPanoMapPoint:Lcom/google/android/street/MapPoint;

.field private mIsTablet:Z

.field private mLastDX:F

.field private mLastDY:F

.field private mNetworkUnavailableToast:Landroid/widget/Toast;

.field private mOldProgress:I

.field private mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

.field private mPanoramaConfigCache:Lcom/google/android/street/PanoramaConfigCache;

.field private mPanoramaLink:Lcom/google/android/street/PanoramaLink;

.field private mPanoramaManager:Lcom/google/android/street/PanoramaManager;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mRenderer:Lcom/google/android/street/Renderer;

.field private mRequestedFaceToLatLng:Lcom/google/android/street/MapPoint;

.field private mRequestedUserOrientation:Lcom/google/android/street/UserOrientation;

.field private mScreenDensity:F

.field private mSensorEnabled:Z

.field private final mSensorListener:Lcom/google/android/street/StreetView$OrientationSensorListener;

.field private mStatusOverride:Ljava/lang/String;

.field private mStreet:Lcom/google/android/street/Street;

.field private mTrackballGestureDetector:Lcom/google/android/street/TrackballGestureDetector;

.field private mUnzoomedFovH:F

.field private mUnzoomedFovV:F

.field private mUseSensorToControlView:Z

.field private final mUserActivityReporter:Ljava/lang/Runnable;

.field private mUserOrientation:Lcom/google/android/street/UserOrientation;

.field private mVerticalTanRatio:F

.field private mZoomButtonsController:Landroid/widget/ZoomButtonsController;

.field private mZoomButtonsEnabled:Z

.field private mZoomLevels:I

.field private panoCount:I

.field private timer:Lcom/google/android/street/Timer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 509
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/street/StreetView;->mZoomButtonsEnabled:Z

    .line 102
    iput v2, p0, Lcom/google/android/street/StreetView;->clickToGoUiMode:I

    .line 130
    iput v2, p0, Lcom/google/android/street/StreetView;->panoCount:I

    .line 131
    iput-object v1, p0, Lcom/google/android/street/StreetView;->timer:Lcom/google/android/street/Timer;

    .line 183
    new-instance v0, Lcom/google/android/street/StreetView$1;

    invoke-direct {v0, p0}, Lcom/google/android/street/StreetView$1;-><init>(Lcom/google/android/street/StreetView;)V

    iput-object v0, p0, Lcom/google/android/street/StreetView;->mUserActivityReporter:Ljava/lang/Runnable;

    .line 195
    new-instance v0, Lcom/google/android/street/StreetView$2;

    invoke-direct {v0, p0}, Lcom/google/android/street/StreetView$2;-><init>(Lcom/google/android/street/StreetView;)V

    iput-object v0, p0, Lcom/google/android/street/StreetView;->mHandler:Landroid/os/Handler;

    .line 215
    new-instance v0, Lcom/google/android/street/StreetView$OrientationSensorListener;

    invoke-direct {v0, p0, v1}, Lcom/google/android/street/StreetView$OrientationSensorListener;-><init>(Lcom/google/android/street/StreetView;Lcom/google/android/street/StreetView$1;)V

    iput-object v0, p0, Lcom/google/android/street/StreetView;->mSensorListener:Lcom/google/android/street/StreetView$OrientationSensorListener;

    .line 218
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/street/StreetView;->mFlingerLock:Ljava/lang/Object;

    .line 219
    iput-object v1, p0, Lcom/google/android/street/StreetView;->mFlinger:Lcom/google/android/street/StreetView$Flinger;

    .line 510
    invoke-direct {p0, p1}, Lcom/google/android/street/StreetView;->commonConstructor(Landroid/content/Context;)V

    .line 511
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 514
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/street/StreetView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 515
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 518
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/street/StreetView;->mZoomButtonsEnabled:Z

    .line 102
    iput v2, p0, Lcom/google/android/street/StreetView;->clickToGoUiMode:I

    .line 130
    iput v2, p0, Lcom/google/android/street/StreetView;->panoCount:I

    .line 131
    iput-object v1, p0, Lcom/google/android/street/StreetView;->timer:Lcom/google/android/street/Timer;

    .line 183
    new-instance v0, Lcom/google/android/street/StreetView$1;

    invoke-direct {v0, p0}, Lcom/google/android/street/StreetView$1;-><init>(Lcom/google/android/street/StreetView;)V

    iput-object v0, p0, Lcom/google/android/street/StreetView;->mUserActivityReporter:Ljava/lang/Runnable;

    .line 195
    new-instance v0, Lcom/google/android/street/StreetView$2;

    invoke-direct {v0, p0}, Lcom/google/android/street/StreetView$2;-><init>(Lcom/google/android/street/StreetView;)V

    iput-object v0, p0, Lcom/google/android/street/StreetView;->mHandler:Landroid/os/Handler;

    .line 215
    new-instance v0, Lcom/google/android/street/StreetView$OrientationSensorListener;

    invoke-direct {v0, p0, v1}, Lcom/google/android/street/StreetView$OrientationSensorListener;-><init>(Lcom/google/android/street/StreetView;Lcom/google/android/street/StreetView$1;)V

    iput-object v0, p0, Lcom/google/android/street/StreetView;->mSensorListener:Lcom/google/android/street/StreetView$OrientationSensorListener;

    .line 218
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/street/StreetView;->mFlingerLock:Ljava/lang/Object;

    .line 219
    iput-object v1, p0, Lcom/google/android/street/StreetView;->mFlinger:Lcom/google/android/street/StreetView$Flinger;

    .line 519
    invoke-direct {p0, p1}, Lcom/google/android/street/StreetView;->commonConstructor(Landroid/content/Context;)V

    .line 520
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/street/StreetView;)Landroid/os/PowerManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/street/StreetView;ZLcom/google/android/street/PanoramaConfig;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/google/android/street/StreetView;->addPanoramaConfig(ZLcom/google/android/street/PanoramaConfig;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/street/StreetView;)Lcom/google/android/street/UserOrientation;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mUserOrientation:Lcom/google/android/street/UserOrientation;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/android/street/StreetView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/google/android/street/StreetView;->updateRendererUserOrientation()V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/android/street/StreetView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/google/android/street/StreetView;->updateButtonsEnabled()V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/android/street/StreetView;)Landroid/widget/ZoomButtonsController;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/android/street/StreetView;F)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/google/android/street/StreetView;->smoothZoom(F)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/street/StreetView;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/google/android/street/StreetView;->doUpdateProgress(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/street/StreetView;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/google/android/street/StreetView;->doUpdateTransitionProgress(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/street/StreetView;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mFlingerLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/street/StreetView;)Lcom/google/android/street/PanoramaConfig;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/street/StreetView;)Lcom/google/android/street/Street;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mStreet:Lcom/google/android/street/Street;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/street/StreetView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/google/android/street/StreetView;->okToAct()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/google/android/street/StreetView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/google/android/street/StreetView;->reportUserActivity()V

    return-void
.end method

.method private addPanoramaConfig(ZLcom/google/android/street/PanoramaConfig;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1913
    if-eqz p1, :cond_d

    .line 1914
    const-string v0, "SV panorama config request was interrupted"

    invoke-static {v0}, Lcom/google/android/street/Street;->log(Ljava/lang/String;)V

    .line 1918
    :cond_7
    :goto_7
    if-eqz p1, :cond_26

    .line 1924
    :goto_9
    invoke-virtual {p0}, Lcom/google/android/street/StreetView;->invalidate()V

    .line 1925
    return-void

    .line 1915
    :cond_d
    if-nez p2, :cond_7

    .line 1916
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SV received panorama "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/street/Street;->log(Ljava/lang/String;)V

    goto :goto_7

    .line 1921
    :cond_26
    if-nez p2, :cond_2f

    const/4 v0, 0x1

    :goto_29
    iput-boolean v0, p0, Lcom/google/android/street/StreetView;->mBadPanorama:Z

    .line 1922
    invoke-direct {p0, p2}, Lcom/google/android/street/StreetView;->setPanoramaConfig(Lcom/google/android/street/PanoramaConfig;)V

    goto :goto_9

    .line 1921
    :cond_2f
    const/4 v0, 0x0

    goto :goto_29
.end method

.method private checkStatus()Ljava/lang/CharSequence;
    .registers 16

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 1774
    invoke-direct {p0}, Lcom/google/android/street/StreetView;->wasNetworkUp()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 1775
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mNetworkUnavailableToast:Landroid/widget/Toast;

    if-eqz v0, :cond_14

    .line 1776
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mNetworkUnavailableToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 1777
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/street/StreetView;->mNetworkUnavailableToast:Landroid/widget/Toast;

    .line 1786
    :cond_14
    :goto_14
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mPanoramaLink:Lcom/google/android/street/PanoramaLink;

    if-eqz v0, :cond_66

    iget-object v0, p0, Lcom/google/android/street/StreetView;->mPanoramaLink:Lcom/google/android/street/PanoramaLink;

    iget-object v0, v0, Lcom/google/android/street/PanoramaLink;->mPanoId:Ljava/lang/String;

    move-object v2, v0

    .line 1788
    :goto_1d
    if-nez v2, :cond_23

    iget-object v0, p0, Lcom/google/android/street/StreetView;->mInitialPanoMapPoint:Lcom/google/android/street/MapPoint;

    if-eqz v0, :cond_dc

    .line 1790
    :cond_23
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mPanoramaConfigCache:Lcom/google/android/street/PanoramaConfigCache;

    invoke-virtual {v0, v2}, Lcom/google/android/street/PanoramaConfigCache;->get(Ljava/lang/String;)Lcom/google/android/street/PanoramaConfig;

    move-result-object v1

    .line 1791
    if-eqz v1, :cond_71

    .line 1796
    invoke-direct {p0, v1}, Lcom/google/android/street/StreetView;->setPanoramaConfig(Lcom/google/android/street/PanoramaConfig;)V

    .line 1802
    iget-object v0, v1, Lcom/google/android/street/PanoramaConfig;->mRootImageKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    move v4, v3

    :goto_35
    if-ge v4, v2, :cond_6c

    .line 1803
    iget-object v5, p0, Lcom/google/android/street/StreetView;->mPanoramaManager:Lcom/google/android/street/PanoramaManager;

    iget-object v7, p0, Lcom/google/android/street/StreetView;->mRenderer:Lcom/google/android/street/Renderer;

    iget-object v0, v1, Lcom/google/android/street/PanoramaConfig;->mRootImageKeys:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/street/PanoramaImageKey;

    sub-int v8, v2, v6

    if-ne v4, v8, :cond_6a

    move v8, v6

    :goto_48
    invoke-virtual {v5, v7, v0, v8}, Lcom/google/android/street/PanoramaManager;->requestPanoramaTile(Lcom/google/android/street/PanoramaManager$PanoFetchListener;Lcom/google/android/street/PanoramaImageKey;Z)Z

    .line 1802
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_35

    .line 1779
    :cond_4f
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mNetworkUnavailableToast:Landroid/widget/Toast;

    if-nez v0, :cond_14

    .line 1780
    invoke-virtual {p0}, Lcom/google/android/street/StreetView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f04000e

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/street/StreetView;->mNetworkUnavailableToast:Landroid/widget/Toast;

    .line 1782
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mNetworkUnavailableToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_14

    .line 1786
    :cond_66
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mInitialPanoId:Ljava/lang/String;

    move-object v2, v0

    goto :goto_1d

    :cond_6a
    move v8, v3

    .line 1803
    goto :goto_48

    .line 1807
    :cond_6c
    invoke-direct {p0}, Lcom/google/android/street/StreetView;->getStatusFromPanoramaConfig()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1861
    :goto_70
    return-object v0

    .line 1814
    :cond_71
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mPanoramaManager:Lcom/google/android/street/PanoramaManager;

    iget-object v1, p0, Lcom/google/android/street/StreetView;->mInitialPanoMapPoint:Lcom/google/android/street/MapPoint;

    if-nez v2, :cond_da

    move v4, v6

    :goto_78
    invoke-virtual {v0, p0, v2, v1, v4}, Lcom/google/android/street/PanoramaManager;->requestPanoramaConfiguration(Lcom/google/android/street/PanoramaManager$ConfigFetchListener;Ljava/lang/String;Lcom/google/android/street/MapPoint;Z)Z

    .line 1816
    if-eqz v2, :cond_d5

    .line 1827
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mPanoramaManager:Lcom/google/android/street/PanoramaManager;

    iget-object v1, p0, Lcom/google/android/street/StreetView;->mRenderer:Lcom/google/android/street/Renderer;

    move v4, v3

    move v5, v3

    move v7, v3

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/street/PanoramaManager;->requestPanoramaTile(Lcom/google/android/street/PanoramaManager$PanoFetchListener;Ljava/lang/String;IIIIZ)Z

    .line 1829
    iget-object v7, p0, Lcom/google/android/street/StreetView;->mPanoramaManager:Lcom/google/android/street/PanoramaManager;

    iget-object v8, p0, Lcom/google/android/street/StreetView;->mRenderer:Lcom/google/android/street/Renderer;

    const/4 v13, 0x2

    move-object v9, v2

    move v10, v3

    move v11, v3

    move v12, v3

    move v14, v3

    invoke-virtual/range {v7 .. v14}, Lcom/google/android/street/PanoramaManager;->requestPanoramaTile(Lcom/google/android/street/PanoramaManager$PanoFetchListener;Ljava/lang/String;IIIIZ)Z

    .line 1831
    iget-object v7, p0, Lcom/google/android/street/StreetView;->mPanoramaManager:Lcom/google/android/street/PanoramaManager;

    iget-object v8, p0, Lcom/google/android/street/StreetView;->mRenderer:Lcom/google/android/street/Renderer;

    const/4 v13, 0x3

    move-object v9, v2

    move v10, v3

    move v11, v3

    move v12, v3

    move v14, v3

    invoke-virtual/range {v7 .. v14}, Lcom/google/android/street/PanoramaManager;->requestPanoramaTile(Lcom/google/android/street/PanoramaManager$PanoFetchListener;Ljava/lang/String;IIIIZ)Z

    .line 1833
    iget-object v7, p0, Lcom/google/android/street/StreetView;->mPanoramaManager:Lcom/google/android/street/PanoramaManager;

    iget-object v8, p0, Lcom/google/android/street/StreetView;->mRenderer:Lcom/google/android/street/Renderer;

    const/4 v13, 0x4

    move-object v9, v2

    move v10, v3

    move v11, v3

    move v12, v3

    move v14, v3

    invoke-virtual/range {v7 .. v14}, Lcom/google/android/street/PanoramaManager;->requestPanoramaTile(Lcom/google/android/street/PanoramaManager$PanoFetchListener;Ljava/lang/String;IIIIZ)Z

    .line 1835
    iget-object v7, p0, Lcom/google/android/street/StreetView;->mPanoramaManager:Lcom/google/android/street/PanoramaManager;

    iget-object v8, p0, Lcom/google/android/street/StreetView;->mRenderer:Lcom/google/android/street/Renderer;

    const/4 v13, 0x5

    move-object v9, v2

    move v10, v3

    move v11, v3

    move v12, v3

    move v14, v3

    invoke-virtual/range {v7 .. v14}, Lcom/google/android/street/PanoramaManager;->requestPanoramaTile(Lcom/google/android/street/PanoramaManager$PanoFetchListener;Ljava/lang/String;IIIIZ)Z

    .line 1837
    iget-object v7, p0, Lcom/google/android/street/StreetView;->mPanoramaManager:Lcom/google/android/street/PanoramaManager;

    iget-object v8, p0, Lcom/google/android/street/StreetView;->mRenderer:Lcom/google/android/street/Renderer;

    const/4 v13, 0x6

    move-object v9, v2

    move v10, v3

    move v11, v3

    move v12, v3

    move v14, v3

    invoke-virtual/range {v7 .. v14}, Lcom/google/android/street/PanoramaManager;->requestPanoramaTile(Lcom/google/android/street/PanoramaManager$PanoFetchListener;Ljava/lang/String;IIIIZ)Z

    .line 1841
    iget-object v7, p0, Lcom/google/android/street/StreetView;->mPanoramaManager:Lcom/google/android/street/PanoramaManager;

    iget-object v8, p0, Lcom/google/android/street/StreetView;->mRenderer:Lcom/google/android/street/Renderer;

    const/4 v13, -0x1

    move-object v9, v2

    move v10, v3

    move v11, v3

    move v12, v3

    move v14, v6

    invoke-virtual/range {v7 .. v14}, Lcom/google/android/street/PanoramaManager;->requestPanoramaTile(Lcom/google/android/street/PanoramaManager$PanoFetchListener;Ljava/lang/String;IIIIZ)Z

    .line 1844
    :cond_d5
    invoke-direct {p0}, Lcom/google/android/street/StreetView;->getLoadingStatus()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_70

    :cond_da
    move v4, v3

    .line 1814
    goto :goto_78

    .line 1848
    :cond_dc
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    if-eqz v0, :cond_ec

    .line 1849
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mStatusOverride:Ljava/lang/String;

    if-eqz v0, :cond_e7

    iget-object v0, p0, Lcom/google/android/street/StreetView;->mStatusOverride:Ljava/lang/String;

    goto :goto_70

    :cond_e7
    invoke-direct {p0}, Lcom/google/android/street/StreetView;->getStatusFromPanoramaConfig()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_70

    .line 1853
    :cond_ec
    iget-boolean v0, p0, Lcom/google/android/street/StreetView;->mBadPanorama:Z

    if-eqz v0, :cond_f9

    .line 1858
    const v0, 0x7f04000b

    invoke-direct {p0, v0}, Lcom/google/android/street/StreetView;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto/16 :goto_70

    .line 1861
    :cond_f9
    const v0, 0x7f04000a

    invoke-direct {p0, v0}, Lcom/google/android/street/StreetView;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto/16 :goto_70
.end method

.method private clickToGo(FF)Z
    .registers 14
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v2, 0x0

    const/4 v10, 0x1

    const/4 v5, 0x0

    .line 1145
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    iget-object v0, v0, Lcom/google/android/street/PanoramaConfig;->mDepthMap:Lcom/google/android/street/DepthMap;

    if-nez v0, :cond_b

    move v0, v5

    .line 1198
    :goto_a
    return v0

    .line 1151
    :cond_b
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mRenderer:Lcom/google/android/street/Renderer;

    invoke-virtual {v0, p1, p2, v5}, Lcom/google/android/street/Renderer;->pixelToYawPitch(FFZ)[F

    move-result-object v9

    .line 1152
    .local v9, yawPitch:[F
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    aget v3, v9, v5

    aget v4, v9, v10

    invoke-virtual {v0, v3, v4, v9}, Lcom/google/android/street/PanoramaConfig;->worldToVehicleYawPitch(FF[F)V

    .line 1154
    const/4 v0, 0x2

    new-array v6, v0, [F

    .line 1158
    .local v6, newYawPitch:[F
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    iget-object v0, v0, Lcom/google/android/street/PanoramaConfig;->mDepthMap:Lcom/google/android/street/DepthMap;

    invoke-virtual {v0}, Lcom/google/android/street/DepthMap;->decompress()Z

    .line 1160
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    iget-object v0, v0, Lcom/google/android/street/PanoramaConfig;->mDepthMap:Lcom/google/android/street/DepthMap;

    aget v3, v9, v5

    aget v4, v9, v10

    invoke-virtual {v0, v3, v4, v6}, Lcom/google/android/street/DepthMap;->getPanoId(FF[F)Ljava/lang/String;

    move-result-object v1

    .line 1164
    .local v1, newPanoId:Ljava/lang/String;
    if-nez v1, :cond_34

    move v0, v10

    .line 1165
    goto :goto_a

    .line 1170
    :cond_34
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    iget-object v0, v0, Lcom/google/android/street/PanoramaConfig;->mPanoId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    move v0, v5

    .line 1171
    goto :goto_a

    .line 1176
    :cond_40
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    aget v3, v6, v5

    aget v4, v6, v10

    invoke-virtual {v0, v3, v4, v6}, Lcom/google/android/street/PanoramaConfig;->vehicleToWorldYawPitch(FF[F)V

    .line 1181
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    iget-object v0, v0, Lcom/google/android/street/PanoramaConfig;->mDepthMap:Lcom/google/android/street/DepthMap;

    aget v3, v9, v5

    aget v4, v9, v10

    invoke-virtual {v0, v3, v4}, Lcom/google/android/street/DepthMap;->getPlane(FF)Lcom/google/android/street/DepthMap$DepthMapPlane;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/street/DepthMap$DepthMapPlane;->isGround()Z

    move-result v0

    if-nez v0, :cond_78

    .line 1183
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mUserOrientation:Lcom/google/android/street/UserOrientation;

    aget v3, v6, v5

    invoke-static {v3}, Lcom/google/android/street/StreetMath;->normalizeUnitAngle(F)F

    move-result v3

    invoke-static {v3}, Lcom/google/android/street/StreetMath;->unitToDegrees(F)F

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/android/street/UserOrientation;->setYaw(F)V

    .line 1185
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mUserOrientation:Lcom/google/android/street/UserOrientation;

    const/high16 v3, 0x4000

    aget v4, v6, v10

    invoke-static {v4}, Lcom/google/android/street/StreetMath;->normalizeUnitAngle(F)F

    move-result v4

    mul-float/2addr v3, v4

    invoke-virtual {v0, v3}, Lcom/google/android/street/UserOrientation;->setTilt(F)V

    .line 1188
    :cond_78
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    iget-object v0, v0, Lcom/google/android/street/PanoramaConfig;->mDepthMap:Lcom/google/android/street/DepthMap;

    aget v3, v9, v5

    aget v4, v9, v10

    invoke-virtual {v0, v3, v4}, Lcom/google/android/street/DepthMap;->getPanoPoint(FF)Lcom/google/android/street/DepthMap$Point;

    move-result-object v7

    .line 1191
    .local v7, panoPoint:Lcom/google/android/street/DepthMap$Point;
    new-instance v8, Lcom/google/android/street/Renderer$Transition;

    iget v0, v7, Lcom/google/android/street/DepthMap$Point;->x:F

    iget v3, v7, Lcom/google/android/street/DepthMap$Point;->y:F

    iget-object v4, p0, Lcom/google/android/street/StreetView;->mUserOrientation:Lcom/google/android/street/UserOrientation;

    const/16 v5, 0x3e8

    invoke-direct {v8, v0, v3, v4, v5}, Lcom/google/android/street/Renderer$Transition;-><init>(FFLcom/google/android/street/UserOrientation;I)V

    .line 1194
    .local v8, transition:Lcom/google/android/street/Renderer$Transition;
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    iget-object v0, v0, Lcom/google/android/street/PanoramaConfig;->mDepthMap:Lcom/google/android/street/DepthMap;

    invoke-virtual {v8, v0}, Lcom/google/android/street/Renderer$Transition;->detectCollision(Lcom/google/android/street/DepthMap;)Z

    .line 1195
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mRenderer:Lcom/google/android/street/Renderer;

    invoke-virtual {v0, v8}, Lcom/google/android/street/Renderer;->startTransition(Lcom/google/android/street/Renderer$Transition;)V

    .line 1196
    iget-object v3, p0, Lcom/google/android/street/StreetView;->mUserOrientation:Lcom/google/android/street/UserOrientation;

    move-object v0, p0

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/street/StreetView;->loadPanorama(Ljava/lang/String;Lcom/google/android/street/MapPoint;Lcom/google/android/street/UserOrientation;Lcom/google/android/street/MapPoint;Lcom/google/android/street/PanoramaConfig;)V

    .line 1197
    invoke-virtual {p0}, Lcom/google/android/street/StreetView;->invalidate()V

    move v0, v10

    .line 1198
    goto/16 :goto_a
.end method

.method private commonConstructor(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 523
    invoke-virtual {p0}, Lcom/google/android/street/StreetView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 525
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    iput v2, p0, Lcom/google/android/street/StreetView;->mScreenDensity:F

    .line 526
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SV ScreenDensity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/street/StreetView;->mScreenDensity:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", DPI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/street/Street;->log(Ljava/lang/String;)V

    .line 528
    invoke-direct {p0}, Lcom/google/android/street/StreetView;->updateDeviceOrientation()V

    .line 529
    new-instance v2, Lcom/google/android/street/UserOrientation;

    invoke-direct {v2}, Lcom/google/android/street/UserOrientation;-><init>()V

    iput-object v2, p0, Lcom/google/android/street/StreetView;->mUserOrientation:Lcom/google/android/street/UserOrientation;

    .line 530
    new-instance v2, Lcom/google/android/street/PanoramaConfigCache;

    const/16 v3, 0x32

    invoke-direct {v2, v3}, Lcom/google/android/street/PanoramaConfigCache;-><init>(I)V

    iput-object v2, p0, Lcom/google/android/street/StreetView;->mPanoramaConfigCache:Lcom/google/android/street/PanoramaConfigCache;

    .line 532
    new-instance v2, Lcom/google/android/street/StreetView$Status;

    invoke-direct {v2}, Lcom/google/android/street/StreetView$Status;-><init>()V

    iput-object v2, p0, Lcom/google/android/street/StreetView;->mCurrentStatus:Lcom/google/android/street/StreetView$Status;

    .line 533
    new-instance v2, Lcom/google/android/street/TrackballGestureDetector;

    iget-object v3, p0, Lcom/google/android/street/StreetView;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, v3}, Lcom/google/android/street/TrackballGestureDetector;-><init>(Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/google/android/street/StreetView;->mTrackballGestureDetector:Lcom/google/android/street/TrackballGestureDetector;

    .line 535
    invoke-static {}, Lcom/google/android/common/gesture/GestureController;->getInstance()Lcom/google/android/common/gesture/GestureController;

    move-result-object v2

    invoke-virtual {v2, p1, p0, p0}, Lcom/google/android/common/gesture/GestureController;->initGestureController(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 537
    invoke-static {}, Lcom/google/android/common/gesture/GestureController;->getInstance()Lcom/google/android/common/gesture/GestureController;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/common/gesture/GestureController;->setIsLongpressEnabled(Z)V

    .line 539
    invoke-static {}, Lcom/google/android/common/gesture/MultiTouchController;->getInstance()Lcom/google/android/common/gesture/MultiTouchController;

    move-result-object v1

    .line 541
    .local v1, multiTouchController:Lcom/google/android/common/gesture/MultiTouchController;
    invoke-virtual {v1, p1, p0}, Lcom/google/android/common/gesture/MultiTouchController;->initMultiTouchListener(Landroid/content/Context;Lcom/google/android/common/gesture/MultiTouchListener;)V

    .line 544
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/common/gesture/MultiTouchController;->setMultiTouchSupported(Landroid/content/pm/PackageManager;)V

    .line 546
    invoke-virtual {v1}, Lcom/google/android/common/gesture/MultiTouchController;->isMultiTouchSupported()Z

    move-result v2

    if-nez v2, :cond_85

    const/4 v2, 0x1

    :goto_7b
    iput-boolean v2, p0, Lcom/google/android/street/StreetView;->mZoomButtonsEnabled:Z

    .line 548
    new-instance v2, Lcom/google/android/street/Highlighter;

    invoke-direct {v2}, Lcom/google/android/street/Highlighter;-><init>()V

    iput-object v2, p0, Lcom/google/android/street/StreetView;->mHighlighter:Lcom/google/android/street/Highlighter;

    .line 549
    return-void

    :cond_85
    move v2, v4

    .line 546
    goto :goto_7b
.end method

.method private createRenderer()V
    .registers 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 716
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mRenderer:Lcom/google/android/street/Renderer;

    if-eqz v0, :cond_e

    .line 717
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mRenderer already exists"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 720
    :cond_e
    new-instance v0, Lcom/google/android/street/Renderer;

    iget-object v1, p0, Lcom/google/android/street/StreetView;->mPanoramaManager:Lcom/google/android/street/PanoramaManager;

    iget v2, p0, Lcom/google/android/street/StreetView;->mScreenDensity:F

    invoke-direct {v0, v1, v2}, Lcom/google/android/street/Renderer;-><init>(Lcom/google/android/street/PanoramaManager;F)V

    iput-object v0, p0, Lcom/google/android/street/StreetView;->mRenderer:Lcom/google/android/street/Renderer;

    .line 724
    iget-boolean v0, p0, Lcom/google/android/street/StreetView;->mIsTablet:Z

    if-nez v0, :cond_3b

    move v6, v4

    .line 726
    .local v6, drawRoadLabels:Z
    :goto_1e
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mRenderer:Lcom/google/android/street/Renderer;

    invoke-virtual {p0}, Lcom/google/android/street/StreetView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/street/StreetView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    move-object v3, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/street/Renderer;->initialize(Landroid/content/Context;Landroid/view/SurfaceHolder;Lcom/google/android/street/Renderer$RenderStatusReceiver;ZZZ)V

    .line 730
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mRenderer:Lcom/google/android/street/Renderer;

    iget-object v1, p0, Lcom/google/android/street/StreetView;->timer:Lcom/google/android/street/Timer;

    invoke-virtual {v0, v1}, Lcom/google/android/street/Renderer;->setTimer(Lcom/google/android/street/Timer;)V

    .line 731
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mHighlighter:Lcom/google/android/street/Highlighter;

    iget-object v1, p0, Lcom/google/android/street/StreetView;->mRenderer:Lcom/google/android/street/Renderer;

    invoke-virtual {v0, v1}, Lcom/google/android/street/Highlighter;->setRenderer(Lcom/google/android/street/Renderer;)V

    .line 732
    return-void

    .end local v6           #drawRoadLabels:Z
    :cond_3b
    move v6, v5

    .line 724
    goto :goto_1e
.end method

.method private doTilt(F)V
    .registers 7
    .parameter

    .prologue
    .line 1619
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    iget v0, v0, Lcom/google/android/street/PanoramaConfig;->mProjectionType:I

    .line 1623
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mUserOrientation:Lcom/google/android/street/UserOrientation;

    invoke-virtual {v0}, Lcom/google/android/street/UserOrientation;->getScale()F

    move-result v0

    .line 1624
    const/high16 v1, 0x3e00

    mul-float/2addr v0, v1

    .line 1632
    iget-object v1, p0, Lcom/google/android/street/StreetView;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    iget v1, v1, Lcom/google/android/street/PanoramaConfig;->mMaxVisiblePitchDeg:F

    invoke-static {v1}, Lcom/google/android/street/StreetView;->tiltDegToHalfTurns(F)F

    move-result v1

    add-float/2addr v1, v0

    .line 1635
    iget-object v2, p0, Lcom/google/android/street/StreetView;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    iget v2, v2, Lcom/google/android/street/PanoramaConfig;->mMinVisiblePitchDeg:F

    invoke-static {v2}, Lcom/google/android/street/StreetView;->tiltDegToHalfTurns(F)F

    move-result v2

    sub-float/2addr v2, v0

    .line 1638
    cmpl-float v3, v1, v2

    if-lez v3, :cond_3a

    .line 1639
    add-float/2addr v1, v2

    const/high16 v2, 0x3f00

    mul-float/2addr v1, v2

    move v2, v1

    .line 1642
    :goto_28
    iget-object v3, p0, Lcom/google/android/street/StreetView;->mUserOrientation:Lcom/google/android/street/UserOrientation;

    invoke-virtual {v3}, Lcom/google/android/street/UserOrientation;->getTilt()F

    move-result v3

    mul-float/2addr v0, p1

    add-float/2addr v0, v3

    .line 1646
    iget-object v3, p0, Lcom/google/android/street/StreetView;->mUserOrientation:Lcom/google/android/street/UserOrientation;

    invoke-static {v0, v2, v1}, Lcom/google/android/street/StreetMath;->clamp(FFF)F

    move-result v0

    invoke-virtual {v3, v0}, Lcom/google/android/street/UserOrientation;->setTilt(F)V

    .line 1647
    return-void

    :cond_3a
    move v4, v2

    move v2, v1

    move v1, v4

    goto :goto_28
.end method

.method private doUpdateProgress(I)V
    .registers 3
    .parameter "progress"

    .prologue
    .line 1304
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mStreet:Lcom/google/android/street/Street;

    invoke-virtual {v0, p1}, Lcom/google/android/street/Street;->reportProgress(I)V

    .line 1305
    return-void
.end method

.method private doUpdateTransitionProgress(I)V
    .registers 3
    .parameter "progress"

    .prologue
    .line 1308
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mStreet:Lcom/google/android/street/Street;

    invoke-virtual {v0, p1}, Lcom/google/android/street/Street;->reportTransitionProgress(I)V

    .line 1309
    return-void
.end method

.method private doYaw(F)V
    .registers 3
    .parameter "deltaYaw"

    .prologue
    .line 1572
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/street/StreetView;->doYawTilt(FF)V

    .line 1573
    return-void
.end method

.method private doYawTilt(FF)V
    .registers 7
    .parameter "deltaYaw"
    .parameter "deltaTilt"

    .prologue
    .line 1583
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mUserOrientation:Lcom/google/android/street/UserOrientation;

    iget-object v1, p0, Lcom/google/android/street/StreetView;->mUserOrientation:Lcom/google/android/street/UserOrientation;

    invoke-virtual {v1}, Lcom/google/android/street/UserOrientation;->getYaw()F

    move-result v1

    const/high16 v2, 0x4120

    mul-float/2addr v2, p1

    iget-object v3, p0, Lcom/google/android/street/StreetView;->mUserOrientation:Lcom/google/android/street/UserOrientation;

    invoke-virtual {v3}, Lcom/google/android/street/UserOrientation;->getScale()F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-static {v1}, Lcom/google/android/street/StreetMath;->normalizeDegrees(F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/street/UserOrientation;->setYaw(F)V

    .line 1588
    invoke-direct {p0, p2}, Lcom/google/android/street/StreetView;->doTilt(F)V

    .line 1589
    return-void
.end method

.method private doZoom(F)V
    .registers 5
    .parameter "deltaZoom"

    .prologue
    .line 1598
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mUserOrientation:Lcom/google/android/street/UserOrientation;

    iget v1, p0, Lcom/google/android/street/StreetView;->mZoomLevels:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/google/android/street/UserOrientation;->addZoom(FI)V

    .line 1599
    return-void
.end method

.method private declared-synchronized enableSensor(Z)V
    .registers 3
    .parameter "enable"

    .prologue
    .line 1983
    monitor-enter p0

    if-eqz p1, :cond_15

    .line 1984
    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/street/StreetView;->mSensorEnabled:Z

    if-nez v0, :cond_13

    .line 1985
    iget-boolean v0, p0, Lcom/google/android/street/StreetView;->mUseSensorToControlView:Z

    if-eqz v0, :cond_13

    .line 1986
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mSensorListener:Lcom/google/android/street/StreetView$OrientationSensorListener;

    invoke-virtual {v0}, Lcom/google/android/street/StreetView$OrientationSensorListener;->register()V

    .line 1987
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/street/StreetView;->mSensorEnabled:Z
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_22

    .line 1996
    :cond_13
    :goto_13
    monitor-exit p0

    return-void

    .line 1991
    :cond_15
    :try_start_15
    iget-boolean v0, p0, Lcom/google/android/street/StreetView;->mSensorEnabled:Z

    if-eqz v0, :cond_13

    .line 1992
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mSensorListener:Lcom/google/android/street/StreetView$OrientationSensorListener;

    invoke-virtual {v0}, Lcom/google/android/street/StreetView$OrientationSensorListener;->unregister()V

    .line 1993
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/street/StreetView;->mSensorEnabled:Z
    :try_end_21
    .catchall {:try_start_15 .. :try_end_21} :catchall_22

    goto :goto_13

    .line 1983
    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private finishTap(Landroid/view/MotionEvent;)V
    .registers 10
    .parameter

    .prologue
    const/16 v7, 0x14

    const/4 v6, -0x2

    const/high16 v5, 0x3f80

    const/4 v2, 0x0

    .line 1237
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mRenderer:Lcom/google/android/street/Renderer;

    invoke-virtual {v0}, Lcom/google/android/street/Renderer;->clearPancake()V

    .line 1240
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mHighlighter:Lcom/google/android/street/Highlighter;

    invoke-virtual {v0}, Lcom/google/android/street/Highlighter;->getCurrentlyPressedItem()I

    move-result v0

    .line 1243
    iget-object v1, p0, Lcom/google/android/street/StreetView;->mHighlighter:Lcom/google/android/street/Highlighter;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/google/android/street/Highlighter;->up(FF)I

    move-result v1

    .line 1247
    if-ne v1, v6, :cond_31

    .line 1248
    invoke-virtual {p0}, Lcom/google/android/street/StreetView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f04000c

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1287
    :cond_30
    :goto_30
    return-void

    .line 1253
    :cond_31
    if-ne v0, v6, :cond_54

    .line 1259
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    iget-object v0, v0, Lcom/google/android/street/PanoramaConfig;->mDepthMap:Lcom/google/android/street/DepthMap;

    if-eqz v0, :cond_54

    .line 1260
    const/high16 v0, 0x4286

    iget v3, p0, Lcom/google/android/street/StreetView;->mScreenDensity:F

    mul-float/2addr v0, v3

    .line 1261
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-direct {p0, v3, v4}, Lcom/google/android/street/StreetView;->clickToGo(FF)Z

    move-result v3

    if-nez v3, :cond_30

    .line 1267
    iget-boolean v3, p0, Lcom/google/android/street/StreetView;->mUseSensorToControlView:Z

    if-eqz v3, :cond_6c

    .line 1268
    invoke-direct {p0, v5}, Lcom/google/android/street/StreetView;->smoothZoom(F)V

    .line 1276
    :cond_54
    :goto_54
    if-lt v1, v7, :cond_7a

    .line 1277
    sub-int v0, v1, v7

    .line 1278
    iget-object v1, p0, Lcom/google/android/street/StreetView;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    iget-object v1, v1, Lcom/google/android/street/PanoramaConfig;->mDepthMap:Lcom/google/android/street/DepthMap;

    invoke-virtual {v1, v0}, Lcom/google/android/street/DepthMap;->getPanoId(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/street/StreetView;->mUserOrientation:Lcom/google/android/street/UserOrientation;

    move-object v0, p0

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/street/StreetView;->loadPanorama(Ljava/lang/String;Lcom/google/android/street/MapPoint;Lcom/google/android/street/UserOrientation;Lcom/google/android/street/MapPoint;Lcom/google/android/street/PanoramaConfig;)V

    .line 1280
    invoke-virtual {p0}, Lcom/google/android/street/StreetView;->invalidate()V

    goto :goto_30

    .line 1270
    :cond_6c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float v0, v4, v0

    invoke-direct {p0, v5, v3, v0}, Lcom/google/android/street/StreetView;->smoothZoom(FFF)V

    goto :goto_54

    .line 1284
    :cond_7a
    const/4 v0, -0x1

    if-eq v1, v0, :cond_30

    .line 1285
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mRenderer:Lcom/google/android/street/Renderer;

    invoke-virtual {v0, v1}, Lcom/google/android/street/Renderer;->getPanoramaLink(I)Lcom/google/android/street/PanoramaLink;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/street/StreetView;->goTo(Lcom/google/android/street/PanoramaLink;)V

    goto :goto_30
.end method

.method private formatStreetAddress(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 1892
    if-nez p1, :cond_9

    .line 1893
    if-nez p2, :cond_7

    .line 1894
    const-string v0, ""

    .line 1903
    :goto_6
    return-object v0

    :cond_7
    move-object v0, p2

    .line 1896
    goto :goto_6

    .line 1898
    :cond_9
    if-nez p2, :cond_d

    move-object v0, p1

    .line 1899
    goto :goto_6

    .line 1901
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/street/StreetView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f04000d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1903
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method private getClosestLink(F)Lcom/google/android/street/PanoramaLink;
    .registers 4
    .parameter "yawDeg"

    .prologue
    .line 1666
    const/4 v0, 0x0

    .line 1667
    .local v0, result:Lcom/google/android/street/PanoramaLink;
    iget-object v1, p0, Lcom/google/android/street/StreetView;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    if-eqz v1, :cond_b

    .line 1668
    iget-object v1, p0, Lcom/google/android/street/StreetView;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    invoke-virtual {v1, p1}, Lcom/google/android/street/PanoramaConfig;->getClosestLink(F)Lcom/google/android/street/PanoramaLink;

    move-result-object v0

    .line 1670
    :cond_b
    return-object v0
.end method

.method private getLoadingStatus()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 1866
    invoke-direct {p0}, Lcom/google/android/street/StreetView;->wasNetworkUp()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1867
    const-string v0, ""

    .line 1869
    :goto_8
    return-object v0

    :cond_9
    const v0, 0x7f040006

    invoke-direct {p0, v0}, Lcom/google/android/street/StreetView;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_8
.end method

.method private getStatus(Lcom/google/android/street/StreetView$Status;)V
    .registers 4
    .parameter "status"

    .prologue
    const/4 v1, 0x0

    .line 1748
    invoke-direct {p0}, Lcom/google/android/street/StreetView;->wasNetworkUp()Z

    move-result v0

    iput-boolean v0, p1, Lcom/google/android/street/StreetView$Status;->mGotNetworkConnection:Z

    .line 1749
    iput-boolean v1, p1, Lcom/google/android/street/StreetView$Status;->mGotPanoramaConfig:Z

    .line 1750
    iget-boolean v0, p0, Lcom/google/android/street/StreetView;->mBadPanorama:Z

    iput-boolean v0, p1, Lcom/google/android/street/StreetView$Status;->mBadPanorama:Z

    .line 1751
    iput-boolean v1, p1, Lcom/google/android/street/StreetView$Status;->mThrottling:Z

    .line 1752
    iput-boolean v1, p1, Lcom/google/android/street/StreetView$Status;->mDisabled:Z

    .line 1756
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/google/android/street/StreetView;->mPanoramaLink:Lcom/google/android/street/PanoramaLink;

    if-nez v0, :cond_2a

    .line 1760
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/google/android/street/StreetView$Status;->mGotPanoramaConfig:Z

    .line 1761
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    invoke-virtual {v0}, Lcom/google/android/street/PanoramaConfig;->someRequestsWillBeDenied()Z

    move-result v0

    iput-boolean v0, p1, Lcom/google/android/street/StreetView$Status;->mThrottling:Z

    .line 1762
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    iget-boolean v0, v0, Lcom/google/android/street/PanoramaConfig;->mDisabled:Z

    iput-boolean v0, p1, Lcom/google/android/street/StreetView$Status;->mDisabled:Z

    .line 1764
    :cond_2a
    return-void
.end method

.method private getStatusFromPanoramaConfig()Ljava/lang/CharSequence;
    .registers 3

    .prologue
    .line 1878
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    if-nez v0, :cond_7

    .line 1879
    const-string v0, ""

    .line 1887
    :goto_6
    return-object v0

    .line 1881
    :cond_7
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    iget-boolean v0, v0, Lcom/google/android/street/PanoramaConfig;->mDisabled:Z

    if-eqz v0, :cond_15

    .line 1882
    const v0, 0x7f040007

    invoke-direct {p0, v0}, Lcom/google/android/street/StreetView;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_6

    .line 1884
    :cond_15
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    invoke-virtual {v0}, Lcom/google/android/street/PanoramaConfig;->serviceTemporarilyUnavailable()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1885
    const v0, 0x7f040008

    invoke-direct {p0, v0}, Lcom/google/android/street/StreetView;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_6

    .line 1887
    :cond_25
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    iget-object v0, v0, Lcom/google/android/street/PanoramaConfig;->mStreetRange:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/street/StreetView;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    iget-object v1, v1, Lcom/google/android/street/PanoramaConfig;->mText:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/google/android/street/StreetView;->formatStreetAddress(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method private getText(I)Ljava/lang/CharSequence;
    .registers 3
    .parameter "index"

    .prologue
    .line 1333
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mStreet:Lcom/google/android/street/Street;

    invoke-virtual {v0, p1}, Lcom/google/android/street/Street;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private goTo(Lcom/google/android/street/PanoramaLink;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1679
    if-nez p1, :cond_5

    .line 1715
    :goto_4
    return-void

    .line 1682
    :cond_5
    iget-object v0, p1, Lcom/google/android/street/PanoramaLink;->mPanoId:Ljava/lang/String;

    if-eqz v0, :cond_11

    iget-object v0, p1, Lcom/google/android/street/PanoramaLink;->mPanoId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_20

    .line 1686
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/street/StreetView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040007

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_4

    .line 1691
    :cond_20
    const-string v0, "Panorama step"

    iget-object v1, p0, Lcom/google/android/street/StreetView;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    invoke-static {v0, v1}, Lcom/google/android/street/Street;->noteStartFrame(Ljava/lang/String;Lcom/google/android/street/PanoramaConfig;)V

    .line 1692
    iput-boolean v3, p0, Lcom/google/android/street/StreetView;->mBadPanorama:Z

    .line 1693
    iput-object v2, p0, Lcom/google/android/street/StreetView;->mInitialPanoId:Ljava/lang/String;

    .line 1694
    iput-object v2, p0, Lcom/google/android/street/StreetView;->mInitialPanoMapPoint:Lcom/google/android/street/MapPoint;

    .line 1695
    iput-object p1, p0, Lcom/google/android/street/StreetView;->mPanoramaLink:Lcom/google/android/street/PanoramaLink;

    .line 1696
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SV step to panorama "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/street/StreetView;->mPanoramaLink:Lcom/google/android/street/PanoramaLink;

    iget-object v1, v1, Lcom/google/android/street/PanoramaLink;->mPanoId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/street/Street;->logI(Ljava/lang/String;)V

    .line 1712
    iput-object v2, p0, Lcom/google/android/street/StreetView;->mStatusOverride:Ljava/lang/String;

    .line 1713
    invoke-virtual {p0}, Lcom/google/android/street/StreetView;->clearDirectionsArrowParams()V

    .line 1714
    invoke-virtual {p0}, Lcom/google/android/street/StreetView;->invalidate()V

    goto :goto_4
.end method

.method private nextZoomLevel()F
    .registers 4

    .prologue
    .line 653
    iget-object v1, p0, Lcom/google/android/street/StreetView;->mUserOrientation:Lcom/google/android/street/UserOrientation;

    invoke-virtual {v1}, Lcom/google/android/street/UserOrientation;->getZoom()F

    move-result v0

    .line 654
    .local v0, currentLevel:F
    iget v1, p0, Lcom/google/android/street/StreetView;->mZoomLevels:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_12

    const/high16 v1, 0x3f80

    :goto_11
    return v1

    :cond_12
    neg-float v1, v0

    goto :goto_11
.end method

.method private okToAct()Z
    .registers 2

    .prologue
    .line 1999
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/android/street/StreetView;->mRenderer:Lcom/google/android/street/Renderer;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private onIndirectUp(Landroid/view/MotionEvent;)V
    .registers 2
    .parameter "e"

    .prologue
    .line 1229
    invoke-direct {p0, p1}, Lcom/google/android/street/StreetView;->finishTap(Landroid/view/MotionEvent;)V

    .line 1230
    return-void
.end method

.method private reportUserActivity()V
    .registers 2

    .prologue
    .line 820
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mUserActivityReporter:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/street/StreetView;->post(Ljava/lang/Runnable;)Z

    .line 821
    return-void
.end method

.method private final send(II)V
    .registers 6
    .parameter "what"
    .parameter "arg1"

    .prologue
    .line 1346
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/street/StreetView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-static {v1, p1, p2, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1347
    return-void
.end method

.method private final send(IIILjava/lang/Object;)V
    .registers 7
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    .line 1350
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/street/StreetView;->mHandler:Landroid/os/Handler;

    invoke-static {v1, p1, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1351
    return-void
.end method

.method private setPanoramaConfig(Lcom/google/android/street/PanoramaConfig;)V
    .registers 5
    .parameter "newPanoramaConfig"

    .prologue
    const/4 v2, 0x0

    .line 1937
    iput-object p1, p0, Lcom/google/android/street/StreetView;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    .line 1957
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    if-eqz v0, :cond_2d

    .line 1959
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    iget-object v0, v0, Lcom/google/android/street/PanoramaConfig;->mDepthMap:Lcom/google/android/street/DepthMap;

    if-eqz v0, :cond_14

    .line 1960
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    iget-object v0, v0, Lcom/google/android/street/PanoramaConfig;->mDepthMap:Lcom/google/android/street/DepthMap;

    invoke-virtual {v0}, Lcom/google/android/street/DepthMap;->decompress()Z

    .line 1964
    :cond_14
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mRenderer:Lcom/google/android/street/Renderer;

    if-eqz v0, :cond_1f

    .line 1965
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mRenderer:Lcom/google/android/street/Renderer;

    iget-object v1, p0, Lcom/google/android/street/StreetView;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    invoke-virtual {v0, v1}, Lcom/google/android/street/Renderer;->setPanoramaConfig(Lcom/google/android/street/PanoramaConfig;)V

    .line 1968
    :cond_1f
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mPanoramaConfigCache:Lcom/google/android/street/PanoramaConfigCache;

    invoke-virtual {v0, p1}, Lcom/google/android/street/PanoramaConfigCache;->insert(Lcom/google/android/street/PanoramaConfig;)V

    .line 1969
    invoke-virtual {p0}, Lcom/google/android/street/StreetView;->initUserOrientation()V

    .line 1970
    iput-object v2, p0, Lcom/google/android/street/StreetView;->mPanoramaLink:Lcom/google/android/street/PanoramaLink;

    .line 1971
    iput-object v2, p0, Lcom/google/android/street/StreetView;->mInitialPanoId:Ljava/lang/String;

    .line 1972
    iput-object v2, p0, Lcom/google/android/street/StreetView;->mInitialPanoMapPoint:Lcom/google/android/street/MapPoint;

    .line 1976
    :cond_2d
    return-void
.end method

.method private setTangentRatios(FF)V
    .registers 9
    .parameter "anchorYaw"
    .parameter "anchorPitch"

    .prologue
    const/high16 v5, 0x4000

    .line 2049
    iget-object v3, p0, Lcom/google/android/street/StreetView;->mUserOrientation:Lcom/google/android/street/UserOrientation;

    invoke-virtual {v3}, Lcom/google/android/street/UserOrientation;->getYaw()F

    move-result v3

    invoke-static {v3}, Lcom/google/android/street/StreetMath;->degreesToUnit(F)F

    move-result v1

    .line 2050
    .local v1, currentYaw:F
    iget-object v3, p0, Lcom/google/android/street/StreetView;->mUserOrientation:Lcom/google/android/street/UserOrientation;

    invoke-virtual {v3}, Lcom/google/android/street/UserOrientation;->getTilt()F

    move-result v3

    div-float v0, v3, v5

    .line 2051
    .local v0, currentPitch:F
    iget-object v3, p0, Lcom/google/android/street/StreetView;->mUserOrientation:Lcom/google/android/street/UserOrientation;

    invoke-virtual {v3}, Lcom/google/android/street/UserOrientation;->getScale()F

    move-result v2

    .line 2053
    .local v2, scale:F
    iput p1, p0, Lcom/google/android/street/StreetView;->mAnchorYaw:F

    .line 2054
    iput p2, p0, Lcom/google/android/street/StreetView;->mAnchorPitch:F

    .line 2056
    invoke-static {v1, p1}, Lcom/google/android/street/StreetMath;->angleSubtractUnit(FF)F

    move-result v3

    invoke-static {v3}, Lcom/google/android/street/StreetMath;->tanUnit(F)F

    move-result v3

    iget v4, p0, Lcom/google/android/street/StreetView;->mUnzoomedFovH:F

    div-float/2addr v4, v5

    invoke-static {v4}, Lcom/google/android/street/StreetMath;->degreesToUnit(F)F

    move-result v4

    mul-float/2addr v4, v2

    invoke-static {v4}, Lcom/google/android/street/StreetMath;->tanUnit(F)F

    move-result v4

    div-float/2addr v3, v4

    iput v3, p0, Lcom/google/android/street/StreetView;->mHorizontalTanRatio:F

    .line 2061
    invoke-static {v0, p2}, Lcom/google/android/street/StreetMath;->angleSubtractUnit(FF)F

    move-result v3

    invoke-static {v3}, Lcom/google/android/street/StreetMath;->tanUnit(F)F

    move-result v3

    iget v4, p0, Lcom/google/android/street/StreetView;->mUnzoomedFovV:F

    div-float/2addr v4, v5

    invoke-static {v4}, Lcom/google/android/street/StreetMath;->degreesToUnit(F)F

    move-result v4

    mul-float/2addr v4, v2

    invoke-static {v4}, Lcom/google/android/street/StreetMath;->tanUnit(F)F

    move-result v4

    div-float/2addr v3, v4

    iput v3, p0, Lcom/google/android/street/StreetView;->mVerticalTanRatio:F

    .line 2065
    return-void
.end method

.method private showZoomController(Z)V
    .registers 4
    .parameter "focusable"

    .prologue
    .line 1543
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    if-nez v0, :cond_5

    .line 1548
    :goto_4
    return-void

    .line 1546
    :cond_5
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v0, p1}, Landroid/widget/ZoomButtonsController;->setFocusable(Z)V

    .line 1547
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ZoomButtonsController;->setVisible(Z)V

    goto :goto_4
.end method

.method private smoothZoom(F)V
    .registers 7
    .parameter "amount"

    .prologue
    .line 1040
    const/4 v0, 0x5

    .line 1041
    .local v0, SMOOTH_STEPS:I
    const/high16 v3, 0x40a0

    div-float v1, p1, v3

    .line 1044
    .local v1, f:F
    const/4 v2, 0x0

    .local v2, i:I
    :goto_6
    const/4 v3, 0x5

    if-ge v2, v3, :cond_1b

    .line 1045
    invoke-virtual {p0, v1}, Lcom/google/android/street/StreetView;->zoom(F)V

    .line 1046
    monitor-enter p0

    .line 1048
    const-wide/16 v3, 0x1e

    :try_start_f
    invoke-virtual {p0, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_16
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_12} :catch_19

    .line 1052
    :goto_12
    :try_start_12
    monitor-exit p0

    .line 1044
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1052
    :catchall_16
    move-exception v3

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_16

    throw v3

    .line 1049
    :catch_19
    move-exception v3

    goto :goto_12

    .line 1054
    :cond_1b
    return-void
.end method

.method private smoothZoom(FFF)V
    .registers 10
    .parameter "zoomAmount"
    .parameter "anchorX"
    .parameter "anchorY"

    .prologue
    const/4 v5, 0x0

    .line 1000
    iget-object v4, p0, Lcom/google/android/street/StreetView;->mRenderer:Lcom/google/android/street/Renderer;

    invoke-virtual {v4, p2, p3, v5}, Lcom/google/android/street/Renderer;->pixelToYawPitch(FFZ)[F

    move-result-object v1

    .line 1004
    .local v1, anchorYawPitch:[F
    if-nez v1, :cond_a

    .line 1034
    :cond_9
    return-void

    .line 1008
    :cond_a
    const/4 v0, 0x7

    .line 1009
    .local v0, SMOOTH_STEPS:I
    const/high16 v4, 0x40e0

    div-float v3, p1, v4

    .line 1012
    .local v3, zoomStep:F
    aget v4, v1, v5

    const/4 v5, 0x1

    aget v5, v1, v5

    invoke-direct {p0, v4, v5}, Lcom/google/android/street/StreetView;->setTangentRatios(FF)V

    .line 1015
    const/4 v2, 0x0

    .local v2, i:I
    :goto_18
    const/4 v4, 0x7

    if-ge v2, v4, :cond_9

    .line 1016
    invoke-direct {p0, v3}, Lcom/google/android/street/StreetView;->doZoom(F)V

    .line 1019
    invoke-direct {p0}, Lcom/google/android/street/StreetView;->updateOrientationForZoom()V

    .line 1021
    invoke-direct {p0}, Lcom/google/android/street/StreetView;->updateRendererAndButtons()V

    .line 1024
    const/4 v4, 0x6

    if-ge v2, v4, :cond_2e

    .line 1025
    monitor-enter p0

    .line 1027
    const-wide/16 v4, 0x1e

    :try_start_2a
    invoke-virtual {p0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_31
    .catch Ljava/lang/InterruptedException; {:try_start_2a .. :try_end_2d} :catch_34

    .line 1031
    :goto_2d
    :try_start_2d
    monitor-exit p0

    .line 1015
    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 1031
    :catchall_31
    move-exception v4

    monitor-exit p0
    :try_end_33
    .catchall {:try_start_2d .. :try_end_33} :catchall_31

    throw v4

    .line 1028
    :catch_34
    move-exception v4

    goto :goto_2d
.end method

.method private startFlinger(FF)V
    .registers 7
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 299
    iget-object v1, p0, Lcom/google/android/street/StreetView;->mFlingerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 300
    :try_start_3
    iget-object v2, p0, Lcom/google/android/street/StreetView;->mFlinger:Lcom/google/android/street/StreetView$Flinger;

    if-eqz v2, :cond_c

    .line 301
    iget-object v2, p0, Lcom/google/android/street/StreetView;->mFlinger:Lcom/google/android/street/StreetView$Flinger;

    invoke-virtual {v2}, Lcom/google/android/street/StreetView$Flinger;->stop()V

    .line 303
    :cond_c
    new-instance v2, Lcom/google/android/street/StreetView$Flinger;

    invoke-direct {v2, p0, p1, p2}, Lcom/google/android/street/StreetView$Flinger;-><init>(Lcom/google/android/street/StreetView;FF)V

    iput-object v2, p0, Lcom/google/android/street/StreetView;->mFlinger:Lcom/google/android/street/StreetView$Flinger;

    .line 304
    new-instance v0, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/google/android/street/StreetView;->mFlinger:Lcom/google/android/street/StreetView$Flinger;

    const-string v3, "Flinger"

    invoke-direct {v0, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 305
    .local v0, th:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 306
    monitor-exit v1

    .line 307
    return-void

    .line 306
    .end local v0           #th:Ljava/lang/Thread;
    :catchall_21
    move-exception v2

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v2
.end method

.method private static tiltDegToHalfTurns(F)F
    .registers 3
    .parameter

    .prologue
    .line 1611
    const/high16 v0, 0x3f00

    const v1, 0x3bb60b61

    mul-float/2addr v1, p0

    sub-float/2addr v0, v1

    return v0
.end method

.method private updateButtonsEnabled()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 618
    iget-object v1, p0, Lcom/google/android/street/StreetView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    if-nez v1, :cond_7

    .line 624
    :goto_6
    return-void

    .line 621
    :cond_7
    iget-object v1, p0, Lcom/google/android/street/StreetView;->mUserOrientation:Lcom/google/android/street/UserOrientation;

    invoke-virtual {v1}, Lcom/google/android/street/UserOrientation;->getZoom()F

    move-result v0

    .line 622
    .local v0, zoom:F
    iget-object v1, p0, Lcom/google/android/street/StreetView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    iget v2, p0, Lcom/google/android/street/StreetView;->mZoomLevels:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v2, v0, v2

    if-gez v2, :cond_27

    move v2, v3

    :goto_18
    invoke-virtual {v1, v2}, Landroid/widget/ZoomButtonsController;->setZoomInEnabled(Z)V

    .line 623
    iget-object v1, p0, Lcom/google/android/street/StreetView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-lez v2, :cond_29

    move v2, v3

    :goto_23
    invoke-virtual {v1, v2}, Landroid/widget/ZoomButtonsController;->setZoomOutEnabled(Z)V

    goto :goto_6

    :cond_27
    move v2, v4

    .line 622
    goto :goto_18

    :cond_29
    move v2, v4

    .line 623
    goto :goto_23
.end method

.method private updateDeviceOrientation()V
    .registers 3

    .prologue
    .line 640
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    if-eqz v0, :cond_23

    .line 641
    invoke-direct {p0}, Lcom/google/android/street/StreetView;->updateZoomLevels()V

    .line 642
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/street/StreetView;->zoom(F)V

    .line 643
    iget-boolean v0, p0, Lcom/google/android/street/StreetView;->mZoomButtonsEnabled:Z

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/google/android/street/StreetView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v0}, Landroid/widget/ZoomButtonsController;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 645
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ZoomButtonsController;->setVisible(Z)V

    .line 646
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ZoomButtonsController;->setVisible(Z)V

    .line 649
    :cond_23
    return-void
.end method

.method private updateOrientationForZoom()V
    .registers 8

    .prologue
    const/high16 v6, 0x4000

    .line 2073
    iget-object v3, p0, Lcom/google/android/street/StreetView;->mUserOrientation:Lcom/google/android/street/UserOrientation;

    invoke-virtual {v3}, Lcom/google/android/street/UserOrientation;->getScale()F

    move-result v2

    .line 2075
    .local v2, scale:F
    iget v3, p0, Lcom/google/android/street/StreetView;->mAnchorYaw:F

    iget v4, p0, Lcom/google/android/street/StreetView;->mHorizontalTanRatio:F

    iget v5, p0, Lcom/google/android/street/StreetView;->mUnzoomedFovH:F

    div-float/2addr v5, v6

    invoke-static {v5}, Lcom/google/android/street/StreetMath;->degreesToUnit(F)F

    move-result v5

    mul-float/2addr v5, v2

    invoke-static {v5}, Lcom/google/android/street/StreetMath;->tanUnit(F)F

    move-result v5

    mul-float/2addr v4, v5

    invoke-static {v4}, Lcom/google/android/street/StreetMath;->atanUnit(F)F

    move-result v4

    add-float v1, v3, v4

    .line 2079
    .local v1, newYaw:F
    iget v3, p0, Lcom/google/android/street/StreetView;->mAnchorPitch:F

    iget v4, p0, Lcom/google/android/street/StreetView;->mVerticalTanRatio:F

    iget v5, p0, Lcom/google/android/street/StreetView;->mUnzoomedFovV:F

    div-float/2addr v5, v6

    invoke-static {v5}, Lcom/google/android/street/StreetMath;->degreesToUnit(F)F

    move-result v5

    mul-float/2addr v5, v2

    invoke-static {v5}, Lcom/google/android/street/StreetMath;->tanUnit(F)F

    move-result v5

    mul-float/2addr v4, v5

    invoke-static {v4}, Lcom/google/android/street/StreetMath;->atanUnit(F)F

    move-result v4

    add-float v0, v3, v4

    .line 2083
    .local v0, newPitch:F
    iget-object v3, p0, Lcom/google/android/street/StreetView;->mUserOrientation:Lcom/google/android/street/UserOrientation;

    invoke-static {v1}, Lcom/google/android/street/StreetMath;->unitToDegrees(F)F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/street/UserOrientation;->setYaw(F)V

    .line 2086
    iget-object v3, p0, Lcom/google/android/street/StreetView;->mUserOrientation:Lcom/google/android/street/UserOrientation;

    mul-float v4, v6, v0

    invoke-virtual {v3, v4}, Lcom/google/android/street/UserOrientation;->setTilt(F)V

    .line 2087
    return-void
.end method

.method private updateRendererAndButtons()V
    .registers 1

    .prologue
    .line 631
    invoke-direct {p0}, Lcom/google/android/street/StreetView;->updateRendererUserOrientation()V

    .line 632
    invoke-direct {p0}, Lcom/google/android/street/StreetView;->updateButtonsEnabled()V

    .line 633
    return-void
.end method

.method private updateRendererUserOrientation()V
    .registers 4

    .prologue
    .line 608
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mRenderer:Lcom/google/android/street/Renderer;

    if-eqz v0, :cond_10

    .line 609
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mRenderer:Lcom/google/android/street/Renderer;

    new-instance v1, Lcom/google/android/street/UserOrientation;

    iget-object v2, p0, Lcom/google/android/street/StreetView;->mUserOrientation:Lcom/google/android/street/UserOrientation;

    invoke-direct {v1, v2}, Lcom/google/android/street/UserOrientation;-><init>(Lcom/google/android/street/UserOrientation;)V

    invoke-virtual {v0, v1}, Lcom/google/android/street/Renderer;->setUserOrientation(Lcom/google/android/street/UserOrientation;)V

    .line 611
    :cond_10
    return-void
.end method

.method private updateStatusText()V
    .registers 4

    .prologue
    .line 678
    invoke-direct {p0}, Lcom/google/android/street/StreetView;->checkStatus()Ljava/lang/CharSequence;

    move-result-object v1

    .line 679
    .local v1, message:Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/google/android/street/StreetView;->mStreet:Lcom/google/android/street/Street;

    invoke-virtual {v2, v1}, Lcom/google/android/street/Street;->setStatusText(Ljava/lang/CharSequence;)V

    .line 682
    iget-object v2, p0, Lcom/google/android/street/StreetView;->mCurrentStatus:Lcom/google/android/street/StreetView$Status;

    invoke-direct {p0, v2}, Lcom/google/android/street/StreetView;->getStatus(Lcom/google/android/street/StreetView$Status;)V

    .line 683
    iget-object v2, p0, Lcom/google/android/street/StreetView;->mCurrentStatus:Lcom/google/android/street/StreetView$Status;

    invoke-virtual {v2}, Lcom/google/android/street/StreetView$Status;->getProgress()I

    move-result v0

    .line 684
    .local v0, currentProgress:I
    iget v2, p0, Lcom/google/android/street/StreetView;->mOldProgress:I

    if-eq v0, v2, :cond_1f

    .line 685
    iput v0, p0, Lcom/google/android/street/StreetView;->mOldProgress:I

    .line 686
    iget-object v2, p0, Lcom/google/android/street/StreetView;->mStreet:Lcom/google/android/street/Street;

    invoke-virtual {v2, v0}, Lcom/google/android/street/Street;->reportProgress(I)V

    .line 688
    :cond_1f
    return-void
.end method

.method private updateZoomLevels()V
    .registers 4

    .prologue
    .line 1477
    invoke-virtual {p0}, Lcom/google/android/street/StreetView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 1478
    invoke-virtual {p0}, Lcom/google/android/street/StreetView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 1479
    div-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/street/StreetView;->mAspectRatio:F

    .line 1480
    iget v0, p0, Lcom/google/android/street/StreetView;->mAspectRatio:F

    invoke-static {v0}, Lcom/google/android/street/Renderer;->getUnzoomedVerticalFov(F)F

    move-result v0

    iput v0, p0, Lcom/google/android/street/StreetView;->mUnzoomedFovV:F

    .line 1481
    iget v0, p0, Lcom/google/android/street/StreetView;->mAspectRatio:F

    invoke-static {v0}, Lcom/google/android/street/Renderer;->getUnzoomedHorizontalFov(F)F

    move-result v0

    iput v0, p0, Lcom/google/android/street/StreetView;->mUnzoomedFovH:F

    .line 1483
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    iget v0, v0, Lcom/google/android/street/PanoramaConfig;->mImageHeight:I

    int-to-float v0, v0

    div-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/street/StreetView;->mUnzoomedFovV:F

    mul-float/2addr v0, v1

    const v1, 0x3bb60b61

    mul-float/2addr v0, v1

    .line 1485
    invoke-static {v0}, Lcom/google/android/street/StreetMath;->log2(F)F

    move-result v0

    .line 1486
    iget-object v1, p0, Lcom/google/android/street/StreetView;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    iget v1, v1, Lcom/google/android/street/PanoramaConfig;->mNumZoomLevels:I

    const/4 v2, 0x0

    float-to-int v0, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/street/StreetView;->mZoomLevels:I

    .line 1495
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mRenderer:Lcom/google/android/street/Renderer;

    if-eqz v0, :cond_4b

    .line 1496
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mRenderer:Lcom/google/android/street/Renderer;

    iget v1, p0, Lcom/google/android/street/StreetView;->mZoomLevels:I

    invoke-virtual {v0, v1}, Lcom/google/android/street/Renderer;->setZoomLevels(I)V

    .line 1498
    :cond_4b
    return-void
.end method

.method private wasNetworkUp()Z
    .registers 2

    .prologue
    .line 1933
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mStreet:Lcom/google/android/street/Street;

    invoke-virtual {v0}, Lcom/google/android/street/Street;->wasNetworkAvailable()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public clearDirectionsArrowParams()V
    .registers 3

    .prologue
    const/high16 v1, -0x4080

    .line 1567
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mRenderer:Lcom/google/android/street/Renderer;

    invoke-virtual {v0, v1, v1}, Lcom/google/android/street/Renderer;->setDirectionsArrowParams(FF)V

    .line 1568
    return-void
.end method

.method public clearStatusOverride()V
    .registers 2

    .prologue
    .line 1556
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mStatusOverride:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 1557
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/street/StreetView;->mStatusOverride:Ljava/lang/String;

    .line 1558
    invoke-direct {p0}, Lcom/google/android/street/StreetView;->updateStatusText()V

    .line 1560
    :cond_a
    return-void
.end method

.method public getPanoramaConfig()Lcom/google/android/street/PanoramaConfig;
    .registers 2

    .prologue
    .line 1316
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    return-object v0
.end method

.method public getUserOrientation()Lcom/google/android/street/UserOrientation;
    .registers 2

    .prologue
    .line 1320
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mUserOrientation:Lcom/google/android/street/UserOrientation;

    if-nez v0, :cond_7

    .line 1321
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mRequestedUserOrientation:Lcom/google/android/street/UserOrientation;

    .line 1323
    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mUserOrientation:Lcom/google/android/street/UserOrientation;

    goto :goto_6
.end method

.method public goForward()V
    .registers 3

    .prologue
    .line 1650
    iget-object v1, p0, Lcom/google/android/street/StreetView;->mUserOrientation:Lcom/google/android/street/UserOrientation;

    invoke-virtual {v1}, Lcom/google/android/street/UserOrientation;->getYaw()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/android/street/StreetView;->getClosestLink(F)Lcom/google/android/street/PanoramaLink;

    move-result-object v0

    .line 1651
    .local v0, forward:Lcom/google/android/street/PanoramaLink;
    if-eqz v0, :cond_f

    .line 1652
    invoke-direct {p0, v0}, Lcom/google/android/street/StreetView;->goTo(Lcom/google/android/street/PanoramaLink;)V

    .line 1654
    :cond_f
    return-void
.end method

.method public handleScaleEvent(Lcom/google/android/common/gesture/ScaleEvent;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2009
    invoke-virtual {p1}, Lcom/google/android/common/gesture/ScaleEvent;->isScaleBegin()Z

    move-result v0

    if-eqz v0, :cond_25

    iget-boolean v0, p0, Lcom/google/android/street/StreetView;->mUseSensorToControlView:Z

    if-nez v0, :cond_25

    .line 2011
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mRenderer:Lcom/google/android/street/Renderer;

    invoke-virtual {p1}, Lcom/google/android/common/gesture/ScaleEvent;->getFocusX()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/common/gesture/ScaleEvent;->getFocusY()F

    move-result v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/street/Renderer;->pixelToYawPitch(FFZ)[F

    move-result-object v0

    .line 2013
    if-nez v0, :cond_1e

    move v0, v3

    .line 2028
    :goto_1d
    return v0

    .line 2016
    :cond_1e
    aget v1, v0, v3

    aget v0, v0, v4

    invoke-direct {p0, v1, v0}, Lcom/google/android/street/StreetView;->setTangentRatios(FF)V

    .line 2019
    :cond_25
    invoke-virtual {p1}, Lcom/google/android/common/gesture/ScaleEvent;->getCurrentSpan()F

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/common/gesture/ScaleEvent;->getPreviousSpan()F

    move-result v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x4334

    div-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/street/StreetView;->mScreenDensity:F

    div-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/google/android/street/StreetView;->doZoom(F)V

    .line 2022
    iget-boolean v0, p0, Lcom/google/android/street/StreetView;->mUseSensorToControlView:Z

    if-nez v0, :cond_3e

    .line 2023
    invoke-direct {p0}, Lcom/google/android/street/StreetView;->updateOrientationForZoom()V

    .line 2026
    :cond_3e
    invoke-direct {p0}, Lcom/google/android/street/StreetView;->updateRendererAndButtons()V

    move v0, v4

    .line 2028
    goto :goto_1d
.end method

.method public handleTwoFingerTap()V
    .registers 2

    .prologue
    .line 2036
    const/high16 v0, -0x4080

    invoke-direct {p0, v0}, Lcom/google/android/street/StreetView;->smoothZoom(F)V

    .line 2037
    return-void
.end method

.method public hasPanorama()Z
    .registers 2

    .prologue
    .line 561
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mPanoramaLink:Lcom/google/android/street/PanoramaLink;

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/google/android/street/StreetView;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public initUserOrientation()V
    .registers 13

    .prologue
    const/4 v11, 0x0

    const/high16 v10, 0x4334

    const/4 v9, 0x0

    .line 1395
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mRequestedUserOrientation:Lcom/google/android/street/UserOrientation;

    if-eqz v0, :cond_6f

    .line 1396
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mRequestedUserOrientation:Lcom/google/android/street/UserOrientation;

    iput-object v0, p0, Lcom/google/android/street/StreetView;->mUserOrientation:Lcom/google/android/street/UserOrientation;

    .line 1397
    iput-object v11, p0, Lcom/google/android/street/StreetView;->mRequestedUserOrientation:Lcom/google/android/street/UserOrientation;

    .line 1450
    :goto_e
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mRequestedFaceToLatLng:Lcom/google/android/street/MapPoint;

    if-eqz v0, :cond_65

    iget-object v0, p0, Lcom/google/android/street/StreetView;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    if-eqz v0, :cond_65

    .line 1451
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    iget-object v0, v0, Lcom/google/android/street/PanoramaConfig;->mLatLng:Lcom/google/android/street/MapPoint;

    iget-object v1, p0, Lcom/google/android/street/StreetView;->mRequestedFaceToLatLng:Lcom/google/android/street/MapPoint;

    invoke-virtual {v0, v1}, Lcom/google/android/street/MapPoint;->angleTo(Lcom/google/android/street/MapPoint;)F

    move-result v0

    .line 1453
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SV adjusting face: pano-latlng="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/street/StreetView;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    iget-object v2, v2, Lcom/google/android/street/PanoramaConfig;->mLatLng:Lcom/google/android/street/MapPoint;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " face-latlng="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/street/StreetView;->mRequestedFaceToLatLng:Lcom/google/android/street/MapPoint;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " yaw="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/street/Street;->log(Ljava/lang/String;)V

    .line 1456
    iput-object v11, p0, Lcom/google/android/street/StreetView;->mRequestedFaceToLatLng:Lcom/google/android/street/MapPoint;

    .line 1457
    new-instance v1, Lcom/google/android/street/UserOrientation;

    iget-object v2, p0, Lcom/google/android/street/StreetView;->mUserOrientation:Lcom/google/android/street/UserOrientation;

    invoke-virtual {v2}, Lcom/google/android/street/UserOrientation;->getTilt()F

    move-result v2

    iget-object v3, p0, Lcom/google/android/street/StreetView;->mUserOrientation:Lcom/google/android/street/UserOrientation;

    invoke-virtual {v3}, Lcom/google/android/street/UserOrientation;->getZoom()F

    move-result v3

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/street/UserOrientation;-><init>(FFF)V

    iput-object v1, p0, Lcom/google/android/street/StreetView;->mUserOrientation:Lcom/google/android/street/UserOrientation;

    .line 1463
    :cond_65
    invoke-direct {p0}, Lcom/google/android/street/StreetView;->updateZoomLevels()V

    .line 1467
    invoke-direct {p0, v9, v9}, Lcom/google/android/street/StreetView;->doYawTilt(FF)V

    .line 1468
    invoke-virtual {p0, v9}, Lcom/google/android/street/StreetView;->zoom(F)V

    .line 1469
    return-void

    .line 1400
    :cond_6f
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mPanoramaLink:Lcom/google/android/street/PanoramaLink;

    if-eqz v0, :cond_c9

    .line 1407
    const/high16 v0, 0x7f80

    .line 1410
    iget-object v1, p0, Lcom/google/android/street/StreetView;->mPanoramaLink:Lcom/google/android/street/PanoramaLink;

    iget v1, v1, Lcom/google/android/street/PanoramaLink;->mYawDeg:F

    .line 1411
    iget-object v2, p0, Lcom/google/android/street/StreetView;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    if-eqz v2, :cond_d4

    .line 1412
    iget-object v2, p0, Lcom/google/android/street/StreetView;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    iget-object v2, v2, Lcom/google/android/street/PanoramaConfig;->mLinks:[Lcom/google/android/street/PanoramaLink;

    .line 1413
    if-eqz v2, :cond_d4

    .line 1414
    array-length v3, v2

    const/4 v4, 0x0

    move v5, v0

    move v0, v4

    move v4, v9

    :goto_88
    if-ge v0, v3, :cond_b0

    aget-object v6, v2, v0

    .line 1418
    iget v6, v6, Lcom/google/android/street/PanoramaLink;->mYawDeg:F

    sub-float/2addr v6, v1

    add-float/2addr v6, v10

    .line 1420
    const v7, 0x3b360b61

    mul-float/2addr v7, v6

    invoke-static {v7}, Landroid/util/FloatMath;->floor(F)F

    move-result v7

    const/high16 v8, 0x43b4

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    .line 1424
    sub-float/2addr v6, v10

    .line 1425
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 1426
    const/high16 v8, 0x41c8

    cmpg-float v8, v7, v8

    if-gtz v8, :cond_ad

    cmpg-float v8, v7, v5

    if-gtz v8, :cond_ad

    move v4, v6

    move v5, v7

    .line 1414
    :cond_ad
    add-int/lit8 v0, v0, 0x1

    goto :goto_88

    :cond_b0
    move v0, v4

    .line 1435
    :goto_b1
    iget-object v1, p0, Lcom/google/android/street/StreetView;->mUserOrientation:Lcom/google/android/street/UserOrientation;

    invoke-virtual {v1}, Lcom/google/android/street/UserOrientation;->getYaw()F

    move-result v1

    add-float/2addr v0, v1

    .line 1445
    :goto_b8
    new-instance v1, Lcom/google/android/street/UserOrientation;

    const/high16 v2, 0x3f00

    iget-object v3, p0, Lcom/google/android/street/StreetView;->mUserOrientation:Lcom/google/android/street/UserOrientation;

    invoke-virtual {v3}, Lcom/google/android/street/UserOrientation;->getZoom()F

    move-result v3

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/street/UserOrientation;-><init>(FFF)V

    iput-object v1, p0, Lcom/google/android/street/StreetView;->mUserOrientation:Lcom/google/android/street/UserOrientation;

    goto/16 :goto_e

    .line 1437
    :cond_c9
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    if-eqz v0, :cond_d2

    .line 1439
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    iget v0, v0, Lcom/google/android/street/PanoramaConfig;->mPanoYawDeg:F

    goto :goto_b8

    :cond_d2
    move v0, v9

    .line 1441
    goto :goto_b8

    :cond_d4
    move v0, v9

    goto :goto_b1
.end method

.method public initialize(Lcom/google/android/street/Street;Lcom/google/android/street/PanoramaManager;Z)V
    .registers 7
    .parameter "street"
    .parameter "panoramaManager"
    .parameter "isTablet"

    .prologue
    const/4 v2, 0x0

    .line 571
    iput-object p1, p0, Lcom/google/android/street/StreetView;->mStreet:Lcom/google/android/street/Street;

    .line 572
    iput-object p2, p0, Lcom/google/android/street/StreetView;->mPanoramaManager:Lcom/google/android/street/PanoramaManager;

    .line 573
    iput-boolean p3, p0, Lcom/google/android/street/StreetView;->mIsTablet:Z

    .line 575
    invoke-direct {p0}, Lcom/google/android/street/StreetView;->createRenderer()V

    .line 577
    iget-boolean v0, p0, Lcom/google/android/street/StreetView;->mZoomButtonsEnabled:Z

    if-eqz v0, :cond_1f

    .line 578
    new-instance v0, Landroid/widget/ZoomButtonsController;

    invoke-direct {v0, p0}, Landroid/widget/ZoomButtonsController;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/google/android/street/StreetView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    .line 579
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    new-instance v1, Lcom/google/android/street/StreetView$3;

    invoke-direct {v1, p0}, Lcom/google/android/street/StreetView$3;-><init>(Lcom/google/android/street/StreetView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ZoomButtonsController;->setOnZoomListener(Landroid/widget/ZoomButtonsController$OnZoomListener;)V

    .line 596
    :cond_1f
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mStreet:Lcom/google/android/street/Street;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Lcom/google/android/street/Street;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/google/android/street/StreetView;->mPowerManager:Landroid/os/PowerManager;

    .line 599
    invoke-virtual {p0}, Lcom/google/android/street/StreetView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.google.android.street.StreetView"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "useSensorToControlView"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/street/StreetView;->mUseSensorToControlView:Z

    .line 603
    iget-boolean v0, p0, Lcom/google/android/street/StreetView;->mUseSensorToControlView:Z

    invoke-direct {p0, v0}, Lcom/google/android/street/StreetView;->enableSensor(Z)V

    .line 604
    return-void
.end method

.method public invalidate()V
    .registers 2

    .prologue
    .line 669
    invoke-super {p0}, Landroid/view/SurfaceView;->invalidate()V

    .line 671
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mRenderer:Lcom/google/android/street/Renderer;

    if-eqz v0, :cond_a

    .line 672
    invoke-direct {p0}, Lcom/google/android/street/StreetView;->updateStatusText()V

    .line 674
    :cond_a
    return-void
.end method

.method public loadPanorama(Ljava/lang/String;Lcom/google/android/street/MapPoint;Lcom/google/android/street/UserOrientation;Lcom/google/android/street/MapPoint;Lcom/google/android/street/PanoramaConfig;)V
    .registers 7
    .parameter "panoId"
    .parameter "panoMapPoint"
    .parameter "orientation"
    .parameter "faceToLatLng"
    .parameter "config"

    .prologue
    .line 1373
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/street/StreetView;->mBadPanorama:Z

    .line 1374
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/street/StreetView;->mPanoramaLink:Lcom/google/android/street/PanoramaLink;

    .line 1375
    iput-object p1, p0, Lcom/google/android/street/StreetView;->mInitialPanoId:Ljava/lang/String;

    .line 1376
    iput-object p2, p0, Lcom/google/android/street/StreetView;->mInitialPanoMapPoint:Lcom/google/android/street/MapPoint;

    .line 1377
    iput-object p3, p0, Lcom/google/android/street/StreetView;->mRequestedUserOrientation:Lcom/google/android/street/UserOrientation;

    .line 1378
    iput-object p4, p0, Lcom/google/android/street/StreetView;->mRequestedFaceToLatLng:Lcom/google/android/street/MapPoint;

    .line 1379
    invoke-direct {p0, p5}, Lcom/google/android/street/StreetView;->setPanoramaConfig(Lcom/google/android/street/PanoramaConfig;)V

    .line 1380
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 921
    iget-boolean v0, p0, Lcom/google/android/street/StreetView;->mZoomButtonsEnabled:Z

    if-eqz v0, :cond_a

    .line 922
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ZoomButtonsController;->setVisible(Z)V

    .line 924
    :cond_a
    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter "e"

    .prologue
    const/4 v3, 0x1

    const/high16 v2, 0x3f80

    .line 1117
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    iget-object v0, v0, Lcom/google/android/street/PanoramaConfig;->mDepthMap:Lcom/google/android/street/DepthMap;

    if-eqz v0, :cond_19

    .line 1119
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/street/StreetView;->clickToGo(FF)Z

    move-result v0

    if-eqz v0, :cond_19

    move v0, v3

    .line 1137
    :goto_18
    return v0

    .line 1127
    :cond_19
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mUserOrientation:Lcom/google/android/street/UserOrientation;

    invoke-virtual {v0}, Lcom/google/android/street/UserOrientation;->getZoom()F

    move-result v0

    add-float/2addr v0, v2

    iget v1, p0, Lcom/google/android/street/StreetView;->mZoomLevels:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_3d

    .line 1128
    iget-boolean v0, p0, Lcom/google/android/street/StreetView;->mUseSensorToControlView:Z

    if-eqz v0, :cond_31

    .line 1129
    invoke-direct {p0, v2}, Lcom/google/android/street/StreetView;->smoothZoom(F)V

    :goto_2f
    move v0, v3

    .line 1137
    goto :goto_18

    .line 1131
    :cond_31
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v2, v0, v1}, Lcom/google/android/street/StreetView;->smoothZoom(FFF)V

    goto :goto_2f

    .line 1134
    :cond_3d
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mUserOrientation:Lcom/google/android/street/UserOrientation;

    invoke-virtual {v0}, Lcom/google/android/street/UserOrientation;->getZoom()F

    move-result v0

    neg-float v0, v0

    invoke-direct {p0, v0}, Lcom/google/android/street/StreetView;->smoothZoom(F)V

    goto :goto_2f
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "e"

    .prologue
    .line 1206
    const/4 v0, 0x0

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter "ev"

    .prologue
    const/4 v3, 0x1

    .line 1085
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mFlingerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1086
    :try_start_4
    iget-object v1, p0, Lcom/google/android/street/StreetView;->mFlinger:Lcom/google/android/street/StreetView$Flinger;

    if-eqz v1, :cond_d

    .line 1087
    iget-object v1, p0, Lcom/google/android/street/StreetView;->mFlinger:Lcom/google/android/street/StreetView$Flinger;

    invoke-virtual {v1}, Lcom/google/android/street/StreetView$Flinger;->stop()V

    .line 1089
    :cond_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_25

    .line 1095
    iget-boolean v0, p0, Lcom/google/android/street/StreetView;->mZoomButtonsEnabled:Z

    if-eqz v0, :cond_17

    .line 1096
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v0, v3}, Landroid/widget/ZoomButtonsController;->setVisible(Z)V

    .line 1098
    :cond_17
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mHighlighter:Lcom/google/android/street/Highlighter;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/street/Highlighter;->down(FF)Z

    .line 1099
    return v3

    .line 1089
    :catchall_25
    move-exception v1

    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 11
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v5, 0x1

    const/high16 v4, 0x4020

    const/high16 v3, -0x3fe0

    .line 1062
    iget-object v2, p0, Lcom/google/android/street/StreetView;->mHighlighter:Lcom/google/android/street/Highlighter;

    invoke-virtual {v2}, Lcom/google/android/street/Highlighter;->isTracking()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1063
    const/4 v2, 0x0

    .line 1078
    :goto_e
    return v2

    .line 1065
    :cond_f
    iget-boolean v2, p0, Lcom/google/android/street/StreetView;->mUseSensorToControlView:Z

    if-eqz v2, :cond_15

    move v2, v5

    .line 1066
    goto :goto_e

    .line 1075
    :cond_15
    iget v2, p0, Lcom/google/android/street/StreetView;->mLastDX:F

    invoke-static {v2, v3, v4}, Lcom/google/android/street/StreetMath;->clamp(FFF)F

    move-result v0

    .line 1076
    .local v0, processedX:F
    iget v2, p0, Lcom/google/android/street/StreetView;->mLastDY:F

    invoke-static {v2, v3, v4}, Lcom/google/android/street/StreetMath;->clamp(FFF)F

    move-result v1

    .line 1077
    .local v1, processedY:F
    const v2, 0x3f4ccccd

    mul-float/2addr v2, v0

    const/high16 v3, 0x3f00

    mul-float/2addr v3, v1

    invoke-direct {p0, v2, v3}, Lcom/google/android/street/StreetView;->startFlinger(FF)V

    move v2, v5

    .line 1078
    goto :goto_e
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 11
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x3f80

    const/high16 v5, -0x4080

    .line 825
    const/4 v0, 0x1

    .line 839
    .local v0, handled:Z
    invoke-direct {p0}, Lcom/google/android/street/StreetView;->okToAct()Z

    move-result v2

    .line 840
    .local v2, okToAct:Z
    iget-boolean v4, p0, Lcom/google/android/street/StreetView;->mUseSensorToControlView:Z

    if-nez v4, :cond_23

    const/4 v4, 0x1

    move v1, v4

    .line 841
    .local v1, inNormalControlMode:Z
    :goto_10
    const/4 v3, 0x0

    .line 843
    .local v3, selectLink:Z
    sparse-switch p1, :sswitch_data_72

    .line 900
    const/4 v0, 0x0

    .line 904
    :cond_15
    :goto_15
    if-eqz v0, :cond_6d

    .line 905
    if-eqz v3, :cond_22

    .line 908
    iget-object v4, p0, Lcom/google/android/street/StreetView;->mRenderer:Lcom/google/android/street/Renderer;

    if-eqz v4, :cond_22

    .line 909
    iget-object v4, p0, Lcom/google/android/street/StreetView;->mRenderer:Lcom/google/android/street/Renderer;

    invoke-virtual {v4, v7}, Lcom/google/android/street/Renderer;->setMotionUse(I)V

    .line 916
    :cond_22
    :goto_22
    return v0

    .end local v1           #inNormalControlMode:Z
    .end local v3           #selectLink:Z
    :cond_23
    move v1, v7

    .line 840
    goto :goto_10

    .line 845
    .restart local v1       #inNormalControlMode:Z
    .restart local v3       #selectLink:Z
    :sswitch_25
    const/4 v0, 0x0

    .line 846
    goto :goto_15

    .line 848
    :sswitch_27
    if-eqz v2, :cond_15

    if-eqz v1, :cond_15

    .line 849
    invoke-virtual {p0, v6}, Lcom/google/android/street/StreetView;->tilt(F)V

    .line 850
    const/4 v3, 0x1

    goto :goto_15

    .line 854
    :sswitch_30
    if-eqz v2, :cond_15

    if-eqz v1, :cond_15

    .line 855
    invoke-virtual {p0, v5}, Lcom/google/android/street/StreetView;->tilt(F)V

    .line 856
    const/4 v3, 0x1

    goto :goto_15

    .line 860
    :sswitch_39
    if-eqz v2, :cond_15

    if-eqz v1, :cond_15

    .line 861
    invoke-virtual {p0, v5}, Lcom/google/android/street/StreetView;->yaw(F)V

    .line 862
    const/4 v3, 0x1

    goto :goto_15

    .line 866
    :sswitch_42
    if-eqz v2, :cond_15

    if-eqz v1, :cond_15

    .line 867
    invoke-virtual {p0, v6}, Lcom/google/android/street/StreetView;->yaw(F)V

    .line 868
    const/4 v3, 0x1

    goto :goto_15

    .line 874
    :sswitch_4b
    if-eqz v2, :cond_15

    .line 875
    invoke-direct {p0}, Lcom/google/android/street/StreetView;->nextZoomLevel()F

    move-result v4

    invoke-virtual {p0, v4}, Lcom/google/android/street/StreetView;->zoom(F)V

    goto :goto_15

    .line 880
    :sswitch_55
    if-eqz v2, :cond_15

    .line 881
    invoke-virtual {p0, v5}, Lcom/google/android/street/StreetView;->zoom(F)V

    .line 883
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/google/android/street/StreetView;->tilt(F)V

    goto :goto_15

    .line 888
    :sswitch_5f
    if-eqz v2, :cond_15

    if-eqz v1, :cond_15

    .line 889
    invoke-virtual {p0}, Lcom/google/android/street/StreetView;->initUserOrientation()V

    goto :goto_15

    .line 894
    :sswitch_67
    if-eqz v2, :cond_15

    .line 895
    invoke-virtual {p0}, Lcom/google/android/street/StreetView;->toggleCompassMode()V

    goto :goto_15

    .line 914
    :cond_6d
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_22

    .line 843
    :sswitch_data_72
    .sparse-switch
        0x4 -> :sswitch_25
        0x13 -> :sswitch_27
        0x14 -> :sswitch_30
        0x15 -> :sswitch_39
        0x16 -> :sswitch_42
        0x17 -> :sswitch_4b
        0x1f -> :sswitch_67
        0x23 -> :sswitch_55
        0x2d -> :sswitch_5f
        0x30 -> :sswitch_4b
        0x3e -> :sswitch_55
    .end sparse-switch
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 2
    .parameter "e"

    .prologue
    .line 943
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 691
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mRenderer:Lcom/google/android/street/Renderer;

    if-eqz v0, :cond_9

    .line 692
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mRenderer:Lcom/google/android/street/Renderer;

    invoke-virtual {v0}, Lcom/google/android/street/Renderer;->renderingPause()V

    .line 694
    :cond_9
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/street/StreetView;->enableSensor(Z)V

    .line 706
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 709
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mRenderer:Lcom/google/android/street/Renderer;

    if-eqz v0, :cond_9

    .line 710
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mRenderer:Lcom/google/android/street/Renderer;

    invoke-virtual {v0}, Lcom/google/android/street/Renderer;->renderingResume()V

    .line 712
    :cond_9
    iget-boolean v0, p0, Lcom/google/android/street/StreetView;->mUseSensorToControlView:Z

    invoke-direct {p0, v0}, Lcom/google/android/street/StreetView;->enableSensor(Z)V

    .line 713
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 13
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/4 v7, 0x1

    .line 947
    invoke-direct {p0}, Lcom/google/android/street/StreetView;->okToAct()Z

    move-result v2

    if-nez v2, :cond_9

    move v2, v7

    .line 990
    :goto_8
    return v2

    .line 955
    :cond_9
    iget-boolean v2, p0, Lcom/google/android/street/StreetView;->mZoomButtonsEnabled:Z

    if-eqz v2, :cond_12

    .line 956
    iget-object v2, p0, Lcom/google/android/street/StreetView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v2, v7}, Landroid/widget/ZoomButtonsController;->setVisible(Z)V

    .line 960
    :cond_12
    iget-object v2, p0, Lcom/google/android/street/StreetView;->mHighlighter:Lcom/google/android/street/Highlighter;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/street/Highlighter;->move(FF)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 962
    iget-object v2, p0, Lcom/google/android/street/StreetView;->mHighlighter:Lcom/google/android/street/Highlighter;

    invoke-virtual {v2}, Lcom/google/android/street/Highlighter;->getCurrentlyPressedItem()I

    move-result v2

    const/4 v3, -0x2

    if-ne v2, v3, :cond_3e

    .line 964
    iget-object v2, p0, Lcom/google/android/street/StreetView;->mRenderer:Lcom/google/android/street/Renderer;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    const/high16 v5, 0x4286

    iget v6, p0, Lcom/google/android/street/StreetView;->mScreenDensity:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/google/android/street/Renderer;->setPancake(FF)V

    :cond_3e
    move v2, v7

    .line 967
    goto :goto_8

    .line 971
    :cond_40
    iget-boolean v2, p0, Lcom/google/android/street/StreetView;->mUseSensorToControlView:Z

    if-eqz v2, :cond_46

    move v2, v7

    .line 972
    goto :goto_8

    .line 976
    :cond_46
    const v0, 0x3ca3d70a

    .line 977
    .local v0, xm:F
    const v1, -0x43dc28f6

    .line 978
    .local v1, ym:F
    const v2, 0x3ca3d70a

    mul-float/2addr v2, p3

    iput v2, p0, Lcom/google/android/street/StreetView;->mLastDX:F

    .line 979
    const v2, -0x43dc28f6

    mul-float/2addr v2, p4

    iput v2, p0, Lcom/google/android/street/StreetView;->mLastDY:F

    .line 987
    iget v2, p0, Lcom/google/android/street/StreetView;->mUnzoomedFovH:F

    mul-float/2addr v2, p3

    const/high16 v3, 0x4120

    invoke-virtual {p0}, Lcom/google/android/street/StreetView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    div-float/2addr v2, v3

    iget v3, p0, Lcom/google/android/street/StreetView;->mUnzoomedFovV:F

    mul-float/2addr v3, p4

    const/high16 v4, -0x3e4c

    invoke-virtual {p0}, Lcom/google/android/street/StreetView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    div-float/2addr v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/google/android/street/StreetView;->yawTilt(FF)V

    move v2, v7

    .line 990
    goto :goto_8
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .registers 2
    .parameter "e"

    .prologue
    .line 1082
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "e"

    .prologue
    .line 1214
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "ev"

    .prologue
    .line 935
    invoke-direct {p0, p1}, Lcom/google/android/street/StreetView;->finishTap(Landroid/view/MotionEvent;)V

    .line 936
    const/4 v0, 0x1

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .registers 5
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 775
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/SurfaceView;->onSizeChanged(IIII)V

    .line 776
    invoke-direct {p0}, Lcom/google/android/street/StreetView;->updateDeviceOrientation()V

    .line 777
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "ev"

    .prologue
    const/4 v1, 0x1

    .line 740
    invoke-direct {p0}, Lcom/google/android/street/StreetView;->okToAct()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 746
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mRenderer:Lcom/google/android/street/Renderer;

    invoke-virtual {v0, v1}, Lcom/google/android/street/Renderer;->setMotionUse(I)V

    .line 752
    invoke-static {}, Lcom/google/android/common/gesture/GestureController;->getInstance()Lcom/google/android/common/gesture/GestureController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/common/gesture/GestureController;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_18

    move v0, v1

    .line 769
    :goto_17
    return v0

    .line 757
    :cond_18
    invoke-static {}, Lcom/google/android/common/gesture/MultiTouchController;->getInstance()Lcom/google/android/common/gesture/MultiTouchController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/common/gesture/MultiTouchController;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_24

    move v0, v1

    .line 758
    goto :goto_17

    .line 763
    :cond_24
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_2f

    .line 764
    invoke-direct {p0, p1}, Lcom/google/android/street/StreetView;->onIndirectUp(Landroid/view/MotionEvent;)V

    move v0, v1

    .line 765
    goto :goto_17

    :cond_2f
    move v0, v1

    .line 769
    goto :goto_17
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 14
    .parameter "event"

    .prologue
    const/4 v8, 0x0

    const v11, 0x3e4ccccd

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 781
    invoke-direct {p0}, Lcom/google/android/street/StreetView;->okToAct()Z

    move-result v7

    if-nez v7, :cond_e

    move v7, v9

    .line 816
    :goto_d
    return v7

    .line 784
    :cond_e
    iget-boolean v7, p0, Lcom/google/android/street/StreetView;->mUseSensorToControlView:Z

    if-nez v7, :cond_59

    move v2, v9

    .line 785
    .local v2, inNormalControlMode:Z
    :goto_13
    iget-object v7, p0, Lcom/google/android/street/StreetView;->mTrackballGestureDetector:Lcom/google/android/street/TrackballGestureDetector;

    invoke-virtual {v7, p1}, Lcom/google/android/street/TrackballGestureDetector;->analyze(Landroid/view/MotionEvent;)V

    .line 787
    iget-object v7, p0, Lcom/google/android/street/StreetView;->mRenderer:Lcom/google/android/street/Renderer;

    invoke-virtual {v7, v8}, Lcom/google/android/street/Renderer;->setMotionUse(I)V

    .line 788
    iget-object v7, p0, Lcom/google/android/street/StreetView;->mTrackballGestureDetector:Lcom/google/android/street/TrackballGestureDetector;

    invoke-virtual {v7}, Lcom/google/android/street/TrackballGestureDetector;->isScroll()Z

    move-result v7

    if-eqz v7, :cond_5e

    if-eqz v2, :cond_5e

    .line 789
    const/high16 v0, 0x40a0

    .line 790
    .local v0, TRACKBALL_SCALE:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    const/high16 v8, 0x40a0

    mul-float v5, v7, v8

    .line 791
    .local v5, yaw:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    const/high16 v8, -0x3fe0

    mul-float v3, v7, v8

    .line 793
    .local v3, tilt:F
    cmpl-float v7, v5, v10

    if-nez v7, :cond_41

    cmpl-float v7, v3, v10

    if-eqz v7, :cond_73

    .line 794
    :cond_41
    mul-float v6, v11, v5

    .line 795
    .local v6, yawStep:F
    mul-float v4, v11, v3

    .line 796
    .local v4, tiltStep:F
    const/4 v1, 0x0

    .local v1, i:I
    :goto_46
    const/4 v7, 0x5

    if-ge v1, v7, :cond_73

    .line 797
    invoke-direct {p0, v6, v4}, Lcom/google/android/street/StreetView;->doYawTilt(FF)V

    .line 798
    invoke-direct {p0}, Lcom/google/android/street/StreetView;->updateRendererUserOrientation()V

    .line 799
    monitor-enter p0

    .line 801
    const-wide/16 v7, 0x1e

    :try_start_52
    invoke-virtual {p0, v7, v8}, Ljava/lang/Object;->wait(J)V
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_5b
    .catch Ljava/lang/InterruptedException; {:try_start_52 .. :try_end_55} :catch_7d

    .line 805
    :goto_55
    :try_start_55
    monitor-exit p0

    .line 796
    add-int/lit8 v1, v1, 0x1

    goto :goto_46

    .end local v0           #TRACKBALL_SCALE:F
    .end local v1           #i:I
    .end local v2           #inNormalControlMode:Z
    .end local v3           #tilt:F
    .end local v4           #tiltStep:F
    .end local v5           #yaw:F
    .end local v6           #yawStep:F
    :cond_59
    move v2, v8

    .line 784
    goto :goto_13

    .line 805
    .restart local v0       #TRACKBALL_SCALE:F
    .restart local v1       #i:I
    .restart local v2       #inNormalControlMode:Z
    .restart local v3       #tilt:F
    .restart local v4       #tiltStep:F
    .restart local v5       #yaw:F
    .restart local v6       #yawStep:F
    :catchall_5b
    move-exception v7

    monitor-exit p0
    :try_end_5d
    .catchall {:try_start_55 .. :try_end_5d} :catchall_5b

    throw v7

    .line 808
    .end local v0           #TRACKBALL_SCALE:F
    .end local v1           #i:I
    .end local v3           #tilt:F
    .end local v4           #tiltStep:F
    .end local v5           #yaw:F
    .end local v6           #yawStep:F
    :cond_5e
    iget-object v7, p0, Lcom/google/android/street/StreetView;->mTrackballGestureDetector:Lcom/google/android/street/TrackballGestureDetector;

    invoke-virtual {v7}, Lcom/google/android/street/TrackballGestureDetector;->isTap()Z

    move-result v7

    if-eqz v7, :cond_73

    .line 809
    iget-object v7, p0, Lcom/google/android/street/StreetView;->mUserOrientation:Lcom/google/android/street/UserOrientation;

    invoke-virtual {v7}, Lcom/google/android/street/UserOrientation;->getZoom()F

    move-result v7

    cmpl-float v7, v7, v10

    if-nez v7, :cond_75

    .line 810
    invoke-virtual {p0}, Lcom/google/android/street/StreetView;->goForward()V

    :cond_73
    :goto_73
    move v7, v9

    .line 816
    goto :goto_d

    .line 811
    :cond_75
    iget-boolean v7, p0, Lcom/google/android/street/StreetView;->mZoomButtonsEnabled:Z

    if-eqz v7, :cond_73

    .line 812
    invoke-direct {p0, v9}, Lcom/google/android/street/StreetView;->showZoomController(Z)V

    goto :goto_73

    .line 802
    .restart local v0       #TRACKBALL_SCALE:F
    .restart local v1       #i:I
    .restart local v3       #tilt:F
    .restart local v4       #tiltStep:F
    .restart local v5       #yaw:F
    .restart local v6       #yawStep:F
    :catch_7d
    move-exception v7

    goto :goto_55
.end method

.method public postPanoramaInfo(ZLcom/google/android/street/PanoramaConfig;)V
    .registers 5
    .parameter "interrupted"
    .parameter "panoramaConfig"

    .prologue
    const/4 v1, 0x0

    .line 1340
    if-eqz p1, :cond_8

    const/4 v0, 0x1

    :goto_4
    invoke-direct {p0, v1, v0, v1, p2}, Lcom/google/android/street/StreetView;->send(IIILjava/lang/Object;)V

    .line 1341
    return-void

    :cond_8
    move v0, v1

    .line 1340
    goto :goto_4
.end method

.method public reloadPanorama()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 1388
    iput-object v0, p0, Lcom/google/android/street/StreetView;->mPanoramaLink:Lcom/google/android/street/PanoramaLink;

    .line 1389
    iput-object v0, p0, Lcom/google/android/street/StreetView;->mInitialPanoId:Ljava/lang/String;

    .line 1390
    iput-object v0, p0, Lcom/google/android/street/StreetView;->mInitialPanoMapPoint:Lcom/google/android/street/MapPoint;

    .line 1391
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    invoke-direct {p0, v0}, Lcom/google/android/street/StreetView;->setPanoramaConfig(Lcom/google/android/street/PanoramaConfig;)V

    .line 1392
    return-void
.end method

.method public reportRenderStatusProgress(I)V
    .registers 9
    .parameter "progress"

    .prologue
    .line 1292
    const-wide v1, 0x409f400000000000L

    const-wide v3, 0x3fe999999999999aL

    int-to-double v5, p1

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    double-to-int v0, v1

    .line 1294
    .local v0, combinedProgress:I
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/google/android/street/StreetView;->send(II)V

    .line 1295
    return-void
.end method

.method public reportTransitionProgress(I)V
    .registers 3
    .parameter "progress"

    .prologue
    .line 1298
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/google/android/street/StreetView;->send(II)V

    .line 1299
    return-void
.end method

.method public setDirectionsArrowParams(FF)V
    .registers 4
    .parameter "incomingYaw"
    .parameter "outgoingYaw"

    .prologue
    .line 1563
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mRenderer:Lcom/google/android/street/Renderer;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/street/Renderer;->setDirectionsArrowParams(FF)V

    .line 1564
    return-void
.end method

.method public setStatusOverride(Ljava/lang/String;)V
    .registers 2
    .parameter "statusOverride"

    .prologue
    .line 1551
    iput-object p1, p0, Lcom/google/android/street/StreetView;->mStatusOverride:Ljava/lang/String;

    .line 1552
    invoke-direct {p0}, Lcom/google/android/street/StreetView;->updateStatusText()V

    .line 1553
    return-void
.end method

.method public setTimer(Lcom/google/android/street/Timer;)V
    .registers 2
    .parameter "timer"

    .prologue
    .line 555
    return-void
.end method

.method public declared-synchronized tilt(F)V
    .registers 3
    .parameter "deltaTilt"

    .prologue
    .line 1511
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/google/android/street/StreetView;->doTilt(F)V

    .line 1512
    invoke-direct {p0}, Lcom/google/android/street/StreetView;->updateRendererUserOrientation()V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 1513
    monitor-exit p0

    return-void

    .line 1511
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toggleCompassMode()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 1718
    iget-boolean v0, p0, Lcom/google/android/street/StreetView;->mUseSensorToControlView:Z

    if-nez v0, :cond_a

    move v0, v1

    :goto_6
    invoke-virtual {p0, v0, v1}, Lcom/google/android/street/StreetView;->toggleCompassMode(ZZ)V

    .line 1719
    return-void

    .line 1718
    :cond_a
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public toggleCompassMode(ZZ)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1724
    iget-boolean v0, p0, Lcom/google/android/street/StreetView;->mUseSensorToControlView:Z

    if-ne v0, p1, :cond_6

    .line 1744
    :goto_5
    return-void

    .line 1728
    :cond_6
    iput-boolean p1, p0, Lcom/google/android/street/StreetView;->mUseSensorToControlView:Z

    .line 1730
    if-eqz p2, :cond_1c

    .line 1731
    iget-boolean v0, p0, Lcom/google/android/street/StreetView;->mUseSensorToControlView:Z

    if-eqz v0, :cond_3b

    const v0, 0x7f040004

    .line 1733
    :goto_11
    invoke-virtual {p0}, Lcom/google/android/street/StreetView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1736
    :cond_1c
    iget-boolean v0, p0, Lcom/google/android/street/StreetView;->mUseSensorToControlView:Z

    invoke-direct {p0, v0}, Lcom/google/android/street/StreetView;->enableSensor(Z)V

    .line 1739
    invoke-virtual {p0}, Lcom/google/android/street/StreetView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.google.android.street.StreetView"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "useSensorToControlView"

    iget-boolean v2, p0, Lcom/google/android/street/StreetView;->mUseSensorToControlView:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_5

    .line 1731
    :cond_3b
    const v0, 0x7f040005

    goto :goto_11
.end method

.method public declared-synchronized yaw(F)V
    .registers 3
    .parameter "deltaYaw"

    .prologue
    .line 1506
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/google/android/street/StreetView;->doYaw(F)V

    .line 1507
    invoke-direct {p0}, Lcom/google/android/street/StreetView;->updateRendererUserOrientation()V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 1508
    monitor-exit p0

    return-void

    .line 1506
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized yawTilt(FF)V
    .registers 4
    .parameter "deltaYaw"
    .parameter "deltaTilt"

    .prologue
    .line 1501
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/google/android/street/StreetView;->doYawTilt(FF)V

    .line 1502
    invoke-direct {p0}, Lcom/google/android/street/StreetView;->updateRendererUserOrientation()V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 1503
    monitor-exit p0

    return-void

    .line 1501
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public zoom(F)V
    .registers 2
    .parameter "deltaZoom"

    .prologue
    .line 1517
    invoke-direct {p0, p1}, Lcom/google/android/street/StreetView;->doZoom(F)V

    .line 1518
    invoke-direct {p0}, Lcom/google/android/street/StreetView;->updateRendererAndButtons()V

    .line 1519
    return-void
.end method
