.class Lcom/google/common/primitives/Booleans$BooleanArrayAsList;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/RandomAccess;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final array:[Z

.field final end:I

.field final start:I


# direct methods
.method constructor <init>([Z)V
    .registers 4
    .parameter

    .prologue
    .line 351
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;-><init>([ZII)V

    .line 352
    return-void
.end method

.method constructor <init>([ZII)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 354
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 355
    iput-object p1, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->array:[Z

    .line 356
    iput p2, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->start:I

    .line 357
    iput p3, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->end:I

    .line 358
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    .line 375
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->array:[Z

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget v2, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->start:I

    iget v3, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->end:I

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/primitives/Booleans;->a([ZZII)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_19

    const/4 v0, 0x1

    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 419
    if-ne p1, p0, :cond_5

    .line 435
    :cond_4
    :goto_4
    return v0

    .line 422
    :cond_5
    instance-of v2, p1, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;

    if-eqz v2, :cond_2f

    .line 423
    check-cast p1, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;

    .line 424
    invoke-virtual {p0}, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->size()I

    move-result v3

    .line 425
    invoke-virtual {p1}, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->size()I

    move-result v2

    if-eq v2, v3, :cond_17

    move v0, v1

    .line 426
    goto :goto_4

    :cond_17
    move v2, v1

    .line 428
    :goto_18
    if-ge v2, v3, :cond_4

    .line 429
    iget-object v4, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->array:[Z

    iget v5, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->start:I

    add-int/2addr v5, v2

    aget-boolean v4, v4, v5

    iget-object v5, p1, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->array:[Z

    iget v6, p1, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->start:I

    add-int/2addr v6, v2

    aget-boolean v5, v5, v6

    if-eq v4, v5, :cond_2c

    move v0, v1

    .line 430
    goto :goto_4

    .line 428
    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 435
    :cond_2f
    invoke-super {p0, p1}, Ljava/util/AbstractList;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4
.end method

.method public get(I)Ljava/lang/Boolean;
    .registers 4
    .parameter

    .prologue
    .line 369
    invoke-virtual {p0}, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/t;->a(II)I

    .line 370
    iget-object v0, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->array:[Z

    iget v1, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->start:I

    add-int/2addr v1, p1

    aget-boolean v0, v0, v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 343
    invoke-virtual {p0, p1}, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->get(I)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 439
    const/4 v1, 0x1

    .line 440
    iget v0, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->start:I

    :goto_3
    iget v2, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->end:I

    if-ge v0, v2, :cond_18

    .line 441
    mul-int/lit8 v2, v1, 0x1f

    iget-object v1, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->array:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_15

    const/16 v1, 0x4cf

    :goto_11
    add-int/2addr v1, v2

    .line 440
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 441
    :cond_15
    const/16 v1, 0x4d5

    goto :goto_11

    .line 443
    :cond_18
    return v1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 6
    .parameter

    .prologue
    .line 381
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_1a

    .line 382
    iget-object v0, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->array:[Z

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget v2, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->start:I

    iget v3, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->end:I

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/primitives/Booleans;->a([ZZII)I

    move-result v0

    .line 383
    if-ltz v0, :cond_1a

    .line 384
    iget v1, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->start:I

    sub-int/2addr v0, v1

    .line 387
    :goto_19
    return v0

    :cond_1a
    const/4 v0, -0x1

    goto :goto_19
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 365
    const/4 v0, 0x0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .registers 6
    .parameter

    .prologue
    .line 392
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_1a

    .line 393
    iget-object v0, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->array:[Z

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget v2, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->start:I

    iget v3, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->end:I

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/primitives/Booleans;->b([ZZII)I

    move-result v0

    .line 394
    if-ltz v0, :cond_1a

    .line 395
    iget v1, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->start:I

    sub-int/2addr v0, v1

    .line 398
    :goto_19
    return v0

    :cond_1a
    const/4 v0, -0x1

    goto :goto_19
.end method

.method public set(ILjava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 402
    invoke-virtual {p0}, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/t;->a(II)I

    .line 403
    iget-object v0, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->array:[Z

    iget v1, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->start:I

    add-int/2addr v1, p1

    aget-boolean v0, v0, v1

    .line 404
    iget-object v1, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->array:[Z

    iget v2, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->start:I

    add-int/2addr v2, p1

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    aput-boolean v3, v1, v2

    .line 405
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 343
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->set(ILjava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 3

    .prologue
    .line 361
    iget v0, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->end:I

    iget v1, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->start:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 410
    invoke-virtual {p0}, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->size()I

    move-result v0

    .line 411
    invoke-static {p1, p2, v0}, Lcom/google/common/base/t;->a(III)V

    .line 412
    if-ne p1, p2, :cond_e

    .line 413
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 415
    :goto_d
    return-object v0

    :cond_e
    new-instance v0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;

    iget-object v1, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->array:[Z

    iget v2, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->start:I

    add-int/2addr v2, p1

    iget v3, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->start:I

    add-int/2addr v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;-><init>([ZII)V

    goto :goto_d
.end method

.method toBooleanArray()[Z
    .registers 6

    .prologue
    .line 457
    invoke-virtual {p0}, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->size()I

    move-result v0

    .line 458
    new-array v1, v0, [Z

    .line 459
    iget-object v2, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->array:[Z

    iget v3, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->start:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 460
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 447
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x7

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 448
    iget-object v0, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->array:[Z

    iget v1, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->start:I

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_2e

    const-string v0, "[true"

    :goto_15
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    iget v0, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->start:I

    add-int/lit8 v0, v0, 0x1

    :goto_1c
    iget v1, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->end:I

    if-ge v0, v1, :cond_34

    .line 450
    iget-object v1, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->array:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_31

    const-string v1, ", true"

    :goto_28
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 448
    :cond_2e
    const-string v0, "[false"

    goto :goto_15

    .line 450
    :cond_31
    const-string v1, ", false"

    goto :goto_28

    .line 452
    :cond_34
    const/16 v0, 0x5d

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method