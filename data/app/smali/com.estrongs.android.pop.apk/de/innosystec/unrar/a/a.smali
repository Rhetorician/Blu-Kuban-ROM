.class public Lde/innosystec/unrar/a/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/16 v5, 0x100

    const/4 v2, 0x0

    new-array v0, v5, [I

    sput-object v0, Lde/innosystec/unrar/a/a;->a:[I

    move v3, v2

    :goto_8
    if-lt v3, v5, :cond_b

    return-void

    :cond_b
    move v1, v2

    move v0, v3

    :goto_d
    const/16 v4, 0x8

    if-lt v1, v4, :cond_18

    sget-object v1, Lde/innosystec/unrar/a/a;->a:[I

    aput v0, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_18
    and-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_25

    ushr-int/lit8 v0, v0, 0x1

    const v4, -0x12477ce0

    xor-int/2addr v0, v4

    :goto_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_25
    ushr-int/lit8 v0, v0, 0x1

    goto :goto_22
.end method

.method public static a(I[BII)I
    .registers 8

    array-length v0, p1

    sub-int/2addr v0, p2

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v0, 0x0

    :goto_7
    if-lt v0, v1, :cond_a

    return p0

    :cond_a
    sget-object v2, Lde/innosystec/unrar/a/a;->a:[I

    add-int v3, p2, v0

    aget-byte v3, p1, v3

    xor-int/2addr v3, p0

    and-int/lit16 v3, v3, 0xff

    aget v2, v2, v3

    ushr-int/lit8 v3, p0, 0x8

    xor-int p0, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method public static a(S[BI)S
    .registers 7

    array-length v0, p1

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v0, 0x0

    :goto_6
    if-lt v0, v1, :cond_9

    return p0

    :cond_9
    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    int-to-short v2, v2

    add-int/2addr v2, p0

    int-to-short v2, v2

    and-int/lit8 v2, v2, -0x1

    int-to-short v2, v2

    shl-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v2, v2, 0xf

    or-int/2addr v2, v3

    and-int/lit8 v2, v2, -0x1

    int-to-short p0, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method
