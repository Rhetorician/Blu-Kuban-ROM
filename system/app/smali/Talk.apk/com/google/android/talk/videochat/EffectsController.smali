.class public Lcom/google/android/talk/videochat/EffectsController;
.super Ljava/lang/Object;
.source "EffectsController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/videochat/EffectsController$StateCallback;
    }
.end annotation


# instance fields
.field private final mGlView:Lcom/google/android/talk/videochat/GlView;


# direct methods
.method constructor <init>(Lcom/google/android/talk/videochat/GlView;)V
    .registers 2
    .parameter "view"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/google/android/talk/videochat/EffectsController;->mGlView:Lcom/google/android/talk/videochat/GlView;

    .line 33
    return-void
.end method

.method public static anyAvailableEffectsCanClip()Z
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 59
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/google/android/talk/videochat/EffectsController;->isEffectAvailable(I)Z

    move-result v1

    if-nez v1, :cond_e

    invoke-static {v0}, Lcom/google/android/talk/videochat/EffectsController;->isEffectAvailable(I)Z

    move-result v1

    if-eqz v1, :cond_f

    :cond_e
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static effectCanClip(I)Z
    .registers 2
    .parameter "id"

    .prologue
    .line 50
    packed-switch p0, :pswitch_data_8

    .line 55
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 53
    :pswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 50
    nop

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public static generateCapabilitiesMask()I
    .registers 3

    .prologue
    .line 36
    const/4 v1, 0x0

    .line 37
    .local v1, mask:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    const/4 v2, 0x4

    if-ge v0, v2, :cond_15

    .line 38
    add-int/lit8 v2, v0, 0x1

    invoke-static {v2}, Lcom/google/android/talk/videochat/FilterFrameworkEffects;->isEffectAvailable(I)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v2, 0x1

    shl-int/2addr v2, v0

    :goto_f
    or-int/2addr v1, v2

    .line 37
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 38
    :cond_13
    const/4 v2, 0x0

    goto :goto_f

    .line 41
    :cond_15
    or-int/lit8 v1, v1, 0x1

    .line 42
    return v1
.end method

.method public static isEffectAvailable(I)Z
    .registers 2
    .parameter "id"

    .prologue
    .line 46
    invoke-static {p0}, Lcom/google/android/talk/FeatureManager;->isEffectAvailable(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method enableEffect(ILjava/lang/Object;)V
    .registers 4
    .parameter "effectId"
    .parameter "param"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/talk/videochat/EffectsController;->mGlView:Lcom/google/android/talk/videochat/GlView;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/talk/videochat/GlView;->setActiveEffect(ILjava/lang/Object;)V

    .line 73
    return-void
.end method

.method getActiveEffect()I
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/talk/videochat/EffectsController;->mGlView:Lcom/google/android/talk/videochat/GlView;

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/GlView;->getActiveEffect()I

    move-result v0

    return v0
.end method

.method maxImageStabilizationEnabled()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 80
    iget-object v0, p0, Lcom/google/android/talk/videochat/EffectsController;->mGlView:Lcom/google/android/talk/videochat/GlView;

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/GlView;->getActiveEffect()I

    move-result v0

    if-ne v0, v1, :cond_1a

    iget-object v0, p0, Lcom/google/android/talk/videochat/EffectsController;->mGlView:Lcom/google/android/talk/videochat/GlView;

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/GlView;->getActiveEffectParam()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1a

    move v0, v1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method
