.class public Lcom/sec/android/app/camera/resourcedata/CamcorderFlashModeResourceData;
.super Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
.source "CamcorderFlashModeResourceData.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CamcorderFlashModeResourceData"


# instance fields
.field private mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

.field private mCommandIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V
    .registers 9
    .parameter "activityContext"

    .prologue
    .line 44
    const/16 v4, 0xbbb

    const v5, 0x7f0900a3

    invoke-direct {p0, v4, v5}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;-><init>(II)V

    .line 32
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/sec/android/app/camera/resourcedata/CamcorderFlashModeResourceData;->mCommandIdList:Ljava/util/ArrayList;

    .line 46
    iput-object p1, p0, Lcom/sec/android/app/camera/resourcedata/CamcorderFlashModeResourceData;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .line 48
    invoke-direct {p0}, Lcom/sec/android/app/camera/resourcedata/CamcorderFlashModeResourceData;->initCommandIdList()V

    .line 50
    iget-object v4, p0, Lcom/sec/android/app/camera/resourcedata/CamcorderFlashModeResourceData;->mCommandIdList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_65

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 51
    .local v1, commandId:I
    iget-object v4, p0, Lcom/sec/android/app/camera/resourcedata/CamcorderFlashModeResourceData;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v4

    iget-object v4, v4, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    invoke-virtual {v4, v1}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v3

    .line 52
    .local v3, resIDs:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    if-nez v3, :cond_40

    .line 53
    const-string v4, "CamcorderFlashModeResourceData"

    const-string v5, "Cannot find resource ID"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    .line 57
    :cond_40
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v4, 0x5

    new-array v4, v4, [I

    const/4 v5, 0x0

    iget v6, v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    aput v6, v4, v5

    const/4 v5, 0x1

    iget v6, v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    aput v6, v4, v5

    const/4 v5, 0x2

    iget v6, v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    aput v6, v4, v5

    const/4 v5, 0x3

    iget v6, v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    aput v6, v4, v5

    const/4 v5, 0x4

    aput v1, v4, v5

    invoke-direct {v0, v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;-><init>([I)V

    .line 59
    .local v0, bundle:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    iget-object v4, p0, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->mMenuResource:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 61
    .end local v0           #bundle:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .end local v1           #commandId:I
    .end local v3           #resIDs:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    :cond_65
    return-void
.end method

.method private initCommandIdList()V
    .registers 3

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/CamcorderFlashModeResourceData;->mCommandIdList:Ljava/util/ArrayList;

    const/16 v1, 0x25c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/CamcorderFlashModeResourceData;->mCommandIdList:Ljava/util/ArrayList;

    const/16 v1, 0x25d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    return-void
.end method


# virtual methods
.method public cleanUpResources()V
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->mMenuResource:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 66
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/CamcorderFlashModeResourceData;->mCommandIdList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 67
    return-void
.end method