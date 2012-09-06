.class public final Lcom/google/common/primitives/Shorts;
.super Ljava/lang/Object;
.source "Shorts.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/Shorts$ShortArrayAsList;,
        Lcom/google/common/primitives/Shorts$LexicographicalComparator;
    }
.end annotation


# static fields
.field public static final BYTES:I = 0x2


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000([SSII)I
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 44
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Shorts;->indexOf([SSII)I

    move-result v0

    return v0
.end method

.method static synthetic access$100([SSII)I
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 44
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Shorts;->lastIndexOf([SSII)I

    move-result v0

    return v0
.end method

.method public static varargs asList([S)Ljava/util/List;
    .registers 2
    .parameter "backingArray"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([S)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation

    .prologue
    .line 437
    array-length v0, p0

    if-nez v0, :cond_8

    .line 438
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 440
    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;

    invoke-direct {v0, p0}, Lcom/google/common/primitives/Shorts$ShortArrayAsList;-><init>([S)V

    goto :goto_7
.end method

.method public static checkedCast(J)S
    .registers 8
    .parameter "value"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 73
    long-to-int v1, p0

    int-to-short v0, v1

    .line 74
    .local v0, result:S
    int-to-long v4, v0

    cmp-long v1, v4, p0

    if-nez v1, :cond_18

    move v1, v2

    :goto_a
    const-string v4, "Out of range: %s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v1, v4, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 75
    return v0

    :cond_18
    move v1, v3

    .line 74
    goto :goto_a
.end method

.method public static compare(SS)I
    .registers 3
    .parameter "a"
    .parameter "b"

    .prologue
    .line 106
    sub-int v0, p0, p1

    return v0
.end method

.method public static varargs concat([[S)[S
    .registers 10
    .parameter "arrays"

    .prologue
    .line 253
    const/4 v4, 0x0

    .line 254
    .local v4, length:I
    move-object v0, p0

    .local v0, arr$:[[S
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_4
    if-ge v2, v3, :cond_d

    aget-object v1, v0, v2

    .line 255
    .local v1, array:[S
    array-length v7, v1

    add-int/2addr v4, v7

    .line 254
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 257
    .end local v1           #array:[S
    :cond_d
    new-array v6, v4, [S

    .line 258
    .local v6, result:[S
    const/4 v5, 0x0

    .line 259
    .local v5, pos:I
    move-object v0, p0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v3, :cond_21

    aget-object v1, v0, v2

    .line 260
    .restart local v1       #array:[S
    const/4 v7, 0x0

    array-length v8, v1

    invoke-static {v1, v7, v6, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 261
    array-length v7, v1

    add-int/2addr v5, v7

    .line 259
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 263
    .end local v1           #array:[S
    :cond_21
    return-object v6
.end method

.method public static contains([SS)Z
    .registers 7
    .parameter "array"
    .parameter "target"

    .prologue
    .line 119
    move-object v0, p0

    .local v0, arr$:[S
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_3
    if-ge v1, v2, :cond_e

    aget-short v3, v0, v1

    .line 120
    .local v3, value:S
    if-ne v3, p1, :cond_b

    .line 121
    const/4 v4, 0x1

    .line 124
    .end local v3           #value:S
    :goto_a
    return v4

    .line 119
    .restart local v3       #value:S
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 124
    .end local v3           #value:S
    :cond_e
    const/4 v4, 0x0

    goto :goto_a
.end method

.method private static copyOf([SI)[S
    .registers 5
    .parameter "original"
    .parameter "length"

    .prologue
    const/4 v2, 0x0

    .line 330
    new-array v0, p1, [S

    .line 331
    .local v0, copy:[S
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 332
    return-object v0
.end method

.method public static ensureCapacity([SII)[S
    .registers 9
    .parameter "array"
    .parameter "minLength"
    .parameter "padding"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 321
    if-ltz p1, :cond_2c

    move v0, v1

    :goto_5
    const-string v3, "Invalid minLength: %s"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 322
    if-ltz p2, :cond_2e

    move v0, v1

    :goto_15
    const-string v3, "Invalid padding: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 323
    array-length v0, p0

    if-ge v0, p1, :cond_2b

    add-int v0, p1, p2

    invoke-static {p0, v0}, Lcom/google/common/primitives/Shorts;->copyOf([SI)[S

    move-result-object p0

    .end local p0
    :cond_2b
    return-object p0

    .restart local p0
    :cond_2c
    move v0, v2

    .line 321
    goto :goto_5

    :cond_2e
    move v0, v2

    .line 322
    goto :goto_15
.end method

.method public static fromByteArray([B)S
    .registers 8
    .parameter "bytes"
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "doesn\'t work"
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 298
    array-length v0, p0

    if-lt v0, v6, :cond_26

    move v0, v1

    :goto_7
    const-string v3, "array too small: %s < %s"

    new-array v4, v6, [Ljava/lang/Object;

    array-length v5, p0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 300
    aget-byte v0, p0, v2

    shl-int/lit8 v0, v0, 0x8

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0

    :cond_26
    move v0, v2

    .line 298
    goto :goto_7
.end method

.method public static hashCode(S)I
    .registers 1
    .parameter "value"

    .prologue
    .line 61
    return p0
.end method

.method public static indexOf([SS)I
    .registers 4
    .parameter "array"
    .parameter "target"

    .prologue
    .line 137
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lcom/google/common/primitives/Shorts;->indexOf([SSII)I

    move-result v0

    return v0
.end method

.method private static indexOf([SSII)I
    .registers 6
    .parameter "array"
    .parameter "target"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 143
    move v0, p2

    .local v0, i:I
    :goto_1
    if-ge v0, p3, :cond_b

    .line 144
    aget-short v1, p0, v0

    if-ne v1, p1, :cond_8

    .line 148
    .end local v0           #i:I
    :goto_7
    return v0

    .line 143
    .restart local v0       #i:I
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 148
    :cond_b
    const/4 v0, -0x1

    goto :goto_7
.end method

.method public static indexOf([S[S)I
    .registers 6
    .parameter "array"
    .parameter "target"

    .prologue
    .line 163
    const-string v2, "array"

    invoke-static {p0, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    const-string v2, "target"

    invoke-static {p1, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    array-length v2, p1

    if-nez v2, :cond_f

    .line 166
    const/4 v0, 0x0

    .line 178
    :cond_e
    :goto_e
    return v0

    .line 170
    :cond_f
    const/4 v0, 0x0

    .local v0, i:I
    :goto_10
    array-length v2, p0

    array-length v3, p1

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    if-ge v0, v2, :cond_29

    .line 171
    const/4 v1, 0x0

    .local v1, j:I
    :goto_18
    array-length v2, p1

    if-ge v1, v2, :cond_e

    .line 172
    add-int v2, v0, v1

    aget-short v2, p0, v2

    aget-short v3, p1, v1

    if-eq v2, v3, :cond_26

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 171
    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 178
    .end local v1           #j:I
    :cond_29
    const/4 v0, -0x1

    goto :goto_e
.end method

.method public static varargs join(Ljava/lang/String;[S)Ljava/lang/String;
    .registers 6
    .parameter "separator"
    .parameter "array"

    .prologue
    .line 345
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    array-length v2, p1

    if-nez v2, :cond_9

    .line 347
    const-string v2, ""

    .line 356
    :goto_8
    return-object v2

    .line 351
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v2, p1

    mul-int/lit8 v2, v2, 0x6

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 352
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    aget-short v2, p1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 353
    const/4 v1, 0x1

    .local v1, i:I
    :goto_18
    array-length v2, p1

    if-ge v1, v2, :cond_27

    .line 354
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-short v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 353
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 356
    :cond_27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_8
.end method

.method public static lastIndexOf([SS)I
    .registers 4
    .parameter "array"
    .parameter "target"

    .prologue
    .line 191
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lcom/google/common/primitives/Shorts;->lastIndexOf([SSII)I

    move-result v0

    return v0
.end method

.method private static lastIndexOf([SSII)I
    .registers 6
    .parameter "array"
    .parameter "target"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 197
    add-int/lit8 v0, p3, -0x1

    .local v0, i:I
    :goto_2
    if-lt v0, p2, :cond_c

    .line 198
    aget-short v1, p0, v0

    if-ne v1, p1, :cond_9

    .line 202
    .end local v0           #i:I
    :goto_8
    return v0

    .line 197
    .restart local v0       #i:I
    :cond_9
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 202
    :cond_c
    const/4 v0, -0x1

    goto :goto_8
.end method

.method public static lexicographicalComparator()Ljava/util/Comparator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<[S>;"
        }
    .end annotation

    .prologue
    .line 376
    sget-object v0, Lcom/google/common/primitives/Shorts$LexicographicalComparator;->INSTANCE:Lcom/google/common/primitives/Shorts$LexicographicalComparator;

    return-object v0
.end method

.method public static varargs max([S)S
    .registers 5
    .parameter "array"

    .prologue
    const/4 v3, 0x0

    .line 233
    array-length v2, p0

    if-lez v2, :cond_17

    const/4 v2, 0x1

    :goto_5
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 234
    aget-short v1, p0, v3

    .line 235
    .local v1, max:S
    const/4 v0, 0x1

    .local v0, i:I
    :goto_b
    array-length v2, p0

    if-ge v0, v2, :cond_19

    .line 236
    aget-short v2, p0, v0

    if-le v2, v1, :cond_14

    .line 237
    aget-short v1, p0, v0

    .line 235
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .end local v0           #i:I
    .end local v1           #max:S
    :cond_17
    move v2, v3

    .line 233
    goto :goto_5

    .line 240
    .restart local v0       #i:I
    .restart local v1       #max:S
    :cond_19
    return v1
.end method

.method public static varargs min([S)S
    .registers 5
    .parameter "array"

    .prologue
    const/4 v3, 0x0

    .line 214
    array-length v2, p0

    if-lez v2, :cond_17

    const/4 v2, 0x1

    :goto_5
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 215
    aget-short v1, p0, v3

    .line 216
    .local v1, min:S
    const/4 v0, 0x1

    .local v0, i:I
    :goto_b
    array-length v2, p0

    if-ge v0, v2, :cond_19

    .line 217
    aget-short v2, p0, v0

    if-ge v2, v1, :cond_14

    .line 218
    aget-short v1, p0, v0

    .line 216
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .end local v0           #i:I
    .end local v1           #min:S
    :cond_17
    move v2, v3

    .line 214
    goto :goto_5

    .line 221
    .restart local v0       #i:I
    .restart local v1       #min:S
    :cond_19
    return v1
.end method

.method public static saturatedCast(J)S
    .registers 4
    .parameter "value"

    .prologue
    .line 87
    const-wide/16 v0, 0x7fff

    cmp-long v0, p0, v0

    if-lez v0, :cond_9

    .line 88
    const/16 v0, 0x7fff

    .line 93
    :goto_8
    return v0

    .line 90
    :cond_9
    const-wide/16 v0, -0x8000

    cmp-long v0, p0, v0

    if-gez v0, :cond_12

    .line 91
    const/16 v0, -0x8000

    goto :goto_8

    .line 93
    :cond_12
    long-to-int v0, p0

    int-to-short v0, v0

    goto :goto_8
.end method

.method public static toArray(Ljava/util/Collection;)[S
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Short;",
            ">;)[S"
        }
    .end annotation

    .prologue
    .line 409
    .local p0, collection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Short;>;"
    instance-of v4, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;

    if-eqz v4, :cond_b

    .line 410
    check-cast p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;

    .end local p0           #collection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Short;>;"
    invoke-virtual {p0}, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->toShortArray()[S

    move-result-object v0

    .line 419
    .local v0, array:[S
    .local v1, boxedArray:[Ljava/lang/Object;
    .local v2, i:I
    .local v3, len:I
    .restart local p0       #collection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Short;>;"
    :cond_a
    return-object v0

    .line 413
    .end local v0           #array:[S
    .end local v1           #boxedArray:[Ljava/lang/Object;
    .end local v2           #i:I
    .end local v3           #len:I
    :cond_b
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 414
    .restart local v1       #boxedArray:[Ljava/lang/Object;
    array-length v3, v1

    .line 415
    .restart local v3       #len:I
    new-array v0, v3, [S

    .line 416
    .restart local v0       #array:[S
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_13
    if-ge v2, v3, :cond_a

    .line 417
    aget-object v4, v1, v2

    check-cast v4, Ljava/lang/Short;

    invoke-virtual {v4}, Ljava/lang/Short;->shortValue()S

    move-result v4

    aput-short v4, v0, v2

    .line 416
    add-int/lit8 v2, v2, 0x1

    goto :goto_13
.end method

.method public static toByteArray(S)[B
    .registers 4
    .parameter "value"
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "doesn\'t work"
    .end annotation

    .prologue
    .line 279
    const/4 v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    shr-int/lit8 v2, p0, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    int-to-byte v2, p0

    aput-byte v2, v0, v1

    return-object v0
.end method
