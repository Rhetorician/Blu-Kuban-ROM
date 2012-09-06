.class public Lcom/jme3/renderer/queue/RenderQueue;
.super Ljava/lang/Object;
.source "RenderQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/renderer/queue/RenderQueue$1;,
        Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;,
        Lcom/jme3/renderer/queue/RenderQueue$Bucket;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private guiList:Lcom/jme3/renderer/queue/GeometryList;

.field private opaqueList:Lcom/jme3/renderer/queue/GeometryList;

.field private shadowCast:Lcom/jme3/renderer/queue/GeometryList;

.field private shadowRecv:Lcom/jme3/renderer/queue/GeometryList;

.field private skyList:Lcom/jme3/renderer/queue/GeometryList;

.field private translucentList:Lcom/jme3/renderer/queue/GeometryList;

.field private transparentList:Lcom/jme3/renderer/queue/GeometryList;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 46
    const-class v0, Lcom/jme3/renderer/queue/RenderQueue;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/jme3/renderer/queue/RenderQueue;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lcom/jme3/renderer/queue/GeometryList;

    new-instance v1, Lcom/jme3/renderer/queue/OpaqueComparator;

    invoke-direct {v1}, Lcom/jme3/renderer/queue/OpaqueComparator;-><init>()V

    invoke-direct {v0, v1}, Lcom/jme3/renderer/queue/GeometryList;-><init>(Lcom/jme3/renderer/queue/GeometryComparator;)V

    iput-object v0, p0, Lcom/jme3/renderer/queue/RenderQueue;->opaqueList:Lcom/jme3/renderer/queue/GeometryList;

    .line 62
    new-instance v0, Lcom/jme3/renderer/queue/GeometryList;

    new-instance v1, Lcom/jme3/renderer/queue/GuiComparator;

    invoke-direct {v1}, Lcom/jme3/renderer/queue/GuiComparator;-><init>()V

    invoke-direct {v0, v1}, Lcom/jme3/renderer/queue/GeometryList;-><init>(Lcom/jme3/renderer/queue/GeometryComparator;)V

    iput-object v0, p0, Lcom/jme3/renderer/queue/RenderQueue;->guiList:Lcom/jme3/renderer/queue/GeometryList;

    .line 63
    new-instance v0, Lcom/jme3/renderer/queue/GeometryList;

    new-instance v1, Lcom/jme3/renderer/queue/TransparentComparator;

    invoke-direct {v1}, Lcom/jme3/renderer/queue/TransparentComparator;-><init>()V

    invoke-direct {v0, v1}, Lcom/jme3/renderer/queue/GeometryList;-><init>(Lcom/jme3/renderer/queue/GeometryComparator;)V

    iput-object v0, p0, Lcom/jme3/renderer/queue/RenderQueue;->transparentList:Lcom/jme3/renderer/queue/GeometryList;

    .line 64
    new-instance v0, Lcom/jme3/renderer/queue/GeometryList;

    new-instance v1, Lcom/jme3/renderer/queue/TransparentComparator;

    invoke-direct {v1}, Lcom/jme3/renderer/queue/TransparentComparator;-><init>()V

    invoke-direct {v0, v1}, Lcom/jme3/renderer/queue/GeometryList;-><init>(Lcom/jme3/renderer/queue/GeometryComparator;)V

    iput-object v0, p0, Lcom/jme3/renderer/queue/RenderQueue;->translucentList:Lcom/jme3/renderer/queue/GeometryList;

    .line 65
    new-instance v0, Lcom/jme3/renderer/queue/GeometryList;

    new-instance v1, Lcom/jme3/renderer/queue/NullComparator;

    invoke-direct {v1}, Lcom/jme3/renderer/queue/NullComparator;-><init>()V

    invoke-direct {v0, v1}, Lcom/jme3/renderer/queue/GeometryList;-><init>(Lcom/jme3/renderer/queue/GeometryComparator;)V

    iput-object v0, p0, Lcom/jme3/renderer/queue/RenderQueue;->skyList:Lcom/jme3/renderer/queue/GeometryList;

    .line 66
    new-instance v0, Lcom/jme3/renderer/queue/GeometryList;

    new-instance v1, Lcom/jme3/renderer/queue/OpaqueComparator;

    invoke-direct {v1}, Lcom/jme3/renderer/queue/OpaqueComparator;-><init>()V

    invoke-direct {v0, v1}, Lcom/jme3/renderer/queue/GeometryList;-><init>(Lcom/jme3/renderer/queue/GeometryComparator;)V

    iput-object v0, p0, Lcom/jme3/renderer/queue/RenderQueue;->shadowRecv:Lcom/jme3/renderer/queue/GeometryList;

    .line 67
    new-instance v0, Lcom/jme3/renderer/queue/GeometryList;

    new-instance v1, Lcom/jme3/renderer/queue/OpaqueComparator;

    invoke-direct {v1}, Lcom/jme3/renderer/queue/OpaqueComparator;-><init>()V

    invoke-direct {v0, v1}, Lcom/jme3/renderer/queue/GeometryList;-><init>(Lcom/jme3/renderer/queue/GeometryComparator;)V

    iput-object v0, p0, Lcom/jme3/renderer/queue/RenderQueue;->shadowCast:Lcom/jme3/renderer/queue/GeometryList;

    .line 68
    return-void
