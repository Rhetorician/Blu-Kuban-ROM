.class public final Lcom/coremobility/l/s;
.super Lcom/coremobility/h/a;

# interfaces
.implements Lcom/coremobility/g/a;


# instance fields
.field protected g:Lcom/coremobility/g/b;

.field protected h:Lcom/coremobility/l/v;

.field protected i:Lcom/coremobility/integration/file/a;

.field protected j:Z

.field protected k:Z

.field protected l:Ljava/lang/String;

.field protected m:Lcom/coremobility/l/t;

.field protected n:Ljava/util/Vector;

.field protected o:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/coremobility/h/a;-><init>()V

    iput-object v0, p0, Lcom/coremobility/l/s;->l:Ljava/lang/String;

    iput-object v0, p0, Lcom/coremobility/l/s;->m:Lcom/coremobility/l/t;

    iput-object v0, p0, Lcom/coremobility/l/s;->n:Ljava/util/Vector;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coremobility/l/s;->o:Z

    new-instance v0, Lcom/coremobility/h/c;

    invoke-direct {v0, p0}, Lcom/coremobility/h/c;-><init>(Lcom/coremobility/h/a;)V

    sput-object v0, Lcom/coremobility/l/s;->e:Lcom/coremobility/h/c;

    new-instance v0, Lcom/coremobility/l/t;

    invoke-direct {v0, p0}, Lcom/coremobility/l/t;-><init>(Lcom/coremobility/l/s;)V

    iput-object v0, p0, Lcom/coremobility/l/s;->m:Lcom/coremobility/l/t;

    new-instance v0, Lcom/coremobility/l/a;

    invoke-direct {v0}, Lcom/coremobility/l/a;-><init>()V

    iput-object v0, p0, Lcom/coremobility/l/s;->d:Lcom/coremobility/h/f;

    return-void
.end method

