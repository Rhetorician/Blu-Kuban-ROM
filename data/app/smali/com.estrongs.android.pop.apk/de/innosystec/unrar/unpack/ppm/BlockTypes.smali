.class public final enum Lde/innosystec/unrar/unpack/ppm/BlockTypes;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lde/innosystec/unrar/unpack/ppm/BlockTypes;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BLOCK_LZ:Lde/innosystec/unrar/unpack/ppm/BlockTypes;

.field public static final enum BLOCK_PPM:Lde/innosystec/unrar/unpack/ppm/BlockTypes;

.field private static final synthetic ENUM$VALUES:[Lde/innosystec/unrar/unpack/ppm/BlockTypes;


# instance fields
.field private blockType:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lde/innosystec/unrar/unpack/ppm/BlockTypes;

    const-string v1, "BLOCK_LZ"

    invoke-direct {v0, v1, v2, v2}, Lde/innosystec/unrar/unpack/ppm/BlockTypes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lde/innosystec/unrar/unpack/ppm/BlockTypes;->BLOCK_LZ:Lde/innosystec/unrar/unpack/ppm/BlockTypes;

    new-instance v0, Lde/innosystec/unrar/unpack/ppm/BlockTypes;

    const-string v1, "BLOCK_PPM"

    invoke-direct {v0, v1, v3, v3}, Lde/innosystec/unrar/unpack/ppm/BlockTypes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lde/innosystec/unrar/unpack/ppm/BlockTypes;->BLOCK_PPM:Lde/innosystec/unrar/unpack/ppm/BlockTypes;

    const/4 v0, 0x2

    new-array v0, v0, [Lde/innosystec/unrar/unpack/ppm/BlockTypes;

    sget-object v1, Lde/innosystec/unrar/unpack/ppm/BlockTypes;->BLOCK_LZ:Lde/innosystec/unrar/unpack/ppm/BlockTypes;

    aput-object v1, v0, v2

    sget-object v1, Lde/innosystec/unrar/unpack/ppm/BlockTypes;->BLOCK_PPM:Lde/innosystec/unrar/unpack/ppm/BlockTypes;

    aput-object v1, v0, v3

    sput-object v0, Lde/innosystec/unrar/unpack/ppm/BlockTypes;->ENUM$VALUES:[Lde/innosystec/unrar/unpack/ppm/BlockTypes;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lde/innosystec/unrar/unpack/ppm/BlockTypes;->blockType:I

    return-void
.end method

.method public static findBlockType(I)Lde/innosystec/unrar/unpack/ppm/BlockTypes;
    .registers 2

    sget-object v0, Lde/innosystec/unrar/unpack/ppm/BlockTypes;->BLOCK_LZ:Lde/innosystec/unrar/unpack/ppm/BlockTypes;

    invoke-virtual {v0, p0}, Lde/innosystec/unrar/unpack/ppm/BlockTypes;->equals(I)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lde/innosystec/unrar/unpack/ppm/BlockTypes;->BLOCK_LZ:Lde/innosystec/unrar/unpack/ppm/BlockTypes;

    :goto_a
    return-object v0

    :cond_b
    sget-object v0, Lde/innosystec/unrar/unpack/ppm/BlockTypes;->BLOCK_PPM:Lde/innosystec/unrar/unpack/ppm/BlockTypes;

    invoke-virtual {v0, p0}, Lde/innosystec/unrar/unpack/ppm/BlockTypes;->equals(I)Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object v0, Lde/innosystec/unrar/unpack/ppm/BlockTypes;->BLOCK_PPM:Lde/innosystec/unrar/unpack/ppm/BlockTypes;

    goto :goto_a

    :cond_16
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static valueOf(Ljava/lang/String;)Lde/innosystec/unrar/unpack/ppm/BlockTypes;
    .registers 2

    const-class v0, Lde/innosystec/unrar/unpack/ppm/BlockTypes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lde/innosystec/unrar/unpack/ppm/BlockTypes;

    return-object v0
.end method

.method public static values()[Lde/innosystec/unrar/unpack/ppm/BlockTypes;
    .registers 4

    const/4 v3, 0x0

    sget-object v0, Lde/innosystec/unrar/unpack/ppm/BlockTypes;->ENUM$VALUES:[Lde/innosystec/unrar/unpack/ppm/BlockTypes;

    array-length v1, v0

    new-array v2, v1, [Lde/innosystec/unrar/unpack/ppm/BlockTypes;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public equals(I)Z
    .registers 3

    iget v0, p0, Lde/innosystec/unrar/unpack/ppm/BlockTypes;->blockType:I

    if-ne v0, p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public getBlockType()I
    .registers 2

    iget v0, p0, Lde/innosystec/unrar/unpack/ppm/BlockTypes;->blockType:I

    return v0
.end method