.end method

.method private renderGeometryList(Lcom/jme3/renderer/queue/GeometryList;Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/Camera;Z)V
    .registers 8
    .parameter "list"
    .parameter "rm"
    .parameter "cam"
    .parameter "clear"

    .prologue
    .line 294
    invoke-virtual {p1, p3}, Lcom/jme3/renderer/queue/GeometryList;->setCamera(Lcom/jme3/renderer/Camera;)V

    .line 295
    invoke-virtual {p1}, Lcom/jme3/renderer/queue/GeometryList;->sort()V

    .line 296
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    invoke-virtual {p1}, Lcom/jme3/renderer/queue/GeometryList;->size()I

    move-result v2

    if-ge v0, v2, :cond_27

    .line 297
    invoke-virtual {p1, v0}, Lcom/jme3/renderer/queue/GeometryList;->get(I)Lcom/jme3/scene/Geometry;

    move-result-object v1

    .line 298
    .local v1, obj:Lcom/jme3/scene/Geometry;
    sget-boolean v2, Lcom/jme3/renderer/queue/RenderQueue;->$assertionsDisabled:Z

    if-nez v2, :cond_1d

    if-nez v1, :cond_1d

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 299
    :cond_1d
    invoke-virtual {p2, v1}, Lcom/jme3/renderer/RenderManager;->renderGeometry(Lcom/jme3/scene/Geometry;)V

    .line 300
    const/high16 v2, -0x80

    iput v2, v1, Lcom/jme3/scene/Geometry;->queueDistance:F

    .line 296
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 302
    .end local v1           #obj:Lcom/jme3/scene/Geometry;
    :cond_27
    if-eqz p4, :cond_2c

    .line 303
    invoke-virtual {p1}, Lcom/jme3/renderer/queue/GeometryList;->clear()V

    .line 305
    :cond_2c
    return-void
.end method


