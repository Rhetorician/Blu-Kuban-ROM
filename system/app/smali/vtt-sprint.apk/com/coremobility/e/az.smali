.class public final Lcom/coremobility/e/az;
.super Lcom/coremobility/j/j;


# instance fields
.field final synthetic a:Lcom/coremobility/e/aw;


# direct methods
.method public constructor <init>(Lcom/coremobility/e/aw;)V
    .registers 3

    iput-object p1, p0, Lcom/coremobility/e/az;->a:Lcom/coremobility/e/aw;

    invoke-direct {p0}, Lcom/coremobility/j/j;-><init>()V

    new-instance v0, Lcom/coremobility/e/bb;

    invoke-direct {v0, p1}, Lcom/coremobility/e/bb;-><init>(Lcom/coremobility/e/aw;)V

    iput-object v0, p0, Lcom/coremobility/e/az;->c:Lcom/coremobility/j/k;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-object v0, p0, Lcom/coremobility/e/az;->a:Lcom/coremobility/e/aw;

    invoke-static {v0}, Lcom/coremobility/e/aw;->a(Lcom/coremobility/e/aw;)Lcom/coremobility/e/ax;

    move-result-object v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/coremobility/e/az;->a:Lcom/coremobility/e/aw;

    invoke-static {v0}, Lcom/coremobility/e/aw;->a(Lcom/coremobility/e/aw;)Lcom/coremobility/e/ax;

    move-result-object v1

    iget-object v0, p0, Lcom/coremobility/e/az;->a:Lcom/coremobility/e/aw;

    iget-object v0, v0, Lcom/coremobility/e/aw;->y:Lcom/coremobility/e/c;

    invoke-virtual {v0}, Lcom/coremobility/e/c;->g()Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/coremobility/e/az;->a:Lcom/coremobility/e/aw;

    iget-object v0, v0, Lcom/coremobility/e/aw;->z:Lcom/coremobility/e/bd;

    invoke-virtual {v0}, Lcom/coremobility/e/bd;->c()Z

    move-result v0

    if-nez v0, :cond_30

    const/4 v0, 0x1

    :goto_23
    invoke-virtual {v1, v0}, Lcom/coremobility/e/ax;->a(Z)V

    iget-object v0, p0, Lcom/coremobility/e/az;->a:Lcom/coremobility/e/aw;

    invoke-static {v0}, Lcom/coremobility/e/aw;->a(Lcom/coremobility/e/aw;)Lcom/coremobility/e/ax;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/e/ax;->e()V

    :cond_2f
    return-void

    :cond_30
    const/4 v0, 0x0

    goto :goto_23
.end method

