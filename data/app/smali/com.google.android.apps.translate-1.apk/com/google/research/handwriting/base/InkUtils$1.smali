.class final Lcom/google/research/handwriting/base/InkUtils$1;
.super Ljava/lang/Object;
.source "InkUtils.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/research/handwriting/base/InkUtils;->getDelayedStrokeOrder(Lcom/google/research/handwriting/base/StrokeList;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/research/handwriting/base/InkUtils$FloatStrokeIdPair;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/google/research/handwriting/base/InkUtils$FloatStrokeIdPair;Lcom/google/research/handwriting/base/InkUtils$FloatStrokeIdPair;)I
    .registers 5
    .parameter "left"
    .parameter "right"

    .prologue
    .line 250
    iget v0, p1, Lcom/google/research/handwriting/base/InkUtils$FloatStrokeIdPair;->f:F

    iget v1, p2, Lcom/google/research/handwriting/base/InkUtils$FloatStrokeIdPair;->f:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 247
    check-cast p1, Lcom/google/research/handwriting/base/InkUtils$FloatStrokeIdPair;

    .end local p1
    check-cast p2, Lcom/google/research/handwriting/base/InkUtils$FloatStrokeIdPair;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/research/handwriting/base/InkUtils$1;->compare(Lcom/google/research/handwriting/base/InkUtils$FloatStrokeIdPair;Lcom/google/research/handwriting/base/InkUtils$FloatStrokeIdPair;)I

    move-result v0

    return v0
.end method
