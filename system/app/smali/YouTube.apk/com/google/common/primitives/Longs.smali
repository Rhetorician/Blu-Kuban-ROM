.class public final Lcom/google/common/primitives/Longs;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(JJ)I
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 86
    cmp-long v0, p0, p2

    if-gez v0, :cond_6

    const/4 v0, -0x1

    :goto_5
    return v0

    :cond_6
    cmp-long v0, p0, p2

    if-lez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_5

    :cond_c
    const/4 v0, 0x0

    goto :goto_5
.end method

.method static synthetic a([JJII)I
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    move v0, p3

    .line 44
    :goto_1
    if-ge v0, p4, :cond_d

    aget-wide v1, p0, v0

    cmp-long v1, v1, p1

    if-nez v1, :cond_a

    :goto_9
    return v0

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_d
    const/4 v0, -0x1

    goto :goto_9
.end method

.method static synthetic b([JJII)I
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    add-int/lit8 v0, p4, -0x1

    :goto_2
    if-lt v0, p3, :cond_e

    aget-wide v1, p0, v0

    cmp-long v1, v1, p1

    if-nez v1, :cond_b

    :goto_a
    return v0

    :cond_b
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_e
    const/4 v0, -0x1

    goto :goto_a
.end method
