.class public Lt/m;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lt/m;


# instance fields
.field private final b:J

.field private final c:J

.field private final d:J

.field private final e:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-wide/16 v1, 0x0

    new-instance v0, Lt/m;

    invoke-direct {v0, v1, v2, v1, v2}, Lt/m;-><init>(JJ)V

    sput-object v0, Lt/m;->a:Lt/m;

    return-void
.end method

.method constructor <init>(J)V
    .registers 5

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lt/m;->b:J

    iput-wide v0, p0, Lt/m;->c:J

    iput-wide p1, p0, Lt/m;->d:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lt/m;->e:Z

    return-void
.end method

.method public constructor <init>(JJ)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lt/m;->b:J

    iput-wide p3, p0, Lt/m;->c:J

    invoke-static {p1, p2, p3, p4}, Lt/m;->a(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lt/m;->d:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lt/m;->e:Z

    return-void
.end method

.method private static a(JJ)J
    .registers 16

    const/16 v11, 0x2c

    const/16 v4, 0x20

    const/4 v10, 0x4

    const-wide v8, 0xffffffffffffL

    const/16 v0, 0x10

    ushr-long v0, p0, v0

    shl-long v2, p0, v4

    and-long/2addr v2, v8

    ushr-long v4, p2, v4

    or-long/2addr v2, v4

    const-wide v4, 0xffffffffL

    and-long/2addr v4, p2

    shl-long v6, v0, v10

    ushr-long/2addr v0, v11

    xor-long/2addr v0, v6

    and-long/2addr v0, v8

    xor-long/2addr v0, v2

    shl-long v2, v0, v10

    ushr-long/2addr v0, v11

    xor-long/2addr v0, v2

    and-long/2addr v0, v8

    xor-long/2addr v0, v4

    return-wide v0
.end method

.method public static a(Ljava/io/DataInput;)Lt/m;
    .registers 6

    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v0

    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v2

    new-instance v4, Lt/m;

    invoke-direct {v4, v0, v1, v2, v3}, Lt/m;-><init>(JJ)V

    return-object v4
.end method

.method public static a(Ljava/lang/String;)Lt/m;
    .registers 7

    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    if-nez p0, :cond_7

    const-string p0, ""

    :cond_7
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-ne v1, v4, :cond_57

    aget-object v1, v0, v3

    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    aget-object v1, v0, v5

    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3d

    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "malformed feature id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3d
    aget-object v1, v0, v3

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laf/k;->a(Ljava/lang/String;)J

    move-result-wide v1

    aget-object v0, v0, v5

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laf/k;->a(Ljava/lang/String;)J

    move-result-wide v3

    new-instance v0, Lt/m;

    invoke-direct {v0, v1, v2, v3, v4}, Lt/m;-><init>(JJ)V

    :goto_56
    return-object v0

    :cond_57
    array-length v1, v0

    if-ne v1, v5, :cond_8d

    aget-object v1, v0, v3

    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "malformed feature id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7d
    aget-object v0, v0, v3

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laf/k;->a(Ljava/lang/String;)J

    move-result-wide v1

    new-instance v0, Lt/m;

    invoke-direct {v0, v1, v2}, Lt/m;-><init>(J)V

    goto :goto_56

    :cond_8d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "malformed feature id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Ljava/io/DataInput;)Lt/m;
    .registers 7

    invoke-interface {p0}, Ljava/io/DataInput;->readShort()S

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0xffff

    and-long/2addr v0, v2

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    new-instance v2, Lt/m;

    invoke-direct {v2, v0, v1}, Lt/m;-><init>(J)V

    return-object v2
.end method


# virtual methods
.method public a()J
    .registers 3

    iget-wide v0, p0, Lt/m;->c:J

    return-wide v0
.end method

.method public b()Z
    .registers 2

    iget-boolean v0, p0, Lt/m;->e:Z

    return v0
.end method

.method public c()Ljava/lang/String;
    .registers 5

    iget-boolean v0, p0, Lt/m;->e:Z

    if-nez v0, :cond_13

    iget-wide v0, p0, Lt/m;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_13

    iget-wide v0, p0, Lt/m;->c:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    :goto_12
    return-object v0

    :cond_13
    invoke-virtual {p0}, Lt/m;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_12
.end method

.method public d()Ljava/lang/String;
    .registers 4

    iget-boolean v0, p0, Lt/m;->e:Z

    if-eqz v0, :cond_7

    const-string v0, ""

    :goto_6
    return-object v0

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lt/m;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lt/m;->c:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public e()I
    .registers 2

    const/16 v0, 0x28

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    instance-of v2, p1, Lt/m;

    if-eqz v2, :cond_2d

    check-cast p1, Lt/m;

    iget-boolean v2, p0, Lt/m;->e:Z

    if-nez v2, :cond_10

    iget-boolean v2, p1, Lt/m;->e:Z

    if-eqz v2, :cond_1b

    :cond_10
    iget-wide v2, p1, Lt/m;->d:J

    iget-wide v4, p0, Lt/m;->d:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_19

    :cond_18
    :goto_18
    return v0

    :cond_19
    move v0, v1

    goto :goto_18

    :cond_1b
    iget-wide v2, p1, Lt/m;->b:J

    iget-wide v4, p0, Lt/m;->b:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2b

    iget-wide v2, p1, Lt/m;->c:J

    iget-wide v4, p0, Lt/m;->c:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_18

    :cond_2b
    move v0, v1

    goto :goto_18

    :cond_2d
    move v0, v1

    goto :goto_18
.end method

.method public hashCode()I
    .registers 6

    iget-wide v0, p0, Lt/m;->d:J

    iget-wide v2, p0, Lt/m;->d:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    iget-boolean v0, p0, Lt/m;->e:Z

    if-eqz v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[hash:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lt/m;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1f
    return-object v0

    :cond_20
    invoke-virtual {p0}, Lt/m;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_1f
.end method
