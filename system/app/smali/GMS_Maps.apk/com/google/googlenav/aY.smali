.class public Lcom/google/googlenav/aY;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:Ljava/util/List;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/util/List;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/googlenav/aY;->a:I

    iput-object p2, p0, Lcom/google/googlenav/aY;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/googlenav/aY;->c:Ljava/util/List;

    return-void
.end method

.method protected static a(Lcom/google/googlenav/aY;Ljava/util/List;)Ljava/lang/String;
    .registers 10

    const/4 v4, 0x0

    const/4 v7, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    move v3, v0

    move-object v2, v4

    :goto_a
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_89

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/aZ;

    if-nez v0, :cond_1e

    move-object v0, v2

    :cond_19
    :goto_19
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move-object v2, v0

    goto :goto_a

    :cond_1e
    add-int/lit8 v1, v3, 0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_99

    add-int/lit8 v1, v3, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/aZ;

    :goto_2e
    if-nez v2, :cond_38

    invoke-virtual {v0}, Lcom/google/googlenav/aZ;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_19

    :cond_38
    if-nez v1, :cond_58

    invoke-virtual {v0}, Lcom/google/googlenav/aZ;->a()I

    move-result v1

    invoke-virtual {v2}, Lcom/google/googlenav/aZ;->a()I

    move-result v2

    sub-int/2addr v1, v2

    if-ne v1, v7, :cond_52

    const-string v1, "-"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4a
    invoke-virtual {v0}, Lcom/google/googlenav/aZ;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_19

    :cond_52
    const-string v1, ", "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4a

    :cond_58
    invoke-virtual {v0}, Lcom/google/googlenav/aZ;->a()I

    move-result v6

    invoke-virtual {v2}, Lcom/google/googlenav/aZ;->a()I

    move-result v2

    sub-int v2, v6, v2

    if-le v2, v7, :cond_71

    const-string v1, ", "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/google/googlenav/aZ;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_19

    :cond_71
    invoke-virtual {v1}, Lcom/google/googlenav/aZ;->a()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/googlenav/aZ;->a()I

    move-result v2

    sub-int/2addr v1, v2

    if-le v1, v7, :cond_19

    const-string v1, "-"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/google/googlenav/aZ;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_19

    :cond_89
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_94

    invoke-virtual {p0}, Lcom/google/googlenav/aY;->e()Ljava/lang/String;

    move-result-object v0

    :goto_93
    return-object v0

    :cond_94
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_93

    :cond_99
    move-object v1, v4

    goto :goto_2e
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/google/googlenav/aY;->a:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/aY;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/aY;->c:Ljava/util/List;

    return-object v0
.end method

.method public d()Z
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/aY;->c:Ljava/util/List;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/googlenav/aY;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public e()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/googlenav/aY;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "*"

    sget-char v2, Lcom/google/googlenav/ui/bw;->bj:C

    invoke-static {v2}, Lcom/google/googlenav/ui/bw;->a(C)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Las/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)I

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .registers 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget v0, p0, Lcom/google/googlenav/aY;->a:I

    packed-switch v0, :pswitch_data_78

    const-string v0, "SEARCH_FILTER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "label: Unknown search filter of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/googlenav/aY;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Laf/m;->a(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, ""

    :goto_23
    return-object v0

    :pswitch_24
    invoke-virtual {p0}, Lcom/google/googlenav/aY;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/aZ;

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/M;->ak()Z

    move-result v1

    if-eqz v1, :cond_46

    iget v1, p0, Lcom/google/googlenav/aY;->a:I

    if-ne v1, v2, :cond_46

    if-nez v0, :cond_41

    iget-object v0, p0, Lcom/google/googlenav/aY;->b:Ljava/lang/String;

    goto :goto_23

    :cond_41
    invoke-static {v0}, Lcom/google/googlenav/aZ;->a(Lcom/google/googlenav/aZ;)Ljava/lang/String;

    move-result-object v0

    goto :goto_23

    :cond_46
    if-nez v0, :cond_4d

    invoke-virtual {p0}, Lcom/google/googlenav/aY;->e()Ljava/lang/String;

    move-result-object v0

    goto :goto_23

    :cond_4d
    invoke-virtual {v0}, Lcom/google/googlenav/aZ;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_23

    :pswitch_52
    const/16 v0, 0x112

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/googlenav/aY;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/aZ;

    invoke-virtual {v0}, Lcom/google/googlenav/aZ;->c()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_23

    :pswitch_6f
    invoke-virtual {p0}, Lcom/google/googlenav/aY;->c()Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/googlenav/aY;->a(Lcom/google/googlenav/aY;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    goto :goto_23

    :pswitch_data_78
    .packed-switch 0x0
        :pswitch_24
        :pswitch_24
        :pswitch_6f
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_52
    .end packed-switch
.end method

.method public g()I
    .registers 5

    const/4 v0, -0x1

    iget v1, p0, Lcom/google/googlenav/aY;->a:I

    packed-switch v1, :pswitch_data_34

    const-string v1, "SEARCH_FILTER"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action: Unknown search filter of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/googlenav/aY;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Laf/m;->a(Ljava/lang/String;Ljava/lang/String;)Z

    :goto_20
    :pswitch_20
    return v0

    :pswitch_21
    const/16 v0, 0x2c8

    goto :goto_20

    :pswitch_24
    const/16 v0, 0x2c9

    goto :goto_20

    :pswitch_27
    const/16 v0, 0x2ca

    goto :goto_20

    :pswitch_2a
    const/16 v0, 0x2cd

    goto :goto_20

    :pswitch_2d
    const/16 v0, 0x2d1

    goto :goto_20

    :pswitch_30
    const/16 v0, 0x2d3

    goto :goto_20

    nop

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_21
        :pswitch_24
        :pswitch_27
        :pswitch_2a
        :pswitch_2d
        :pswitch_20
        :pswitch_30
    .end packed-switch
.end method

.method public h()Ljava/lang/String;
    .registers 5

    iget v0, p0, Lcom/google/googlenav/aY;->a:I

    packed-switch v0, :pswitch_data_4e

    :pswitch_5
    const-string v0, "SEARCH_FILTER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "title: Unknown search filter of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/googlenav/aY;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Laf/m;->a(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, ""

    :goto_21
    return-object v0

    :pswitch_22
    const/16 v0, 0x114

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_21

    :pswitch_29
    const/16 v0, 0x116

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    sget-char v3, Lcom/google/googlenav/ui/bw;->bj:C

    invoke-static {v3}, Lcom/google/googlenav/ui/bw;->a(C)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_21

    :pswitch_40
    const/16 v0, 0x117

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_21

    :pswitch_47
    const/16 v0, 0x115

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_21

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_22
        :pswitch_29
        :pswitch_47
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_40
    .end packed-switch
.end method