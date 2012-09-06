.class public final Lcom/google/android/gtalkservice/Presence;
.super Ljava/lang/Object;
.source "Presence.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gtalkservice/Presence$2;,
        Lcom/google/android/gtalkservice/Presence$Show;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gtalkservice/Presence;",
            ">;"
        }
    .end annotation
.end field

.field public static final OFFLINE:Lcom/google/android/gtalkservice/Presence;


# instance fields
.field private mAllowInvisibility:Z

.field private mAvailable:Z

.field private mCapabilities:I

.field private mDefaultStatusList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDndStatusList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInvisible:Z

.field private mShow:Lcom/google/android/gtalkservice/Presence$Show;

.field private mStatus:Ljava/lang/String;

.field private mStatusListContentsMax:I

.field private mStatusListMax:I

.field private mStatusMax:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 45
    new-instance v0, Lcom/google/android/gtalkservice/Presence;

    invoke-direct {v0}, Lcom/google/android/gtalkservice/Presence;-><init>()V

    sput-object v0, Lcom/google/android/gtalkservice/Presence;->OFFLINE:Lcom/google/android/gtalkservice/Presence;

    .line 536
    new-instance v0, Lcom/google/android/gtalkservice/Presence$1;

    invoke-direct {v0}, Lcom/google/android/gtalkservice/Presence$1;-><init>()V

    sput-object v0, Lcom/google/android/gtalkservice/Presence;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    .line 71
    const/4 v0, 0x0

    sget-object v1, Lcom/google/android/gtalkservice/Presence$Show;->NONE:Lcom/google/android/gtalkservice/Presence$Show;

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/gtalkservice/Presence;-><init>(ZLcom/google/android/gtalkservice/Presence$Show;Ljava/lang/String;I)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 97
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/Presence;->setStatusMax(I)V

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/Presence;->setStatusListMax(I)V

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/Presence;->setStatusListContentsMax(I)V

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6c

    move v0, v1

    :goto_21
    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/Presence;->setAllowInvisibility(Z)V

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6e

    move v0, v1

    :goto_2b
    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/Presence;->setAvailable(Z)V

    .line 104
    const-class v0, Lcom/google/android/gtalkservice/Presence$Show;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/gtalkservice/Presence$Show;

    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/Presence;->setShow(Lcom/google/android/gtalkservice/Presence$Show;)V

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gtalkservice/Presence;->mStatus:Ljava/lang/String;

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_70

    :goto_49
    invoke-virtual {p0, v1}, Lcom/google/android/gtalkservice/Presence;->setInvisible(Z)Z

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gtalkservice/Presence;->mDefaultStatusList:Ljava/util/List;

    .line 111
    iget-object v0, p0, Lcom/google/android/gtalkservice/Presence;->mDefaultStatusList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gtalkservice/Presence;->mDndStatusList:Ljava/util/List;

    .line 114
    iget-object v0, p0, Lcom/google/android/gtalkservice/Presence;->mDndStatusList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/Presence;->setCapabilities(I)V

    .line 116
    return-void

    :cond_6c
    move v0, v2

    .line 101
    goto :goto_21

    :cond_6e
    move v0, v2

    .line 103
    goto :goto_2b

    :cond_70
    move v1, v2

    .line 108
    goto :goto_49
.end method

.method public constructor <init>(ZLcom/google/android/gtalkservice/Presence$Show;Ljava/lang/String;I)V
    .registers 6
    .parameter "available"
    .parameter "show"
    .parameter "status"
    .parameter "caps"

    .prologue
    .line 82
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-boolean p1, p0, Lcom/google/android/gtalkservice/Presence;->mAvailable:Z

    .line 84
    iput-object p2, p0, Lcom/google/android/gtalkservice/Presence;->mShow:Lcom/google/android/gtalkservice/Presence$Show;

    .line 85
    iput-object p3, p0, Lcom/google/android/gtalkservice/Presence;->mStatus:Ljava/lang/String;

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gtalkservice/Presence;->mInvisible:Z

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gtalkservice/Presence;->mDefaultStatusList:Ljava/util/List;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gtalkservice/Presence;->mDndStatusList:Ljava/util/List;

    .line 89
    iput p4, p0, Lcom/google/android/gtalkservice/Presence;->mCapabilities:I

    .line 90
    return-void
