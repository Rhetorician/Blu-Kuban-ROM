.class final Lcom/google/android/apps/plus/hangout/multiwaveview/Ease$Quad$2;
.super Ljava/lang/Object;
.source "Ease.java"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/hangout/multiwaveview/Ease$Quad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 4
    .parameter "input"

    .prologue
    .line 56
    const/high16 v0, -0x4080

    const/high16 v1, 0x3f80

    div-float/2addr p1, v1

    mul-float/2addr v0, p1

    const/high16 v1, 0x4000

    sub-float v1, p1, v1

    mul-float/2addr v0, v1

    const/4 v1, 0x0

    add-float/2addr v0, v1

    return v0
.end method