.class public Lde/innosystec/unrar/unpack/ppm/e;
.super Ljava/lang/Object;


# instance fields
.field private a:J

.field private b:J

.field private c:J

.field private final d:Lde/innosystec/unrar/unpack/ppm/f;

.field private e:Lde/innosystec/unrar/unpack/b;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lde/innosystec/unrar/unpack/ppm/f;

    invoke-direct {v0}, Lde/innosystec/unrar/unpack/ppm/f;-><init>()V

    iput-object v0, p0, Lde/innosystec/unrar/unpack/ppm/e;->d:Lde/innosystec/unrar/unpack/ppm/f;

    return-void
.end method

.method private e()I
    .registers 2

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/e;->e:Lde/innosystec/unrar/unpack/b;

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/b;->a()I

    move-result v0

    return v0
.end method


# virtual methods
.method public a(I)J
    .registers 6

    iget-wide v0, p0, Lde/innosystec/unrar/unpack/ppm/e;->c:J

    ushr-long/2addr v0, p1

    iput-wide v0, p0, Lde/innosystec/unrar/unpack/ppm/e;->c:J

    iget-wide v0, p0, Lde/innosystec/unrar/unpack/ppm/e;->b:J

    iget-wide v2, p0, Lde/innosystec/unrar/unpack/ppm/e;->a:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lde/innosystec/unrar/unpack/ppm/e;->c:J

    div-long/2addr v0, v2

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public a()Lde/innosystec/unrar/unpack/ppm/f;
    .registers 2

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/e;->d:Lde/innosystec/unrar/unpack/ppm/f;

    return-object v0
.end method

.method public a(Lde/innosystec/unrar/unpack/b;)V
    .registers 9

    const-wide v5, 0xffffffffL

    iput-object p1, p0, Lde/innosystec/unrar/unpack/ppm/e;->e:Lde/innosystec/unrar/unpack/b;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lde/innosystec/unrar/unpack/ppm/e;->b:J

    iput-wide v0, p0, Lde/innosystec/unrar/unpack/ppm/e;->a:J

    iput-wide v5, p0, Lde/innosystec/unrar/unpack/ppm/e;->c:J

    const/4 v0, 0x0

    :goto_10
    const/4 v1, 0x4

    if-lt v0, v1, :cond_14

    return-void

    :cond_14
    iget-wide v1, p0, Lde/innosystec/unrar/unpack/ppm/e;->b:J

    const/16 v3, 0x8

    shl-long/2addr v1, v3

    invoke-direct {p0}, Lde/innosystec/unrar/unpack/ppm/e;->e()I

    move-result v3

    int-to-long v3, v3

    or-long/2addr v1, v3

    and-long/2addr v1, v5

    iput-wide v1, p0, Lde/innosystec/unrar/unpack/ppm/e;->b:J

    add-int/lit8 v0, v0, 0x1

    goto :goto_10
.end method

.method public b()I
    .registers 5

    iget-wide v0, p0, Lde/innosystec/unrar/unpack/ppm/e;->c:J

    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/e;->d:Lde/innosystec/unrar/unpack/ppm/f;

    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/ppm/f;->c()J

    move-result-wide v2

    div-long/2addr v0, v2

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    iput-wide v0, p0, Lde/innosystec/unrar/unpack/ppm/e;->c:J

    iget-wide v0, p0, Lde/innosystec/unrar/unpack/ppm/e;->b:J

    iget-wide v2, p0, Lde/innosystec/unrar/unpack/ppm/e;->a:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lde/innosystec/unrar/unpack/ppm/e;->c:J

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public c()V
    .registers 9

    const-wide v6, 0xffffffffL

    iget-wide v0, p0, Lde/innosystec/unrar/unpack/ppm/e;->a:J

    iget-wide v2, p0, Lde/innosystec/unrar/unpack/ppm/e;->c:J

    iget-object v4, p0, Lde/innosystec/unrar/unpack/ppm/e;->d:Lde/innosystec/unrar/unpack/ppm/f;

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/ppm/f;->b()J

    move-result-wide v4

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    and-long/2addr v0, v6

    iput-wide v0, p0, Lde/innosystec/unrar/unpack/ppm/e;->a:J

    iget-wide v0, p0, Lde/innosystec/unrar/unpack/ppm/e;->c:J

    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/e;->d:Lde/innosystec/unrar/unpack/ppm/f;

    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/ppm/f;->a()J

    move-result-wide v2

    iget-object v4, p0, Lde/innosystec/unrar/unpack/ppm/e;->d:Lde/innosystec/unrar/unpack/ppm/f;

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/ppm/f;->b()J

    move-result-wide v4

    sub-long/2addr v2, v4

    mul-long/2addr v0, v2

    and-long/2addr v0, v6

    iput-wide v0, p0, Lde/innosystec/unrar/unpack/ppm/e;->c:J

    return-void
