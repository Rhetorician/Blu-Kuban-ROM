.class public final Lcom/coremobility/e/z;
.super Ljava/lang/Object;


# instance fields
.field public a:Lcom/coremobility/e/ai;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:Z

.field protected k:Lcom/coremobility/integration/file/a;

.field protected l:Z

.field protected m:Lcom/coremobility/integration/h;

.field final synthetic n:Lcom/coremobility/e/y;


# direct methods
.method public constructor <init>(Lcom/coremobility/e/y;I)V
    .registers 5

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/coremobility/e/z;->n:Lcom/coremobility/e/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/coremobility/integration/file/a;->a()Lcom/coremobility/integration/file/a;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/e/z;->k:Lcom/coremobility/integration/file/a;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/e/z;->a:Lcom/coremobility/e/ai;

    iput-boolean v1, p0, Lcom/coremobility/e/z;->l:Z

    new-instance v0, Lcom/coremobility/integration/h;

    invoke-direct {v0}, Lcom/coremobility/integration/h;-><init>()V

    iput-object v0, p0, Lcom/coremobility/e/z;->m:Lcom/coremobility/integration/h;

    iput v1, p0, Lcom/coremobility/e/z;->b:I

    iput v1, p0, Lcom/coremobility/e/z;->c:I

    iput v1, p0, Lcom/coremobility/e/z;->d:I

    iput v1, p0, Lcom/coremobility/e/z;->e:I

    iput v1, p0, Lcom/coremobility/e/z;->f:I

    iput v1, p0, Lcom/coremobility/e/z;->g:I

    iput p2, p0, Lcom/coremobility/e/z;->h:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/coremobility/e/z;->i:I

    iput-boolean v1, p0, Lcom/coremobility/e/z;->j:Z

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/coremobility/e/ai;
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/coremobility/e/z;->a:Lcom/coremobility/e/ai;

    if-eqz v2, :cond_12

    iget v2, p0, Lcom/coremobility/e/z;->g:I

    if-ne p1, v2, :cond_10

    :goto_a
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p0, Lcom/coremobility/e/z;->a:Lcom/coremobility/e/ai;

    :goto_f
    return-object v0

    :cond_10
    move v0, v1

    goto :goto_a

    :cond_12
    iput p1, p0, Lcom/coremobility/e/z;->g:I

    iget v2, p0, Lcom/coremobility/e/z;->g:I

    packed-switch v2, :pswitch_data_5a

    :pswitch_19
    invoke-static {v1}, Lcom/coremobility/integration/c/a;->a(Z)V

    const/4 v0, 0x0

    goto :goto_f

    :pswitch_1e
    iget v2, p0, Lcom/coremobility/e/z;->b:I

    const/16 v3, 0x81

    if-ne v2, v3, :cond_31

    :goto_24
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    new-instance v0, Lcom/coremobility/e/ap;

    invoke-direct {v0}, Lcom/coremobility/e/ap;-><init>()V

    iput-object v0, p0, Lcom/coremobility/e/z;->a:Lcom/coremobility/e/ai;

    :goto_2e
    iget-object v0, p0, Lcom/coremobility/e/z;->a:Lcom/coremobility/e/ai;

    goto :goto_f

    :cond_31
    move v0, v1

    goto :goto_24

    :pswitch_33
    iget v2, p0, Lcom/coremobility/e/z;->b:I

    const/16 v3, 0x84

    if-ne v2, v3, :cond_44

    :goto_39
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    new-instance v0, Lcom/coremobility/e/ar;

    invoke-direct {v0}, Lcom/coremobility/e/ar;-><init>()V

    iput-object v0, p0, Lcom/coremobility/e/z;->a:Lcom/coremobility/e/ai;

    goto :goto_2e

    :cond_44
    move v0, v1

    goto :goto_39

    :pswitch_46
    iget v2, p0, Lcom/coremobility/e/z;->b:I

    const/16 v3, 0x8a

    if-ne v2, v3, :cond_57

    :goto_4c
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    new-instance v0, Lcom/coremobility/e/ap;

    invoke-direct {v0}, Lcom/coremobility/e/ap;-><init>()V

    iput-object v0, p0, Lcom/coremobility/e/z;->a:Lcom/coremobility/e/ai;

    goto :goto_2e

    :cond_57
    move v0, v1

    goto :goto_4c

    nop

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_19
        :pswitch_33
        :pswitch_19
        :pswitch_19
        :pswitch_46
    .end packed-switch
.end method

.method public final a()V
    .registers 3

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/coremobility/e/z;->l:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/coremobility/e/z;->m:Lcom/coremobility/integration/h;

    invoke-static {v0}, Lcom/coremobility/integration/file/a;->a(Lcom/coremobility/integration/h;)I

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x1

    :goto_e
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iput-boolean v1, p0, Lcom/coremobility/e/z;->l:Z

    :cond_13
    iput v1, p0, Lcom/coremobility/e/z;->d:I

    iput v1, p0, Lcom/coremobility/e/z;->f:I

    return-void

    :cond_18
    move v0, v1

    goto :goto_e
.end method

.method public final a(Ljava/lang/String;)V
    .registers 7

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/coremobility/e/z;->l:Z

    if-nez v0, :cond_32

    const/4 v0, 0x1

    :goto_6
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    const-string v0, "MM-TMP"

    invoke-static {v0, p1}, Lcom/coremobility/integration/file/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_31

    const/16 v2, 0x21

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CM+MMS file err "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " rename temp"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_31
    return-void

    :cond_32
    move v0, v1

    goto :goto_6
.end method

.method public final a([BLcom/coremobility/integration/r;)V
    .registers 10

    const/16 v0, 0x44c

    const/16 v6, 0x21

    const/4 v5, 0x7

    const/4 v4, 0x0

    iget v1, p0, Lcom/coremobility/e/z;->c:I

    if-eqz v1, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    iget-boolean v1, p0, Lcom/coremobility/e/z;->l:Z

    if-nez v1, :cond_42

    const-string v1, "MM-TMP"

    iget-object v2, p0, Lcom/coremobility/e/z;->m:Lcom/coremobility/integration/h;

    invoke-static {v1, v2}, Lcom/coremobility/integration/file/a;->a(Ljava/lang/String;Lcom/coremobility/integration/h;)I

    move-result v1

    if-eqz v1, :cond_3f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CM+MMS file err "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " open temp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v6, v2, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    if-ne v1, v5, :cond_3c

    :goto_39
    iput v0, p0, Lcom/coremobility/e/z;->c:I

    goto :goto_a

    :cond_3c
    const/16 v0, 0x44d

    goto :goto_39

    :cond_3f
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/coremobility/e/z;->l:Z

    :cond_42
    iget-object v1, p0, Lcom/coremobility/e/z;->m:Lcom/coremobility/integration/h;

    invoke-static {v1, p1, p2}, Lcom/coremobility/integration/file/a;->d(Lcom/coremobility/integration/h;[BLcom/coremobility/integration/r;)I

    move-result v1

    if-eqz v1, :cond_a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CM+MMS file err "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " write temp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v6, v2, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    if-ne v1, v5, :cond_6d

    :goto_6a
    iput v0, p0, Lcom/coremobility/e/z;->c:I

    goto :goto_a

    :cond_6d
    const/16 v0, 0x44e

    goto :goto_6a
.end method