.method public final a(I)V
    .registers 11

    const/4 v8, 0x3

    const/4 v5, 0x4

    const/4 v7, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lcom/coremobility/e/az;->d:I

    if-ne v2, v5, :cond_6d

    iget v2, p0, Lcom/coremobility/e/az;->d:I

    if-ne v2, v5, :cond_47

    :goto_d
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    if-gez p1, :cond_49

    iget-object v0, p0, Lcom/coremobility/e/az;->a:Lcom/coremobility/e/aw;

    invoke-static {v0}, Lcom/coremobility/e/aw;->a(Lcom/coremobility/e/aw;)Lcom/coremobility/e/ax;

    move-result-object v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/coremobility/e/az;->a:Lcom/coremobility/e/aw;

    invoke-static {v0}, Lcom/coremobility/e/aw;->a(Lcom/coremobility/e/aw;)Lcom/coremobility/e/ax;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/e/ax;->a()V

    :cond_23
    iget-object v0, p0, Lcom/coremobility/e/az;->b:Lcom/coremobility/j/h;

    invoke-virtual {v0}, Lcom/coremobility/j/h;->c()Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/coremobility/e/az;->b:Lcom/coremobility/j/h;

    invoke-virtual {v0}, Lcom/coremobility/j/h;->a()I

    move-result v1

    :cond_31
    iget-object v0, p0, Lcom/coremobility/e/az;->a:Lcom/coremobility/e/aw;

    iget-object v0, v0, Lcom/coremobility/e/aw;->u:Lcom/coremobility/e/az;

    invoke-virtual {v0}, Lcom/coremobility/e/az;->d()V

    iget-object v0, p0, Lcom/coremobility/e/az;->a:Lcom/coremobility/e/aw;

    iget-object v0, v0, Lcom/coremobility/e/aw;->z:Lcom/coremobility/e/bd;

    invoke-virtual {v0}, Lcom/coremobility/e/bd;->b()V

    iget-object v2, p0, Lcom/coremobility/e/az;->a:Lcom/coremobility/e/aw;

    iget v0, p0, Lcom/coremobility/e/az;->d:I

    :cond_43
    :goto_43
    invoke-virtual {v2, p1, v0, v1}, Lcom/coremobility/e/aw;->a(III)V

    :goto_46
    return-void

    :cond_47
    move v0, v1

    goto :goto_d

    :cond_49
    iget-object v0, p0, Lcom/coremobility/e/az;->a:Lcom/coremobility/e/aw;

    iget-object v0, v0, Lcom/coremobility/e/aw;->D:Lcom/coremobility/e/a;

    iget-object v2, p0, Lcom/coremobility/e/az;->a:Lcom/coremobility/e/aw;

    invoke-virtual {v2}, Lcom/coremobility/e/aw;->a()I

    move-result v2

    invoke-virtual {v0, v2, p1}, Lcom/coremobility/e/a;->c(II)Lcom/coremobility/integration/c/c;

    move-result-object v0

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    iget-object v2, p0, Lcom/coremobility/e/az;->a:Lcom/coremobility/e/aw;

    iget v0, p0, Lcom/coremobility/e/az;->d:I

    iget-object v3, p0, Lcom/coremobility/e/az;->b:Lcom/coremobility/j/h;

    invoke-virtual {v3}, Lcom/coremobility/j/h;->c()Z

    move-result v3

    if-eqz v3, :cond_43

    iget-object v1, p0, Lcom/coremobility/e/az;->b:Lcom/coremobility/j/h;

    invoke-virtual {v1}, Lcom/coremobility/j/h;->a()I

    move-result v1

    goto :goto_43

    :cond_6d
    iget v2, p0, Lcom/coremobility/e/az;->d:I

    if-eq v2, v7, :cond_75

    iget v2, p0, Lcom/coremobility/e/az;->d:I

    if-ne v2, v8, :cond_e8

    :cond_75
    move v2, v0

    :goto_76
    invoke-static {v2}, Lcom/coremobility/integration/c/a;->a(Z)V

    const/16 v2, 0xfd

    iget v3, p0, Lcom/coremobility/e/az;->d:I

    if-ne v3, v7, :cond_81

    const/16 v2, 0xfe

    :cond_81
    const/16 v3, 0x21

    const-string v4, "CM+MMS%d retrieve fail %d %d %s"

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/coremobility/e/az;->a:Lcom/coremobility/e/aw;

    invoke-virtual {v6}, Lcom/coremobility/e/aw;->a()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    iget-object v0, p0, Lcom/coremobility/e/az;->b:Lcom/coremobility/j/h;

    iget v0, v0, Lcom/coremobility/j/h;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v7

    iget-object v0, p0, Lcom/coremobility/e/az;->a:Lcom/coremobility/e/aw;

    iget-object v0, v0, Lcom/coremobility/e/aw;->y:Lcom/coremobility/e/c;

    iget-object v0, v0, Lcom/coremobility/e/c;->f:Ljava/lang/String;

    aput-object v0, v5, v8

    invoke-static {v3, v4, v5}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    if-gez p1, :cond_ea

    iget-object v0, p0, Lcom/coremobility/e/az;->b:Lcom/coremobility/j/h;

    invoke-virtual {v0}, Lcom/coremobility/j/h;->c()Z

    move-result v0

    if-eqz v0, :cond_be

    iget-object v0, p0, Lcom/coremobility/e/az;->b:Lcom/coremobility/j/h;

    invoke-virtual {v0}, Lcom/coremobility/j/h;->a()I

    move-result v1

    :cond_be
    iget-object v0, p0, Lcom/coremobility/e/az;->a:Lcom/coremobility/e/aw;

    iget-object v0, v0, Lcom/coremobility/e/aw;->z:Lcom/coremobility/e/bd;

    iget-object v3, p0, Lcom/coremobility/e/az;->a:Lcom/coremobility/e/aw;

    iget-object v3, v3, Lcom/coremobility/e/aw;->y:Lcom/coremobility/e/c;

    iget v3, v3, Lcom/coremobility/e/c;->b:I

    iget-object v4, p0, Lcom/coremobility/e/az;->a:Lcom/coremobility/e/aw;

    iget-object v4, v4, Lcom/coremobility/e/aw;->y:Lcom/coremobility/e/c;

    iget-object v4, v4, Lcom/coremobility/e/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v3, v2, v4}, Lcom/coremobility/e/bd;->a(IILjava/lang/String;)V

    iget-object v0, p0, Lcom/coremobility/e/az;->a:Lcom/coremobility/e/aw;

    iget-object v0, v0, Lcom/coremobility/e/aw;->u:Lcom/coremobility/e/az;

    invoke-virtual {v0}, Lcom/coremobility/e/az;->d()V

    iget-object v0, p0, Lcom/coremobility/e/az;->a:Lcom/coremobility/e/aw;

    iget-object v0, v0, Lcom/coremobility/e/aw;->y:Lcom/coremobility/e/c;

    invoke-virtual {v0}, Lcom/coremobility/e/c;->e()V

    iget-object v2, p0, Lcom/coremobility/e/az;->a:Lcom/coremobility/e/aw;

    iget v0, p0, Lcom/coremobility/e/az;->d:I

    :cond_e3
    :goto_e3
    invoke-virtual {v2, p1, v0, v1}, Lcom/coremobility/e/aw;->a(III)V

    goto/16 :goto_46

    :cond_e8
    move v2, v1

    goto :goto_76

    :cond_ea
    iget-object v0, p0, Lcom/coremobility/e/az;->a:Lcom/coremobility/e/aw;

    iget-object v0, v0, Lcom/coremobility/e/aw;->D:Lcom/coremobility/e/a;

    iget-object v2, p0, Lcom/coremobility/e/az;->a:Lcom/coremobility/e/aw;

    invoke-virtual {v2}, Lcom/coremobility/e/aw;->a()I

    move-result v2

    invoke-virtual {v0, v2, p1}, Lcom/coremobility/e/a;->b(II)Lcom/coremobility/integration/c/c;

    move-result-object v0

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    iget-object v2, p0, Lcom/coremobility/e/az;->a:Lcom/coremobility/e/aw;

    iget v0, p0, Lcom/coremobility/e/az;->d:I

    iget-object v3, p0, Lcom/coremobility/e/az;->b:Lcom/coremobility/j/h;

    invoke-virtual {v3}, Lcom/coremobility/j/h;->c()Z

    move-result v3

    if-eqz v3, :cond_e3

    iget-object v1, p0, Lcom/coremobility/e/az;->b:Lcom/coremobility/j/h;

    invoke-virtual {v1}, Lcom/coremobility/j/h;->a()I

    move-result v1

    goto :goto_e3
