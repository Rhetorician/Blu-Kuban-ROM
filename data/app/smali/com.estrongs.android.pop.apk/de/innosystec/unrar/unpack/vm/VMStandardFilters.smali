.class public final enum Lde/innosystec/unrar/unpack/vm/VMStandardFilters;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lde/innosystec/unrar/unpack/vm/VMStandardFilters;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lde/innosystec/unrar/unpack/vm/VMStandardFilters;

.field public static final enum VMSF_AUDIO:Lde/innosystec/unrar/unpack/vm/VMStandardFilters;

.field public static final enum VMSF_DELTA:Lde/innosystec/unrar/unpack/vm/VMStandardFilters;

.field public static final enum VMSF_E8:Lde/innosystec/unrar/unpack/vm/VMStandardFilters;

.field public static final enum VMSF_E8E9:Lde/innosystec/unrar/unpack/vm/VMStandardFilters;

.field public static final enum VMSF_ITANIUM:Lde/innosystec/unrar/unpack/vm/VMStandardFilters;

.field public static final enum VMSF_NONE:Lde/innosystec/unrar/unpack/vm/VMStandardFilters;

.field public static final enum VMSF_RGB:Lde/innosystec/unrar/unpack/vm/VMStandardFilters;

.field public static final enum VMSF_UPCASE:Lde/innosystec/unrar/unpack/vm/VMStandardFilters;