.end method

.method private addToList(Ljava/util/List;Ljava/lang/String;)Z
    .registers 9
    .parameter
    .parameter "status"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 358
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 376
    :goto_7
    return v3

    .line 362
    :cond_8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 363
    .local v1, s:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    goto :goto_7

    .line 368
    .end local v1           #s:Ljava/lang/String;
    :cond_27
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/Presence;->getStatusMax()I

    move-result v2

    .line 369
    .local v2, statusMax:I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v2, :cond_35

    .line 370
    invoke-virtual {p2, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 373
    :cond_35
    invoke-interface {p1, v3, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 375
    invoke-direct {p0, p1}, Lcom/google/android/gtalkservice/Presence;->checkListContentsLength(Ljava/util/List;)Ljava/util/List;

    .line 376
    const/4 v3, 0x1

    goto :goto_7
.end method

.method private checkListContentsLength(Ljava/util/List;)Ljava/util/List;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 345
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/Presence;->getStatusListContentsMax()I

    move-result v2

    .line 346
    .local v2, maxListContentsLength:I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 348
    .local v1, listLength:I
    if-le v1, v2, :cond_14

    .line 349
    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_c
    if-lt v0, v2, :cond_14

    .line 350
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 349
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    .line 354
    .end local v0           #i:I
    :cond_14
    return-object p1
.end method

.method private setStatus(Ljava/lang/String;Z)V
    .registers 5
    .parameter "status"
    .parameter "updateLists"

    .prologue
    .line 314
    iput-object p1, p0, Lcom/google/android/gtalkservice/Presence;->mStatus:Ljava/lang/String;

    .line 316
    if-eqz p2, :cond_11

    .line 318
    sget-object v0, Lcom/google/android/gtalkservice/Presence$2;->$SwitchMap$com$google$android$gtalkservice$Presence$Show:[I

    iget-object v1, p0, Lcom/google/android/gtalkservice/Presence;->mShow:Lcom/google/android/gtalkservice/Presence$Show;

    invoke-virtual {v1}, Lcom/google/android/gtalkservice/Presence$Show;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1e

    .line 328
    :cond_11
    :goto_11
    return-void

    .line 320
    :pswitch_12
    iget-object v0, p0, Lcom/google/android/gtalkservice/Presence;->mDndStatusList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/google/android/gtalkservice/Presence;->addToList(Ljava/util/List;Ljava/lang/String;)Z

    goto :goto_11

    .line 324
    :pswitch_18
    iget-object v0, p0, Lcom/google/android/gtalkservice/Presence;->mDefaultStatusList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/google/android/gtalkservice/Presence;->addToList(Ljava/util/List;Ljava/lang/String;)Z

    goto :goto_11

    .line 318
    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_12
        :pswitch_18
    .end packed-switch
.end method


# virtual methods
.method public allowInvisibility()Z
    .registers 2

    .prologue
    .line 206
    iget-boolean v0, p0, Lcom/google/android/gtalkservice/Presence;->mAllowInvisibility:Z

    return v0
.end method

.method public clearStatusLists()V
    .registers 2

    .prologue
    .line 409
    iget-object v0, p0, Lcom/google/android/gtalkservice/Presence;->mDefaultStatusList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 410
    iget-object v0, p0, Lcom/google/android/gtalkservice/Presence;->mDndStatusList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 411
    return-void
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 533
    const/4 v0, 0x0

    return v0
.end method

.method public getCapabilities()I
    .registers 2

    .prologue
    .line 419
    iget v0, p0, Lcom/google/android/gtalkservice/Presence;->mCapabilities:I

    return v0
.end method

.method public getDefaultStatusList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 388
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gtalkservice/Presence;->mDefaultStatusList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getDndStatusList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 400
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gtalkservice/Presence;->mDndStatusList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getShow()Lcom/google/android/gtalkservice/Presence$Show;
    .registers 2

    .prologue
    .line 277
    iget-object v0, p0, Lcom/google/android/gtalkservice/Presence;->mShow:Lcom/google/android/gtalkservice/Presence$Show;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .registers 2

    .prologue
    .line 297
    iget-object v0, p0, Lcom/google/android/gtalkservice/Presence;->mStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusListContentsMax()I
    .registers 2

    .prologue
    .line 186
    iget v0, p0, Lcom/google/android/gtalkservice/Presence;->mStatusListContentsMax:I

    return v0
.end method

.method public getStatusListMax()I
    .registers 2

    .prologue
    .line 166
    iget v0, p0, Lcom/google/android/gtalkservice/Presence;->mStatusListMax:I

    return v0
.end method

.method public getStatusMax()I
    .registers 2

    .prologue
    .line 146
    iget v0, p0, Lcom/google/android/gtalkservice/Presence;->mStatusMax:I

    return v0
.end method

.method public isAvailable()Z
    .registers 2

    .prologue
    .line 228
    iget-boolean v0, p0, Lcom/google/android/gtalkservice/Presence;->mAvailable:Z

    return v0
.end method

.method public isInvisible()Z
    .registers 2

    .prologue
    .line 248
    iget-boolean v0, p0, Lcom/google/android/gtalkservice/Presence;->mInvisible:Z

    return v0
.end method

.method public setAllowInvisibility(Z)V
    .registers 2
    .parameter "allowInvisibility"

    .prologue
    .line 219
    iput-boolean p1, p0, Lcom/google/android/gtalkservice/Presence;->mAllowInvisibility:Z

    .line 220
    return-void
.end method

.method public setAvailable(Z)V
    .registers 2
    .parameter "available"

    .prologue
    .line 239
    iput-boolean p1, p0, Lcom/google/android/gtalkservice/Presence;->mAvailable:Z

    .line 240
    return-void
.end method

.method public setCapabilities(I)V
    .registers 2
    .parameter "capabilities"

    .prologue
    .line 428
    iput p1, p0, Lcom/google/android/gtalkservice/Presence;->mCapabilities:I

    .line 429
    return-void
.end method

.method public setInvisible(Z)Z
    .registers 3
    .parameter "invisible"

    .prologue
    .line 259
    iput-boolean p1, p0, Lcom/google/android/gtalkservice/Presence;->mInvisible:Z

    .line 262
    if-eqz p1, :cond_c

    invoke-virtual {p0}, Lcom/google/android/gtalkservice/Presence;->allowInvisibility()Z

    move-result v0

    if-nez v0, :cond_c

    .line 263
    const/4 v0, 0x0

    .line 266
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public setShow(Lcom/google/android/gtalkservice/Presence$Show;)V
    .registers 2
    .parameter "show"

    .prologue
    .line 288
    iput-object p1, p0, Lcom/google/android/gtalkservice/Presence;->mShow:Lcom/google/android/gtalkservice/Presence$Show;

    .line 289
    return-void
.end method

.method public setStatus(Lcom/google/android/gtalkservice/Presence$Show;Ljava/lang/String;)V
    .registers 4
    .parameter "show"
    .parameter "status"

    .prologue
    .line 340
    invoke-virtual {p0, p1}, Lcom/google/android/gtalkservice/Presence;->setShow(Lcom/google/android/gtalkservice/Presence$Show;)V

    .line 341
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/google/android/gtalkservice/Presence;->setStatus(Ljava/lang/String;Z)V

    .line 342
    return-void
.end method

.method public setStatusListContentsMax(I)V
    .registers 2
    .parameter "max"

    .prologue
    .line 197
    iput p1, p0, Lcom/google/android/gtalkservice/Presence;->mStatusListContentsMax:I

    .line 198
    return-void
.end method

.method public setStatusListMax(I)V
    .registers 2
    .parameter "max"

    .prologue
    .line 177
    iput p1, p0, Lcom/google/android/gtalkservice/Presence;->mStatusListMax:I

    .line 178
    return-void
.end method

.method public setStatusMax(I)V
    .registers 2
    .parameter "max"

    .prologue
    .line 157
    iput p1, p0, Lcom/google/android/gtalkservice/Presence;->mStatusMax:I

    .line 158
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 549
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/Presence;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_9

    .line 550
    const-string v1, "UNAVAILABLE"

    .line 577
    :goto_8
    return-object v1

    .line 553
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/Presence;->isInvisible()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 554
    const-string v1, "INVISIBLE"

    goto :goto_8

    .line 557
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 559
    .local v0, sb:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/google/android/gtalkservice/Presence;->mShow:Lcom/google/android/gtalkservice/Presence$Show;

    sget-object v2, Lcom/google/android/gtalkservice/Presence$Show;->NONE:Lcom/google/android/gtalkservice/Presence$Show;

    if-ne v1, v2, :cond_55

    .line 560
    const-string v1, "AVAILABLE(x)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    :goto_24
    iget v1, p0, Lcom/google/android/gtalkservice/Presence;->mCapabilities:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_2f

    .line 566
    const-string v1, " pmuc-v1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    :cond_2f
    iget v1, p0, Lcom/google/android/gtalkservice/Presence;->mCapabilities:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3a

    .line 569
    const-string v1, " voice-v1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    :cond_3a
    iget v1, p0, Lcom/google/android/gtalkservice/Presence;->mCapabilities:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_45

    .line 572
    const-string v1, " video-v1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    :cond_45
    iget v1, p0, Lcom/google/android/gtalkservice/Presence;->mCapabilities:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_50

    .line 575
    const-string v1, " camera-v1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    :cond_50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    .line 562
    :cond_55
    iget-object v1, p0, Lcom/google/android/gtalkservice/Presence;->mShow:Lcom/google/android/gtalkservice/Presence$Show;

    invoke-virtual {v1}, Lcom/google/android/gtalkservice/Presence$Show;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_24
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 517
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/Presence;->getStatusMax()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 518
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/Presence;->getStatusListMax()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 519
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/Presence;->getStatusListContentsMax()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 520
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/Presence;->allowInvisibility()Z

    move-result v0

    if-eqz v0, :cond_50

    move v0, v1

    :goto_1e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 522
    iget-boolean v0, p0, Lcom/google/android/gtalkservice/Presence;->mAvailable:Z

    if-eqz v0, :cond_52

    move v0, v1

    :goto_26
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 523
    iget-object v0, p0, Lcom/google/android/gtalkservice/Presence;->mShow:Lcom/google/android/gtalkservice/Presence$Show;

    invoke-virtual {v0}, Lcom/google/android/gtalkservice/Presence$Show;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 524
    iget-object v0, p0, Lcom/google/android/gtalkservice/Presence;->mStatus:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 525
    iget-boolean v0, p0, Lcom/google/android/gtalkservice/Presence;->mInvisible:Z

    if-eqz v0, :cond_54

    :goto_3b
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 527
    iget-object v0, p0, Lcom/google/android/gtalkservice/Presence;->mDefaultStatusList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 528
    iget-object v0, p0, Lcom/google/android/gtalkservice/Presence;->mDndStatusList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 529
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/Presence;->getCapabilities()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 530
    return-void

    :cond_50
    move v0, v2

    .line 520
    goto :goto_1e

    :cond_52
    move v0, v2

    .line 522
    goto :goto_26

    :cond_54
    move v1, v2

    .line 525
    goto :goto_3b
.end method
