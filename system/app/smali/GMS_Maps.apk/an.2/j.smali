.class public LaN/j;
.super Lcom/google/android/maps/driveabout/vector/ay;
.source "SourceFile"


# instance fields
.field private final d:Ljava/lang/Object;

.field private final e:Ljava/util/List;

.field private final f:I

.field private final g:I

.field private final h:I


# direct methods
.method public constructor <init>(LaM/i;Lcom/google/googlenav/E;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIIIZ)V
    .registers 20
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 752
    invoke-interface {p2}, Lcom/google/googlenav/E;->a()Lat/B;

    move-result-object v1

    invoke-virtual {v1}, Lat/B;->c()I

    move-result v1

    invoke-interface {p2}, Lcom/google/googlenav/E;->a()Lat/B;

    move-result-object v2

    invoke-virtual {v2}, Lat/B;->e()I

    move-result v2

    invoke-static {v1, v2}, Ln/Q;->b(II)Ln/Q;

    move-result-object v2

    invoke-static {p2}, LaN/j;->a(Lcom/google/googlenav/E;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move-object v1, p0

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v9, p9

    invoke-direct/range {v1 .. v9}, Lcom/google/android/maps/driveabout/vector/ay;-><init>(Ln/Q;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IILjava/lang/String;Ljava/lang/String;Z)V

    .line 756
    invoke-interface {p2}, Lcom/google/googlenav/E;->b()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, LaN/j;->e:Ljava/util/List;

    .line 757
    move/from16 v0, p7

    iput v0, p0, LaN/j;->f:I

    .line 758
    move/from16 v0, p8

    iput v0, p0, LaN/j;->g:I

    .line 759
    iget v1, p0, LaN/j;->g:I

    invoke-virtual {p0, v1}, LaN/j;->a(I)I

    move-result v1

    iput v1, p0, LaN/j;->h:I

    .line 760
    invoke-interface {p2}, Lcom/google/googlenav/E;->f()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, LaN/j;->d:Ljava/lang/Object;

    .line 761
    return-void
.end method

.method private static a(Lcom/google/googlenav/E;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 824
    if-eqz p0, :cond_f

    invoke-interface {p0}, Lcom/google/googlenav/E;->d()I

    move-result v0

    if-nez v0, :cond_f

    .line 825
    check-cast p0, Lcom/google/googlenav/ai;

    invoke-virtual {p0}, Lcom/google/googlenav/ai;->ak()Ljava/lang/String;

    move-result-object v0

    .line 827
    :goto_e
    return-object v0

    :cond_f
    const-string v0, ""

    goto :goto_e
.end method


# virtual methods
.method public a(Lcom/google/googlenav/e;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 813
    if-nez p1, :cond_c

    .line 814
    iget-object v0, p0, LaN/j;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_a

    move v0, v1

    .line 819
    :goto_9
    return v0

    :cond_a
    move v0, v2

    .line 814
    goto :goto_9

    .line 816
    :cond_c
    iget-object v0, p0, LaN/j;->a:Landroid/graphics/Bitmap;

    if-nez v0, :cond_12

    move v0, v1

    .line 817
    goto :goto_9

    .line 819
    :cond_12
    iget-object v3, p0, LaN/j;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Lcom/google/googlenav/e;->a()LS/f;

    move-result-object v0

    check-cast v0, LT/f;

    invoke-virtual {v0}, LT/f;->h()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    iget v0, p0, LaN/j;->b:I

    invoke-virtual {p1}, Lcom/google/googlenav/e;->b()I

    move-result v3

    if-ne v0, v3, :cond_34

    iget v0, p0, LaN/j;->c:I

    invoke-virtual {p1}, Lcom/google/googlenav/e;->c()I

    move-result v3

    if-eq v0, v3, :cond_35

    :cond_34
    move v2, v1

    :cond_35
    move v0, v2

    goto :goto_9
.end method

.method public f()Ln/B;
    .registers 6

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 776
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/K;->u()Z

    move-result v1

    if-nez v1, :cond_d

    .line 790
    :goto_c
    :pswitch_c
    return-object v0

    .line 779
    :cond_d
    iget-object v1, p0, LaN/j;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    packed-switch v1, :pswitch_data_4a

    .line 783
    invoke-static {}, Ll/q;->a()Ll/q;

    move-result-object v0

    invoke-virtual {v0}, Ll/q;->g()Ljava/util/Set;

    move-result-object v1

    .line 785
    iget-object v0, p0, LaN/j;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/B;

    .line 786
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    goto :goto_c

    .line 781
    :pswitch_37
    iget-object v0, p0, LaN/j;->e:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/B;

    goto :goto_c

    .line 790
    :cond_40
    iget-object v0, p0, LaN/j;->e:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/B;

    goto :goto_c

    .line 779
    nop

    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_c
        :pswitch_37
    .end packed-switch
.end method

.method public h()I
    .registers 2

    .prologue
    .line 806
    iget v0, p0, LaN/j;->f:I

    return v0
.end method

.method public q()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 765
    iget-object v0, p0, LaN/j;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public s_()I
    .registers 2

    .prologue
    .line 801
    iget v0, p0, LaN/j;->h:I

    neg-int v0, v0

    return v0
.end method