# instance fields
.field private filter:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;

    const-string v1, "VMSF_NONE"

    invoke-direct {v0, v1, v4, v4}, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->VMSF_NONE:Lde/innosystec/unrar/unpack/vm/VMStandardFilters;

    new-instance v0, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;

    const-string v1, "VMSF_E8"

    invoke-direct {v0, v1, v5, v5}, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->VMSF_E8:Lde/innosystec/unrar/unpack/vm/VMStandardFilters;

    new-instance v0, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;

    const-string v1, "VMSF_E8E9"

    invoke-direct {v0, v1, v6, v6}, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->VMSF_E8E9:Lde/innosystec/unrar/unpack/vm/VMStandardFilters;

    new-instance v0, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;

    const-string v1, "VMSF_ITANIUM"

    invoke-direct {v0, v1, v7, v7}, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->VMSF_ITANIUM:Lde/innosystec/unrar/unpack/vm/VMStandardFilters;

    new-instance v0, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;

    const-string v1, "VMSF_RGB"

    invoke-direct {v0, v1, v8, v8}, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->VMSF_RGB:Lde/innosystec/unrar/unpack/vm/VMStandardFilters;

    new-instance v0, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;

    const-string v1, "VMSF_AUDIO"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->VMSF_AUDIO:Lde/innosystec/unrar/unpack/vm/VMStandardFilters;

    new-instance v0, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;

    const-string v1, "VMSF_DELTA"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->VMSF_DELTA:Lde/innosystec/unrar/unpack/vm/VMStandardFilters;

    new-instance v0, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;

    const-string v1, "VMSF_UPCASE"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->VMSF_UPCASE:Lde/innosystec/unrar/unpack/vm/VMStandardFilters;

    const/16 v0, 0x8

    new-array v0, v0, [Lde/innosystec/unrar/unpack/vm/VMStandardFilters;

    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->VMSF_NONE:Lde/innosystec/unrar/unpack/vm/VMStandardFilters;

    aput-object v1, v0, v4

    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->VMSF_E8:Lde/innosystec/unrar/unpack/vm/VMStandardFilters;

    aput-object v1, v0, v5

    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->VMSF_E8E9:Lde/innosystec/unrar/unpack/vm/VMStandardFilters;

    aput-object v1, v0, v6

    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->VMSF_ITANIUM:Lde/innosystec/unrar/unpack/vm/VMStandardFilters;

    aput-object v1, v0, v7

    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->VMSF_RGB:Lde/innosystec/unrar/unpack/vm/VMStandardFilters;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->VMSF_AUDIO:Lde/innosystec/unrar/unpack/vm/VMStandardFilters;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->VMSF_DELTA:Lde/innosystec/unrar/unpack/vm/VMStandardFilters;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->VMSF_UPCASE:Lde/innosystec/unrar/unpack/vm/VMStandardFilters;

    aput-object v2, v0, v1

    sput-object v0, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->ENUM$VALUES:[Lde/innosystec/unrar/unpack/vm/VMStandardFilters;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->filter:I

    return-void
.end method

.method public static findFilter(I)Lde/innosystec/unrar/unpack/vm/VMStandardFilters;
    .registers 2

    sget-object v0, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->VMSF_NONE:Lde/innosystec/unrar/unpack/vm/VMStandardFilters;

    invoke-virtual {v0, p0}, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->equals(I)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->VMSF_NONE:Lde/innosystec/unrar/unpack/vm/VMStandardFilters;

    :goto_a
    return-object v0

    :cond_b
    sget-object v0, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->VMSF_E8:Lde/innosystec/unrar/unpack/vm/VMStandardFilters;

    invoke-virtual {v0, p0}, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->equals(I)Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object v0, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->VMSF_E8:Lde/innosystec/unrar/unpack/vm/VMStandardFilters;

    goto :goto_a

    :cond_16
    sget-object v0, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->VMSF_E8E9:Lde/innosystec/unrar/unpack/vm/VMStandardFilters;

    invoke-virtual {v0, p0}, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->equals(I)Z

    move-result v0

    if-eqz v0, :cond_21

    sget-object v0, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->VMSF_E8E9:Lde/innosystec/unrar/unpack/vm/VMStandardFilters;

    goto :goto_a

    :cond_21
    sget-object v0, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->VMSF_ITANIUM:Lde/innosystec/unrar/unpack/vm/VMStandardFilters;

    invoke-virtual {v0, p0}, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->equals(I)Z

    move-result v0

    if-eqz v0, :cond_2c

    sget-object v0, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->VMSF_ITANIUM:Lde/innosystec/unrar/unpack/vm/VMStandardFilters;

    goto :goto_a

    :cond_2c
    sget-object v0, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->VMSF_RGB:Lde/innosystec/unrar/unpack/vm/VMStandardFilters;

    invoke-virtual {v0, p0}, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->equals(I)Z

    move-result v0

    if-eqz v0, :cond_37

    sget-object v0, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->VMSF_RGB:Lde/innosystec/unrar/unpack/vm/VMStandardFilters;

    goto :goto_a

    :cond_37
    sget-object v0, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->VMSF_AUDIO:Lde/innosystec/unrar/unpack/vm/VMStandardFilters;

    invoke-virtual {v0, p0}, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->equals(I)Z

    move-result v0

    if-eqz v0, :cond_42

    sget-object v0, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->VMSF_AUDIO:Lde/innosystec/unrar/unpack/vm/VMStandardFilters;

    goto :goto_a

    :cond_42
    sget-object v0, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->VMSF_DELTA:Lde/innosystec/unrar/unpack/vm/VMStandardFilters;

    invoke-virtual {v0, p0}, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->equals(I)Z

    move-result v0

    if-eqz v0, :cond_4d

    sget-object v0, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->VMSF_DELTA:Lde/innosystec/unrar/unpack/vm/VMStandardFilters;

    goto :goto_a

    :cond_4d
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static valueOf(Ljava/lang/String;)Lde/innosystec/unrar/unpack/vm/VMStandardFilters;
    .registers 2

    const-class v0, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;

    return-object v0
.end method

.method public static values()[Lde/innosystec/unrar/unpack/vm/VMStandardFilters;
    .registers 4

    const/4 v3, 0x0

    sget-object v0, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->ENUM$VALUES:[Lde/innosystec/unrar/unpack/vm/VMStandardFilters;

    array-length v1, v0

    new-array v2, v1, [Lde/innosystec/unrar/unpack/vm/VMStandardFilters;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public equals(I)Z
    .registers 3

    iget v0, p0, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->filter:I

    if-ne v0, p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public getFilter()I
    .registers 2

    iget v0, p0, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->filter:I

    return v0
.end method
