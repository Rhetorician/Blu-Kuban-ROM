.class public abstract Lorg/mozilla/a/a/u;
.super Ljava/lang/Object;


# instance fields
.field b:[Lorg/mozilla/a/a/z;

.field c:[Lorg/mozilla/a/a/l;

.field d:Lorg/mozilla/a/a/k;

.field e:[B

.field f:[I

.field g:I

.field h:I

.field i:Z

.field j:Z

.field k:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    const/16 v1, 0x10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/mozilla/a/a/k;

    invoke-direct {v0}, Lorg/mozilla/a/a/k;-><init>()V

    iput-object v0, p0, Lorg/mozilla/a/a/u;->d:Lorg/mozilla/a/a/k;

    new-array v0, v1, [B

    iput-object v0, p0, Lorg/mozilla/a/a/u;->e:[B

    new-array v0, v1, [I

    iput-object v0, p0, Lorg/mozilla/a/a/u;->f:[I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/mozilla/a/a/u;->a(I)V

    invoke-virtual {p0}, Lorg/mozilla/a/a/u;->a()V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    const/16 v1, 0x10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/mozilla/a/a/k;

    invoke-direct {v0}, Lorg/mozilla/a/a/k;-><init>()V

    iput-object v0, p0, Lorg/mozilla/a/a/u;->d:Lorg/mozilla/a/a/k;

    new-array v0, v1, [B

    iput-object v0, p0, Lorg/mozilla/a/a/u;->e:[B

    new-array v0, v1, [I

    iput-object v0, p0, Lorg/mozilla/a/a/u;->f:[I

    invoke-virtual {p0, p1}, Lorg/mozilla/a/a/u;->a(I)V

    invoke-virtual {p0}, Lorg/mozilla/a/a/u;->a()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    const/4 v1, 0x0

    iget-boolean v0, p0, Lorg/mozilla/a/a/u;->k:Z

    iput-boolean v0, p0, Lorg/mozilla/a/a/u;->j:Z

    iput-boolean v1, p0, Lorg/mozilla/a/a/u;->i:Z

    iget v0, p0, Lorg/mozilla/a/a/u;->h:I

    iput v0, p0, Lorg/mozilla/a/a/u;->g:I

    move v0, v1

    :goto_c
    iget v2, p0, Lorg/mozilla/a/a/u;->g:I

    if-ge v0, v2, :cond_1b

    iget-object v2, p0, Lorg/mozilla/a/a/u;->e:[B

    aput-byte v1, v2, v0

    iget-object v2, p0, Lorg/mozilla/a/a/u;->f:[I

    aput v0, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_1b
    iget-object v0, p0, Lorg/mozilla/a/a/u;->d:Lorg/mozilla/a/a/k;

    invoke-virtual {v0}, Lorg/mozilla/a/a/k;->a()V

    return-void
.end method

.method protected a(I)V
    .registers 10

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v5, 0x0

    if-ltz p1, :cond_77

    const/4 v2, 0x6

    if-ge p1, v2, :cond_77

    :goto_a
    iput-object v5, p0, Lorg/mozilla/a/a/u;->b:[Lorg/mozilla/a/a/z;

    iput-object v5, p0, Lorg/mozilla/a/a/u;->c:[Lorg/mozilla/a/a/l;

    const/4 v2, 0x4

    if-ne p1, v2, :cond_79

    const/4 v2, 0x7

    new-array v2, v2, [Lorg/mozilla/a/a/z;

    new-instance v3, Lorg/mozilla/a/a/y;

    invoke-direct {v3}, Lorg/mozilla/a/a/y;-><init>()V

    aput-object v3, v2, v0

    new-instance v3, Lorg/mozilla/a/a/f;

    invoke-direct {v3}, Lorg/mozilla/a/a/f;-><init>()V

    aput-object v3, v2, v1

    new-instance v3, Lorg/mozilla/a/a/r;

    invoke-direct {v3}, Lorg/mozilla/a/a/r;-><init>()V

    aput-object v3, v2, v6

    new-instance v3, Lorg/mozilla/a/a/m;

    invoke-direct {v3}, Lorg/mozilla/a/a/m;-><init>()V

    aput-object v3, v2, v7

    const/4 v3, 0x4

    new-instance v4, Lorg/mozilla/a/a/g;

    invoke-direct {v4}, Lorg/mozilla/a/a/g;-><init>()V

    aput-object v4, v2, v3

    const/4 v3, 0x5

    new-instance v4, Lorg/mozilla/a/a/w;

    invoke-direct {v4}, Lorg/mozilla/a/a/w;-><init>()V

    aput-object v4, v2, v3

    const/4 v3, 0x6

    new-instance v4, Lorg/mozilla/a/a/x;

    invoke-direct {v4}, Lorg/mozilla/a/a/x;-><init>()V

    aput-object v4, v2, v3

    iput-object v2, p0, Lorg/mozilla/a/a/u;->b:[Lorg/mozilla/a/a/z;

    const/4 v2, 0x7

    new-array v2, v2, [Lorg/mozilla/a/a/l;

    aput-object v5, v2, v0

    new-instance v3, Lorg/mozilla/a/a/a;

    invoke-direct {v3}, Lorg/mozilla/a/a/a;-><init>()V

    aput-object v3, v2, v1

    aput-object v5, v2, v6

    new-instance v3, Lorg/mozilla/a/a/d;

    invoke-direct {v3}, Lorg/mozilla/a/a/d;-><init>()V

    aput-object v3, v2, v7

    const/4 v3, 0x4

    aput-object v5, v2, v3

    const/4 v3, 0x5

    aput-object v5, v2, v3

    const/4 v3, 0x6

    aput-object v5, v2, v3

    iput-object v2, p0, Lorg/mozilla/a/a/u;->c:[Lorg/mozilla/a/a/l;

    :cond_6a
    :goto_6a
    iget-object v2, p0, Lorg/mozilla/a/a/u;->c:[Lorg/mozilla/a/a/l;

    if-eqz v2, :cond_6f

    move v0, v1

    :cond_6f
    iput-boolean v0, p0, Lorg/mozilla/a/a/u;->k:Z

    iget-object v0, p0, Lorg/mozilla/a/a/u;->b:[Lorg/mozilla/a/a/z;

    array-length v0, v0

    iput v0, p0, Lorg/mozilla/a/a/u;->h:I

    return-void

    :cond_77
    move p1, v0

    goto :goto_a

    :cond_79
    const/4 v2, 0x5

    if-ne p1, v2, :cond_ae

    const/4 v2, 0x6

    new-array v2, v2, [Lorg/mozilla/a/a/z;

    new-instance v3, Lorg/mozilla/a/a/y;

    invoke-direct {v3}, Lorg/mozilla/a/a/y;-><init>()V

    aput-object v3, v2, v0

    new-instance v3, Lorg/mozilla/a/a/j;

    invoke-direct {v3}, Lorg/mozilla/a/a/j;-><init>()V

    aput-object v3, v2, v1

    new-instance v3, Lorg/mozilla/a/a/t;

    invoke-direct {v3}, Lorg/mozilla/a/a/t;-><init>()V

    aput-object v3, v2, v6

    new-instance v3, Lorg/mozilla/a/a/g;

    invoke-direct {v3}, Lorg/mozilla/a/a/g;-><init>()V

    aput-object v3, v2, v7

    const/4 v3, 0x4

    new-instance v4, Lorg/mozilla/a/a/w;

    invoke-direct {v4}, Lorg/mozilla/a/a/w;-><init>()V

    aput-object v4, v2, v3

    const/4 v3, 0x5

    new-instance v4, Lorg/mozilla/a/a/x;

    invoke-direct {v4}, Lorg/mozilla/a/a/x;-><init>()V

    aput-object v4, v2, v3

    iput-object v2, p0, Lorg/mozilla/a/a/u;->b:[Lorg/mozilla/a/a/z;

    goto :goto_6a

    :cond_ae
    if-ne p1, v7, :cond_f4

    const/16 v2, 0x8

    new-array v2, v2, [Lorg/mozilla/a/a/z;

    new-instance v3, Lorg/mozilla/a/a/y;

    invoke-direct {v3}, Lorg/mozilla/a/a/y;-><init>()V

    aput-object v3, v2, v0

    new-instance v3, Lorg/mozilla/a/a/o;

    invoke-direct {v3}, Lorg/mozilla/a/a/o;-><init>()V

    aput-object v3, v2, v1

    new-instance v3, Lorg/mozilla/a/a/n;

    invoke-direct {v3}, Lorg/mozilla/a/a/n;-><init>()V

    aput-object v3, v2, v6

    new-instance v3, Lorg/mozilla/a/a/r;

    invoke-direct {v3}, Lorg/mozilla/a/a/r;-><init>()V

    aput-object v3, v2, v7

    const/4 v3, 0x4

    new-instance v4, Lorg/mozilla/a/a/p;

    invoke-direct {v4}, Lorg/mozilla/a/a/p;-><init>()V

    aput-object v4, v2, v3

    const/4 v3, 0x5

    new-instance v4, Lorg/mozilla/a/a/g;

    invoke-direct {v4}, Lorg/mozilla/a/a/g;-><init>()V

    aput-object v4, v2, v3

    const/4 v3, 0x6

    new-instance v4, Lorg/mozilla/a/a/w;

    invoke-direct {v4}, Lorg/mozilla/a/a/w;-><init>()V

    aput-object v4, v2, v3

    const/4 v3, 0x7

    new-instance v4, Lorg/mozilla/a/a/x;

    invoke-direct {v4}, Lorg/mozilla/a/a/x;-><init>()V

    aput-object v4, v2, v3

    iput-object v2, p0, Lorg/mozilla/a/a/u;->b:[Lorg/mozilla/a/a/z;

    goto/16 :goto_6a

    :cond_f4
    if-ne p1, v1, :cond_131

    const/4 v2, 0x7

    new-array v2, v2, [Lorg/mozilla/a/a/z;

    new-instance v3, Lorg/mozilla/a/a/y;

    invoke-direct {v3}, Lorg/mozilla/a/a/y;-><init>()V

    aput-object v3, v2, v0

    new-instance v3, Lorg/mozilla/a/a/v;

    invoke-direct {v3}, Lorg/mozilla/a/a/v;-><init>()V

    aput-object v3, v2, v1

    new-instance v3, Lorg/mozilla/a/a/i;

    invoke-direct {v3}, Lorg/mozilla/a/a/i;-><init>()V

    aput-object v3, v2, v6

    new-instance v3, Lorg/mozilla/a/a/s;

    invoke-direct {v3}, Lorg/mozilla/a/a/s;-><init>()V

    aput-object v3, v2, v7

    const/4 v3, 0x4

    new-instance v4, Lorg/mozilla/a/a/g;

    invoke-direct {v4}, Lorg/mozilla/a/a/g;-><init>()V

    aput-object v4, v2, v3

    const/4 v3, 0x5

    new-instance v4, Lorg/mozilla/a/a/w;

    invoke-direct {v4}, Lorg/mozilla/a/a/w;-><init>()V

    aput-object v4, v2, v3

    const/4 v3, 0x6

    new-instance v4, Lorg/mozilla/a/a/x;

    invoke-direct {v4}, Lorg/mozilla/a/a/x;-><init>()V

    aput-object v4, v2, v3

    iput-object v2, p0, Lorg/mozilla/a/a/u;->b:[Lorg/mozilla/a/a/z;

    goto/16 :goto_6a

    :cond_131
    if-ne p1, v6, :cond_1ba

    const/16 v2, 0xa

    new-array v2, v2, [Lorg/mozilla/a/a/z;

    new-instance v3, Lorg/mozilla/a/a/y;

    invoke-direct {v3}, Lorg/mozilla/a/a/y;-><init>()V

    aput-object v3, v2, v0

    new-instance v3, Lorg/mozilla/a/a/o;

    invoke-direct {v3}, Lorg/mozilla/a/a/o;-><init>()V

    aput-object v3, v2, v1

    new-instance v3, Lorg/mozilla/a/a/n;

    invoke-direct {v3}, Lorg/mozilla/a/a/n;-><init>()V

    aput-object v3, v2, v6

    new-instance v3, Lorg/mozilla/a/a/f;

    invoke-direct {v3}, Lorg/mozilla/a/a/f;-><init>()V

    aput-object v3, v2, v7

    const/4 v3, 0x4

    new-instance v4, Lorg/mozilla/a/a/r;

    invoke-direct {v4}, Lorg/mozilla/a/a/r;-><init>()V

    aput-object v4, v2, v3

    const/4 v3, 0x5

    new-instance v4, Lorg/mozilla/a/a/p;

    invoke-direct {v4}, Lorg/mozilla/a/a/p;-><init>()V

    aput-object v4, v2, v3

    const/4 v3, 0x6

    new-instance v4, Lorg/mozilla/a/a/m;

    invoke-direct {v4}, Lorg/mozilla/a/a/m;-><init>()V

    aput-object v4, v2, v3

    const/4 v3, 0x7

    new-instance v4, Lorg/mozilla/a/a/g;

    invoke-direct {v4}, Lorg/mozilla/a/a/g;-><init>()V

    aput-object v4, v2, v3

    const/16 v3, 0x8

    new-instance v4, Lorg/mozilla/a/a/w;

    invoke-direct {v4}, Lorg/mozilla/a/a/w;-><init>()V

    aput-object v4, v2, v3

    const/16 v3, 0x9

    new-instance v4, Lorg/mozilla/a/a/x;

    invoke-direct {v4}, Lorg/mozilla/a/a/x;-><init>()V

    aput-object v4, v2, v3

    iput-object v2, p0, Lorg/mozilla/a/a/u;->b:[Lorg/mozilla/a/a/z;

    const/16 v2, 0xa

    new-array v2, v2, [Lorg/mozilla/a/a/l;

    aput-object v5, v2, v0

    new-instance v3, Lorg/mozilla/a/a/e;

    invoke-direct {v3}, Lorg/mozilla/a/a/e;-><init>()V

    aput-object v3, v2, v1

    aput-object v5, v2, v6

    new-instance v3, Lorg/mozilla/a/a/a;

    invoke-direct {v3}, Lorg/mozilla/a/a/a;-><init>()V

    aput-object v3, v2, v7

    const/4 v3, 0x4

    aput-object v5, v2, v3

    const/4 v3, 0x5

    aput-object v5, v2, v3

    const/4 v3, 0x6

    new-instance v4, Lorg/mozilla/a/a/d;

    invoke-direct {v4}, Lorg/mozilla/a/a/d;-><init>()V

    aput-object v4, v2, v3

    const/4 v3, 0x7

    aput-object v5, v2, v3

    const/16 v3, 0x8

    aput-object v5, v2, v3

    const/16 v3, 0x9

    aput-object v5, v2, v3

    iput-object v2, p0, Lorg/mozilla/a/a/u;->c:[Lorg/mozilla/a/a/l;

    goto/16 :goto_6a

    :cond_1ba
    if-nez p1, :cond_6a

    const/16 v2, 0xf

    new-array v2, v2, [Lorg/mozilla/a/a/z;

    new-instance v3, Lorg/mozilla/a/a/y;

    invoke-direct {v3}, Lorg/mozilla/a/a/y;-><init>()V

    aput-object v3, v2, v0

    new-instance v3, Lorg/mozilla/a/a/v;

    invoke-direct {v3}, Lorg/mozilla/a/a/v;-><init>()V

    aput-object v3, v2, v1

    new-instance v3, Lorg/mozilla/a/a/i;

    invoke-direct {v3}, Lorg/mozilla/a/a/i;-><init>()V

    aput-object v3, v2, v6

    new-instance v3, Lorg/mozilla/a/a/s;

    invoke-direct {v3}, Lorg/mozilla/a/a/s;-><init>()V

    aput-object v3, v2, v7

    const/4 v3, 0x4

    new-instance v4, Lorg/mozilla/a/a/j;

    invoke-direct {v4}, Lorg/mozilla/a/a/j;-><init>()V

    aput-object v4, v2, v3

    const/4 v3, 0x5

    new-instance v4, Lorg/mozilla/a/a/t;

    invoke-direct {v4}, Lorg/mozilla/a/a/t;-><init>()V

    aput-object v4, v2, v3

    const/4 v3, 0x6

    new-instance v4, Lorg/mozilla/a/a/f;

    invoke-direct {v4}, Lorg/mozilla/a/a/f;-><init>()V

    aput-object v4, v2, v3

    const/4 v3, 0x7

    new-instance v4, Lorg/mozilla/a/a/m;

    invoke-direct {v4}, Lorg/mozilla/a/a/m;-><init>()V

    aput-object v4, v2, v3

    const/16 v3, 0x8

    new-instance v4, Lorg/mozilla/a/a/o;

    invoke-direct {v4}, Lorg/mozilla/a/a/o;-><init>()V

    aput-object v4, v2, v3

    const/16 v3, 0x9

    new-instance v4, Lorg/mozilla/a/a/n;

    invoke-direct {v4}, Lorg/mozilla/a/a/n;-><init>()V

    aput-object v4, v2, v3

    const/16 v3, 0xa

    new-instance v4, Lorg/mozilla/a/a/r;

    invoke-direct {v4}, Lorg/mozilla/a/a/r;-><init>()V

    aput-object v4, v2, v3

    const/16 v3, 0xb

    new-instance v4, Lorg/mozilla/a/a/p;

    invoke-direct {v4}, Lorg/mozilla/a/a/p;-><init>()V

    aput-object v4, v2, v3

    const/16 v3, 0xc

    new-instance v4, Lorg/mozilla/a/a/g;

    invoke-direct {v4}, Lorg/mozilla/a/a/g;-><init>()V

    aput-object v4, v2, v3

    const/16 v3, 0xd

    new-instance v4, Lorg/mozilla/a/a/w;

    invoke-direct {v4}, Lorg/mozilla/a/a/w;-><init>()V

    aput-object v4, v2, v3

    const/16 v3, 0xe

    new-instance v4, Lorg/mozilla/a/a/x;

    invoke-direct {v4}, Lorg/mozilla/a/a/x;-><init>()V

    aput-object v4, v2, v3

    iput-object v2, p0, Lorg/mozilla/a/a/u;->b:[Lorg/mozilla/a/a/z;

    const/16 v2, 0xf

    new-array v2, v2, [Lorg/mozilla/a/a/l;

    aput-object v5, v2, v0

    aput-object v5, v2, v1

    new-instance v3, Lorg/mozilla/a/a/b;

    invoke-direct {v3}, Lorg/mozilla/a/a/b;-><init>()V

    aput-object v3, v2, v6

    aput-object v5, v2, v7

    const/4 v3, 0x4

    new-instance v4, Lorg/mozilla/a/a/c;

    invoke-direct {v4}, Lorg/mozilla/a/a/c;-><init>()V

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object v5, v2, v3

    const/4 v3, 0x6

    new-instance v4, Lorg/mozilla/a/a/a;

    invoke-direct {v4}, Lorg/mozilla/a/a/a;-><init>()V

    aput-object v4, v2, v3

    const/4 v3, 0x7

    new-instance v4, Lorg/mozilla/a/a/d;

    invoke-direct {v4}, Lorg/mozilla/a/a/d;-><init>()V

    aput-object v4, v2, v3

    const/16 v3, 0x8

    new-instance v4, Lorg/mozilla/a/a/e;

    invoke-direct {v4}, Lorg/mozilla/a/a/e;-><init>()V

    aput-object v4, v2, v3

    const/16 v3, 0x9

    aput-object v5, v2, v3

    const/16 v3, 0xa

    aput-object v5, v2, v3

    const/16 v3, 0xb

    aput-object v5, v2, v3

    const/16 v3, 0xc

    aput-object v5, v2, v3

    const/16 v3, 0xd

    aput-object v5, v2, v3

    const/16 v3, 0xe

    aput-object v5, v2, v3

    iput-object v2, p0, Lorg/mozilla/a/a/u;->c:[Lorg/mozilla/a/a/l;

    goto/16 :goto_6a
.end method

.method public abstract a(Ljava/lang/String;)V
.end method

.method public a([BI)Z
    .registers 11

    const/4 v1, 0x0

    const/4 v7, 0x1

    move v4, v1

    :goto_3
    if-ge v4, p2, :cond_bd

    aget-byte v3, p1, v4

    move v0, v1

    :cond_8
    :goto_8
    iget v2, p0, Lorg/mozilla/a/a/u;->g:I

    if-ge v0, v2, :cond_5c

    iget-object v2, p0, Lorg/mozilla/a/a/u;->b:[Lorg/mozilla/a/a/z;

    iget-object v5, p0, Lorg/mozilla/a/a/u;->f:[I

    aget v5, v5, v0

    aget-object v2, v2, v5

    iget-object v5, p0, Lorg/mozilla/a/a/u;->e:[B

    aget-byte v5, v5, v0

    invoke-static {v2, v3, v5}, Lorg/mozilla/a/a/z;->a(Lorg/mozilla/a/a/z;BB)B

    move-result v5

    const/4 v2, 0x2

    if-ne v5, v2, :cond_33

    iget-object v1, p0, Lorg/mozilla/a/a/u;->b:[Lorg/mozilla/a/a/z;

    iget-object v2, p0, Lorg/mozilla/a/a/u;->f:[I

    aget v0, v2, v0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lorg/mozilla/a/a/z;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mozilla/a/a/u;->a(Ljava/lang/String;)V

    iput-boolean v7, p0, Lorg/mozilla/a/a/u;->i:Z

    iget-boolean v0, p0, Lorg/mozilla/a/a/u;->i:Z

    :goto_32
    return v0

    :cond_33
    if-ne v5, v7, :cond_54

    iget v2, p0, Lorg/mozilla/a/a/u;->g:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/mozilla/a/a/u;->g:I

    iget v2, p0, Lorg/mozilla/a/a/u;->g:I

    if-ge v0, v2, :cond_8

    iget-object v2, p0, Lorg/mozilla/a/a/u;->f:[I

    iget-object v5, p0, Lorg/mozilla/a/a/u;->f:[I

    iget v6, p0, Lorg/mozilla/a/a/u;->g:I

    aget v5, v5, v6

    aput v5, v2, v0

    iget-object v2, p0, Lorg/mozilla/a/a/u;->e:[B

    iget-object v5, p0, Lorg/mozilla/a/a/u;->e:[B

    iget v6, p0, Lorg/mozilla/a/a/u;->g:I

    aget-byte v5, v5, v6

    aput-byte v5, v2, v0

    goto :goto_8

    :cond_54
    iget-object v6, p0, Lorg/mozilla/a/a/u;->e:[B

    add-int/lit8 v2, v0, 0x1

    aput-byte v5, v6, v0

    move v0, v2

    goto :goto_8

    :cond_5c
    iget v0, p0, Lorg/mozilla/a/a/u;->g:I

    if-gt v0, v7, :cond_78

    iget v0, p0, Lorg/mozilla/a/a/u;->g:I

    if-ne v7, v0, :cond_73

    iget-object v0, p0, Lorg/mozilla/a/a/u;->b:[Lorg/mozilla/a/a/z;

    iget-object v2, p0, Lorg/mozilla/a/a/u;->f:[I

    aget v1, v2, v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/mozilla/a/a/z;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mozilla/a/a/u;->a(Ljava/lang/String;)V

    :cond_73
    iput-boolean v7, p0, Lorg/mozilla/a/a/u;->i:Z

    iget-boolean v0, p0, Lorg/mozilla/a/a/u;->i:Z

    goto :goto_32

    :cond_78
    move v0, v1

    move v2, v1

    move v3, v1

    :goto_7b
    iget v5, p0, Lorg/mozilla/a/a/u;->g:I

    if-ge v3, v5, :cond_a1

    iget-object v5, p0, Lorg/mozilla/a/a/u;->b:[Lorg/mozilla/a/a/z;

    iget-object v6, p0, Lorg/mozilla/a/a/u;->f:[I

    aget v6, v6, v3

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lorg/mozilla/a/a/z;->e()Z

    move-result v5

    if-nez v5, :cond_9e

    iget-object v5, p0, Lorg/mozilla/a/a/u;->b:[Lorg/mozilla/a/a/z;

    iget-object v6, p0, Lorg/mozilla/a/a/u;->f:[I

    aget v6, v6, v3

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lorg/mozilla/a/a/z;->e()Z

    move-result v5

    if-nez v5, :cond_9e

    add-int/lit8 v2, v2, 0x1

    move v0, v3

    :cond_9e
    add-int/lit8 v3, v3, 0x1

    goto :goto_7b

    :cond_a1
    if-ne v7, v2, :cond_b8

    iget-object v1, p0, Lorg/mozilla/a/a/u;->b:[Lorg/mozilla/a/a/z;

    iget-object v2, p0, Lorg/mozilla/a/a/u;->f:[I

    aget v0, v2, v0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lorg/mozilla/a/a/z;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mozilla/a/a/u;->a(Ljava/lang/String;)V

    iput-boolean v7, p0, Lorg/mozilla/a/a/u;->i:Z

    iget-boolean v0, p0, Lorg/mozilla/a/a/u;->i:Z

    goto/16 :goto_32

    :cond_b8
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_3

    :cond_bd
    iget-boolean v0, p0, Lorg/mozilla/a/a/u;->j:Z

    if-eqz v0, :cond_c4

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/a/a/u;->b([BI)V

    :cond_c4
    iget-boolean v0, p0, Lorg/mozilla/a/a/u;->i:Z

    goto/16 :goto_32
.end method

.method public b()V
    .registers 5

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-boolean v0, p0, Lorg/mozilla/a/a/u;->i:Z

    if-ne v0, v2, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    iget v0, p0, Lorg/mozilla/a/a/u;->g:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_31

    iget-object v0, p0, Lorg/mozilla/a/a/u;->b:[Lorg/mozilla/a/a/z;

    iget-object v1, p0, Lorg/mozilla/a/a/u;->f:[I

    aget v1, v1, v3

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/mozilla/a/a/z;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GB18030"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lorg/mozilla/a/a/u;->b:[Lorg/mozilla/a/a/z;

    iget-object v1, p0, Lorg/mozilla/a/a/u;->f:[I

    aget v1, v1, v2

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/mozilla/a/a/z;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mozilla/a/a/u;->a(Ljava/lang/String;)V

    iput-boolean v2, p0, Lorg/mozilla/a/a/u;->i:Z

    :cond_31
    :goto_31
    iget-boolean v0, p0, Lorg/mozilla/a/a/u;->j:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v3, v2}, Lorg/mozilla/a/a/u;->b([BIZ)V

    goto :goto_6

    :cond_3a
    iget-object v0, p0, Lorg/mozilla/a/a/u;->b:[Lorg/mozilla/a/a/z;

    iget-object v1, p0, Lorg/mozilla/a/a/u;->f:[I

    aget v1, v1, v2

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/mozilla/a/a/z;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GB18030"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lorg/mozilla/a/a/u;->b:[Lorg/mozilla/a/a/z;

    iget-object v1, p0, Lorg/mozilla/a/a/u;->f:[I

    aget v1, v1, v3

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/mozilla/a/a/z;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mozilla/a/a/u;->a(Ljava/lang/String;)V

    iput-boolean v2, p0, Lorg/mozilla/a/a/u;->i:Z

    goto :goto_31
.end method

.method public b([BI)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/mozilla/a/a/u;->b([BIZ)V

    return-void
.end method

.method public b([BIZ)V
    .registers 15

    const/4 v4, 0x1

    const/4 v1, 0x0

    move v0, v1

    move v2, v1

    move v3, v1

    :goto_5
    iget v5, p0, Lorg/mozilla/a/a/u;->g:I

    if-ge v2, v5, :cond_3c

    iget-object v5, p0, Lorg/mozilla/a/a/u;->c:[Lorg/mozilla/a/a/l;

    iget-object v6, p0, Lorg/mozilla/a/a/u;->f:[I

    aget v6, v6, v2

    aget-object v5, v5, v6

    if-eqz v5, :cond_15

    add-int/lit8 v0, v0, 0x1

    :cond_15
    iget-object v5, p0, Lorg/mozilla/a/a/u;->b:[Lorg/mozilla/a/a/z;

    iget-object v6, p0, Lorg/mozilla/a/a/u;->f:[I

    aget v6, v6, v2

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lorg/mozilla/a/a/z;->e()Z

    move-result v5

    if-nez v5, :cond_39

    iget-object v5, p0, Lorg/mozilla/a/a/u;->b:[Lorg/mozilla/a/a/z;

    iget-object v6, p0, Lorg/mozilla/a/a/u;->f:[I

    aget v6, v6, v2

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lorg/mozilla/a/a/z;->d()Ljava/lang/String;

    move-result-object v5

    const-string v6, "GB18030"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_39

    add-int/lit8 v3, v3, 0x1

    :cond_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_3c
    if-le v0, v4, :cond_cf

    move v2, v4

    :goto_3f
    iput-boolean v2, p0, Lorg/mozilla/a/a/u;->j:Z

    iget-boolean v2, p0, Lorg/mozilla/a/a/u;->j:Z

    if-eqz v2, :cond_e5

    iget-object v2, p0, Lorg/mozilla/a/a/u;->d:Lorg/mozilla/a/a/k;

    invoke-virtual {v2, p1, p2}, Lorg/mozilla/a/a/k;->a([BI)Z

    move-result v2

    iput-boolean v2, p0, Lorg/mozilla/a/a/u;->j:Z

    if-eqz p3, :cond_57

    iget-object v2, p0, Lorg/mozilla/a/a/u;->d:Lorg/mozilla/a/a/k;

    invoke-virtual {v2}, Lorg/mozilla/a/a/k;->c()Z

    move-result v2

    if-nez v2, :cond_5f

    :cond_57
    iget-object v2, p0, Lorg/mozilla/a/a/u;->d:Lorg/mozilla/a/a/k;

    invoke-virtual {v2}, Lorg/mozilla/a/a/k;->b()Z

    move-result v2

    if-eqz v2, :cond_e5

    :cond_5f
    if-ne v0, v3, :cond_e5

    iget-object v0, p0, Lorg/mozilla/a/a/u;->d:Lorg/mozilla/a/a/k;

    invoke-virtual {v0}, Lorg/mozilla/a/a/k;->d()V

    const/4 v2, -0x1

    const/4 v0, 0x0

    move v3, v1

    :goto_69
    iget v5, p0, Lorg/mozilla/a/a/u;->g:I

    if-ge v3, v5, :cond_d2

    iget-object v5, p0, Lorg/mozilla/a/a/u;->c:[Lorg/mozilla/a/a/l;

    iget-object v6, p0, Lorg/mozilla/a/a/u;->f:[I

    aget v6, v6, v3

    aget-object v5, v5, v6

    if-eqz v5, :cond_cc

    iget-object v5, p0, Lorg/mozilla/a/a/u;->b:[Lorg/mozilla/a/a/z;

    iget-object v6, p0, Lorg/mozilla/a/a/u;->f:[I

    aget v6, v6, v3

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lorg/mozilla/a/a/z;->d()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Big5"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_cc

    iget-object v5, p0, Lorg/mozilla/a/a/u;->d:Lorg/mozilla/a/a/k;

    iget-object v6, p0, Lorg/mozilla/a/a/u;->c:[Lorg/mozilla/a/a/l;

    iget-object v7, p0, Lorg/mozilla/a/a/u;->f:[I

    aget v7, v7, v3

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lorg/mozilla/a/a/l;->a()[F

    move-result-object v6

    iget-object v7, p0, Lorg/mozilla/a/a/u;->c:[Lorg/mozilla/a/a/l;

    iget-object v8, p0, Lorg/mozilla/a/a/u;->f:[I

    aget v8, v8, v3

    aget-object v7, v7, v8

    invoke-virtual {v7}, Lorg/mozilla/a/a/l;->b()F

    move-result v7

    iget-object v8, p0, Lorg/mozilla/a/a/u;->c:[Lorg/mozilla/a/a/l;

    iget-object v9, p0, Lorg/mozilla/a/a/u;->f:[I

    aget v9, v9, v3

    aget-object v8, v8, v9

    invoke-virtual {v8}, Lorg/mozilla/a/a/l;->c()[F

    move-result-object v8

    iget-object v9, p0, Lorg/mozilla/a/a/u;->c:[Lorg/mozilla/a/a/l;

    iget-object v10, p0, Lorg/mozilla/a/a/u;->f:[I

    aget v10, v10, v3

    aget-object v9, v9, v10

    invoke-virtual {v9}, Lorg/mozilla/a/a/l;->d()F

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Lorg/mozilla/a/a/k;->a([FF[FF)F

    move-result v5

    add-int/lit8 v6, v1, 0x1

    if-eqz v1, :cond_c9

    cmpl-float v1, v0, v5

    if-lez v1, :cond_e6

    :cond_c9
    move v0, v5

    move v1, v6

    move v2, v3

    :cond_cc
    :goto_cc
    add-int/lit8 v3, v3, 0x1

    goto :goto_69

    :cond_cf
    move v2, v1

    goto/16 :goto_3f

    :cond_d2
    if-ltz v2, :cond_e5

    iget-object v0, p0, Lorg/mozilla/a/a/u;->b:[Lorg/mozilla/a/a/z;

    iget-object v1, p0, Lorg/mozilla/a/a/u;->f:[I

    aget v1, v1, v2

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/mozilla/a/a/z;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mozilla/a/a/u;->a(Ljava/lang/String;)V

    iput-boolean v4, p0, Lorg/mozilla/a/a/u;->i:Z

    :cond_e5
    return-void

    :cond_e6
    move v1, v6

    goto :goto_cc
.end method

.method public c()[Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    iget v1, p0, Lorg/mozilla/a/a/u;->g:I

    if-gtz v1, :cond_e

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "nomatch"

    aput-object v2, v1, v0

    move-object v0, v1

    :goto_d
    return-object v0

    :cond_e
    iget v1, p0, Lorg/mozilla/a/a/u;->g:I

    new-array v1, v1, [Ljava/lang/String;

    :goto_12
    iget v2, p0, Lorg/mozilla/a/a/u;->g:I

    if-ge v0, v2, :cond_27

    iget-object v2, p0, Lorg/mozilla/a/a/u;->b:[Lorg/mozilla/a/a/z;

    iget-object v3, p0, Lorg/mozilla/a/a/u;->f:[I

    aget v3, v3, v0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lorg/mozilla/a/a/z;->d()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_27
    move-object v0, v1

    goto :goto_d
.end method
