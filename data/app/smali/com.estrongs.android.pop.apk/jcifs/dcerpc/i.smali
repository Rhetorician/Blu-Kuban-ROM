.class public Ljcifs/dcerpc/i;
.super Ljcifs/dcerpc/k;


# static fields
.field static final a:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Ljcifs/dcerpc/i;->a:[C

    return-void

    :array_a
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 8

    const/4 v3, 0x0

    const/4 v5, 0x4

    const/4 v4, 0x2

    invoke-direct {p0}, Ljcifs/dcerpc/k;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v0, v3, v1}, Ljcifs/dcerpc/i;->a([CII)I

    move-result v1

    iput v1, p0, Ljcifs/dcerpc/i;->b:I

    const/16 v1, 0x9

    invoke-static {v0, v1, v5}, Ljcifs/dcerpc/i;->a([CII)I

    move-result v1

    invoke-static {v1}, Ljcifs/dcerpc/i;->b(I)S

    move-result v1

    iput-short v1, p0, Ljcifs/dcerpc/i;->c:S

    const/16 v1, 0xe

    invoke-static {v0, v1, v5}, Ljcifs/dcerpc/i;->a([CII)I

    move-result v1

    invoke-static {v1}, Ljcifs/dcerpc/i;->b(I)S

    move-result v1

    iput-short v1, p0, Ljcifs/dcerpc/i;->d:S

    const/16 v1, 0x13

    invoke-static {v0, v1, v4}, Ljcifs/dcerpc/i;->a([CII)I

    move-result v1

    invoke-static {v1}, Ljcifs/dcerpc/i;->a(I)B

    move-result v1

    iput-byte v1, p0, Ljcifs/dcerpc/i;->e:B

    const/16 v1, 0x15

    invoke-static {v0, v1, v4}, Ljcifs/dcerpc/i;->a([CII)I

    move-result v1

    invoke-static {v1}, Ljcifs/dcerpc/i;->a(I)B

    move-result v1

    iput-byte v1, p0, Ljcifs/dcerpc/i;->f:B

    const/4 v1, 0x6

    new-array v1, v1, [B

    iput-object v1, p0, Ljcifs/dcerpc/i;->g:[B

    iget-object v1, p0, Ljcifs/dcerpc/i;->g:[B

    const/16 v2, 0x18

    invoke-static {v0, v2, v4}, Ljcifs/dcerpc/i;->a([CII)I

    move-result v2

    invoke-static {v2}, Ljcifs/dcerpc/i;->a(I)B

    move-result v2

    aput-byte v2, v1, v3

    iget-object v1, p0, Ljcifs/dcerpc/i;->g:[B

    const/4 v2, 0x1

    const/16 v3, 0x1a

    invoke-static {v0, v3, v4}, Ljcifs/dcerpc/i;->a([CII)I

    move-result v3

    invoke-static {v3}, Ljcifs/dcerpc/i;->a(I)B

    move-result v3

    aput-byte v3, v1, v2

    iget-object v1, p0, Ljcifs/dcerpc/i;->g:[B

    const/16 v2, 0x1c

    invoke-static {v0, v2, v4}, Ljcifs/dcerpc/i;->a([CII)I

    move-result v2

    invoke-static {v2}, Ljcifs/dcerpc/i;->a(I)B

    move-result v2

    aput-byte v2, v1, v4

    iget-object v1, p0, Ljcifs/dcerpc/i;->g:[B

    const/4 v2, 0x3

    const/16 v3, 0x1e

    invoke-static {v0, v3, v4}, Ljcifs/dcerpc/i;->a([CII)I

    move-result v3

    invoke-static {v3}, Ljcifs/dcerpc/i;->a(I)B

    move-result v3

    aput-byte v3, v1, v2

    iget-object v1, p0, Ljcifs/dcerpc/i;->g:[B

    const/16 v2, 0x20

    invoke-static {v0, v2, v4}, Ljcifs/dcerpc/i;->a([CII)I

    move-result v2

    invoke-static {v2}, Ljcifs/dcerpc/i;->a(I)B

    move-result v2

    aput-byte v2, v1, v5

    iget-object v1, p0, Ljcifs/dcerpc/i;->g:[B

    const/4 v2, 0x5

    const/16 v3, 0x22

    invoke-static {v0, v3, v4}, Ljcifs/dcerpc/i;->a([CII)I

    move-result v0

    invoke-static {v0}, Ljcifs/dcerpc/i;->a(I)B

    move-result v0

    aput-byte v0, v1, v2

    return-void
.end method

.method private static a(I)B
    .registers 2

    and-int/lit16 v0, p0, 0xff

    int-to-byte v0, v0

    return v0
.end method

.method public static a([CII)I
    .registers 7

    const/4 v0, 0x0

    move v1, p1

    move v2, v0

    :goto_3
    array-length v3, p0

    if-ge v1, v3, :cond_34

    if-ge v0, p2, :cond_34

    shl-int/lit8 v2, v2, 0x4

    aget-char v3, p0, v1

    sparse-switch v3, :sswitch_data_36

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0, p1, p2}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_1a
    aget-char v3, p0, v1

    add-int/lit8 v3, v3, -0x30

    add-int/2addr v2, v3

    :goto_1f
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :sswitch_24
    aget-char v3, p0, v1

    add-int/lit8 v3, v3, -0x41

    add-int/lit8 v3, v3, 0xa

    add-int/2addr v2, v3

    goto :goto_1f

    :sswitch_2c
    aget-char v3, p0, v1

    add-int/lit8 v3, v3, -0x61

    add-int/lit8 v3, v3, 0xa

    add-int/2addr v2, v3

    goto :goto_1f

    :cond_34
    return v2

    nop

    :sswitch_data_36
    .sparse-switch
        0x30 -> :sswitch_1a
        0x31 -> :sswitch_1a
        0x32 -> :sswitch_1a
        0x33 -> :sswitch_1a
        0x34 -> :sswitch_1a
        0x35 -> :sswitch_1a
        0x36 -> :sswitch_1a
        0x37 -> :sswitch_1a
        0x38 -> :sswitch_1a
        0x39 -> :sswitch_1a
        0x41 -> :sswitch_24
        0x42 -> :sswitch_24
        0x43 -> :sswitch_24
        0x44 -> :sswitch_24
        0x45 -> :sswitch_24
        0x46 -> :sswitch_24
        0x61 -> :sswitch_2c
        0x62 -> :sswitch_2c
        0x63 -> :sswitch_2c
        0x64 -> :sswitch_2c
        0x65 -> :sswitch_2c
        0x66 -> :sswitch_2c
    .end sparse-switch
.end method

.method public static a(II)Ljava/lang/String;
    .registers 6

    new-array v2, p1, [C

    array-length v0, v2

    :goto_3
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_13

    sget-object v0, Ljcifs/dcerpc/i;->a:[C

    and-int/lit8 v3, p0, 0xf

    aget-char v0, v0, v3

    aput-char v0, v2, v1

    ushr-int/lit8 p0, p0, 0x4

    move v0, v1

    goto :goto_3

    :cond_13
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method private static b(I)S
    .registers 2

    const v0, 0xffff

    and-int/2addr v0, p0

    int-to-short v0, v0

    return v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 7

    const/4 v5, 0x4

    const/16 v4, 0x2d

    const/4 v3, 0x2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Ljcifs/dcerpc/i;->b:I

    const/16 v2, 0x8

    invoke-static {v1, v2}, Ljcifs/dcerpc/i;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Ljcifs/dcerpc/i;->c:S

    invoke-static {v1, v5}, Ljcifs/dcerpc/i;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Ljcifs/dcerpc/i;->d:S

    invoke-static {v1, v5}, Ljcifs/dcerpc/i;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Ljcifs/dcerpc/i;->e:B

    invoke-static {v1, v3}, Ljcifs/dcerpc/i;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Ljcifs/dcerpc/i;->f:B

    invoke-static {v1, v3}, Ljcifs/dcerpc/i;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljcifs/dcerpc/i;->g:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    invoke-static {v1, v3}, Ljcifs/dcerpc/i;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljcifs/dcerpc/i;->g:[B

    const/4 v2, 0x1

    aget-byte v1, v1, v2

    invoke-static {v1, v3}, Ljcifs/dcerpc/i;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljcifs/dcerpc/i;->g:[B

    aget-byte v1, v1, v3

    invoke-static {v1, v3}, Ljcifs/dcerpc/i;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljcifs/dcerpc/i;->g:[B

    const/4 v2, 0x3

    aget-byte v1, v1, v2

    invoke-static {v1, v3}, Ljcifs/dcerpc/i;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljcifs/dcerpc/i;->g:[B

    aget-byte v1, v1, v5

    invoke-static {v1, v3}, Ljcifs/dcerpc/i;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljcifs/dcerpc/i;->g:[B

    const/4 v2, 0x5

    aget-byte v1, v1, v2

    invoke-static {v1, v3}, Ljcifs/dcerpc/i;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
