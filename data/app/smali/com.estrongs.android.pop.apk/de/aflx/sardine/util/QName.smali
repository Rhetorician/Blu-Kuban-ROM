.class public Lde/aflx/sardine/util/QName;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final compatibleSerialVersionUID:J = 0x3d521a30bc76fdffL

.field private static final defaultSerialVersionUID:J = -0x7e9257d203c42294L

.field private static final serialVersionUID:J

.field private static useDefaultSerialVersionUID:Z


# instance fields
.field private final localPart:Ljava/lang/String;

.field private final namespaceURI:Ljava/lang/String;

.field private final prefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v1, 0x1

    sput-boolean v1, Lde/aflx/sardine/util/QName;->useDefaultSerialVersionUID:Z

    :try_start_3
    new-instance v0, Lde/aflx/sardine/util/QName$1;

    invoke-direct {v0}, Lde/aflx/sardine/util/QName$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_27

    const-string v2, "1.0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    const/4 v0, 0x0

    :goto_19
    sput-boolean v0, Lde/aflx/sardine/util/QName;->useDefaultSerialVersionUID:Z
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1b} :catch_29

    :goto_1b
    sget-boolean v0, Lde/aflx/sardine/util/QName;->useDefaultSerialVersionUID:Z

    if-eqz v0, :cond_2d

    const-wide v0, -0x7e9257d203c42294L

    sput-wide v0, Lde/aflx/sardine/util/QName;->serialVersionUID:J

    :goto_26
    return-void

    :cond_27
    move v0, v1

    goto :goto_19

    :catch_29
    move-exception v0

    sput-boolean v1, Lde/aflx/sardine/util/QName;->useDefaultSerialVersionUID:Z

    goto :goto_1b

    :cond_2d
    const-wide v0, 0x3d521a30bc76fdffL

    sput-wide v0, Lde/aflx/sardine/util/QName;->serialVersionUID:J

    goto :goto_26
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    const-string v0, ""

    const-string v1, ""

    invoke-direct {p0, v0, p1, v1}, Lde/aflx/sardine/util/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string v0, ""

    invoke-direct {p0, p1, p2, v0}, Lde/aflx/sardine/util/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_13

    const-string v0, ""

    iput-object v0, p0, Lde/aflx/sardine/util/QName;->namespaceURI:Ljava/lang/String;

    :goto_9
    if-nez p2, :cond_16

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "local part cannot be \"null\" when creating a QName"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    iput-object p1, p0, Lde/aflx/sardine/util/QName;->namespaceURI:Ljava/lang/String;

    goto :goto_9

    :cond_16
    iput-object p2, p0, Lde/aflx/sardine/util/QName;->localPart:Ljava/lang/String;

    if-nez p3, :cond_22

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "prefix cannot be \"null\" when creating a QName"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    iput-object p3, p0, Lde/aflx/sardine/util/QName;->prefix:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lde/aflx/sardine/util/QName;
    .registers 5

    if-nez p0, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot create QName from \"null\" or \"\" String"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1a

    new-instance v0, Lde/aflx/sardine/util/QName;

    const-string v1, ""

    const-string v2, ""

    invoke-direct {v0, v1, p0, v2}, Lde/aflx/sardine/util/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_19
    return-object v0

    :cond_1a
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_2d

    new-instance v0, Lde/aflx/sardine/util/QName;

    const-string v1, ""

    const-string v2, ""

    invoke-direct {v0, v1, p0, v2}, Lde/aflx/sardine/util/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19

    :cond_2d
    const-string v0, "{}"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_62

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Namespace URI .equals(XMLConstants.NULL_NS_URI), .equals(\"\"), only the local part, \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ""

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "should be provided."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_62
    const/16 v0, 0x7d

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v0, -0x1

    if-ne v1, v0, :cond_86

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cannot create QName from \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\", missing closing \"}\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_86
    new-instance v0, Lde/aflx/sardine/util/QName;

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    invoke-direct {v0, v2, v1, v3}, Lde/aflx/sardine/util/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    instance-of v1, p1, Lde/aflx/sardine/util/QName;

    if-nez v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    check-cast p1, Lde/aflx/sardine/util/QName;

    iget-object v1, p0, Lde/aflx/sardine/util/QName;->namespaceURI:Ljava/lang/String;

    iget-object v2, p1, Lde/aflx/sardine/util/QName;->namespaceURI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lde/aflx/sardine/util/QName;->localPart:Ljava/lang/String;

    iget-object v2, p1, Lde/aflx/sardine/util/QName;->localPart:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v0, 0x1

    goto :goto_7
.end method

.method public getLocalPart()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lde/aflx/sardine/util/QName;->localPart:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lde/aflx/sardine/util/QName;->namespaceURI:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lde/aflx/sardine/util/QName;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .registers 3

    iget-object v0, p0, Lde/aflx/sardine/util/QName;->namespaceURI:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lde/aflx/sardine/util/QName;->localPart:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lde/aflx/sardine/util/QName;->namespaceURI:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lde/aflx/sardine/util/QName;->localPart:Ljava/lang/String;

    :goto_c
    return-object v0

    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lde/aflx/sardine/util/QName;->namespaceURI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lde/aflx/sardine/util/QName;->localPart:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method
