.class public final Lcom/coremobility/e/bb;
.super Lcom/coremobility/j/k;


# instance fields
.field final synthetic a:Lcom/coremobility/e/aw;


# direct methods
.method public constructor <init>(Lcom/coremobility/e/aw;)V
    .registers 13

    const/4 v10, 0x7

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/coremobility/e/bb;->a:Lcom/coremobility/e/aw;

    invoke-direct {p0}, Lcom/coremobility/j/k;-><init>()V

    new-array v0, v10, [Lcom/coremobility/j/i;

    iput-object v0, p0, Lcom/coremobility/e/bb;->c:[Lcom/coremobility/j/i;

    move v2, v1

    :goto_c
    if-ge v2, v10, :cond_54

    const/4 v0, 0x6

    new-array v3, v0, [I

    mul-int/lit8 v4, v2, 0x6

    move v0, v1

    :goto_14
    const/4 v5, 0x3

    if-ge v0, v5, :cond_47

    mul-int/lit8 v5, v0, 0x2

    add-int/2addr v5, v4

    mul-int/lit8 v6, v0, 0x2

    iget-object v7, p1, Lcom/coremobility/e/aw;->p:Lcom/coremobility/integration/a/a;

    invoke-virtual {p1, v5}, Lcom/coremobility/e/aw;->a(I)I

    move-result v8

    iget-object v9, p0, Lcom/coremobility/e/bb;->b:[I

    aget v9, v9, v5

    invoke-virtual {v7, v8, v1, v9}, Lcom/coremobility/integration/a/a;->a(III)I

    move-result v7

    aput v7, v3, v6

    mul-int/lit8 v6, v0, 0x2

    add-int/lit8 v6, v6, 0x1

    iget-object v7, p1, Lcom/coremobility/e/aw;->p:Lcom/coremobility/integration/a/a;

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {p1, v8}, Lcom/coremobility/e/aw;->a(I)I

    move-result v8

    iget-object v9, p0, Lcom/coremobility/e/bb;->b:[I

    add-int/lit8 v5, v5, 0x1

    aget v5, v9, v5

    invoke-virtual {v7, v8, v1, v5}, Lcom/coremobility/integration/a/a;->a(III)I

    move-result v5

    aput v5, v3, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_47
    iget-object v0, p0, Lcom/coremobility/e/bb;->c:[Lcom/coremobility/j/i;

    new-instance v4, Lcom/coremobility/j/i;

    invoke-direct {v4, v3}, Lcom/coremobility/j/i;-><init>([I)V

    aput-object v4, v0, v2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_c

    :cond_54
    return-void
.end method


# virtual methods
.method protected final a(I)Lcom/coremobility/j/h;
    .registers 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/coremobility/e/bb;->c:[Lcom/coremobility/j/i;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/coremobility/e/bb;->c:[Lcom/coremobility/j/i;

    array-length v0, v0

    const/4 v1, 0x7

    if-ge v0, v1, :cond_d

    :cond_b
    const/4 v0, 0x0

    :cond_c
    :goto_c
    return-object v0

    :cond_d
    invoke-super {p0, p1}, Lcom/coremobility/j/k;->a(I)Lcom/coremobility/j/h;

    move-result-object v0

    if-nez v0, :cond_c

    sparse-switch p1, :sswitch_data_3a

    invoke-static {v3}, Lcom/coremobility/integration/c/a;->a(Z)V

    :sswitch_19
    new-instance v0, Lcom/coremobility/j/h;

    iget-object v1, p0, Lcom/coremobility/e/bb;->c:[Lcom/coremobility/j/i;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-direct {v0, p1, v1, v3}, Lcom/coremobility/j/h;-><init>(ILcom/coremobility/j/i;Z)V

    goto :goto_c

    :sswitch_24
    new-instance v0, Lcom/coremobility/j/h;

    iget-object v1, p0, Lcom/coremobility/e/bb;->c:[Lcom/coremobility/j/i;

    aget-object v1, v1, v3

    invoke-direct {v0, p1, v1, v3}, Lcom/coremobility/j/h;-><init>(ILcom/coremobility/j/i;Z)V

    goto :goto_c

    :sswitch_2e
    new-instance v0, Lcom/coremobility/j/h;

    iget-object v1, p0, Lcom/coremobility/e/bb;->c:[Lcom/coremobility/j/i;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-direct {v0, p1, v1, v3}, Lcom/coremobility/j/h;-><init>(ILcom/coremobility/j/i;Z)V

    goto :goto_c

    nop

    :sswitch_data_3a
    .sparse-switch
        0x46 -> :sswitch_19
        0x3e8 -> :sswitch_24
        0x3e9 -> :sswitch_24
        0x3ea -> :sswitch_24
        0x3eb -> :sswitch_24
        0x44c -> :sswitch_19
        0x44d -> :sswitch_24
        0x44e -> :sswitch_24
        0x4b3 -> :sswitch_2e
    .end sparse-switch
.end method

.method public final a(Lcom/coremobility/j/h;III)Lcom/coremobility/j/h;
    .registers 12

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_6

    if-nez p3, :cond_45

    :cond_6
    move v0, v2

    :goto_7
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    if-eqz p1, :cond_47

    iget v0, p1, Lcom/coremobility/j/h;->b:I

    invoke-static {v0}, Lcom/coremobility/e/bb;->b(I)I

    move-result v0

    :goto_12
    invoke-static {p2}, Lcom/coremobility/e/bb;->b(I)I

    move-result v3

    if-nez v0, :cond_a0

    if-nez v3, :cond_a0

    if-eqz p1, :cond_49

    iget v0, p1, Lcom/coremobility/j/h;->b:I

    :goto_1e
    move v3, v0

    move v0, p2

    :goto_20
    if-eqz p1, :cond_3e

    invoke-virtual {p1}, Lcom/coremobility/j/h;->d()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3e

    if-eq v3, v0, :cond_31

    invoke-virtual {p1}, Lcom/coremobility/j/h;->d()I

    move-result v0

    if-eqz v0, :cond_3e

    :cond_31
    instance-of v0, p1, Lcom/coremobility/e/ba;

    if-eqz v0, :cond_8e

    move-object v0, p1

    check-cast v0, Lcom/coremobility/e/ba;

    invoke-static {v0}, Lcom/coremobility/e/ba;->a(Lcom/coremobility/e/ba;)I

    move-result v0

    if-eq v0, p3, :cond_8e

    :cond_3e
    if-eqz p2, :cond_4b

    invoke-virtual {p0, p2}, Lcom/coremobility/e/bb;->a(I)Lcom/coremobility/j/h;

    move-result-object v0

    :goto_44
    return-object v0

    :cond_45
    move v0, v1

    goto :goto_7

    :cond_47
    move v0, v1

    goto :goto_12

    :cond_49
    move v0, v1

    goto :goto_1e

    :cond_4b
    if-eq p4, v2, :cond_50

    const/4 v0, 0x3

    if-ne p4, v0, :cond_65

    :cond_50
    move v0, v2

    :goto_51
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    if-ne p4, v2, :cond_73

    packed-switch p3, :pswitch_data_a6

    new-instance v0, Lcom/coremobility/e/ba;

    iget-object v2, p0, Lcom/coremobility/e/bb;->a:Lcom/coremobility/e/aw;

    iget-object v3, p0, Lcom/coremobility/e/bb;->c:[Lcom/coremobility/j/i;

    aget-object v1, v3, v1

    invoke-direct {v0, v2, p3, v1}, Lcom/coremobility/e/ba;-><init>(Lcom/coremobility/e/aw;ILcom/coremobility/j/i;)V

    goto :goto_44

    :cond_65
    move v0, v1

    goto :goto_51

    :pswitch_67
    new-instance v0, Lcom/coremobility/e/ba;

    iget-object v1, p0, Lcom/coremobility/e/bb;->a:Lcom/coremobility/e/aw;

    iget-object v3, p0, Lcom/coremobility/e/bb;->c:[Lcom/coremobility/j/i;

    aget-object v2, v3, v2

    invoke-direct {v0, v1, p3, v2}, Lcom/coremobility/e/ba;-><init>(Lcom/coremobility/e/aw;ILcom/coremobility/j/i;)V

    goto :goto_44

    :cond_73
    packed-switch p3, :pswitch_data_b2

    new-instance v0, Lcom/coremobility/e/ba;

    iget-object v2, p0, Lcom/coremobility/e/bb;->a:Lcom/coremobility/e/aw;

    iget-object v3, p0, Lcom/coremobility/e/bb;->c:[Lcom/coremobility/j/i;

    aget-object v1, v3, v1

    invoke-direct {v0, v2, p3, v1}, Lcom/coremobility/e/ba;-><init>(Lcom/coremobility/e/aw;ILcom/coremobility/j/i;)V

    goto :goto_44

    :pswitch_82
    new-instance v0, Lcom/coremobility/e/ba;

    iget-object v1, p0, Lcom/coremobility/e/bb;->a:Lcom/coremobility/e/aw;

    iget-object v3, p0, Lcom/coremobility/e/bb;->c:[Lcom/coremobility/j/i;

    aget-object v2, v3, v2

    invoke-direct {v0, v1, p3, v2}, Lcom/coremobility/e/ba;-><init>(Lcom/coremobility/e/aw;ILcom/coremobility/j/i;)V

    goto :goto_44

    :cond_8e
    instance-of v0, p1, Lcom/coremobility/e/ba;

    if-eqz v0, :cond_9b

    move-object v0, p1

    check-cast v0, Lcom/coremobility/e/ba;

    invoke-static {v0}, Lcom/coremobility/e/ba;->a(Lcom/coremobility/e/ba;)I

    move-result v0

    if-nez v0, :cond_9e

    :cond_9b
    invoke-virtual {p1, p2}, Lcom/coremobility/j/h;->a(I)V

    :cond_9e
    move-object v0, p1

    goto :goto_44

    :cond_a0
    move v6, v3

    move v3, v0

    move v0, v6

    goto/16 :goto_20

    nop

    :pswitch_data_a6
    .packed-switch 0xc0
        :pswitch_67
        :pswitch_67
        :pswitch_67
        :pswitch_67
    .end packed-switch

    :pswitch_data_b2
    .packed-switch 0xc0
        :pswitch_82
        :pswitch_82
        :pswitch_82
    .end packed-switch
.end method
