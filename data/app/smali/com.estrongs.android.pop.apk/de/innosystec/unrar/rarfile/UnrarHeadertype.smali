.class public final enum Lde/innosystec/unrar/rarfile/UnrarHeadertype;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lde/innosystec/unrar/rarfile/UnrarHeadertype;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AvHeader:Lde/innosystec/unrar/rarfile/UnrarHeadertype;

.field public static final enum CommHeader:Lde/innosystec/unrar/rarfile/UnrarHeadertype;

.field private static final synthetic ENUM$VALUES:[Lde/innosystec/unrar/rarfile/UnrarHeadertype;

.field public static final enum EndArcHeader:Lde/innosystec/unrar/rarfile/UnrarHeadertype;

.field public static final enum FileHeader:Lde/innosystec/unrar/rarfile/UnrarHeadertype;

.field public static final enum MainHeader:Lde/innosystec/unrar/rarfile/UnrarHeadertype;

.field public static final enum MarkHeader:Lde/innosystec/unrar/rarfile/UnrarHeadertype;

.field public static final enum NewSubHeader:Lde/innosystec/unrar/rarfile/UnrarHeadertype;

.field public static final enum ProtectHeader:Lde/innosystec/unrar/rarfile/UnrarHeadertype;

.field public static final enum SignHeader:Lde/innosystec/unrar/rarfile/UnrarHeadertype;

.field public static final enum SubHeader:Lde/innosystec/unrar/rarfile/UnrarHeadertype;


# instance fields
.field private headerByte:B


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    const-string v1, "MainHeader"

    const/16 v2, 0x73

    invoke-direct {v0, v1, v4, v2}, Lde/innosystec/unrar/rarfile/UnrarHeadertype;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->MainHeader:Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    new-instance v0, Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    const-string v1, "MarkHeader"

    const/16 v2, 0x72

    invoke-direct {v0, v1, v5, v2}, Lde/innosystec/unrar/rarfile/UnrarHeadertype;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->MarkHeader:Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    new-instance v0, Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    const-string v1, "FileHeader"

    const/16 v2, 0x74

    invoke-direct {v0, v1, v6, v2}, Lde/innosystec/unrar/rarfile/UnrarHeadertype;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->FileHeader:Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    new-instance v0, Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    const-string v1, "CommHeader"

    const/16 v2, 0x75

    invoke-direct {v0, v1, v7, v2}, Lde/innosystec/unrar/rarfile/UnrarHeadertype;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->CommHeader:Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    new-instance v0, Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    const-string v1, "AvHeader"

    const/16 v2, 0x76

    invoke-direct {v0, v1, v8, v2}, Lde/innosystec/unrar/rarfile/UnrarHeadertype;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->AvHeader:Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    new-instance v0, Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    const-string v1, "SubHeader"

    const/4 v2, 0x5

    const/16 v3, 0x77

    invoke-direct {v0, v1, v2, v3}, Lde/innosystec/unrar/rarfile/UnrarHeadertype;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->SubHeader:Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    new-instance v0, Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    const-string v1, "ProtectHeader"

    const/4 v2, 0x6

    const/16 v3, 0x78

    invoke-direct {v0, v1, v2, v3}, Lde/innosystec/unrar/rarfile/UnrarHeadertype;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->ProtectHeader:Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    new-instance v0, Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    const-string v1, "SignHeader"

    const/4 v2, 0x7

    const/16 v3, 0x79

    invoke-direct {v0, v1, v2, v3}, Lde/innosystec/unrar/rarfile/UnrarHeadertype;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->SignHeader:Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    new-instance v0, Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    const-string v1, "NewSubHeader"

    const/16 v2, 0x8

    const/16 v3, 0x7a

    invoke-direct {v0, v1, v2, v3}, Lde/innosystec/unrar/rarfile/UnrarHeadertype;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->NewSubHeader:Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    new-instance v0, Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    const-string v1, "EndArcHeader"

    const/16 v2, 0x9

    const/16 v3, 0x7b

    invoke-direct {v0, v1, v2, v3}, Lde/innosystec/unrar/rarfile/UnrarHeadertype;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->EndArcHeader:Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    const/16 v0, 0xa

    new-array v0, v0, [Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    sget-object v1, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->MainHeader:Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    aput-object v1, v0, v4

    sget-object v1, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->MarkHeader:Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    aput-object v1, v0, v5

    sget-object v1, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->FileHeader:Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    aput-object v1, v0, v6

    sget-object v1, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->CommHeader:Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    aput-object v1, v0, v7

    sget-object v1, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->AvHeader:Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->SubHeader:Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->ProtectHeader:Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->SignHeader:Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->NewSubHeader:Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->EndArcHeader:Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    aput-object v2, v0, v1

    sput-object v0, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->ENUM$VALUES:[Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IB)V
    .registers 4

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-byte p3, p0, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->headerByte:B

    return-void
.end method

.method public static findType(B)Lde/innosystec/unrar/rarfile/UnrarHeadertype;
    .registers 2

    sget-object v0, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->MarkHeader:Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    invoke-virtual {v0, p0}, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->equals(B)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->MarkHeader:Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    :goto_a
    return-object v0

    :cond_b
    sget-object v0, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->MainHeader:Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    invoke-virtual {v0, p0}, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->equals(B)Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object v0, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->MainHeader:Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    goto :goto_a

    :cond_16
    sget-object v0, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->FileHeader:Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    invoke-virtual {v0, p0}, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->equals(B)Z

    move-result v0

    if-eqz v0, :cond_21

    sget-object v0, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->FileHeader:Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    goto :goto_a

    :cond_21
    sget-object v0, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->EndArcHeader:Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    invoke-virtual {v0, p0}, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->equals(B)Z

    move-result v0

    if-eqz v0, :cond_2c

    sget-object v0, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->EndArcHeader:Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    goto :goto_a

    :cond_2c
    sget-object v0, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->NewSubHeader:Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    invoke-virtual {v0, p0}, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->equals(B)Z

    move-result v0

    if-eqz v0, :cond_37

    sget-object v0, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->NewSubHeader:Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    goto :goto_a

    :cond_37
    sget-object v0, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->SubHeader:Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    invoke-virtual {v0, p0}, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->equals(B)Z

    move-result v0

    if-eqz v0, :cond_42

    sget-object v0, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->SubHeader:Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    goto :goto_a

    :cond_42
    sget-object v0, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->SignHeader:Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    invoke-virtual {v0, p0}, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->equals(B)Z

    move-result v0

    if-eqz v0, :cond_4d

    sget-object v0, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->SignHeader:Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    goto :goto_a

    :cond_4d
    sget-object v0, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->ProtectHeader:Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    invoke-virtual {v0, p0}, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->equals(B)Z

    move-result v0

    if-eqz v0, :cond_58

    sget-object v0, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->ProtectHeader:Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    goto :goto_a

    :cond_58
    sget-object v0, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->MarkHeader:Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    invoke-virtual {v0, p0}, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->equals(B)Z

    move-result v0

    if-eqz v0, :cond_63

    sget-object v0, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->MarkHeader:Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    goto :goto_a

    :cond_63
    sget-object v0, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->MainHeader:Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    invoke-virtual {v0, p0}, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->equals(B)Z

    move-result v0

    if-eqz v0, :cond_6e

    sget-object v0, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->MainHeader:Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    goto :goto_a

    :cond_6e
    sget-object v0, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->FileHeader:Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    invoke-virtual {v0, p0}, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->equals(B)Z

    move-result v0

    if-eqz v0, :cond_79

    sget-object v0, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->FileHeader:Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    goto :goto_a

    :cond_79
    sget-object v0, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->EndArcHeader:Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    invoke-virtual {v0, p0}, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->equals(B)Z

    move-result v0

    if-eqz v0, :cond_84

    sget-object v0, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->EndArcHeader:Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    goto :goto_a

    :cond_84
    sget-object v0, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->CommHeader:Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    invoke-virtual {v0, p0}, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->equals(B)Z

    move-result v0

    if-eqz v0, :cond_90

    sget-object v0, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->CommHeader:Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    goto/16 :goto_a

    :cond_90
    sget-object v0, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->AvHeader:Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    invoke-virtual {v0, p0}, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->equals(B)Z

    move-result v0

    if-eqz v0, :cond_9c

    sget-object v0, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->AvHeader:Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    goto/16 :goto_a

    :cond_9c
    const/4 v0, 0x0

    goto/16 :goto_a
.end method

.method public static valueOf(Ljava/lang/String;)Lde/innosystec/unrar/rarfile/UnrarHeadertype;
    .registers 2

    const-class v0, Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    return-object v0
.end method

.method public static values()[Lde/innosystec/unrar/rarfile/UnrarHeadertype;
    .registers 4

    const/4 v3, 0x0

    sget-object v0, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->ENUM$VALUES:[Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    array-length v1, v0

    new-array v2, v1, [Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public equals(B)Z
    .registers 3

    iget-byte v0, p0, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->headerByte:B

    if-ne v0, p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public getHeaderByte()B
    .registers 2

    iget-byte v0, p0, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->headerByte:B

    return v0
.end method