.end method

.method public d()V
    .registers 12

    const/16 v10, 0x8

    const/4 v1, 0x0

    const-wide v8, 0xffffffffL

    move v0, v1

    :goto_9
    iget-wide v2, p0, Lde/innosystec/unrar/unpack/ppm/e;->a:J

    iget-wide v4, p0, Lde/innosystec/unrar/unpack/ppm/e;->a:J

    iget-wide v6, p0, Lde/innosystec/unrar/unpack/ppm/e;->c:J

    add-long/2addr v4, v6

    xor-long/2addr v2, v4

    const-wide/32 v4, 0x1000000

    cmp-long v2, v2, v4

    if-ltz v2, :cond_25

    iget-wide v2, p0, Lde/innosystec/unrar/unpack/ppm/e;->c:J

    const-wide/32 v4, 0x8000

    cmp-long v0, v2, v4

    if-gez v0, :cond_4a

    const/4 v0, 0x1

    :goto_22
    if-nez v0, :cond_25

    return-void

    :cond_25
    if-eqz v0, :cond_31

    iget-wide v2, p0, Lde/innosystec/unrar/unpack/ppm/e;->a:J

    neg-long v2, v2

    const-wide/16 v4, 0x7fff

    and-long/2addr v2, v4

    and-long/2addr v2, v8

    iput-wide v2, p0, Lde/innosystec/unrar/unpack/ppm/e;->c:J

    move v0, v1

    :cond_31
    iget-wide v2, p0, Lde/innosystec/unrar/unpack/ppm/e;->b:J

    shl-long/2addr v2, v10

    invoke-direct {p0}, Lde/innosystec/unrar/unpack/ppm/e;->e()I

    move-result v4

    int-to-long v4, v4

    or-long/2addr v2, v4

    and-long/2addr v2, v8

    iput-wide v2, p0, Lde/innosystec/unrar/unpack/ppm/e;->b:J

    iget-wide v2, p0, Lde/innosystec/unrar/unpack/ppm/e;->c:J

    shl-long/2addr v2, v10

    and-long/2addr v2, v8

    iput-wide v2, p0, Lde/innosystec/unrar/unpack/ppm/e;->c:J

    iget-wide v2, p0, Lde/innosystec/unrar/unpack/ppm/e;->a:J

    shl-long/2addr v2, v10

    and-long/2addr v2, v8

    iput-wide v2, p0, Lde/innosystec/unrar/unpack/ppm/e;->a:J

    goto :goto_9

    :cond_4a
    move v0, v1

    goto :goto_22
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RangeCoder["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n  low="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lde/innosystec/unrar/unpack/ppm/e;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\n  code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lde/innosystec/unrar/unpack/ppm/e;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\n  range="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lde/innosystec/unrar/unpack/ppm/e;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\n  subrange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lde/innosystec/unrar/unpack/ppm/e;->d:Lde/innosystec/unrar/unpack/ppm/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
