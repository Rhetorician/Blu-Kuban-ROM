.class public Lde/a/a/a/a/f;
.super Ljava/lang/Object;


# direct methods
.method public static a([B)I
    .registers 5

    const/4 v2, 0x0

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    move v1, v2

    :goto_5
    if-gtz v0, :cond_d

    aget-byte v0, p0, v2

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    return v0

    :cond_d
    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v1, v3

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v0, v0, -0x1

    goto :goto_5
.end method

.method public static a([B[B)Z
    .registers 7

    const/4 v1, 0x0

    if-eqz p0, :cond_11

    if-eqz p1, :cond_11

    array-length v0, p0

    array-length v2, p1

    if-ne v0, v2, :cond_11

    const/4 v0, 0x1

    :goto_a
    move v2, v1

    :goto_b
    if-eqz v0, :cond_10

    array-length v3, p0

    if-lt v2, v3, :cond_13

    :cond_10
    return v0

    :cond_11
    move v0, v1

    goto :goto_a

    :cond_13
    aget-byte v3, p0, v2

    aget-byte v4, p1, v2

    if-eq v3, v4, :cond_1a

    move v0, v1

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_b
.end method

.method public static a(I)[B
    .registers 4

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x0

    int-to-byte v2, p0

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    shr-int/lit8 v2, p0, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    shr-int/lit8 v2, p0, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    shr-int/lit8 v2, p0, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public static a(II)[B
    .registers 6

    new-array v1, p1, [B

    invoke-static {p0}, Lde/a/a/a/a/f;->a(I)[B

    move-result-object v2

    const/4 v0, 0x0

    :goto_7
    array-length v3, v2

    if-ge v0, v3, :cond_c

    if-lt v0, p1, :cond_d

    :cond_c
    return-object v1

    :cond_d
    aget-byte v3, v2, v0

    aput-byte v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method public static b([B)S
    .registers 5

    const/4 v2, 0x0

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    move v1, v2

    :goto_5
    if-gtz v0, :cond_e

    aget-byte v0, p0, v2

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0

    :cond_e
    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v1, v3

    int-to-short v1, v1

    shl-int/lit8 v1, v1, 0x8

    int-to-short v1, v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_5
.end method

.method public static c([B)Ljava/lang/String;
    .registers 6

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_6
    array-length v2, p0

    if-lt v0, v2, :cond_e

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_e
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_22

    const/16 v3, 0x30

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method