# virtual methods
.method public addToQueue(Lcom/jme3/scene/Geometry;Lcom/jme3/renderer/queue/RenderQueue$Bucket;)V
    .registers 6
    .parameter "g"
    .parameter "bucket"

    .prologue
    .line 256
    sget-object v0, Lcom/jme3/renderer/queue/RenderQueue$1;->$SwitchMap$com$jme3$renderer$queue$RenderQueue$Bucket:[I

    invoke-virtual {p2}, Lcom/jme3/renderer/queue/RenderQueue$Bucket;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_42

    .line 273
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown bucket type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 258
    :pswitch_24
    iget-object v0, p0, Lcom/jme3/renderer/queue/RenderQueue;->guiList:Lcom/jme3/renderer/queue/GeometryList;

    invoke-virtual {v0, p1}, Lcom/jme3/renderer/queue/GeometryList;->add(Lcom/jme3/scene/Geometry;)V

    .line 275
    :goto_29
    return-void

    .line 261
    :pswitch_2a
    iget-object v0, p0, Lcom/jme3/renderer/queue/RenderQueue;->opaqueList:Lcom/jme3/renderer/queue/GeometryList;

    invoke-virtual {v0, p1}, Lcom/jme3/renderer/queue/GeometryList;->add(Lcom/jme3/scene/Geometry;)V

    goto :goto_29

    .line 264
    :pswitch_30
    iget-object v0, p0, Lcom/jme3/renderer/queue/RenderQueue;->skyList:Lcom/jme3/renderer/queue/GeometryList;

    invoke-virtual {v0, p1}, Lcom/jme3/renderer/queue/GeometryList;->add(Lcom/jme3/scene/Geometry;)V

    goto :goto_29

    .line 267
    :pswitch_36
    iget-object v0, p0, Lcom/jme3/renderer/queue/RenderQueue;->transparentList:Lcom/jme3/renderer/queue/GeometryList;

    invoke-virtual {v0, p1}, Lcom/jme3/renderer/queue/GeometryList;->add(Lcom/jme3/scene/Geometry;)V

    goto :goto_29

    .line 270
    :pswitch_3c
    iget-object v0, p0, Lcom/jme3/renderer/queue/RenderQueue;->translucentList:Lcom/jme3/renderer/queue/GeometryList;

    invoke-virtual {v0, p1}, Lcom/jme3/renderer/queue/GeometryList;->add(Lcom/jme3/scene/Geometry;)V

    goto :goto_29

    .line 256
    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_24
        :pswitch_2a
        :pswitch_30
        :pswitch_36
        :pswitch_3c
    .end packed-switch
.end method

.method public addToShadowQueue(Lcom/jme3/scene/Geometry;Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;)V
    .registers 6
    .parameter "g"
    .parameter "shadBucket"

    .prologue
    .line 225
    sget-object v0, Lcom/jme3/renderer/queue/RenderQueue$1;->$SwitchMap$com$jme3$renderer$queue$RenderQueue$ShadowMode:[I

    invoke-virtual {p2}, Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3c

    .line 241
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized shadow bucket type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :pswitch_24
    iget-object v0, p0, Lcom/jme3/renderer/queue/RenderQueue;->shadowCast:Lcom/jme3/renderer/queue/GeometryList;

    invoke-virtual {v0, p1}, Lcom/jme3/renderer/queue/GeometryList;->add(Lcom/jme3/scene/Geometry;)V

    .line 243
    :goto_29
    :pswitch_29
    return-void

    .line 234
    :pswitch_2a
    iget-object v0, p0, Lcom/jme3/renderer/queue/RenderQueue;->shadowRecv:Lcom/jme3/renderer/queue/GeometryList;

    invoke-virtual {v0, p1}, Lcom/jme3/renderer/queue/GeometryList;->add(Lcom/jme3/scene/Geometry;)V

    goto :goto_29

    .line 237
    :pswitch_30
    iget-object v0, p0, Lcom/jme3/renderer/queue/RenderQueue;->shadowCast:Lcom/jme3/renderer/queue/GeometryList;

    invoke-virtual {v0, p1}, Lcom/jme3/renderer/queue/GeometryList;->add(Lcom/jme3/scene/Geometry;)V

    .line 238
    iget-object v0, p0, Lcom/jme3/renderer/queue/RenderQueue;->shadowRecv:Lcom/jme3/renderer/queue/GeometryList;

    invoke-virtual {v0, p1}, Lcom/jme3/renderer/queue/GeometryList;->add(Lcom/jme3/scene/Geometry;)V

    goto :goto_29

    .line 225
    nop

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_29
        :pswitch_29
        :pswitch_24
        :pswitch_2a
        :pswitch_30
    .end packed-switch
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 369
    iget-object v0, p0, Lcom/jme3/renderer/queue/RenderQueue;->opaqueList:Lcom/jme3/renderer/queue/GeometryList;

    invoke-virtual {v0}, Lcom/jme3/renderer/queue/GeometryList;->clear()V

    .line 370
    iget-object v0, p0, Lcom/jme3/renderer/queue/RenderQueue;->guiList:Lcom/jme3/renderer/queue/GeometryList;

    invoke-virtual {v0}, Lcom/jme3/renderer/queue/GeometryList;->clear()V

    .line 371
    iget-object v0, p0, Lcom/jme3/renderer/queue/RenderQueue;->transparentList:Lcom/jme3/renderer/queue/GeometryList;

    invoke-virtual {v0}, Lcom/jme3/renderer/queue/GeometryList;->clear()V

    .line 372
    iget-object v0, p0, Lcom/jme3/renderer/queue/RenderQueue;->translucentList:Lcom/jme3/renderer/queue/GeometryList;

    invoke-virtual {v0}, Lcom/jme3/renderer/queue/GeometryList;->clear()V

    .line 373
    iget-object v0, p0, Lcom/jme3/renderer/queue/RenderQueue;->skyList:Lcom/jme3/renderer/queue/GeometryList;

    invoke-virtual {v0}, Lcom/jme3/renderer/queue/GeometryList;->clear()V

    .line 374
    iget-object v0, p0, Lcom/jme3/renderer/queue/RenderQueue;->shadowCast:Lcom/jme3/renderer/queue/GeometryList;

    invoke-virtual {v0}, Lcom/jme3/renderer/queue/GeometryList;->clear()V

    .line 375
    iget-object v0, p0, Lcom/jme3/renderer/queue/RenderQueue;->shadowRecv:Lcom/jme3/renderer/queue/GeometryList;

    invoke-virtual {v0}, Lcom/jme3/renderer/queue/GeometryList;->clear()V

    .line 376
    return-void
.end method

.method public isQueueEmpty(Lcom/jme3/renderer/queue/RenderQueue$Bucket;)Z
    .registers 6
    .parameter "bucket"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 325
    sget-object v2, Lcom/jme3/renderer/queue/RenderQueue$1;->$SwitchMap$com$jme3$renderer$queue$RenderQueue$Bucket:[I

    invoke-virtual {p1}, Lcom/jme3/renderer/queue/RenderQueue$Bucket;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_5a

    .line 337
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported bucket type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 327
    :pswitch_26
    iget-object v2, p0, Lcom/jme3/renderer/queue/RenderQueue;->guiList:Lcom/jme3/renderer/queue/GeometryList;

    invoke-virtual {v2}, Lcom/jme3/renderer/queue/GeometryList;->size()I

    move-result v2

    if-nez v2, :cond_2f

    .line 335
    :cond_2e
    :goto_2e
    return v0

    :cond_2f
    move v0, v1

    .line 327
    goto :goto_2e

    .line 329
    :pswitch_31
    iget-object v2, p0, Lcom/jme3/renderer/queue/RenderQueue;->opaqueList:Lcom/jme3/renderer/queue/GeometryList;

    invoke-virtual {v2}, Lcom/jme3/renderer/queue/GeometryList;->size()I

    move-result v2

    if-eqz v2, :cond_2e

    move v0, v1

    goto :goto_2e

    .line 331
    :pswitch_3b
    iget-object v2, p0, Lcom/jme3/renderer/queue/RenderQueue;->skyList:Lcom/jme3/renderer/queue/GeometryList;

    invoke-virtual {v2}, Lcom/jme3/renderer/queue/GeometryList;->size()I

    move-result v2

    if-eqz v2, :cond_2e

    move v0, v1

    goto :goto_2e

    .line 333
    :pswitch_45
    iget-object v2, p0, Lcom/jme3/renderer/queue/RenderQueue;->transparentList:Lcom/jme3/renderer/queue/GeometryList;

    invoke-virtual {v2}, Lcom/jme3/renderer/queue/GeometryList;->size()I

    move-result v2

    if-eqz v2, :cond_2e

    move v0, v1

    goto :goto_2e

    .line 335
    :pswitch_4f
    iget-object v2, p0, Lcom/jme3/renderer/queue/RenderQueue;->translucentList:Lcom/jme3/renderer/queue/GeometryList;

    invoke-virtual {v2}, Lcom/jme3/renderer/queue/GeometryList;->size()I

    move-result v2

    if-eqz v2, :cond_2e

    move v0, v1

    goto :goto_2e

    .line 325
    nop

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_26
        :pswitch_31
        :pswitch_3b
        :pswitch_45
        :pswitch_4f
    .end packed-switch
.end method

.method public renderQueue(Lcom/jme3/renderer/queue/RenderQueue$Bucket;Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/Camera;Z)V
    .registers 8
    .parameter "bucket"
    .parameter "rm"
    .parameter "cam"
    .parameter "clear"

    .prologue
    .line 346
    sget-object v0, Lcom/jme3/renderer/queue/RenderQueue$1;->$SwitchMap$com$jme3$renderer$queue$RenderQueue$Bucket:[I

    invoke-virtual {p1}, Lcom/jme3/renderer/queue/RenderQueue$Bucket;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_42

    .line 364
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported bucket type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 348
    :pswitch_24
    iget-object v0, p0, Lcom/jme3/renderer/queue/RenderQueue;->guiList:Lcom/jme3/renderer/queue/GeometryList;

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/jme3/renderer/queue/RenderQueue;->renderGeometryList(Lcom/jme3/renderer/queue/GeometryList;Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/Camera;Z)V

    .line 366
    :goto_29
    return-void

    .line 351
    :pswitch_2a
    iget-object v0, p0, Lcom/jme3/renderer/queue/RenderQueue;->opaqueList:Lcom/jme3/renderer/queue/GeometryList;

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/jme3/renderer/queue/RenderQueue;->renderGeometryList(Lcom/jme3/renderer/queue/GeometryList;Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/Camera;Z)V

    goto :goto_29

    .line 354
    :pswitch_30
    iget-object v0, p0, Lcom/jme3/renderer/queue/RenderQueue;->skyList:Lcom/jme3/renderer/queue/GeometryList;

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/jme3/renderer/queue/RenderQueue;->renderGeometryList(Lcom/jme3/renderer/queue/GeometryList;Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/Camera;Z)V

    goto :goto_29

    .line 357
    :pswitch_36
    iget-object v0, p0, Lcom/jme3/renderer/queue/RenderQueue;->transparentList:Lcom/jme3/renderer/queue/GeometryList;

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/jme3/renderer/queue/RenderQueue;->renderGeometryList(Lcom/jme3/renderer/queue/GeometryList;Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/Camera;Z)V

    goto :goto_29

    .line 360
    :pswitch_3c
    iget-object v0, p0, Lcom/jme3/renderer/queue/RenderQueue;->translucentList:Lcom/jme3/renderer/queue/GeometryList;

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/jme3/renderer/queue/RenderQueue;->renderGeometryList(Lcom/jme3/renderer/queue/GeometryList;Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/Camera;Z)V

    goto :goto_29

    .line 346
    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_24
        :pswitch_2a
        :pswitch_30
        :pswitch_36
        :pswitch_3c
    .end packed-switch
.end method