.end method

.method public final a(III)V
    .registers 10

    const/4 v4, 0x3

    const/4 v3, 0x2

    if-eq p3, v3, :cond_9

    if-eq p3, v4, :cond_9

    const/4 v0, 0x4

    if-ne p3, v0, :cond_5b

    :cond_9
    const/4 v0, 0x1

    :goto_a
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iput p3, p0, Lcom/coremobility/e/az;->d:I

    iget-object v0, p0, Lcom/coremobility/e/az;->c:Lcom/coremobility/j/k;

    check-cast v0, Lcom/coremobility/e/bb;

    iget-object v1, p0, Lcom/coremobility/e/az;->b:Lcom/coremobility/j/h;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/coremobility/e/bb;->a(Lcom/coremobility/j/h;III)Lcom/coremobility/j/h;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/e/az;->b:Lcom/coremobility/j/h;

    iget-object v0, p0, Lcom/coremobility/e/az;->a:Lcom/coremobility/e/aw;

    invoke-static {v0}, Lcom/coremobility/e/aw;->a(Lcom/coremobility/e/aw;)Lcom/coremobility/e/ax;

    move-result-object v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/coremobility/e/az;->a:Lcom/coremobility/e/aw;

    invoke-static {v0}, Lcom/coremobility/e/aw;->a(Lcom/coremobility/e/aw;)Lcom/coremobility/e/ax;

    move-result-object v0

    iget-object v1, p0, Lcom/coremobility/e/az;->b:Lcom/coremobility/j/h;

    invoke-virtual {v1}, Lcom/coremobility/j/h;->a()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/coremobility/e/ax;->a(J)V

    :cond_33
    iget v0, p0, Lcom/coremobility/e/az;->d:I

    if-ne v0, v3, :cond_5d

    iget-object v0, p0, Lcom/coremobility/e/az;->a:Lcom/coremobility/e/aw;

    iget-object v0, v0, Lcom/coremobility/e/aw;->D:Lcom/coremobility/e/a;

    iget-object v1, p0, Lcom/coremobility/e/az;->a:Lcom/coremobility/e/aw;

    invoke-virtual {v1}, Lcom/coremobility/e/aw;->a()I

    move-result v1

    const/16 v3, 0xfe

    iget-object v2, p0, Lcom/coremobility/e/az;->b:Lcom/coremobility/j/h;

    iget v4, v2, Lcom/coremobility/j/h;->c:I

    iget-object v2, p0, Lcom/coremobility/e/az;->a:Lcom/coremobility/e/aw;

    iget-object v2, v2, Lcom/coremobility/e/aw;->y:Lcom/coremobility/e/c;

    iget-object v5, v2, Lcom/coremobility/e/c;->f:Ljava/lang/String;

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/coremobility/e/a;->a(IIIILjava/lang/String;)Lcom/coremobility/integration/c/c;

    move-result-object v0

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    :goto_55
    iget-object v0, p0, Lcom/coremobility/e/az;->b:Lcom/coremobility/j/h;

    invoke-virtual {v0, p0}, Lcom/coremobility/j/h;->a(Lcom/coremobility/j/j;)V

    return-void

    :cond_5b
    const/4 v0, 0x0

    goto :goto_a

    :cond_5d
    iget v0, p0, Lcom/coremobility/e/az;->d:I

    if-ne v0, v4, :cond_80

    iget-object v0, p0, Lcom/coremobility/e/az;->a:Lcom/coremobility/e/aw;

    iget-object v0, v0, Lcom/coremobility/e/aw;->D:Lcom/coremobility/e/a;

    iget-object v1, p0, Lcom/coremobility/e/az;->a:Lcom/coremobility/e/aw;

    invoke-virtual {v1}, Lcom/coremobility/e/aw;->a()I

    move-result v1

    const/16 v3, 0xfd

    iget-object v2, p0, Lcom/coremobility/e/az;->b:Lcom/coremobility/j/h;

    iget v4, v2, Lcom/coremobility/j/h;->c:I

    iget-object v2, p0, Lcom/coremobility/e/az;->a:Lcom/coremobility/e/aw;

    iget-object v2, v2, Lcom/coremobility/e/aw;->y:Lcom/coremobility/e/c;

    iget-object v5, v2, Lcom/coremobility/e/c;->f:Ljava/lang/String;

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/coremobility/e/a;->a(IIIILjava/lang/String;)Lcom/coremobility/integration/c/c;

    move-result-object v0

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    goto :goto_55

    :cond_80
    iget-object v0, p0, Lcom/coremobility/e/az;->a:Lcom/coremobility/e/aw;

    iget-object v1, v0, Lcom/coremobility/e/aw;->D:Lcom/coremobility/e/a;

    iget-object v0, p0, Lcom/coremobility/e/az;->a:Lcom/coremobility/e/aw;

    invoke-virtual {v0}, Lcom/coremobility/e/aw;->a()I

    move-result v2

    iget-object v0, p0, Lcom/coremobility/e/az;->b:Lcom/coremobility/j/h;

    iget v3, v0, Lcom/coremobility/j/h;->c:I

    iget-object v0, p0, Lcom/coremobility/e/az;->a:Lcom/coremobility/e/aw;

    iget-object v0, v0, Lcom/coremobility/e/aw;->z:Lcom/coremobility/e/bd;

    iget-object v0, v0, Lcom/coremobility/e/bd;->c:Ljava/lang/String;

    if-eqz v0, :cond_a4

    iget-object v0, p0, Lcom/coremobility/e/az;->a:Lcom/coremobility/e/aw;

    iget-object v0, v0, Lcom/coremobility/e/aw;->z:Lcom/coremobility/e/bd;

    iget-object v0, v0, Lcom/coremobility/e/bd;->c:Ljava/lang/String;

    :goto_9c
    invoke-virtual {v1, v2, p1, v3, v0}, Lcom/coremobility/e/a;->a(IIILjava/lang/String;)Lcom/coremobility/integration/c/c;

    move-result-object v0

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    goto :goto_55

    :cond_a4
    const-string v0, "null"

    goto :goto_9c
