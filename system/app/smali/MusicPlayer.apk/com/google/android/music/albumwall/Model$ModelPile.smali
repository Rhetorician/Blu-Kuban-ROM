.class Lcom/google/android/music/albumwall/Model$ModelPile;
.super Ljava/lang/Object;
.source "Model.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/albumwall/Model;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ModelPile"
.end annotation


# instance fields
.field public mExpanded:Lcom/google/android/music/albumwall/Model$ModelPilePart;

.field public mUnexpanded:Lcom/google/android/music/albumwall/Model$ModelPilePart;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 422
    new-instance v0, Lcom/google/android/music/albumwall/Model$ModelPilePart;

    invoke-direct {v0}, Lcom/google/android/music/albumwall/Model$ModelPilePart;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/albumwall/Model$ModelPile;->mUnexpanded:Lcom/google/android/music/albumwall/Model$ModelPilePart;

    .line 423
    new-instance v0, Lcom/google/android/music/albumwall/Model$ModelPilePart;

    invoke-direct {v0}, Lcom/google/android/music/albumwall/Model$ModelPilePart;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/albumwall/Model$ModelPile;->mExpanded:Lcom/google/android/music/albumwall/Model$ModelPilePart;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/music/albumwall/Model$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 421
    invoke-direct {p0}, Lcom/google/android/music/albumwall/Model$ModelPile;-><init>()V

    return-void
.end method


# virtual methods
.method public final eglContextCleared()V
    .registers 2

    .prologue
    .line 430
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model$ModelPile;->mExpanded:Lcom/google/android/music/albumwall/Model$ModelPilePart;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/Model$ModelPilePart;->eglContextCleared()V

    .line 431
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model$ModelPile;->mUnexpanded:Lcom/google/android/music/albumwall/Model$ModelPilePart;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/Model$ModelPilePart;->eglContextCleared()V

    .line 432
    return-void
.end method

.method public final getPart(Z)Lcom/google/android/music/albumwall/Model$ModelPilePart;
    .registers 3
    .parameter "expanded"

    .prologue
    .line 426
    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/google/android/music/albumwall/Model$ModelPile;->mExpanded:Lcom/google/android/music/albumwall/Model$ModelPilePart;

    :goto_4
    return-object v0

    :cond_5
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model$ModelPile;->mUnexpanded:Lcom/google/android/music/albumwall/Model$ModelPilePart;

    goto :goto_4
.end method

.method public final invalidate()V
    .registers 2

    .prologue
    .line 435
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model$ModelPile;->mUnexpanded:Lcom/google/android/music/albumwall/Model$ModelPilePart;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/Model$ModelPilePart;->invalidate()V

    .line 436
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model$ModelPile;->mExpanded:Lcom/google/android/music/albumwall/Model$ModelPilePart;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/Model$ModelPilePart;->invalidate()V

    .line 437
    return-void
.end method

.method public final invalidate(I)V
    .registers 3
    .parameter "type"

    .prologue
    .line 440
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model$ModelPile;->mUnexpanded:Lcom/google/android/music/albumwall/Model$ModelPilePart;

    invoke-virtual {v0, p1}, Lcom/google/android/music/albumwall/Model$ModelPilePart;->invalidate(I)V

    .line 441
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model$ModelPile;->mExpanded:Lcom/google/android/music/albumwall/Model$ModelPilePart;

    invoke-virtual {v0, p1}, Lcom/google/android/music/albumwall/Model$ModelPilePart;->invalidate(I)V

    .line 442
    return-void
.end method
