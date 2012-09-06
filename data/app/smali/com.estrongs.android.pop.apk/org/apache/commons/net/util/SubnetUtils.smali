.class public Lorg/apache/commons/net/util/SubnetUtils;
.super Ljava/lang/Object;


# static fields
.field private static final IP_ADDRESS:Ljava/lang/String; = "(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})"

.field private static final NBITS:I = 0x20

.field private static final SLASH_FORMAT:Ljava/lang/String; = "(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})/(\\d{1,3})"

.field private static final addressPattern:Ljava/util/regex/Pattern;

.field private static final cidrPattern:Ljava/util/regex/Pattern;


# instance fields
.field private address:I

.field private broadcast:I

.field private inclusiveHostCount:Z

.field private netmask:I

.field private network:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/net/util/SubnetUtils;->addressPattern:Ljava/util/regex/Pattern;

    const-string v0, "(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})/(\\d{1,3})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/net/util/SubnetUtils;->cidrPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lorg/apache/commons/net/util/SubnetUtils;->netmask:I

    iput v0, p0, Lorg/apache/commons/net/util/SubnetUtils;->address:I

    iput v0, p0, Lorg/apache/commons/net/util/SubnetUtils;->network:I

    iput v0, p0, Lorg/apache/commons/net/util/SubnetUtils;->broadcast:I

    iput-boolean v0, p0, Lorg/apache/commons/net/util/SubnetUtils;->inclusiveHostCount:Z

    invoke-direct {p0, p1}, Lorg/apache/commons/net/util/SubnetUtils;->calculate(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lorg/apache/commons/net/util/SubnetUtils;->netmask:I

    iput v0, p0, Lorg/apache/commons/net/util/SubnetUtils;->address:I

    iput v0, p0, Lorg/apache/commons/net/util/SubnetUtils;->network:I

    iput v0, p0, Lorg/apache/commons/net/util/SubnetUtils;->broadcast:I

    iput-boolean v0, p0, Lorg/apache/commons/net/util/SubnetUtils;->inclusiveHostCount:Z

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/net/util/SubnetUtils;->toCidrNotation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/net/util/SubnetUtils;->calculate(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/net/util/SubnetUtils;)I
    .registers 2

    iget v0, p0, Lorg/apache/commons/net/util/SubnetUtils;->netmask:I

    return v0
.end method

.method static synthetic access$100(Lorg/apache/commons/net/util/SubnetUtils;)I
    .registers 2

    iget v0, p0, Lorg/apache/commons/net/util/SubnetUtils;->network:I

    return v0
.end method

.method static synthetic access$200(Lorg/apache/commons/net/util/SubnetUtils;)I
    .registers 2

    iget v0, p0, Lorg/apache/commons/net/util/SubnetUtils;->address:I

    return v0
.end method

.method static synthetic access$300(Lorg/apache/commons/net/util/SubnetUtils;)I
    .registers 2

    iget v0, p0, Lorg/apache/commons/net/util/SubnetUtils;->broadcast:I

    return v0
.end method

.method static synthetic access$400(Lorg/apache/commons/net/util/SubnetUtils;Ljava/lang/String;)I
    .registers 3

    invoke-direct {p0, p1}, Lorg/apache/commons/net/util/SubnetUtils;->toInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lorg/apache/commons/net/util/SubnetUtils;I)[I
    .registers 3

    invoke-direct {p0, p1}, Lorg/apache/commons/net/util/SubnetUtils;->toArray(I)[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lorg/apache/commons/net/util/SubnetUtils;[I)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1}, Lorg/apache/commons/net/util/SubnetUtils;->format([I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lorg/apache/commons/net/util/SubnetUtils;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/net/util/SubnetUtils;->toCidrNotation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private calculate(Ljava/lang/String;)V
    .registers 7

    const/4 v0, 0x0

    sget-object v1, Lorg/apache/commons/net/util/SubnetUtils;->cidrPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-direct {p0, v1}, Lorg/apache/commons/net/util/SubnetUtils;->matchAddress(Ljava/util/regex/Matcher;)I

    move-result v2

    iput v2, p0, Lorg/apache/commons/net/util/SubnetUtils;->address:I

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x20

    invoke-direct {p0, v1, v0, v2}, Lorg/apache/commons/net/util/SubnetUtils;->rangeCheck(III)I

    move-result v1

    :goto_22
    if-ge v0, v1, :cond_30

    iget v2, p0, Lorg/apache/commons/net/util/SubnetUtils;->netmask:I

    const/4 v3, 0x1

    rsub-int/lit8 v4, v0, 0x1f

    shl-int/2addr v3, v4

    or-int/2addr v2, v3

    iput v2, p0, Lorg/apache/commons/net/util/SubnetUtils;->netmask:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_30
    iget v0, p0, Lorg/apache/commons/net/util/SubnetUtils;->address:I

    iget v1, p0, Lorg/apache/commons/net/util/SubnetUtils;->netmask:I

    and-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/net/util/SubnetUtils;->network:I

    iget v0, p0, Lorg/apache/commons/net/util/SubnetUtils;->network:I

    iget v1, p0, Lorg/apache/commons/net/util/SubnetUtils;->netmask:I

    xor-int/lit8 v1, v1, -0x1

    or-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/net/util/SubnetUtils;->broadcast:I

    return-void

    :cond_41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not parse ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private format([I)Ljava/lang/String;
    .registers 5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_6
    array-length v2, p1

    if-ge v0, v2, :cond_1b

    aget v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-eq v0, v2, :cond_18

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private matchAddress(Ljava/util/regex/Matcher;)I
    .registers 7

    const/4 v1, 0x0

    const/4 v0, 0x1

    :goto_2
    const/4 v2, 0x4

    if-gt v0, v2, :cond_1f

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    const/16 v4, 0xff

    invoke-direct {p0, v2, v3, v4}, Lorg/apache/commons/net/util/SubnetUtils;->rangeCheck(III)I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    rsub-int/lit8 v3, v0, 0x4

    mul-int/lit8 v3, v3, 0x8

    shl-int/2addr v2, v3

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1f
    return v1
.end method

.method private rangeCheck(III)I
    .registers 7

    if-le p1, p2, :cond_5

    if-gt p1, p3, :cond_5

    return p1

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] not in range ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private toArray(I)[I
    .registers 6

    const/4 v0, 0x4

    new-array v1, v0, [I

    const/4 v0, 0x3

    :goto_4
    if-ltz v0, :cond_16

    aget v2, v1, v0

    rsub-int/lit8 v3, v0, 0x3

    mul-int/lit8 v3, v3, 0x8

    ushr-int v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    aput v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_16
    return-object v1
.end method

.method private toCidrNotation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p2}, Lorg/apache/commons/net/util/SubnetUtils;->toInteger(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/net/util/SubnetUtils;->pop(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private toInteger(Ljava/lang/String;)I
    .registers 5

    sget-object v0, Lorg/apache/commons/net/util/SubnetUtils;->addressPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-direct {p0, v0}, Lorg/apache/commons/net/util/SubnetUtils;->matchAddress(Ljava/util/regex/Matcher;)I

    move-result v0

    return v0

    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not parse ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final getInfo()Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;
    .registers 3

    new-instance v0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;-><init>(Lorg/apache/commons/net/util/SubnetUtils;Lorg/apache/commons/net/util/SubnetUtils$1;)V

    return-object v0
.end method

.method public isInclusiveHostCount()Z
    .registers 2

    iget-boolean v0, p0, Lorg/apache/commons/net/util/SubnetUtils;->inclusiveHostCount:Z

    return v0
.end method

.method pop(I)I
    .registers 5

    const v2, 0x33333333

    ushr-int/lit8 v0, p1, 0x1

    const v1, 0x55555555

    and-int/2addr v0, v1

    sub-int v0, p1, v0

    and-int v1, v0, v2

    ushr-int/lit8 v0, v0, 0x2

    and-int/2addr v0, v2

    add-int/2addr v0, v1

    ushr-int/lit8 v1, v0, 0x4

    add-int/2addr v0, v1

    const v1, 0xf0f0f0f

    and-int/2addr v0, v1

    ushr-int/lit8 v1, v0, 0x8

    add-int/2addr v0, v1

    ushr-int/lit8 v1, v0, 0x10

    add-int/2addr v0, v1

    and-int/lit8 v0, v0, 0x3f

    return v0
.end method

.method public setInclusiveHostCount(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/apache/commons/net/util/SubnetUtils;->inclusiveHostCount:Z

    return-void
.end method
