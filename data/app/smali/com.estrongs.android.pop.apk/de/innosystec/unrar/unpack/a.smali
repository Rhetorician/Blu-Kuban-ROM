.class public Lde/innosystec/unrar/unpack/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lde/innosystec/unrar/a;

.field private b:J

.field private c:Z

.field private d:Z

.field private e:Ljava/io/InputStream;

.field private f:Ljava/io/OutputStream;

.field private g:Lde/innosystec/unrar/rarfile/g;

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:J

.field private l:J

.field private m:J

.field private n:J

.field private o:J

.field private p:J

.field private q:J

.field private r:J

.field private s:J

.field private t:J

.field private u:I

.field private v:I

.field private w:I

.field private x:C


# direct methods
.method public constructor <init>(Lde/innosystec/unrar/a;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lde/innosystec/unrar/unpack/a;->a:Lde/innosystec/unrar/a;

    return-void
.end method


# virtual methods
.method public a([BII)I
    .registers 13

    const/4 v3, 0x0

    const/4 v2, -0x1

    move v0, v3

    move v1, p3

    :goto_4
    if-gtz v1, :cond_b

    move v1, v0

    move v0, v3

    :goto_8
    if-eq v1, v2, :cond_7f

    :goto_a
    return v0

    :cond_b
    iget-object v0, p0, Lde/innosystec/unrar/unpack/a;->a:Lde/innosystec/unrar/a;

    invoke-virtual {v0}, Lde/innosystec/unrar/a;->i()Lde/innosystec/unrar/b;

    move-result-object v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lde/innosystec/unrar/unpack/a;->a:Lde/innosystec/unrar/a;

    invoke-virtual {v0}, Lde/innosystec/unrar/a;->i()Lde/innosystec/unrar/b;

    move-result-object v0

    invoke-interface {v0}, Lde/innosystec/unrar/b;->a()Z

    move-result v0

    if-eqz v0, :cond_21

    move v0, v2

    goto :goto_a

    :cond_21
    int-to-long v4, v1

    iget-wide v6, p0, Lde/innosystec/unrar/unpack/a;->b:J

    cmp-long v0, v4, v6

    if-lez v0, :cond_39

    iget-wide v4, p0, Lde/innosystec/unrar/unpack/a;->b:J

    long-to-int v0, v4

    :goto_2b
    iget-object v4, p0, Lde/innosystec/unrar/unpack/a;->e:Ljava/io/InputStream;

    invoke-virtual {v4, p1, p2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-gez v4, :cond_3b

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_39
    move v0, v1

    goto :goto_2b

    :cond_3b
    iget-object v0, p0, Lde/innosystec/unrar/unpack/a;->g:Lde/innosystec/unrar/rarfile/g;

    invoke-virtual {v0}, Lde/innosystec/unrar/rarfile/g;->t()Z

    move-result v0

    if-eqz v0, :cond_4d

    iget-wide v5, p0, Lde/innosystec/unrar/unpack/a;->t:J

    long-to-int v0, v5

    invoke-static {v0, p1, p2, v4}, Lde/innosystec/unrar/a/a;->a(I[BII)I

    move-result v0

    int-to-long v5, v0

    iput-wide v5, p0, Lde/innosystec/unrar/unpack/a;->t:J

    :cond_4d
    iget-wide v5, p0, Lde/innosystec/unrar/unpack/a;->n:J

    int-to-long v7, v4

    add-long/2addr v5, v7

    iput-wide v5, p0, Lde/innosystec/unrar/unpack/a;->n:J

    add-int v0, v3, v4

    add-int/2addr p2, v4

    sub-int/2addr v1, v4

    iget-wide v5, p0, Lde/innosystec/unrar/unpack/a;->b:J

    int-to-long v7, v4

    sub-long/2addr v5, v7

    iput-wide v5, p0, Lde/innosystec/unrar/unpack/a;->b:J

    iget-object v3, p0, Lde/innosystec/unrar/unpack/a;->a:Lde/innosystec/unrar/a;

    invoke-virtual {v3, v4}, Lde/innosystec/unrar/a;->a(I)V

    iget-wide v5, p0, Lde/innosystec/unrar/unpack/a;->b:J

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-nez v3, :cond_84

    iget-object v3, p0, Lde/innosystec/unrar/unpack/a;->g:Lde/innosystec/unrar/rarfile/g;

    invoke-virtual {v3}, Lde/innosystec/unrar/rarfile/g;->t()Z

    move-result v3

    if-eqz v3, :cond_84

    iget-object v3, p0, Lde/innosystec/unrar/unpack/a;->a:Lde/innosystec/unrar/a;

    invoke-static {v3, p0}, Lde/innosystec/unrar/d;->a(Lde/innosystec/unrar/a;Lde/innosystec/unrar/unpack/a;)Z

    move-result v3

    if-nez v3, :cond_81

    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/innosystec/unrar/unpack/a;->j:Z

    move v0, v2

    goto :goto_a

    :cond_7f
    move v0, v1

    goto :goto_a

    :cond_81
    move v3, v0

    move v0, v4

    goto :goto_4

    :cond_84
    move v1, v4

    goto :goto_8
.end method

.method public a()J
    .registers 3

    iget-wide v0, p0, Lde/innosystec/unrar/unpack/a;->t:J

    return-wide v0
.end method

.method public a(J)V
    .registers 3

    iput-wide p1, p0, Lde/innosystec/unrar/unpack/a;->s:J

    return-void
.end method

.method public a(Lde/innosystec/unrar/rarfile/g;)V
    .registers 10

    const-wide/16 v6, 0x0

    invoke-virtual {p1}, Lde/innosystec/unrar/rarfile/g;->e()J

    move-result-wide v0

    invoke-virtual {p1}, Lde/innosystec/unrar/rarfile/g;->h()S

    move-result v2

    int-to-long v2, v2

    add-long/2addr v2, v0

    invoke-virtual {p1}, Lde/innosystec/unrar/rarfile/g;->r()J

    move-result-wide v0

    iput-wide v0, p0, Lde/innosystec/unrar/unpack/a;->b:J

    new-instance v0, Lde/innosystec/unrar/b/d;

    iget-object v1, p0, Lde/innosystec/unrar/unpack/a;->a:Lde/innosystec/unrar/a;

    invoke-virtual {v1}, Lde/innosystec/unrar/a;->b()Lde/innosystec/unrar/b/a;

    move-result-object v1

    iget-wide v4, p0, Lde/innosystec/unrar/unpack/a;->b:J

    add-long/2addr v4, v2

    invoke-direct/range {v0 .. v5}, Lde/innosystec/unrar/b/d;-><init>(Lde/innosystec/unrar/b/a;JJ)V

    iput-object v0, p0, Lde/innosystec/unrar/unpack/a;->e:Ljava/io/InputStream;

    iput-object p1, p0, Lde/innosystec/unrar/unpack/a;->g:Lde/innosystec/unrar/rarfile/g;

    iput-wide v6, p0, Lde/innosystec/unrar/unpack/a;->n:J

    iput-wide v6, p0, Lde/innosystec/unrar/unpack/a;->m:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lde/innosystec/unrar/unpack/a;->t:J

    return-void
.end method

.method public a(Ljava/io/OutputStream;)V
    .registers 7

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    iput-object p1, p0, Lde/innosystec/unrar/unpack/a;->f:Ljava/io/OutputStream;

    iput-wide v3, p0, Lde/innosystec/unrar/unpack/a;->b:J

    iput-boolean v2, p0, Lde/innosystec/unrar/unpack/a;->c:Z

    iput-boolean v2, p0, Lde/innosystec/unrar/unpack/a;->d:Z

    iput-boolean v2, p0, Lde/innosystec/unrar/unpack/a;->h:Z

    iput-boolean v2, p0, Lde/innosystec/unrar/unpack/a;->i:Z

    iput-boolean v2, p0, Lde/innosystec/unrar/unpack/a;->j:Z

    iput v2, p0, Lde/innosystec/unrar/unpack/a;->u:I

    iput v2, p0, Lde/innosystec/unrar/unpack/a;->v:I

    iput-wide v3, p0, Lde/innosystec/unrar/unpack/a;->k:J

    iput-wide v3, p0, Lde/innosystec/unrar/unpack/a;->o:J

    iput-wide v3, p0, Lde/innosystec/unrar/unpack/a;->n:J

    iput-wide v3, p0, Lde/innosystec/unrar/unpack/a;->m:J

    iput-wide v3, p0, Lde/innosystec/unrar/unpack/a;->l:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lde/innosystec/unrar/unpack/a;->t:J

    iput-wide v0, p0, Lde/innosystec/unrar/unpack/a;->s:J

    iput-wide v0, p0, Lde/innosystec/unrar/unpack/a;->r:J

    const/4 v0, -0x1

    iput v0, p0, Lde/innosystec/unrar/unpack/a;->w:I

    const/4 v0, 0x0

    iput-object v0, p0, Lde/innosystec/unrar/unpack/a;->g:Lde/innosystec/unrar/rarfile/g;

    iput-char v2, p0, Lde/innosystec/unrar/unpack/a;->x:C

    iput-wide v3, p0, Lde/innosystec/unrar/unpack/a;->q:J

    iput-wide v3, p0, Lde/innosystec/unrar/unpack/a;->p:J

    return-void
.end method

.method public b()J
    .registers 3

    iget-wide v0, p0, Lde/innosystec/unrar/unpack/a;->s:J

    return-wide v0
.end method

.method public b([BII)V
    .registers 8

    iget-boolean v0, p0, Lde/innosystec/unrar/unpack/a;->c:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lde/innosystec/unrar/unpack/a;->f:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    :cond_9
    iget-wide v0, p0, Lde/innosystec/unrar/unpack/a;->o:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lde/innosystec/unrar/unpack/a;->o:J

    iget-boolean v0, p0, Lde/innosystec/unrar/unpack/a;->d:Z

    if-nez v0, :cond_26

    iget-object v0, p0, Lde/innosystec/unrar/unpack/a;->a:Lde/innosystec/unrar/a;

    invoke-virtual {v0}, Lde/innosystec/unrar/a;->f()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-wide v0, p0, Lde/innosystec/unrar/unpack/a;->s:J

    long-to-int v0, v0

    int-to-short v0, v0

    invoke-static {v0, p1, p3}, Lde/innosystec/unrar/a/a;->a(S[BI)S

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lde/innosystec/unrar/unpack/a;->s:J

    :cond_26
    :goto_26
    return-void

    :cond_27
    iget-wide v0, p0, Lde/innosystec/unrar/unpack/a;->s:J

    long-to-int v0, v0

    invoke-static {v0, p1, p2, p3}, Lde/innosystec/unrar/a/a;->a(I[BII)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lde/innosystec/unrar/unpack/a;->s:J

    goto :goto_26
.end method

.method public c()Lde/innosystec/unrar/rarfile/g;
    .registers 2

    iget-object v0, p0, Lde/innosystec/unrar/unpack/a;->g:Lde/innosystec/unrar/rarfile/g;

    return-object v0
.end method
