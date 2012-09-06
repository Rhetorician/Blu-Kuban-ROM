.class Landroid/support/v4/app/HCSparseArray;
.super Ljava/lang/Object;
.source "HCSparseArray.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DELETED:Ljava/lang/Object;


# instance fields
.field private mGarbage:Z

.field private mKeys:[I

.field private mSize:I

.field private mValues:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/app/HCSparseArray;->DELETED:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 31
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroid/support/v4/app/HCSparseArray;-><init>(I)V

    .line 32
    return-void
.end method

.method public constructor <init>(I)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-boolean v2, p0, Landroid/support/v4/app/HCSparseArray;->mGarbage:Z

    .line 40
    invoke-static {p1}, Landroid/support/v4/app/HCSparseArray;->idealIntArraySize(I)I

    move-result v0

    .line 42
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    .line 43
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    .line 44
    iput v2, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    .line 45
    return-void
.end method

.method private static binarySearch([IIII)I
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 313
    add-int v2, p1, p2

    add-int/lit8 v0, p1, -0x1

    move v1, v0

    move v0, v2

    .line 315
    :goto_6
    sub-int v2, v0, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_17

    .line 316
    add-int v2, v0, v1

    div-int/lit8 v2, v2, 0x2

    .line 318
    aget v3, p0, v2

    if-ge v3, p3, :cond_15

    move v1, v2

    .line 319
    goto :goto_6

    :cond_15
    move v0, v2

    .line 321
    goto :goto_6

    .line 324
    :cond_17
    add-int v1, p1, p2

    if-ne v0, v1, :cond_20

    .line 325
    add-int v0, p1, p2

    xor-int/lit8 v0, v0, -0x1

    .line 329
    :cond_1f
    :goto_1f
    return v0

    .line 326
    :cond_20
    aget v1, p0, v0

    if-eq v1, p3, :cond_1f

    .line 329
    xor-int/lit8 v0, v0, -0x1

    goto :goto_1f
.end method

.method private gc()V
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 103
    iget v3, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    .line 105
    iget-object v4, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    .line 106
    iget-object v5, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    move v1, v2

    move v0, v2

    .line 108
    :goto_9
    if-ge v1, v3, :cond_1e

    .line 109
    aget-object v6, v5, v1

    .line 111
    sget-object v7, Landroid/support/v4/app/HCSparseArray;->DELETED:Ljava/lang/Object;

    if-eq v6, v7, :cond_1b

    .line 112
    if-eq v1, v0, :cond_19

    .line 113
    aget v7, v4, v1

    aput v7, v4, v0

    .line 114
    aput-object v6, v5, v0

    .line 117
    :cond_19
    add-int/lit8 v0, v0, 0x1

    .line 108
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 121
    :cond_1e
    iput-boolean v2, p0, Landroid/support/v4/app/HCSparseArray;->mGarbage:Z

    .line 122
    iput v0, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    .line 125
    return-void
.end method

.method static idealByteArraySize(I)I
    .registers 4
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 333
    const/4 v0, 0x4

    :goto_2
    const/16 v1, 0x20

    if-ge v0, v1, :cond_10

    .line 334
    shl-int v1, v2, v0

    add-int/lit8 v1, v1, -0xc

    if-gt p0, v1, :cond_11

    .line 335
    shl-int v0, v2, v0

    add-int/lit8 p0, v0, -0xc

    .line 337
    :cond_10
    return p0

    .line 333
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method static idealIntArraySize(I)I
    .registers 2
    .parameter

    .prologue
    .line 341
    mul-int/lit8 v0, p0, 0x4

    invoke-static {v0}, Landroid/support/v4/app/HCSparseArray;->idealByteArraySize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    return v0
.end method


# virtual methods
.method public append(ILjava/lang/Object;)V
    .registers 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 283
    iget v0, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    iget v1, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    if-gt p1, v0, :cond_13

    .line 284
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/app/HCSparseArray;->put(ILjava/lang/Object;)V

    .line 310
    :goto_12
    return-void

    .line 288
    :cond_13
    iget-boolean v0, p0, Landroid/support/v4/app/HCSparseArray;->mGarbage:Z

    if-eqz v0, :cond_21

    iget v0, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    iget-object v1, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    array-length v1, v1

    if-lt v0, v1, :cond_21

    .line 289
    invoke-direct {p0}, Landroid/support/v4/app/HCSparseArray;->gc()V

    .line 292
    :cond_21
    iget v0, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    .line 293
    iget-object v1, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    array-length v1, v1

    if-lt v0, v1, :cond_46

    .line 294
    add-int/lit8 v1, v0, 0x1

    invoke-static {v1}, Landroid/support/v4/app/HCSparseArray;->idealIntArraySize(I)I

    move-result v1

    .line 296
    new-array v2, v1, [I

    .line 297
    new-array v1, v1, [Ljava/lang/Object;

    .line 300
    iget-object v3, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    iget-object v4, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    array-length v4, v4

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 301
    iget-object v3, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    iget-object v4, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    array-length v4, v4

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 303
    iput-object v2, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    .line 304
    iput-object v1, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    .line 307
    :cond_46
    iget-object v1, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    aput p1, v1, v0

    .line 308
    iget-object v1, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p2, v1, v0

    .line 309
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    goto :goto_12
.end method

.method public clear()V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 267
    iget v2, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    .line 268
    iget-object v3, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    move v0, v1

    .line 270
    :goto_6
    if-ge v0, v2, :cond_e

    .line 271
    const/4 v4, 0x0

    aput-object v4, v3, v0

    .line 270
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 274
    :cond_e
    iput v1, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    .line 275
    iput-boolean v1, p0, Landroid/support/v4/app/HCSparseArray;->mGarbage:Z

    .line 276
    return-void
.end method

.method public delete(I)V
    .registers 5
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    const/4 v1, 0x0

    iget v2, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    invoke-static {v0, v1, v2, p1}, Landroid/support/v4/app/HCSparseArray;->binarySearch([IIII)I

    move-result v0

    .line 75
    if-ltz v0, :cond_1c

    .line 76
    iget-object v1, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Landroid/support/v4/app/HCSparseArray;->DELETED:Ljava/lang/Object;

    if-eq v1, v2, :cond_1c

    .line 77
    iget-object v1, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    sget-object v2, Landroid/support/v4/app/HCSparseArray;->DELETED:Ljava/lang/Object;

    aput-object v2, v1, v0

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/HCSparseArray;->mGarbage:Z

    .line 81
    :cond_1c
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/app/HCSparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    const/4 v1, 0x0

    iget v2, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    invoke-static {v0, v1, v2, p1}, Landroid/support/v4/app/HCSparseArray;->binarySearch([IIII)I

    move-result v0

    .line 62
    if-ltz v0, :cond_13

    iget-object v1, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Landroid/support/v4/app/HCSparseArray;->DELETED:Ljava/lang/Object;

    if-ne v1, v2, :cond_14

    .line 65
    :cond_13
    :goto_13
    return-object p2

    :cond_14
    iget-object v1, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    aget-object p2, v1, v0

    goto :goto_13
.end method

.method public indexOfKey(I)I
    .registers 5
    .parameter

    .prologue
    .line 236
    iget-boolean v0, p0, Landroid/support/v4/app/HCSparseArray;->mGarbage:Z

    if-eqz v0, :cond_7

    .line 237
    invoke-direct {p0}, Landroid/support/v4/app/HCSparseArray;->gc()V

    .line 240
    :cond_7
    iget-object v0, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    const/4 v1, 0x0

    iget v2, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    invoke-static {v0, v1, v2, p1}, Landroid/support/v4/app/HCSparseArray;->binarySearch([IIII)I

    move-result v0

    return v0
.end method

.method public indexOfValue(Ljava/lang/Object;)I
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    .prologue
    .line 252
    iget-boolean v0, p0, Landroid/support/v4/app/HCSparseArray;->mGarbage:Z

    if-eqz v0, :cond_7

    .line 253
    invoke-direct {p0}, Landroid/support/v4/app/HCSparseArray;->gc()V

    .line 256
    :cond_7
    const/4 v0, 0x0

    :goto_8
    iget v1, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    if-ge v0, v1, :cond_16

    .line 257
    iget-object v1, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_13

    .line 260
    :goto_12
    return v0

    .line 256
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 260
    :cond_16
    const/4 v0, -0x1

    goto :goto_12
.end method

.method public keyAt(I)I
    .registers 3
    .parameter

    .prologue
    .line 197
    iget-boolean v0, p0, Landroid/support/v4/app/HCSparseArray;->mGarbage:Z

    if-eqz v0, :cond_7

    .line 198
    invoke-direct {p0}, Landroid/support/v4/app/HCSparseArray;->gc()V

    .line 201
    :cond_7
    iget-object v0, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    aget v0, v0, p1

    return v0
.end method

.method public put(ILjava/lang/Object;)V
    .registers 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 133
    iget-object v0, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    iget v1, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    invoke-static {v0, v5, v1, p1}, Landroid/support/v4/app/HCSparseArray;->binarySearch([IIII)I

    move-result v0

    .line 135
    if-ltz v0, :cond_10

    .line 136
    iget-object v1, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p2, v1, v0

    .line 177
    :goto_f
    return-void

    .line 138
    :cond_10
    xor-int/lit8 v0, v0, -0x1

    .line 140
    iget v1, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    if-ge v0, v1, :cond_27

    iget-object v1, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Landroid/support/v4/app/HCSparseArray;->DELETED:Ljava/lang/Object;

    if-ne v1, v2, :cond_27

    .line 141
    iget-object v1, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    aput p1, v1, v0

    .line 142
    iget-object v1, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p2, v1, v0

    goto :goto_f

    .line 146
    :cond_27
    iget-boolean v1, p0, Landroid/support/v4/app/HCSparseArray;->mGarbage:Z

    if-eqz v1, :cond_3f

    iget v1, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    iget-object v2, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    array-length v2, v2

    if-lt v1, v2, :cond_3f

    .line 147
    invoke-direct {p0}, Landroid/support/v4/app/HCSparseArray;->gc()V

    .line 150
    iget-object v0, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    iget v1, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    invoke-static {v0, v5, v1, p1}, Landroid/support/v4/app/HCSparseArray;->binarySearch([IIII)I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    .line 153
    :cond_3f
    iget v1, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    iget-object v2, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    array-length v2, v2

    if-lt v1, v2, :cond_66

    .line 154
    iget v1, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Landroid/support/v4/app/HCSparseArray;->idealIntArraySize(I)I

    move-result v1

    .line 156
    new-array v2, v1, [I

    .line 157
    new-array v1, v1, [Ljava/lang/Object;

    .line 160
    iget-object v3, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    iget-object v4, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    array-length v4, v4

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 161
    iget-object v3, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    iget-object v4, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    array-length v4, v4

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 163
    iput-object v2, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    .line 164
    iput-object v1, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    .line 167
    :cond_66
    iget v1, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    sub-int/2addr v1, v0

    if-eqz v1, :cond_83

    .line 169
    iget-object v1, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    iget-object v2, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 170
    iget-object v1, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    iget-object v2, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 173
    :cond_83
    iget-object v1, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    aput p1, v1, v0

    .line 174
    iget-object v1, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p2, v1, v0

    .line 175
    iget v0, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    goto/16 :goto_f
.end method

.method public remove(I)V
    .registers 2
    .parameter

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/support/v4/app/HCSparseArray;->delete(I)V

    .line 88
    return-void
.end method

.method public removeAt(I)V
    .registers 4
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v0, v0, p1

    sget-object v1, Landroid/support/v4/app/HCSparseArray;->DELETED:Ljava/lang/Object;

    if-eq v0, v1, :cond_11

    .line 95
    iget-object v0, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    sget-object v1, Landroid/support/v4/app/HCSparseArray;->DELETED:Ljava/lang/Object;

    aput-object v1, v0, p1

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/HCSparseArray;->mGarbage:Z

    .line 98
    :cond_11
    return-void
.end method

.method public setValueAt(ILjava/lang/Object;)V
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 223
    iget-boolean v0, p0, Landroid/support/v4/app/HCSparseArray;->mGarbage:Z

    if-eqz v0, :cond_7

    .line 224
    invoke-direct {p0}, Landroid/support/v4/app/HCSparseArray;->gc()V

    .line 227
    :cond_7
    iget-object v0, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 228
    return-void
.end method

.method public size()I
    .registers 2

    .prologue
    .line 184
    iget-boolean v0, p0, Landroid/support/v4/app/HCSparseArray;->mGarbage:Z

    if-eqz v0, :cond_7

    .line 185
    invoke-direct {p0}, Landroid/support/v4/app/HCSparseArray;->gc()V

    .line 188
    :cond_7
    iget v0, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    return v0
.end method

.method public valueAt(I)Ljava/lang/Object;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 210
    iget-boolean v0, p0, Landroid/support/v4/app/HCSparseArray;->mGarbage:Z

    if-eqz v0, :cond_7

    .line 211
    invoke-direct {p0}, Landroid/support/v4/app/HCSparseArray;->gc()V

    .line 214
    :cond_7
    iget-object v0, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method
