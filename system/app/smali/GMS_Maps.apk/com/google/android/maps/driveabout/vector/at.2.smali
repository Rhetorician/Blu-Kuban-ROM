.class public Lcom/google/android/maps/driveabout/vector/at;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lt/P;

.field private final b:Ljava/util/ArrayList;

.field private final c:Ljava/util/ArrayList;

.field private final d:Ljava/util/HashSet;

.field private final e:[Ljava/lang/String;

.field private f:Lt/m;


# direct methods
.method private constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/at;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/at;->c:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/at;->d:Ljava/util/HashSet;

    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/at;->a:Lt/P;

    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/at;->e:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lt/D;[Ljava/lang/String;)V
    .registers 5

    const/4 v1, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/at;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/at;->c:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/at;->d:Ljava/util/HashSet;

    invoke-virtual {p1}, Lt/D;->c()Lt/P;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/at;->a:Lt/P;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/vector/at;->e:[Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/vector/at;->a(Lt/D;)V

    return-void
.end method

.method static a(II)I
    .registers 4

    mul-int v0, p0, p1

    invoke-static {p0, p1}, Lcom/google/android/maps/driveabout/vector/at;->b(II)I

    move-result v1

    div-int/2addr v0, v1

    return v0
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/vector/at;)Lt/P;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/at;->a:Lt/P;

    return-object v0
.end method

.method static b(II)I
    .registers 4

    if-lez p0, :cond_4

    if-gtz p1, :cond_c

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Greatest common divisor should be computed on numbers greater than zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    :goto_c
    if-eqz p1, :cond_13

    rem-int v0, p0, p1

    move p0, p1

    move p1, v0

    goto :goto_c

    :cond_13
    return p0
.end method


# virtual methods
.method public a()Lt/P;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/at;->a:Lt/P;

    return-object v0
.end method

.method public a(Lt/D;)V
    .registers 10

    const/4 v7, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Lt/D;->k()[I

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_8
    if-ge v0, v3, :cond_1f

    aget v4, v2, v0

    if-ltz v4, :cond_1c

    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/at;->e:[Ljava/lang/String;

    array-length v5, v5

    if-ge v4, v5, :cond_1c

    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/at;->d:Ljava/util/HashSet;

    iget-object v6, p0, Lcom/google/android/maps/driveabout/vector/at;->e:[Ljava/lang/String;

    aget-object v4, v6, v4

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_1f
    invoke-virtual {p1}, Lt/D;->e()Lt/Z;

    move-result-object v0

    invoke-virtual {p1}, Lt/D;->g()F

    move-result v2

    invoke-virtual {v0}, Lt/Z;->c()I

    move-result v3

    if-ne v3, v7, :cond_44

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/at;->c:Ljava/util/ArrayList;

    new-instance v4, Lcom/google/android/maps/driveabout/vector/au;

    invoke-direct {v4, v2, v0, v1}, Lcom/google/android/maps/driveabout/vector/au;-><init>(FLt/Z;I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_37
    :goto_37
    invoke-virtual {p1}, Lt/D;->j()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-virtual {p1}, Lt/D;->a()Lt/m;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/at;->f:Lt/m;

    :cond_43
    return-void

    :cond_44
    invoke-virtual {v0}, Lt/Z;->c()I

    move-result v3

    if-le v3, v7, :cond_37

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/at;->b:Ljava/util/ArrayList;

    new-instance v4, Lcom/google/android/maps/driveabout/vector/au;

    invoke-direct {v4, v2, v0, v1}, Lcom/google/android/maps/driveabout/vector/au;-><init>(FLt/Z;I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/at;->c:Ljava/util/ArrayList;

    new-instance v3, Lcom/google/android/maps/driveabout/vector/au;

    invoke-direct {v3, v2, v0, v7}, Lcom/google/android/maps/driveabout/vector/au;-><init>(FLt/Z;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_37
.end method

.method public b()Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/at;->d:Ljava/util/HashSet;

    return-object v0
.end method

.method public c()Lt/m;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/at;->f:Lt/m;

    return-object v0
.end method

.method public d()F
    .registers 6

    const/high16 v4, 0x4000

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/at;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/au;

    iget v3, v0, Lcom/google/android/maps/driveabout/vector/au;->a:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v0, v0, Lcom/google/android/maps/driveabout/vector/au;->b:F

    div-float/2addr v0, v4

    add-float/2addr v0, v3

    cmpl-float v3, v0, v1

    if-lez v3, :cond_4b

    :goto_24
    move v1, v0

    goto :goto_a

    :cond_26
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/at;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2c
    :goto_2c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/au;

    iget v3, v0, Lcom/google/android/maps/driveabout/vector/au;->a:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v0, v0, Lcom/google/android/maps/driveabout/vector/au;->b:F

    div-float/2addr v0, v4

    add-float/2addr v0, v3

    cmpl-float v3, v0, v1

    if-lez v3, :cond_2c

    move v1, v0

    goto :goto_2c

    :cond_48
    mul-float v0, v1, v4

    return v0

    :cond_4b
    move v0, v1

    goto :goto_24
.end method

.method public e()I
    .registers 13

    const/4 v1, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/at;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/at;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int v7, v0, v2

    if-nez v7, :cond_13

    :cond_12
    return v1

    :cond_13
    new-array v8, v7, [I

    move v6, v4

    :goto_16
    if-ge v6, v7, :cond_5d

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/at;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_33

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/at;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/au;

    :goto_28
    iget-object v2, v0, Lcom/google/android/maps/driveabout/vector/au;->d:[I

    if-nez v2, :cond_44

    move v0, v1

    :goto_2d
    aput v0, v8, v6

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_16

    :cond_33
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/at;->c:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/at;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int v2, v6, v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/au;

    goto :goto_28

    :cond_44
    iget-object v9, v0, Lcom/google/android/maps/driveabout/vector/au;->d:[I

    array-length v10, v9

    move v3, v4

    move v2, v4

    :goto_49
    if-ge v3, v10, :cond_53

    aget v5, v9, v3

    add-int/2addr v5, v2

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v5

    goto :goto_49

    :cond_53
    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/au;->d:[I

    array-length v0, v0

    rem-int/lit8 v0, v0, 0x2

    if-ne v0, v1, :cond_6f

    mul-int/lit8 v0, v2, 0x2

    goto :goto_2d

    :cond_5d
    aget v0, v8, v4

    move v11, v1

    move v1, v0

    move v0, v11

    :goto_62
    if-ge v0, v7, :cond_12

    aget v2, v8, v0

    invoke-static {v1, v2}, Lcom/google/android/maps/driveabout/vector/at;->a(II)I

    move-result v2

    add-int/lit8 v1, v0, 0x1

    move v0, v1

    move v1, v2

    goto :goto_62

    :cond_6f
    move v0, v2

    goto :goto_2d
.end method

.method public f()Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/at;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public g()Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/at;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method public h()I
    .registers 4

    const/16 v0, 0xd0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/at;->a:Lt/P;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/at;->a:Lt/P;

    invoke-virtual {v1}, Lt/P;->g()I

    move-result v1

    add-int/2addr v0, v1

    :cond_d
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/at;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/at;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x18

    add-int/2addr v0, v1

    return v0
.end method