.class final Lcom/google/android/youtube/core/player/q;
.super Landroid/view/SurfaceView;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/player/p;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/player/p;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/google/android/youtube/core/player/q;->a:Lcom/google/android/youtube/core/player/p;

    .line 113
    invoke-direct {p0, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 114
    return-void
.end method


# virtual methods
.method protected final onMeasure(II)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/android/youtube/core/player/q;->a:Lcom/google/android/youtube/core/player/p;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/p;->a(Lcom/google/android/youtube/core/player/p;)I

    move-result v0

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/player/q;->getDefaultSize(II)I

    move-result v1

    .line 119
    iget-object v0, p0, Lcom/google/android/youtube/core/player/q;->a:Lcom/google/android/youtube/core/player/p;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/p;->b(Lcom/google/android/youtube/core/player/p;)I

    move-result v0

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/player/q;->getDefaultSize(II)I

    move-result v0

    .line 120
    iget-object v2, p0, Lcom/google/android/youtube/core/player/q;->a:Lcom/google/android/youtube/core/player/p;

    invoke-static {v2}, Lcom/google/android/youtube/core/player/p;->a(Lcom/google/android/youtube/core/player/p;)I

    move-result v2

    if-lez v2, :cond_4d

    iget-object v2, p0, Lcom/google/android/youtube/core/player/q;->a:Lcom/google/android/youtube/core/player/p;

    invoke-static {v2}, Lcom/google/android/youtube/core/player/p;->b(Lcom/google/android/youtube/core/player/p;)I

    move-result v2

    if-lez v2, :cond_4d

    .line 121
    iget-object v2, p0, Lcom/google/android/youtube/core/player/q;->a:Lcom/google/android/youtube/core/player/p;

    invoke-static {v2}, Lcom/google/android/youtube/core/player/p;->a(Lcom/google/android/youtube/core/player/p;)I

    move-result v2

    mul-int/2addr v2, v0

    int-to-float v2, v2

    iget-object v3, p0, Lcom/google/android/youtube/core/player/q;->a:Lcom/google/android/youtube/core/player/p;

    invoke-static {v3}, Lcom/google/android/youtube/core/player/p;->b(Lcom/google/android/youtube/core/player/p;)I

    move-result v3

    mul-int/2addr v3, v1

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x3f80

    sub-float/2addr v2, v3

    .line 122
    const v3, 0x3c23d70a

    cmpl-float v3, v2, v3

    if-lez v3, :cond_51

    .line 123
    iget-object v0, p0, Lcom/google/android/youtube/core/player/q;->a:Lcom/google/android/youtube/core/player/p;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/p;->b(Lcom/google/android/youtube/core/player/p;)I

    move-result v0

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/android/youtube/core/player/q;->a:Lcom/google/android/youtube/core/player/p;

    invoke-static {v2}, Lcom/google/android/youtube/core/player/p;->a(Lcom/google/android/youtube/core/player/p;)I

    move-result v2

    div-int/2addr v0, v2

    .line 128
    :cond_4d
    :goto_4d
    invoke-virtual {p0, v1, v0}, Lcom/google/android/youtube/core/player/q;->setMeasuredDimension(II)V

    .line 129
    return-void

    .line 124
    :cond_51
    const v3, -0x43dc28f6

    cmpg-float v2, v2, v3

    if-gez v2, :cond_4d

    .line 125
    iget-object v1, p0, Lcom/google/android/youtube/core/player/q;->a:Lcom/google/android/youtube/core/player/p;

    invoke-static {v1}, Lcom/google/android/youtube/core/player/p;->a(Lcom/google/android/youtube/core/player/p;)I

    move-result v1

    mul-int/2addr v1, v0

    iget-object v2, p0, Lcom/google/android/youtube/core/player/q;->a:Lcom/google/android/youtube/core/player/p;

    invoke-static {v2}, Lcom/google/android/youtube/core/player/p;->b(Lcom/google/android/youtube/core/player/p;)I

    move-result v2

    div-int/2addr v1, v2

    goto :goto_4d
.end method