.method private b(I)V
    .registers 12

    const/4 v3, 0x2

    const/16 v6, 0xc

    const/4 v9, 0x1

    const/16 v8, 0x31

    const/4 v7, 0x0

    invoke-static {}, Lcom/coremobility/integration/a/a;->a()Lcom/coremobility/integration/a/a;

    move-result-object v0

    sget-object v1, Lcom/coremobility/l/s;->e:Lcom/coremobility/h/c;

    invoke-virtual {v1, v3}, Lcom/coremobility/h/c;->a(I)V

    packed-switch p1, :pswitch_data_72e

    :pswitch_13
    const-string v0, "unknown vtt rest client operation: %d"

    new-array v1, v9, [Ljava/lang/Object;

    sget-object v2, Lcom/coremobility/l/s;->e:Lcom/coremobility/h/c;

    iget v2, v2, Lcom/coremobility/h/c;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v8, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_24
    :goto_24
    return-void

    :pswitch_25
    new-instance v0, Ljava/lang/String;

    invoke-direct {p0}, Lcom/coremobility/l/s;->l()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/coremobility/l/s;->l:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get vms info for mdn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/coremobility/l/s;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v8, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/l/s;->h:Lcom/coremobility/l/v;

    iget-object v1, p0, Lcom/coremobility/l/s;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/coremobility/l/v;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coremobility/l/s;->h:Lcom/coremobility/l/v;

    iget-object v0, v0, Lcom/coremobility/l/v;->k:Ljava/lang/String;

    invoke-static {v0}, Lcom/coremobility/j/r;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/coremobility/l/s;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "vms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get vms info resource="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v8, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Lcom/coremobility/f/b;

    const/16 v2, 0x12

    invoke-direct {v1, v2}, Lcom/coremobility/f/b;-><init>(I)V

    iget-object v2, p0, Lcom/coremobility/l/s;->f:Lcom/coremobility/h/u;

    invoke-virtual {v2, v9, v0, v1}, Lcom/coremobility/h/u;->a(ILjava/lang/String;Lcom/coremobility/f/b;)I

    goto :goto_24

    :pswitch_a1
    new-instance v0, Ljava/lang/String;

    invoke-direct {p0}, Lcom/coremobility/l/s;->l()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/coremobility/l/s;->l:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get subscription status for mdn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/coremobility/l/s;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v8, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/l/s;->h:Lcom/coremobility/l/v;

    iget-object v1, p0, Lcom/coremobility/l/s;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/coremobility/l/v;->d(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/coremobility/l/s;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "subscription"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Get  subscription resource="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v8, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Lcom/coremobility/f/b;

    const/16 v2, 0xf

    invoke-direct {v1, v2}, Lcom/coremobility/f/b;-><init>(I)V

    iget-object v2, p0, Lcom/coremobility/l/s;->f:Lcom/coremobility/h/u;

    invoke-virtual {v2, v3, v0, v1}, Lcom/coremobility/h/u;->a(ILjava/lang/String;Lcom/coremobility/f/b;)I

    goto/16 :goto_24

    :pswitch_114
    new-instance v0, Ljava/lang/String;

    invoke-direct {p0}, Lcom/coremobility/l/s;->l()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/coremobility/l/s;->l:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unsub for mdn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/coremobility/l/s;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v8, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/l/s;->h:Lcom/coremobility/l/v;

    iget-object v1, p0, Lcom/coremobility/l/s;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/coremobility/l/v;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coremobility/l/s;->b:Lcom/coremobility/integration/a/a;

    const/16 v1, 0x3670

    invoke-virtual {v0, v1, v7, v7}, Lcom/coremobility/integration/a/a;->a(III)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/coremobility/l/s;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "unsubscribe"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "planCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Delete  subscription resource="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v8, v2, v3}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Delete  subscription body="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v8, v2, v3}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    new-instance v2, Lcom/coremobility/f/b;

    const/16 v3, 0xe

    invoke-direct {v2, v3}, Lcom/coremobility/f/b;-><init>(I)V

    iget-object v3, p0, Lcom/coremobility/l/s;->f:Lcom/coremobility/h/u;

    const/4 v4, 0x4

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v3, v4, v1, v0, v2}, Lcom/coremobility/h/u;->a(ILjava/lang/String;[BLcom/coremobility/f/b;)I

    goto/16 :goto_24

    :pswitch_1bf
    new-instance v0, Ljava/lang/String;

    invoke-direct {p0}, Lcom/coremobility/l/s;->l()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/coremobility/l/s;->l:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sending subscription for mdn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/coremobility/l/s;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v8, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/l/s;->h:Lcom/coremobility/l/v;

    iget-object v1, p0, Lcom/coremobility/l/s;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/coremobility/l/v;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coremobility/l/s;->b:Lcom/coremobility/integration/a/a;

    const/16 v1, 0x3704

    const-string v2, ""

    invoke-virtual {v0, v1, v7, v2}, Lcom/coremobility/integration/a/a;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/coremobility/l/s;->b:Lcom/coremobility/integration/a/a;

    const/16 v2, 0x3703

    const-string v3, ""

    invoke-virtual {v0, v2, v7, v3}, Lcom/coremobility/integration/a/a;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/coremobility/l/s;->b:Lcom/coremobility/integration/a/a;

    const/16 v3, 0x3670

    invoke-virtual {v2, v3, v7, v7}, Lcom/coremobility/integration/a/a;->a(III)I

    move-result v2

    iget-object v3, p0, Lcom/coremobility/l/s;->b:Lcom/coremobility/integration/a/a;

    const/16 v4, 0x3640

    invoke-virtual {v3, v4, v7, v7}, Lcom/coremobility/integration/a/a;->a(III)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/coremobility/l/s;->l:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "subscribe"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Lcom/coremobility/j/r;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2c7

    const-string v0, ""

    :goto_238
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Lcom/coremobility/j/r;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e2

    const-string v0, ""

    :goto_249
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "planCode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "archiveMode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "put subscription resource="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v8, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "put subscription body="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v8, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Lcom/coremobility/f/b;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Lcom/coremobility/f/b;-><init>(I)V

    iget-object v2, p0, Lcom/coremobility/l/s;->f:Lcom/coremobility/h/u;

    const/4 v3, 0x3

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/coremobility/h/u;->a(ILjava/lang/String;[BLcom/coremobility/f/b;)I

    goto/16 :goto_24

    :cond_2c7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fromName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "&"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_238

    :cond_2e2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "email="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_249

    :pswitch_2fd
    new-instance v0, Ljava/lang/String;

    invoke-direct {p0}, Lcom/coremobility/l/s;->l()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/coremobility/l/s;->l:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get mini svc for mdn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/coremobility/l/s;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v8, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/l/s;->h:Lcom/coremobility/l/v;

    iget-object v1, p0, Lcom/coremobility/l/s;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/coremobility/l/v;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coremobility/l/s;->b:Lcom/coremobility/integration/a/a;

    const/16 v1, 0x11

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v7, v2}, Lcom/coremobility/integration/a/a;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "service/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Get mini service resource="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v8, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Lcom/coremobility/f/b;

    const/16 v2, 0x13

    invoke-direct {v1, v2}, Lcom/coremobility/f/b;-><init>(I)V

    iget-object v2, p0, Lcom/coremobility/l/s;->f:Lcom/coremobility/h/u;

    const/4 v3, 0x6

    invoke-virtual {v2, v3, v0, v1}, Lcom/coremobility/h/u;->a(ILjava/lang/String;Lcom/coremobility/f/b;)I

    goto/16 :goto_24

    :pswitch_372
    new-instance v0, Ljava/lang/String;

    invoke-direct {p0}, Lcom/coremobility/l/s;->l()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/coremobility/l/s;->l:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get plans list for mdn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/coremobility/l/s;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v8, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/l/s;->h:Lcom/coremobility/l/v;

    iget-object v1, p0, Lcom/coremobility/l/s;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/coremobility/l/v;->d(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/coremobility/l/s;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "plans"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get plans info resource="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v8, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Lcom/coremobility/f/b;

    const/16 v2, 0x11

    invoke-direct {v1, v2}, Lcom/coremobility/f/b;-><init>(I)V

    iget-object v2, p0, Lcom/coremobility/l/s;->f:Lcom/coremobility/h/u;

    const/16 v3, 0xa

    invoke-virtual {v2, v3, v0, v1}, Lcom/coremobility/h/u;->a(ILjava/lang/String;Lcom/coremobility/f/b;)I

    goto/16 :goto_24

    :pswitch_3e7
    new-instance v0, Ljava/lang/String;

    invoke-direct {p0}, Lcom/coremobility/l/s;->l()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/coremobility/l/s;->l:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "internal get preferences for mdn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/coremobility/l/s;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v8, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/coremobility/l/s;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "preferences"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get preferences resource="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v8, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Lcom/coremobility/f/b;

    invoke-direct {v1, v6}, Lcom/coremobility/f/b;-><init>(I)V

    iget-object v2, p0, Lcom/coremobility/l/s;->f:Lcom/coremobility/h/u;

    const/16 v3, 0xb

    invoke-virtual {v2, v3, v0, v1}, Lcom/coremobility/h/u;->a(ILjava/lang/String;Lcom/coremobility/f/b;)I

    goto/16 :goto_24

    :pswitch_453
    new-instance v0, Ljava/lang/String;

    invoke-direct {p0}, Lcom/coremobility/l/s;->l()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/coremobility/l/s;->l:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "internal sending preferences for mdn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/coremobility/l/s;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v8, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/l/s;->h:Lcom/coremobility/l/v;

    iget-object v1, p0, Lcom/coremobility/l/s;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/coremobility/l/v;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coremobility/l/s;->h:Lcom/coremobility/l/v;

    invoke-virtual {v0, v9}, Lcom/coremobility/l/v;->a(Z)V

    iget-object v0, p0, Lcom/coremobility/l/s;->h:Lcom/coremobility/l/v;

    invoke-virtual {v0}, Lcom/coremobility/l/v;->j()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/coremobility/l/s;->h:Lcom/coremobility/l/v;

    invoke-virtual {v0}, Lcom/coremobility/l/v;->g()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/coremobility/l/s;->b:Lcom/coremobility/integration/a/a;

    const/16 v3, 0x3640

    invoke-virtual {v2, v3, v7, v7}, Lcom/coremobility/integration/a/a;->a(III)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/coremobility/l/s;->l:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "preferences"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set preferences resource="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v8, v4, v5}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/coremobility/j/r;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_537

    const-string v0, ""

    :goto_4d9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/coremobility/j/r;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_551

    const-string v0, ""

    :goto_4ea
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "archiveMode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set preferences body="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v8, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Lcom/coremobility/f/b;

    invoke-direct {v1, v6}, Lcom/coremobility/f/b;-><init>(I)V

    iget-object v2, p0, Lcom/coremobility/l/s;->f:Lcom/coremobility/h/u;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v2, v6, v3, v0, v1}, Lcom/coremobility/h/u;->a(ILjava/lang/String;[BLcom/coremobility/f/b;)I

    goto/16 :goto_24

    :cond_537
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fromName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "&"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4d9

    :cond_551
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "email="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4ea

    :pswitch_56b
    const/16 v1, 0x3702

    invoke-virtual {v0, v1}, Lcom/coremobility/integration/a/a;->c(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3650

    invoke-virtual {v0, v2, v7, v7}, Lcom/coremobility/integration/a/a;->a(III)I

    move-result v0

    new-instance v2, Ljava/lang/String;

    invoke-direct {p0}, Lcom/coremobility/l/s;->l()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/coremobility/l/s;->l:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "post greeting for mdn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/coremobility/l/s;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v8, v2, v3}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/coremobility/l/s;->h:Lcom/coremobility/l/v;

    iget-object v3, p0, Lcom/coremobility/l/s;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/coremobility/l/v;->d(Ljava/lang/String;)V

    new-instance v2, Lcom/coremobility/integration/h;

    invoke-direct {v2}, Lcom/coremobility/integration/h;-><init>()V

    new-instance v3, Lcom/coremobility/integration/r;

    invoke-direct {v3}, Lcom/coremobility/integration/r;-><init>()V

    invoke-static {v1, v2}, Lcom/coremobility/integration/file/a;->a(Ljava/lang/String;Lcom/coremobility/integration/h;)I

    move-result v4

    if-nez v4, :cond_24

    invoke-static {v2, v3}, Lcom/coremobility/integration/file/a;->b(Lcom/coremobility/integration/h;Lcom/coremobility/integration/r;)I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AudioFilename: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "File size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Lcom/coremobility/integration/r;->a:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v8, v4, v5}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    iget v4, v3, Lcom/coremobility/integration/r;->a:I

    new-array v4, v4, [B

    invoke-static {v2, v4, v3}, Lcom/coremobility/integration/file/a;->c(Lcom/coremobility/integration/h;[BLcom/coremobility/integration/r;)I

    move-result v5

    if-eqz v5, :cond_601

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error read file "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v8, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/coremobility/integration/file/a;->a(Lcom/coremobility/integration/h;)I

    goto/16 :goto_24

    :cond_601
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AudioFilename: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "File size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v3, v3, Lcom/coremobility/integration/r;->a:I

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v8, v3, v5}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/coremobility/integration/file/a;->a(Lcom/coremobility/integration/h;)I

    new-instance v2, Lcom/coremobility/h/ab;

    invoke-direct {v2}, Lcom/coremobility/h/ab;-><init>()V

    array-length v3, v4

    iput v3, v2, Lcom/coremobility/h/ab;->b:I

    if-ne v0, v9, :cond_67e

    const-string v0, "greet"

    :goto_634
    iput-object v0, v2, Lcom/coremobility/h/ab;->a:Ljava/lang/String;

    iput-object v1, v2, Lcom/coremobility/h/ab;->c:Ljava/lang/String;

    iput-object v4, v2, Lcom/coremobility/h/ab;->d:[B

    array-length v0, v4

    if-lez v0, :cond_24

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "subscription/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/coremobility/l/s;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "post greeting resrouce="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v8, v1, v3}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Lcom/coremobility/f/b;

    const/16 v3, 0xd

    invoke-direct {v1, v3}, Lcom/coremobility/f/b;-><init>(I)V

    iget-object v3, p0, Lcom/coremobility/l/s;->f:Lcom/coremobility/h/u;

    invoke-virtual {v3, v0, v2, v1}, Lcom/coremobility/h/u;->a(Ljava/lang/String;Lcom/coremobility/h/ab;Lcom/coremobility/f/b;)I

    goto/16 :goto_24

    :cond_67e
    const-string v0, "unavail"

    goto :goto_634

    :pswitch_681
    new-instance v0, Ljava/lang/String;

    invoke-direct {p0}, Lcom/coremobility/l/s;->l()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/coremobility/l/s;->l:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sending updated rating for mdn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/coremobility/l/s;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v8, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/l/s;->h:Lcom/coremobility/l/v;

    iget-object v1, p0, Lcom/coremobility/l/s;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/coremobility/l/v;->d(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/coremobility/l/s;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "consent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v0, "eula="

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/coremobility/l/s;->o:Z

    if-eqz v0, :cond_72b

    const-string v0, "true"

    :goto_6df
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "post consent url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v8, v2, v3}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "post consent body="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v8, v2, v3}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    new-instance v2, Lcom/coremobility/f/b;

    const/16 v3, 0x14

    invoke-direct {v2, v3}, Lcom/coremobility/f/b;-><init>(I)V

    iget-object v3, p0, Lcom/coremobility/l/s;->f:Lcom/coremobility/h/u;

    const/16 v4, 0xd

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v3, v4, v1, v0, v2}, Lcom/coremobility/h/u;->a(ILjava/lang/String;[BLcom/coremobility/f/b;)I

    goto/16 :goto_24

    :cond_72b
    const-string v0, "false"

    goto :goto_6df

    :pswitch_data_72e
    .packed-switch 0x1
        :pswitch_25
        :pswitch_a1
        :pswitch_1bf
        :pswitch_114
        :pswitch_56b
        :pswitch_2fd
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_372
        :pswitch_3e7
        :pswitch_453
        :pswitch_681
    .end packed-switch
.end method

.method private k()V
    .registers 5

    new-instance v0, Lcom/coremobility/l/n;

    sget-object v1, Lcom/coremobility/l/s;->e:Lcom/coremobility/h/c;

    invoke-virtual {v1}, Lcom/coremobility/h/c;->b()I

    move-result v1

    sget-object v2, Lcom/coremobility/l/s;->e:Lcom/coremobility/h/c;

    iget v2, v2, Lcom/coremobility/h/c;->b:I

    iget-object v3, p0, Lcom/coremobility/l/s;->c:Lcom/coremobility/h/b;

    invoke-virtual {v3}, Lcom/coremobility/h/b;->f()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/coremobility/l/n;-><init>(III)V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    sget-object v0, Lcom/coremobility/l/s;->e:Lcom/coremobility/h/c;

    invoke-virtual {v0}, Lcom/coremobility/h/c;->b()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_22

    :cond_21
    :goto_21
    return-void

    :cond_22
    const v0, 0x3b0001

    invoke-static {v0, p0}, Lcom/coremobility/g/b;->b(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/l/s;->c:Lcom/coremobility/h/b;

    invoke-virtual {v0}, Lcom/coremobility/h/b;->f()I

    move-result v0

    const/16 v1, 0x190

    if-eq v0, v1, :cond_3a

    const/16 v1, 0x193

    if-eq v0, v1, :cond_3a

    const/16 v1, 0x194

    if-ne v0, v1, :cond_3d

    :cond_3a
    invoke-static {}, Lcom/coremobility/integration/a/a;->h()V

    :cond_3d
    sget-object v0, Lcom/coremobility/l/s;->e:Lcom/coremobility/h/c;

    iget v0, v0, Lcom/coremobility/h/c;->b:I

    invoke-direct {p0, v0}, Lcom/coremobility/l/s;->b(I)V

    sget-object v0, Lcom/coremobility/l/s;->e:Lcom/coremobility/h/c;

    iget v0, v0, Lcom/coremobility/h/c;->b:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_21

    invoke-direct {p0}, Lcom/coremobility/l/s;->n()Z

    goto :goto_21
.end method

.method private l()Ljava/lang/String;
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/coremobility/l/s;->b:Lcom/coremobility/integration/a/a;

    const-string v1, ""

    invoke-virtual {v0, v2, v2, v1}, Lcom/coremobility/integration/a/a;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xa

    if-le v1, v2, :cond_1b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0xa

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_1b
    return-object v0
.end method

.method private m()V
    .registers 3

    iget-object v0, p0, Lcom/coremobility/l/s;->m:Lcom/coremobility/l/t;

    invoke-virtual {v0}, Lcom/coremobility/l/t;->size()I

    move-result v0

    if-nez v0, :cond_f

    sget-object v0, Lcom/coremobility/l/s;->e:Lcom/coremobility/h/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coremobility/h/c;->a(I)V

    :cond_e
    :goto_e
    return-void

    :cond_f
    sget-object v0, Lcom/coremobility/l/s;->e:Lcom/coremobility/h/c;

    invoke-virtual {v0}, Lcom/coremobility/h/c;->b()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_e

    sget-object v0, Lcom/coremobility/l/s;->e:Lcom/coremobility/h/c;

    invoke-virtual {v0}, Lcom/coremobility/h/c;->b()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_e

    iget-object v0, p0, Lcom/coremobility/l/s;->m:Lcom/coremobility/l/t;

    invoke-virtual {v0}, Lcom/coremobility/l/t;->firstElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/l/u;

    iget v1, v0, Lcom/coremobility/l/u;->a:I

    invoke-direct {p0, v1}, Lcom/coremobility/l/s;->b(I)V

    iget v0, v0, Lcom/coremobility/l/u;->a:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_38

    invoke-direct {p0}, Lcom/coremobility/l/s;->n()Z

    goto :goto_e

    :cond_38
    iget-object v0, p0, Lcom/coremobility/l/s;->m:Lcom/coremobility/l/t;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coremobility/l/t;->removeElementAt(I)V

    goto :goto_e
.end method

.method private n()Z
    .registers 5

    const/4 v2, 0x0

    move v1, v2

    :goto_2
    iget-object v0, p0, Lcom/coremobility/l/s;->m:Lcom/coremobility/l/t;

    invoke-virtual {v0}, Lcom/coremobility/l/t;->size()I

    move-result v0

    if-ge v1, v0, :cond_23

    iget-object v0, p0, Lcom/coremobility/l/s;->m:Lcom/coremobility/l/t;

    invoke-virtual {v0, v1}, Lcom/coremobility/l/t;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/l/u;

    iget v0, v0, Lcom/coremobility/l/u;->a:I

    const/16 v3, 0x9

    if-ne v0, v3, :cond_1f

    iget-object v0, p0, Lcom/coremobility/l/s;->m:Lcom/coremobility/l/t;

    invoke-virtual {v0, v1}, Lcom/coremobility/l/t;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    :cond_1f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_23
    return v2
.end method


# virtual methods
.method public final a()V
    .registers 3

    const/4 v0, 0x0

    invoke-super {p0}, Lcom/coremobility/h/a;->a()V

    iput-boolean v0, p0, Lcom/coremobility/l/s;->j:Z

    iput-boolean v0, p0, Lcom/coremobility/l/s;->k:Z

    invoke-static {}, Lcom/coremobility/l/v;->b()Lcom/coremobility/l/v;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/l/s;->h:Lcom/coremobility/l/v;

    invoke-static {}, Lcom/coremobility/g/b;->a()Lcom/coremobility/g/b;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/l/s;->g:Lcom/coremobility/g/b;

    iget-object v0, p0, Lcom/coremobility/l/s;->g:Lcom/coremobility/g/b;

    const/high16 v1, 0x3b

    invoke-virtual {v0, v1, p0}, Lcom/coremobility/g/b;->a(ILcom/coremobility/g/a;)V

    sget-object v0, Lcom/coremobility/l/s;->e:Lcom/coremobility/h/c;

    invoke-virtual {v0}, Lcom/coremobility/h/c;->a()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/coremobility/l/s;->a:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/coremobility/l/s;->n:Ljava/util/Vector;

    iget-object v0, p0, Lcom/coremobility/l/s;->f:Lcom/coremobility/h/u;

    invoke-virtual {v0, p0}, Lcom/coremobility/h/u;->a(Lcom/coremobility/h/a;)I

    invoke-static {}, Lcom/coremobility/integration/file/a;->a()Lcom/coremobility/integration/file/a;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/l/s;->i:Lcom/coremobility/integration/file/a;

    return-void
.end method

.method public final a(I)V
    .registers 5

    const v2, 0x3b0001

    const/4 v1, 0x3

    sget-object v0, Lcom/coremobility/l/s;->e:Lcom/coremobility/h/c;

    invoke-virtual {v0}, Lcom/coremobility/h/c;->b()I

    move-result v0

    if-ne v0, v1, :cond_f

    invoke-static {v2, p0}, Lcom/coremobility/g/b;->b(ILjava/lang/Object;)V

    :cond_f
    sget-object v0, Lcom/coremobility/l/s;->e:Lcom/coremobility/h/c;

    invoke-virtual {v0, v1}, Lcom/coremobility/h/c;->a(I)V

    if-gtz p1, :cond_1a

    invoke-direct {p0}, Lcom/coremobility/l/s;->k()V

    :goto_19
    return-void

    :cond_1a
    iget-object v0, p0, Lcom/coremobility/l/s;->g:Lcom/coremobility/g/b;

    invoke-virtual {v0, v2, p1, p0}, Lcom/coremobility/g/b;->a(IILjava/lang/Object;)V

    goto :goto_19
.end method

.method public final a(IILjava/lang/String;I)V
    .registers 13

    const/4 v7, 0x4

    const/4 v3, 0x2

    const/4 v1, 0x1

    const/16 v6, 0x31

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/coremobility/l/s;->l()Ljava/lang/String;

    move-result-object v0

    packed-switch p1, :pswitch_data_18e

    :cond_d
    :goto_d
    return-void

    :pswitch_e
    if-eq p2, v3, :cond_15

    const/4 v3, 0x3

    if-eq p2, v3, :cond_15

    if-ne p2, v7, :cond_41

    :cond_15
    iget-object v3, p0, Lcom/coremobility/l/s;->l:Ljava/lang/String;

    if-eqz v3, :cond_41

    if-eqz v0, :cond_41

    iget-object v3, p0, Lcom/coremobility/l/s;->l:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_41

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/l/s;->l:Ljava/lang/String;

    const-string v0, "vtt mdn does not match for op %d"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v6, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_33
    :goto_33
    sget-object v0, Lcom/coremobility/l/s;->e:Lcom/coremobility/h/c;

    invoke-virtual {v0, v7}, Lcom/coremobility/h/c;->a(I)V

    iget-object v0, p0, Lcom/coremobility/l/s;->c:Lcom/coremobility/h/b;

    invoke-virtual {v0}, Lcom/coremobility/h/b;->d()V

    invoke-direct {p0}, Lcom/coremobility/l/s;->m()V

    goto :goto_d

    :cond_41
    packed-switch p2, :pswitch_data_196

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected Rest Operation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " returned content length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v6, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_33

    :pswitch_6b
    const-string v0, "get vtt subscription"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v6, v0, v3}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    if-eqz p3, :cond_7e

    move v0, v1

    :goto_75
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p0, Lcom/coremobility/l/s;->h:Lcom/coremobility/l/v;

    invoke-virtual {v0, p3}, Lcom/coremobility/l/v;->e(Ljava/lang/String;)V

    goto :goto_33

    :cond_7e
    move v0, v2

    goto :goto_75

    :pswitch_80
    const-string v0, "vtt subscription success"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v6, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/l/s;->h:Lcom/coremobility/l/v;

    invoke-virtual {v0, p3}, Lcom/coremobility/l/v;->e(Ljava/lang/String;)V

    goto :goto_33

    :pswitch_8d
    iget-object v0, p0, Lcom/coremobility/l/s;->h:Lcom/coremobility/l/v;

    invoke-virtual {v0}, Lcom/coremobility/l/v;->r()V

    goto :goto_33

    :pswitch_93
    const-string v0, "vtt got minimum service info"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v6, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_33

    :pswitch_9b
    iget-object v0, p0, Lcom/coremobility/l/s;->h:Lcom/coremobility/l/v;

    invoke-virtual {v0, p3}, Lcom/coremobility/l/v;->e(Ljava/lang/String;)V

    goto :goto_33

    :pswitch_a1
    const-string v0, "vtt got vms info"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v6, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/l/s;->h:Lcom/coremobility/l/v;

    invoke-virtual {v0, p3}, Lcom/coremobility/l/v;->e(Ljava/lang/String;)V

    goto :goto_33

    :pswitch_ae
    const-string v0, "Post Greeting successful."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v6, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/l/s;->h:Lcom/coremobility/l/v;

    invoke-virtual {v0}, Lcom/coremobility/l/v;->m()V

    goto/16 :goto_33

    :pswitch_bc
    iget-object v0, p0, Lcom/coremobility/l/s;->h:Lcom/coremobility/l/v;

    invoke-virtual {v0, p3}, Lcom/coremobility/l/v;->e(Ljava/lang/String;)V

    goto/16 :goto_33

    :pswitch_c3
    iget-object v0, p0, Lcom/coremobility/l/s;->h:Lcom/coremobility/l/v;

    invoke-virtual {v0}, Lcom/coremobility/l/v;->s()V

    goto/16 :goto_33

    :pswitch_ca
    iget-object v0, p0, Lcom/coremobility/l/s;->h:Lcom/coremobility/l/v;

    invoke-virtual {v0, p3}, Lcom/coremobility/l/v;->e(Ljava/lang/String;)V

    goto/16 :goto_33

    :pswitch_d1
    iget-object v0, p0, Lcom/coremobility/l/s;->m:Lcom/coremobility/l/t;

    invoke-virtual {v0}, Lcom/coremobility/l/t;->size()I

    move-result v4

    move v3, v2

    :goto_d8
    if-ge v3, v4, :cond_18a

    iget-object v0, p0, Lcom/coremobility/l/s;->m:Lcom/coremobility/l/t;

    invoke-virtual {v0, v3}, Lcom/coremobility/l/t;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/l/u;

    iget v0, v0, Lcom/coremobility/l/u;->a:I

    const/16 v5, 0xc

    if-ne v0, v5, :cond_fd

    :goto_e8
    if-nez v1, :cond_f4

    iget-object v0, p0, Lcom/coremobility/l/s;->h:Lcom/coremobility/l/v;

    invoke-virtual {v0, v2}, Lcom/coremobility/l/v;->a(Z)V

    iget-object v0, p0, Lcom/coremobility/l/s;->h:Lcom/coremobility/l/v;

    invoke-virtual {v0, p3}, Lcom/coremobility/l/v;->e(Ljava/lang/String;)V

    :cond_f4
    const-string v0, "Set preferences successful."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v6, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_33

    :cond_fd
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_d8

    :pswitch_101
    const-string v0, "Update rating successful."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v6, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/l/s;->h:Lcom/coremobility/l/v;

    invoke-virtual {v0, p3}, Lcom/coremobility/l/v;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coremobility/l/s;->h:Lcom/coremobility/l/v;

    iget-object v1, p0, Lcom/coremobility/l/s;->n:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Lcom/coremobility/l/v;->a(Ljava/util/Vector;)V

    :goto_114
    iget-object v0, p0, Lcom/coremobility/l/s;->n:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_132

    iget-object v0, p0, Lcom/coremobility/l/s;->n:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/l/y;

    iget-boolean v0, v0, Lcom/coremobility/l/y;->b:Z

    if-eqz v0, :cond_12f

    iget-object v0, p0, Lcom/coremobility/l/s;->n:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    :cond_12f
    add-int/lit8 v2, v2, 0x1

    goto :goto_114

    :cond_132
    iget-object v0, p0, Lcom/coremobility/l/s;->n:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_33

    iget-object v0, p0, Lcom/coremobility/l/s;->m:Lcom/coremobility/l/t;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/coremobility/l/t;->b(I)Z

    move-result v0

    if-nez v0, :cond_33

    iget-object v0, p0, Lcom/coremobility/l/s;->m:Lcom/coremobility/l/t;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/coremobility/l/t;->a(I)Lcom/coremobility/l/u;

    goto/16 :goto_33

    :pswitch_14d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Post data consent ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " returned OK, content length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v6, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_33

    :pswitch_175
    if-ne p2, v3, :cond_17d

    iget-object v0, p0, Lcom/coremobility/l/s;->h:Lcom/coremobility/l/v;

    int-to-long v2, p4

    invoke-virtual {v0, v2, v3}, Lcom/coremobility/l/v;->a(J)V

    :cond_17d
    if-eq p4, v1, :cond_d

    sget-object v0, Lcom/coremobility/l/s;->e:Lcom/coremobility/h/c;

    iput p2, v0, Lcom/coremobility/h/c;->b:I

    iget-object v0, p0, Lcom/coremobility/l/s;->c:Lcom/coremobility/h/b;

    invoke-virtual {v0, p4}, Lcom/coremobility/h/b;->b(I)V

    goto/16 :goto_d

    :cond_18a
    move v1, v2

    goto/16 :goto_e8

    nop

    :pswitch_data_18e
    .packed-switch 0x3a0006
        :pswitch_e
        :pswitch_175
    .end packed-switch

    :pswitch_data_196
    .packed-switch 0x1
        :pswitch_a1
        :pswitch_6b
        :pswitch_80
        :pswitch_bc
        :pswitch_ae
        :pswitch_93
        :pswitch_8d
        :pswitch_c3
        :pswitch_101
        :pswitch_9b
        :pswitch_ca
        :pswitch_d1
        :pswitch_14d
    .end packed-switch
.end method

.method public final a(ILjava/lang/Object;II)V
    .registers 12

    const/4 v1, 0x2

    const v6, 0x3b0001

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    sparse-switch p1, :sswitch_data_e6

    :cond_a
    :goto_a
    :sswitch_a
    if-eq p2, p0, :cond_cf

    :cond_c
    :goto_c
    return-void

    :sswitch_d
    if-eqz p3, :cond_15

    sget-object v0, Lcom/coremobility/h/aa;->i:[I

    aget v0, v0, v3

    if-ne p3, v0, :cond_a

    :cond_15
    if-ne p4, v4, :cond_26

    iget-boolean v0, p0, Lcom/coremobility/l/s;->j:Z

    if-nez v0, :cond_26

    iput-boolean v4, p0, Lcom/coremobility/l/s;->j:Z

    const/16 v0, 0x31

    const-string v1, "CM+VTT 1st net unblk"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_26
    iget-boolean v0, p0, Lcom/coremobility/l/s;->k:Z

    if-eqz v0, :cond_a

    sget-object v0, Lcom/coremobility/l/s;->e:Lcom/coremobility/h/c;

    invoke-virtual {v0}, Lcom/coremobility/h/c;->b()I

    move-result v0

    if-nez v0, :cond_35

    invoke-direct {p0}, Lcom/coremobility/l/s;->m()V

    :cond_35
    sget-object v0, Lcom/coremobility/l/s;->e:Lcom/coremobility/h/c;

    invoke-virtual {v0}, Lcom/coremobility/h/c;->b()I

    move-result v0

    if-ne v0, v5, :cond_a

    invoke-static {}, Lcom/coremobility/f/m;->a()Lcom/coremobility/f/m;

    sget-object v0, Lcom/coremobility/h/aa;->i:[I

    aget v0, v0, v3

    iget-object v1, p0, Lcom/coremobility/l/s;->c:Lcom/coremobility/h/b;

    invoke-virtual {v1}, Lcom/coremobility/h/b;->f()I

    move-result v1

    invoke-static {v0, v1}, Lcom/coremobility/f/m;->b(II)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0x1c

    const-string v1, "CM+VTT net-unblk retry send"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v6, p0}, Lcom/coremobility/g/b;->b(ILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/coremobility/l/s;->k()V

    goto :goto_a

    :sswitch_60
    if-eqz p3, :cond_68

    sget-object v0, Lcom/coremobility/h/aa;->i:[I

    aget v0, v0, v3

    if-ne v0, p3, :cond_a

    :cond_68
    iget-boolean v0, p0, Lcom/coremobility/l/s;->k:Z

    if-eqz v0, :cond_a

    sget-object v0, Lcom/coremobility/l/s;->e:Lcom/coremobility/h/c;

    invoke-virtual {v0}, Lcom/coremobility/h/c;->b()I

    move-result v0

    if-nez v0, :cond_77

    invoke-direct {p0}, Lcom/coremobility/l/s;->m()V

    :cond_77
    iget-object v0, p0, Lcom/coremobility/l/s;->c:Lcom/coremobility/h/b;

    invoke-virtual {v0}, Lcom/coremobility/h/b;->f()I

    move-result v0

    packed-switch v0, :pswitch_data_f8

    goto :goto_a

    :pswitch_81
    sget-object v0, Lcom/coremobility/l/s;->e:Lcom/coremobility/h/c;

    invoke-virtual {v0}, Lcom/coremobility/h/c;->b()I

    move-result v0

    if-ne v0, v5, :cond_a

    const/16 v0, 0x31

    const-string v1, "CM+VTT net-connectivity retry send"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v6, p0}, Lcom/coremobility/g/b;->b(ILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/coremobility/l/s;->k()V

    goto/16 :goto_a

    :sswitch_9a
    if-ne p3, v1, :cond_a

    const/16 v0, 0x1840

    if-ne p4, v0, :cond_a

    new-instance v0, Lcom/coremobility/l/b;

    invoke-direct {v0}, Lcom/coremobility/l/b;-><init>()V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    sget-object v0, Lcom/coremobility/l/s;->e:Lcom/coremobility/h/c;

    invoke-virtual {v0}, Lcom/coremobility/h/c;->b()I

    move-result v0

    if-ne v0, v5, :cond_c0

    iget-object v0, p0, Lcom/coremobility/l/s;->c:Lcom/coremobility/h/b;

    invoke-virtual {v0}, Lcom/coremobility/h/b;->g()Z

    move-result v0

    if-eqz v0, :cond_c0

    invoke-static {v6, p0}, Lcom/coremobility/g/b;->b(ILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/coremobility/l/s;->k()V

    goto/16 :goto_a

    :cond_c0
    sget-object v0, Lcom/coremobility/l/s;->e:Lcom/coremobility/h/c;

    invoke-virtual {v0}, Lcom/coremobility/h/c;->b()I

    move-result v0

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lcom/coremobility/l/s;->c:Lcom/coremobility/h/b;

    invoke-virtual {v0}, Lcom/coremobility/h/b;->e()V

    goto/16 :goto_a

    :cond_cf
    packed-switch p1, :pswitch_data_fe

    goto/16 :goto_c

    :pswitch_d4
    invoke-direct {p0}, Lcom/coremobility/l/s;->k()V

    goto/16 :goto_c

    :pswitch_d9
    sget-object v0, Lcom/coremobility/l/s;->e:Lcom/coremobility/h/c;

    invoke-virtual {v0}, Lcom/coremobility/h/c;->b()I

    move-result v0

    if-ne v0, v4, :cond_c

    invoke-direct {p0}, Lcom/coremobility/l/s;->m()V

    goto/16 :goto_c

    :sswitch_data_e6
    .sparse-switch
        0xc -> :sswitch_d
        0xd -> :sswitch_60
        0xe -> :sswitch_a
        0x35 -> :sswitch_9a
    .end sparse-switch

    :pswitch_data_f8
    .packed-switch 0x1e
        :pswitch_81
    .end packed-switch

    :pswitch_data_fe
    .packed-switch 0x3b0001
        :pswitch_d4
        :pswitch_d9
    .end packed-switch
.end method

.method public final a(Z)V
    .registers 6

    const v3, 0x3b0002

    const/16 v2, 0xd

    const/4 v1, 0x0

    iput-boolean p1, p0, Lcom/coremobility/l/s;->o:Z

    iget-object v0, p0, Lcom/coremobility/l/s;->m:Lcom/coremobility/l/t;

    invoke-virtual {v0, v2}, Lcom/coremobility/l/t;->b(I)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/coremobility/l/s;->m:Lcom/coremobility/l/t;

    invoke-virtual {v0, v2}, Lcom/coremobility/l/t;->a(I)Lcom/coremobility/l/u;

    :cond_15
    invoke-static {v3, p0}, Lcom/coremobility/g/b;->a(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/l/s;->g:Lcom/coremobility/g/b;

    invoke-virtual {v0, v3, p0, v1, v1}, Lcom/coremobility/g/b;->a(ILjava/lang/Object;II)V

    return-void
.end method

.method public final b()V
    .registers 2

    const/high16 v0, 0x3b

    invoke-static {v0, p0}, Lcom/coremobility/g/b;->b(ILcom/coremobility/g/a;)V

    iget-object v0, p0, Lcom/coremobility/l/s;->f:Lcom/coremobility/h/u;

    invoke-virtual {v0, p0}, Lcom/coremobility/h/u;->b(Lcom/coremobility/h/a;)I

    return-void
.end method

.method public final c()V
    .registers 4

    const/4 v2, 0x3

    iget-object v0, p0, Lcom/coremobility/l/s;->m:Lcom/coremobility/l/t;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/coremobility/l/t;->c(I)V

    iget-object v0, p0, Lcom/coremobility/l/s;->m:Lcom/coremobility/l/t;

    invoke-virtual {v0, v2}, Lcom/coremobility/l/t;->b(I)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_f
    :goto_f
    return-void

    :cond_10
    new-instance v0, Lcom/coremobility/l/q;

    invoke-direct {v0}, Lcom/coremobility/l/q;-><init>()V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    iget-object v0, p0, Lcom/coremobility/l/s;->m:Lcom/coremobility/l/t;

    invoke-virtual {v0, v2}, Lcom/coremobility/l/t;->a(I)Lcom/coremobility/l/u;

    sget-object v0, Lcom/coremobility/l/s;->e:Lcom/coremobility/h/c;

    invoke-virtual {v0}, Lcom/coremobility/h/c;->b()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    invoke-direct {p0}, Lcom/coremobility/l/s;->m()V

    goto :goto_f
.end method

.method public final d()V
    .registers 3

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/coremobility/l/s;->m:Lcom/coremobility/l/t;

    invoke-virtual {v0, v1}, Lcom/coremobility/l/t;->b(I)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    :goto_9
    return-void

    :cond_a
    new-instance v0, Lcom/coremobility/l/g;

    invoke-direct {v0}, Lcom/coremobility/l/g;-><init>()V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    iget-object v0, p0, Lcom/coremobility/l/s;->m:Lcom/coremobility/l/t;

    invoke-virtual {v0, v1}, Lcom/coremobility/l/t;->a(I)Lcom/coremobility/l/u;

    sget-object v0, Lcom/coremobility/l/s;->e:Lcom/coremobility/h/c;

    invoke-virtual {v0}, Lcom/coremobility/h/c;->b()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    invoke-direct {p0}, Lcom/coremobility/l/s;->m()V

    goto :goto_9
.end method

.method public final e()V
    .registers 3

    const/16 v1, 0xa

    iget-object v0, p0, Lcom/coremobility/l/s;->m:Lcom/coremobility/l/t;

    invoke-virtual {v0, v1}, Lcom/coremobility/l/t;->b(I)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    new-instance v0, Lcom/coremobility/l/e;

    invoke-direct {v0}, Lcom/coremobility/l/e;-><init>()V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    iget-object v0, p0, Lcom/coremobility/l/s;->m:Lcom/coremobility/l/t;

    invoke-virtual {v0, v1}, Lcom/coremobility/l/t;->a(I)Lcom/coremobility/l/u;

    sget-object v0, Lcom/coremobility/l/s;->e:Lcom/coremobility/h/c;

    invoke-virtual {v0}, Lcom/coremobility/h/c;->b()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    invoke-direct {p0}, Lcom/coremobility/l/s;->m()V

    goto :goto_a
.end method

.method public final f()V
    .registers 4

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/coremobility/l/s;->m:Lcom/coremobility/l/t;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/coremobility/l/t;->c(I)V

    iget-object v0, p0, Lcom/coremobility/l/s;->m:Lcom/coremobility/l/t;

    invoke-virtual {v0, v2}, Lcom/coremobility/l/t;->b(I)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_f
    :goto_f
    return-void

    :cond_10
    new-instance v0, Lcom/coremobility/l/c;

    invoke-direct {v0}, Lcom/coremobility/l/c;-><init>()V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    iget-object v0, p0, Lcom/coremobility/l/s;->m:Lcom/coremobility/l/t;

    invoke-virtual {v0, v2}, Lcom/coremobility/l/t;->a(I)Lcom/coremobility/l/u;

    sget-object v0, Lcom/coremobility/l/s;->e:Lcom/coremobility/h/c;

    invoke-virtual {v0}, Lcom/coremobility/h/c;->b()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    invoke-direct {p0}, Lcom/coremobility/l/s;->m()V

    goto :goto_f
.end method

.method public final g()Z
    .registers 4

    const/4 v2, 0x5

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/coremobility/l/s;->m:Lcom/coremobility/l/t;

    invoke-virtual {v0, v2}, Lcom/coremobility/l/t;->b(I)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    :goto_a
    return v1

    :cond_b
    new-instance v0, Lcom/coremobility/l/m;

    invoke-direct {v0}, Lcom/coremobility/l/m;-><init>()V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    iget-object v0, p0, Lcom/coremobility/l/s;->m:Lcom/coremobility/l/t;

    invoke-virtual {v0, v2}, Lcom/coremobility/l/t;->a(I)Lcom/coremobility/l/u;

    sget-object v0, Lcom/coremobility/l/s;->e:Lcom/coremobility/h/c;

    invoke-virtual {v0}, Lcom/coremobility/h/c;->b()I

    move-result v0

    if-ne v0, v1, :cond_a

    invoke-direct {p0}, Lcom/coremobility/l/s;->m()V

    goto :goto_a
.end method

.method public final h()V
    .registers 5

    const/16 v3, 0xb

    const/16 v0, 0x31

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Get preferences for mdn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/coremobility/l/s;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/l/s;->m:Lcom/coremobility/l/t;

    invoke-virtual {v0, v3}, Lcom/coremobility/l/t;->b(I)Z

    move-result v0

    if-eqz v0, :cond_2a

    :cond_29
    :goto_29
    return-void

    :cond_2a
    new-instance v0, Lcom/coremobility/l/f;

    invoke-direct {v0}, Lcom/coremobility/l/f;-><init>()V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    iget-object v0, p0, Lcom/coremobility/l/s;->m:Lcom/coremobility/l/t;

    invoke-virtual {v0, v3}, Lcom/coremobility/l/t;->a(I)Lcom/coremobility/l/u;

    sget-object v0, Lcom/coremobility/l/s;->e:Lcom/coremobility/h/c;

    invoke-virtual {v0}, Lcom/coremobility/h/c;->b()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_29

    invoke-direct {p0}, Lcom/coremobility/l/s;->m()V

    goto :goto_29
.end method

.method public final i()V
    .registers 5

    const/16 v3, 0xc

    const/16 v0, 0x31

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set preferences for mdn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/coremobility/l/s;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/l/s;->m:Lcom/coremobility/l/t;

    invoke-virtual {v0, v3}, Lcom/coremobility/l/t;->b(I)Z

    move-result v0

    if-eqz v0, :cond_2a

    :cond_29
    :goto_29
    return-void

    :cond_2a
    iget-object v0, p0, Lcom/coremobility/l/s;->m:Lcom/coremobility/l/t;

    invoke-virtual {v0, v3}, Lcom/coremobility/l/t;->a(I)Lcom/coremobility/l/u;

    sget-object v0, Lcom/coremobility/l/s;->e:Lcom/coremobility/h/c;

    invoke-virtual {v0}, Lcom/coremobility/h/c;->b()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_29

    invoke-direct {p0}, Lcom/coremobility/l/s;->m()V

    goto :goto_29
.end method

.method public final j()V
    .registers 3

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/coremobility/l/s;->k:Z

    if-nez v0, :cond_1b

    move v0, v1

    :goto_6
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    new-instance v0, Lcom/coremobility/l/p;

    invoke-direct {v0}, Lcom/coremobility/l/p;-><init>()V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    iput-boolean v1, p0, Lcom/coremobility/l/s;->k:Z

    iget-boolean v0, p0, Lcom/coremobility/l/s;->j:Z

    if-eqz v0, :cond_1a

    invoke-direct {p0}, Lcom/coremobility/l/s;->m()V

    :cond_1a
    return-void

    :cond_1b
    const/4 v0, 0x0

    goto :goto_6
.end method
