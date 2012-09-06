.class Lcom/google/android/street/Overlay$Polygon;
.super Ljava/lang/Object;
.source "Overlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/street/Overlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Polygon"
.end annotation


# instance fields
.field private final mFillIndexBuffer:Ljava/nio/ByteBuffer;

.field private final mFillIndexCount:I

.field private final mOutlineIndexBuffer:Ljava/nio/ByteBuffer;

.field private final mOutlineIndexCount:I

.field private final mVertexBuffer:Ljava/nio/FloatBuffer;


# direct methods
.method public constructor <init>([F)V
    .registers 3
    .parameter "vertexArray"

    .prologue
    .line 1634
    array-length v0, p1

    div-int/lit8 v0, v0, 0x3

    invoke-static {v0}, Lcom/google/android/street/Overlay$Polygon;->identityIndexArray(I)[B

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/street/Overlay$Polygon;-><init>([F[B)V

    .line 1635
    return-void
.end method

.method public constructor <init>([F[B)V
    .registers 3
    .parameter "vertexArray"
    .parameter "indexArray"

    .prologue
    .line 1638
    invoke-direct {p0, p1, p2, p2}, Lcom/google/android/street/Overlay$Polygon;-><init>([F[B[B)V

    .line 1639
    return-void
.end method

.method public constructor <init>([F[B[B)V
    .registers 9
    .parameter "vertexArray"
    .parameter "fillIndexArray"
    .parameter "outlineIndexArray"

    .prologue
    const/16 v4, 0x100

    const/4 v3, 0x0

    .line 1642
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1643
    const/4 v0, 0x4

    .line 1644
    .local v0, FLOAT_SIZE:I
    array-length v1, p1

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/street/Overlay$Polygon;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 1647
    iget-object v1, p0, Lcom/google/android/street/Overlay$Polygon;->mVertexBuffer:Ljava/nio/FloatBuffer;

    array-length v2, p1

    invoke-virtual {v1, p1, v3, v2}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    .line 1648
    iget-object v1, p0, Lcom/google/android/street/Overlay$Polygon;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 1650
    array-length v1, p2

    iput v1, p0, Lcom/google/android/street/Overlay$Polygon;->mFillIndexCount:I

    .line 1651
    array-length v1, p3

    iput v1, p0, Lcom/google/android/street/Overlay$Polygon;->mOutlineIndexCount:I

    .line 1652
    iget v1, p0, Lcom/google/android/street/Overlay$Polygon;->mFillIndexCount:I

    if-gt v1, v4, :cond_35

    iget v1, p0, Lcom/google/android/street/Overlay$Polygon;->mOutlineIndexCount:I

    if-le v1, v4, :cond_3d

    .line 1653
    :cond_35
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Only up to 256 points"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1655
    :cond_3d
    invoke-static {p2}, Lcom/google/android/street/Overlay$Polygon;->indexBufferHelper([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/street/Overlay$Polygon;->mFillIndexBuffer:Ljava/nio/ByteBuffer;

    .line 1656
    invoke-static {p3}, Lcom/google/android/street/Overlay$Polygon;->indexBufferHelper([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/street/Overlay$Polygon;->mOutlineIndexBuffer:Ljava/nio/ByteBuffer;

    .line 1657
    return-void
.end method

.method private checkVisible(IIII)Z
    .registers 6
    .parameter "x"
    .parameter "y"
    .parameter "viewWidth"
    .parameter "viewHeight"

    .prologue
    .line 1746
    if-ltz p1, :cond_a

    if-ltz p2, :cond_a

    if-ge p1, p3, :cond_a

    if-ge p2, p4, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method static identityIndexArray(I)[B
    .registers 4
    .parameter "numEntries"

    .prologue
    .line 1669
    new-array v1, p0, [B

    .line 1670
    .local v1, result:[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    if-ge v0, p0, :cond_b

    .line 1671
    int-to-byte v2, v0

    aput-byte v2, v1, v0

    .line 1670
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1673
    :cond_b
    return-object v1
.end method

.method private static indexBufferHelper([B)Ljava/nio/ByteBuffer;
    .registers 6
    .parameter "indexArray"

    .prologue
    const/4 v4, 0x0

    .line 1660
    array-length v1, p0

    .line 1661
    .local v1, indexCount:I
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1663
    .local v0, indexBuffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p0, v4, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 1664
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1665
    return-object v0
.end method


# virtual methods
.method draw(Ljavax/microedition/khronos/opengles/GL10;I)V
    .registers 7
    .parameter "gl"
    .parameter "drawMode"

    .prologue
    .line 1725
    const v0, 0x8074

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 1726
    const/4 v0, 0x3

    const/16 v1, 0x1406

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/street/Overlay$Polygon;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 1727
    const v0, 0x8078

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 1728
    const/16 v0, 0xde1

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 1729
    iget v0, p0, Lcom/google/android/street/Overlay$Polygon;->mFillIndexCount:I

    const/16 v1, 0x1401

    iget-object v2, p0, Lcom/google/android/street/Overlay$Polygon;->mFillIndexBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {p1, p2, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 1731
    return-void
.end method

.method drawOutline(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 7
    .parameter "gl"

    .prologue
    const/16 v4, 0xb20

    .line 1734
    const/16 v0, 0xde1

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 1735
    const v0, 0x8078

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 1736
    invoke-interface {p1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 1737
    const v0, 0x8074

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 1738
    const/4 v0, 0x3

    const/16 v1, 0x1406

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/street/Overlay$Polygon;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 1739
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/android/street/Overlay$Polygon;->mOutlineIndexCount:I

    const/16 v2, 0x1401

    iget-object v3, p0, Lcom/google/android/street/Overlay$Polygon;->mOutlineIndexBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 1741
    invoke-interface {p1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 1742
    return-void
.end method

.method public getAABB(Lcom/google/android/street/Projector;[II[FII)Z
    .registers 25
    .parameter "projector"
    .parameter "aabb"
    .parameter "offset"
    .parameter "scratch"
    .parameter "viewWidth"
    .parameter "viewHeight"

    .prologue
    .line 1693
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Overlay$Polygon;->mVertexBuffer:Ljava/nio/FloatBuffer;

    move-object v15, v0

    invoke-virtual {v15}, Ljava/nio/FloatBuffer;->limit()I

    move-result v15

    div-int/lit8 v7, v15, 0x3

    .line 1694
    .local v7, vertCount:I
    const v10, 0x7fffffff

    .line 1695
    .local v10, x0:I
    const/high16 v11, -0x8000

    .line 1696
    .local v11, x1:I
    const v13, 0x7fffffff

    .line 1697
    .local v13, y0:I
    const/high16 v14, -0x8000

    .line 1698
    .local v14, y1:I
    const/4 v8, 0x0

    .line 1699
    .local v8, vertexInView:Z
    const/4 v5, 0x0

    .local v5, i:I
    :goto_17
    if-ge v5, v7, :cond_8d

    .line 1700
    mul-int/lit8 v6, v5, 0x3

    .line 1701
    .local v6, ii:I
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Overlay$Polygon;->mVertexBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v16

    aput v16, p4, v15

    .line 1702
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Overlay$Polygon;->mVertexBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v16, v0

    add-int/lit8 v17, v6, 0x1

    invoke-virtual/range {v16 .. v17}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v16

    aput v16, p4, v15

    .line 1703
    const/4 v15, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Overlay$Polygon;->mVertexBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v16, v0

    add-int/lit8 v17, v6, 0x2

    invoke-virtual/range {v16 .. v17}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v16

    aput v16, p4, v15

    .line 1704
    const/4 v15, 0x3

    const/high16 v16, 0x3f80

    aput v16, p4, v15

    .line 1705
    const/4 v15, 0x0

    const/16 v16, 0x4

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move v2, v15

    move-object/from16 v3, p4

    move/from16 v4, v16

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/street/Projector;->project([FI[FI)V

    .line 1706
    const/4 v15, 0x4

    aget v15, p4, v15

    float-to-int v9, v15

    .line 1707
    .local v9, x:I
    const/4 v15, 0x5

    aget v15, p4, v15

    float-to-int v12, v15

    .line 1708
    .local v12, y:I
    if-nez v8, :cond_75

    move-object/from16 v0, p0

    move v1, v9

    move v2, v12

    move/from16 v3, p5

    move/from16 v4, p6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/street/Overlay$Polygon;->checkVisible(IIII)Z

    move-result v15

    if-eqz v15, :cond_8a

    :cond_75
    const/4 v15, 0x1

    move v8, v15

    .line 1710
    :goto_77
    invoke-static {v10, v9}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 1711
    invoke-static {v11, v9}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1712
    invoke-static {v13, v12}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 1713
    invoke-static {v14, v12}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 1699
    add-int/lit8 v5, v5, 0x1

    goto :goto_17

    .line 1708
    :cond_8a
    const/4 v15, 0x0

    move v8, v15

    goto :goto_77

    .line 1715
    .end local v6           #ii:I
    .end local v9           #x:I
    .end local v12           #y:I
    :cond_8d
    if-eqz v8, :cond_9d

    .line 1716
    aput v10, p2, p3

    .line 1717
    add-int/lit8 v15, p3, 0x1

    aput v13, p2, v15

    .line 1718
    add-int/lit8 v15, p3, 0x2

    aput v11, p2, v15

    .line 1719
    add-int/lit8 v15, p3, 0x3

    aput v14, p2, v15

    .line 1721
    :cond_9d
    return v8
.end method
