.class public Lp/i;
.super Lp/h;
.source "SourceFile"


# instance fields
.field b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lp/h;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 45
    iput p3, p0, Lp/i;->b:I

    .line 46
    return-void
.end method

.method private e()Ljava/lang/String;
    .registers 3

    .prologue
    .line 64
    const/4 v0, 0x0

    .line 65
    iget v1, p0, Lp/i;->b:I

    packed-switch v1, :pswitch_data_32

    .line 91
    :goto_6
    if-eqz v0, :cond_2f

    .line 92
    iget-object v1, p0, Lp/i;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 94
    :goto_e
    return-object v0

    .line 67
    :pswitch_f
    const v0, 0x7f0d00e5

    .line 68
    goto :goto_6

    .line 70
    :pswitch_13
    const v0, 0x7f0d00e6

    .line 71
    goto :goto_6

    .line 73
    :pswitch_17
    const v0, 0x7f0d00e7

    .line 74
    goto :goto_6

    .line 76
    :pswitch_1b
    const v0, 0x7f0d00e8

    .line 77
    goto :goto_6

    .line 79
    :pswitch_1f
    const v0, 0x7f0d00e9

    .line 80
    goto :goto_6

    .line 82
    :pswitch_23
    const v0, 0x7f0d00ea

    .line 83
    goto :goto_6

    .line 85
    :pswitch_27
    const v0, 0x7f0d00eb

    .line 86
    goto :goto_6

    .line 88
    :pswitch_2b
    const v0, 0x7f0d00ec

    goto :goto_6

    .line 94
    :cond_2f
    const/4 v0, 0x0

    goto :goto_e

    .line 65
    nop

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_f
        :pswitch_2b
        :pswitch_27
        :pswitch_23
        :pswitch_1f
        :pswitch_1b
        :pswitch_17
        :pswitch_13
    .end packed-switch
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 100
    const/4 v0, 0x1

    return v0
.end method

.method public c()Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 50
    invoke-direct {p0}, Lp/i;->e()Ljava/lang/String;

    move-result-object v0

    .line 51
    if-eqz v0, :cond_31

    .line 52
    invoke-virtual {p0, v5}, Lp/i;->a(I)Lo/K;

    move-result-object v1

    .line 53
    if-eqz v1, :cond_23

    .line 54
    iget-object v2, p0, Lp/i;->a:Landroid/content/Context;

    const v3, 0x7f0d00ee

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-virtual {v1}, Lo/K;->b()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 59
    :goto_22
    return-object v0

    .line 56
    :cond_23
    iget-object v1, p0, Lp/i;->a:Landroid/content/Context;

    const v2, 0x7f0d00ed

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_22

    .line 59
    :cond_31
    const/4 v0, 0x0

    goto :goto_22
.end method
