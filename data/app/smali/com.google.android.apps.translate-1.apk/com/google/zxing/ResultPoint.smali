.class public Lcom/google/zxing/ResultPoint;
.super Ljava/lang/Object;
.source "ResultPoint.java"


# instance fields
.field private final x:F

.field private final y:F


# direct methods
.method public constructor <init>(FF)V
    .registers 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lcom/google/zxing/ResultPoint;->x:F

    .line 32
    iput p2, p0, Lcom/google/zxing/ResultPoint;->y:F

    .line 33
    return-void
.end method

.method private static crossProductZ(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F
    .registers 8
    .parameter "pointA"
    .parameter "pointB"
    .parameter "pointC"

    .prologue
    .line 121
    iget v0, p1, Lcom/google/zxing/ResultPoint;->x:F

    .line 122
    .local v0, bX:F
    iget v1, p1, Lcom/google/zxing/ResultPoint;->y:F

    .line 123
    .local v1, bY:F
    iget v2, p2, Lcom/google/zxing/ResultPoint;->x:F

    sub-float/2addr v2, v0

    iget v3, p0, Lcom/google/zxing/ResultPoint;->y:F

    sub-float/2addr v3, v1

    mul-float/2addr v2, v3

    iget v3, p2, Lcom/google/zxing/ResultPoint;->y:F

    sub-float/2addr v3, v1

    iget v4, p0, Lcom/google/zxing/ResultPoint;->x:F

    sub-float/2addr v4, v0

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    return v2
.end method

.method public static distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F
    .registers 6
    .parameter "pattern1"
    .parameter "pattern2"

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v2

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v3

    sub-float v0, v2, v3

    .line 113
    .local v0, xDiff:F
    invoke-virtual {p0}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v2

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v3

    sub-float v1, v2, v3

    .line 114
    .local v1, yDiff:F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    return v2
.end method

.method public static orderBestPatterns([Lcom/google/zxing/ResultPoint;)V
    .registers 13
    .parameter "patterns"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 72
    aget-object v7, p0, v9

    aget-object v8, p0, v10

    invoke-static {v7, v8}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v5

    .line 73
    .local v5, zeroOneDistance:F
    aget-object v7, p0, v10

    aget-object v8, p0, v11

    invoke-static {v7, v8}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v0

    .line 74
    .local v0, oneTwoDistance:F
    aget-object v7, p0, v9

    aget-object v8, p0, v11

    invoke-static {v7, v8}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v6

    .line 78
    .local v6, zeroTwoDistance:F
    cmpl-float v7, v0, v5

    if-ltz v7, :cond_3c

    cmpl-float v7, v0, v6

    if-ltz v7, :cond_3c

    .line 79
    aget-object v2, p0, v9

    .line 80
    .local v2, pointB:Lcom/google/zxing/ResultPoint;
    aget-object v1, p0, v10

    .line 81
    .local v1, pointA:Lcom/google/zxing/ResultPoint;
    aget-object v3, p0, v11

    .line 96
    .local v3, pointC:Lcom/google/zxing/ResultPoint;
    :goto_29
    invoke-static {v1, v2, v3}, Lcom/google/zxing/ResultPoint;->crossProductZ(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v7

    const/4 v8, 0x0

    cmpg-float v7, v7, v8

    if-gez v7, :cond_35

    .line 97
    move-object v4, v1

    .line 98
    .local v4, temp:Lcom/google/zxing/ResultPoint;
    move-object v1, v3

    .line 99
    move-object v3, v4

    .line 102
    .end local v4           #temp:Lcom/google/zxing/ResultPoint;
    :cond_35
    aput-object v1, p0, v9

    .line 103
    aput-object v2, p0, v10

    .line 104
    aput-object v3, p0, v11

    .line 105
    return-void

    .line 82
    .end local v1           #pointA:Lcom/google/zxing/ResultPoint;
    .end local v2           #pointB:Lcom/google/zxing/ResultPoint;
    .end local v3           #pointC:Lcom/google/zxing/ResultPoint;
    :cond_3c
    cmpl-float v7, v6, v0

    if-ltz v7, :cond_4b

    cmpl-float v7, v6, v5

    if-ltz v7, :cond_4b

    .line 83
    aget-object v2, p0, v10

    .line 84
    .restart local v2       #pointB:Lcom/google/zxing/ResultPoint;
    aget-object v1, p0, v9

    .line 85
    .restart local v1       #pointA:Lcom/google/zxing/ResultPoint;
    aget-object v3, p0, v11

    .restart local v3       #pointC:Lcom/google/zxing/ResultPoint;
    goto :goto_29

    .line 87
    .end local v1           #pointA:Lcom/google/zxing/ResultPoint;
    .end local v2           #pointB:Lcom/google/zxing/ResultPoint;
    .end local v3           #pointC:Lcom/google/zxing/ResultPoint;
    :cond_4b
    aget-object v2, p0, v11

    .line 88
    .restart local v2       #pointB:Lcom/google/zxing/ResultPoint;
    aget-object v1, p0, v9

    .line 89
    .restart local v1       #pointA:Lcom/google/zxing/ResultPoint;
    aget-object v3, p0, v10

    .restart local v3       #pointC:Lcom/google/zxing/ResultPoint;
    goto :goto_29
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter "other"

    .prologue
    const/4 v1, 0x0

    .line 44
    instance-of v2, p1, Lcom/google/zxing/ResultPoint;

    if-eqz v2, :cond_19

    move-object v0, p1

    .line 45
    check-cast v0, Lcom/google/zxing/ResultPoint;

    .line 46
    .local v0, otherPoint:Lcom/google/zxing/ResultPoint;
    iget v2, p0, Lcom/google/zxing/ResultPoint;->x:F

    iget v3, v0, Lcom/google/zxing/ResultPoint;->x:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_19

    iget v2, p0, Lcom/google/zxing/ResultPoint;->y:F

    iget v3, v0, Lcom/google/zxing/ResultPoint;->y:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_19

    const/4 v1, 0x1

    .line 48
    .end local v0           #otherPoint:Lcom/google/zxing/ResultPoint;
    :cond_19
    return v1
.end method

.method public final getX()F
    .registers 2

    .prologue
    .line 36
    iget v0, p0, Lcom/google/zxing/ResultPoint;->x:F

    return v0
.end method

.method public final getY()F
    .registers 2

    .prologue
    .line 40
    iget v0, p0, Lcom/google/zxing/ResultPoint;->y:F

    return v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 52
    iget v0, p0, Lcom/google/zxing/ResultPoint;->x:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/zxing/ResultPoint;->y:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 56
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 57
    .local v0, result:Ljava/lang/StringBuffer;
    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 58
    iget v1, p0, Lcom/google/zxing/ResultPoint;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 59
    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 60
    iget v1, p0, Lcom/google/zxing/ResultPoint;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 61
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
