.class Lcom/google/android/maps/driveabout/vector/dq;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/HashMap;

.field private b:[Lcom/google/android/maps/driveabout/vector/dq;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(III)I
    .registers 6

    shr-int v0, p1, p3

    and-int/lit8 v0, v0, 0x1

    shr-int v1, p2, p3

    and-int/lit8 v1, v1, 0x1

    shl-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    return v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/cU;)Lcom/google/android/maps/driveabout/vector/do;
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dq;->a:Ljava/util/HashMap;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dq;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/do;

    goto :goto_5
.end method

.method public a(I)Lcom/google/android/maps/driveabout/vector/dq;
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dq;->b:[Lcom/google/android/maps/driveabout/vector/dq;

    if-eqz v0, :cond_9

    if-ltz p1, :cond_9

    const/4 v0, 0x3

    if-le p1, v0, :cond_b

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dq;->b:[Lcom/google/android/maps/driveabout/vector/dq;

    aget-object v0, v0, p1

    goto :goto_a
.end method

.method public a(IIILcom/google/android/maps/driveabout/vector/cU;Lcom/google/android/maps/driveabout/vector/do;)V
    .registers 12

    if-gtz p3, :cond_12

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dq;->a:Ljava/util/HashMap;

    if-nez v0, :cond_c

    invoke-static {}, LK/cb;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/dq;->a:Ljava/util/HashMap;

    :cond_c
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dq;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p4, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_11
    return-void

    :cond_12
    add-int/lit8 v3, p3, -0x1

    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/maps/driveabout/vector/dq;->a(III)I

    move-result v1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dq;->b:[Lcom/google/android/maps/driveabout/vector/dq;

    if-nez v0, :cond_21

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/maps/driveabout/vector/dq;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/dq;->b:[Lcom/google/android/maps/driveabout/vector/dq;

    :cond_21
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dq;->b:[Lcom/google/android/maps/driveabout/vector/dq;

    aget-object v0, v0, v1

    if-nez v0, :cond_30

    new-instance v0, Lcom/google/android/maps/driveabout/vector/dq;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/vector/dq;-><init>()V

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/dq;->b:[Lcom/google/android/maps/driveabout/vector/dq;

    aput-object v0, v2, v1

    :cond_30
    move v1, p1

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/dq;->a(IIILcom/google/android/maps/driveabout/vector/cU;Lcom/google/android/maps/driveabout/vector/do;)V

    goto :goto_11
.end method