.end method

.method public final b()Ljava/lang/String;
    .registers 8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/coremobility/e/az;->a:Lcom/coremobility/e/aw;

    invoke-static {v0}, Lcom/coremobility/e/aw;->a(Lcom/coremobility/e/aw;)Lcom/coremobility/e/ax;

    move-result-object v0

    if-eqz v0, :cond_68

    iget-object v0, p0, Lcom/coremobility/e/az;->a:Lcom/coremobility/e/aw;

    invoke-static {v0}, Lcom/coremobility/e/aw;->a(Lcom/coremobility/e/aw;)Lcom/coremobility/e/ax;

    move-result-object v2

    iget-object v0, v2, Lcom/coremobility/e/ax;->a:Ljava/lang/String;

    if-nez v0, :cond_16

    const-string v0, ""

    :goto_15
    return-object v0

    :cond_16
    iget-object v0, v2, Lcom/coremobility/e/ax;->b:Ljava/lang/String;

    if-nez v0, :cond_65

    iput-boolean v1, v2, Lcom/coremobility/e/ax;->c:Z

    new-instance v3, Lcom/coremobility/integration/h;

    invoke-direct {v3}, Lcom/coremobility/integration/h;-><init>()V

    iget-object v0, v2, Lcom/coremobility/e/ax;->d:Lcom/coremobility/integration/file/a;

    if-nez v0, :cond_2b

    invoke-static {}, Lcom/coremobility/integration/file/a;->a()Lcom/coremobility/integration/file/a;

    move-result-object v0

    iput-object v0, v2, Lcom/coremobility/e/ax;->d:Lcom/coremobility/integration/file/a;

    :cond_2b
    iget-object v0, v2, Lcom/coremobility/e/ax;->a:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/coremobility/integration/file/a;->a(Ljava/lang/String;Lcom/coremobility/integration/h;)I

    move-result v4

    if-nez v4, :cond_6b

    new-instance v5, Lcom/coremobility/integration/r;

    invoke-direct {v5}, Lcom/coremobility/integration/r;-><init>()V

    invoke-static {v3, v5}, Lcom/coremobility/integration/file/a;->b(Lcom/coremobility/integration/h;Lcom/coremobility/integration/r;)I

    move-result v0

    if-nez v0, :cond_51

    iget v6, v5, Lcom/coremobility/integration/r;->a:I

    if-lez v6, :cond_51

    iget v0, v5, Lcom/coremobility/integration/r;->a:I

    new-array v6, v0, [B

    invoke-static {v3, v6, v5}, Lcom/coremobility/integration/file/a;->c(Lcom/coremobility/integration/h;[BLcom/coremobility/integration/r;)I

    move-result v0

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    iput-object v5, v2, Lcom/coremobility/e/ax;->b:Ljava/lang/String;

    :cond_51
    :goto_51
    if-nez v4, :cond_5b

    invoke-static {v3}, Lcom/coremobility/integration/file/a;->a(Lcom/coremobility/integration/h;)I

    move-result v3

    if-nez v3, :cond_5b

    if-eqz v0, :cond_65

    :cond_5b
    invoke-static {v1}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, v2, Lcom/coremobility/e/ax;->b:Ljava/lang/String;

    if-eqz v0, :cond_65

    const/4 v0, 0x0

    iput-object v0, v2, Lcom/coremobility/e/ax;->b:Ljava/lang/String;

    :cond_65
    iget-object v0, v2, Lcom/coremobility/e/ax;->b:Ljava/lang/String;

    goto :goto_15

    :cond_68
    const-string v0, ""

    goto :goto_15

    :cond_6b
    move v0, v1

    goto :goto_51
.end method
