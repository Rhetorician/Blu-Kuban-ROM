.class public Lde/aflx/sardine/DavResource;
.super Ljava/lang/Object;


# static fields
.field public static final DEFAULT_CONTENT_LENGTH:J = -0x1L

.field public static final DEFAULT_CONTENT_TYPE:Ljava/lang/String; = "application/octetstream"

.field public static final HTTPD_UNIX_DIRECTORY_CONTENT_TYPE:Ljava/lang/String; = "httpd/unix-directory"

.field private static final SEPARATOR:Ljava/lang/String; = "/"

.field private static log:Lde/aflx/sardine/util/Logger;


# instance fields
.field private final contentLength:Ljava/lang/Long;

.field private final contentType:Ljava/lang/String;

.field private final creation:Ljava/util/Date;

.field private final customProps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lde/aflx/sardine/util/QName;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final etag:Ljava/lang/String;

.field private final href:Ljava/net/URI;

.field private final modified:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lde/aflx/sardine/util/Logger;

    invoke-direct {v0}, Lde/aflx/sardine/util/Logger;-><init>()V

    sput-object v0, Lde/aflx/sardine/DavResource;->log:Lde/aflx/sardine/util/Logger;

    return-void
.end method

.method public constructor <init>(Lde/aflx/sardine/model/Response;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/net/URI;

    invoke-virtual {p1}, Lde/aflx/sardine/model/Response;->getHref()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lde/aflx/sardine/DavResource;->href:Ljava/net/URI;

    invoke-direct {p0, p1}, Lde/aflx/sardine/DavResource;->getCreationDate(Lde/aflx/sardine/model/Response;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/aflx/sardine/util/SardineUtil;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lde/aflx/sardine/DavResource;->creation:Ljava/util/Date;

    invoke-direct {p0, p1}, Lde/aflx/sardine/DavResource;->getModifiedDate(Lde/aflx/sardine/model/Response;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/aflx/sardine/util/SardineUtil;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lde/aflx/sardine/DavResource;->modified:Ljava/util/Date;

    invoke-direct {p0, p1}, Lde/aflx/sardine/DavResource;->getContentLength(Lde/aflx/sardine/model/Response;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lde/aflx/sardine/DavResource;->contentLength:Ljava/lang/Long;

    invoke-direct {p0, p1}, Lde/aflx/sardine/DavResource;->getContentType(Lde/aflx/sardine/model/Response;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/aflx/sardine/DavResource;->contentType:Ljava/lang/String;

    invoke-direct {p0, p1}, Lde/aflx/sardine/DavResource;->getEtag(Lde/aflx/sardine/model/Response;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/aflx/sardine/DavResource;->etag:Ljava/lang/String;

    invoke-direct {p0, p1}, Lde/aflx/sardine/DavResource;->getCustomProps(Lde/aflx/sardine/model/Response;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lde/aflx/sardine/DavResource;->customProps:Ljava/util/Map;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/util/Map;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Lde/aflx/sardine/util/QName;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lde/aflx/sardine/DavResource;->href:Ljava/net/URI;

    iput-object p2, p0, Lde/aflx/sardine/DavResource;->creation:Ljava/util/Date;

    iput-object p3, p0, Lde/aflx/sardine/DavResource;->modified:Ljava/util/Date;

    iput-object p4, p0, Lde/aflx/sardine/DavResource;->contentType:Ljava/lang/String;

    iput-object p5, p0, Lde/aflx/sardine/DavResource;->contentLength:Ljava/lang/Long;

    iput-object p6, p0, Lde/aflx/sardine/DavResource;->etag:Ljava/lang/String;

    iput-object p7, p0, Lde/aflx/sardine/DavResource;->customProps:Ljava/util/Map;

    return-void
.end method

.method private getContentLength(Lde/aflx/sardine/model/Response;)J
    .registers 6

    const-wide/16 v0, -0x1

    invoke-virtual {p1}, Lde/aflx/sardine/model/Response;->getPropstat()Lde/aflx/sardine/model/Propstat;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    if-nez v2, :cond_11

    :cond_10
    :goto_10
    return-wide v0

    :cond_11
    invoke-virtual {v2}, Lde/aflx/sardine/model/Propstat;->getProp()Lde/aflx/sardine/model/Prop;

    move-result-object v2

    invoke-virtual {v2}, Lde/aflx/sardine/model/Prop;->getGetcontentlength()Ljava/lang/String;

    move-result-object v2

    :try_start_19
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1c} :catch_1e

    move-result-wide v0

    goto :goto_10

    :catch_1e
    move-exception v2

    goto :goto_10
.end method

.method private getContentType(Lde/aflx/sardine/model/Response;)Ljava/lang/String;
    .registers 8

    invoke-virtual {p1}, Lde/aflx/sardine/model/Response;->getPropstat()Lde/aflx/sardine/model/Propstat;

    move-result-object v1

    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    if-nez v1, :cond_10

    :cond_e
    const/4 v0, 0x0

    :cond_f
    :goto_f
    return-object v0

    :cond_10
    invoke-virtual {v1}, Lde/aflx/sardine/model/Propstat;->getProp()Lde/aflx/sardine/model/Prop;

    move-result-object v0

    invoke-virtual {v0}, Lde/aflx/sardine/model/Prop;->getGetcontenttype()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lde/aflx/sardine/DavResource;->getHref()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_36

    iget-object v0, p0, Lde/aflx/sardine/DavResource;->contentLength:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_39

    :cond_36
    const-string v0, "httpd/unix-directory"

    goto :goto_f

    :cond_39
    invoke-virtual {v1}, Lde/aflx/sardine/model/Propstat;->getProp()Lde/aflx/sardine/model/Prop;

    move-result-object v0

    invoke-virtual {v0}, Lde/aflx/sardine/model/Prop;->getResourcetype()Lde/aflx/sardine/model/Resourcetype;

    move-result-object v0

    if-eqz v0, :cond_4c

    invoke-virtual {v0}, Lde/aflx/sardine/model/Resourcetype;->getCollection()Lde/aflx/sardine/model/Collection;

    move-result-object v0

    if-eqz v0, :cond_4c

    const-string v0, "httpd/unix-directory"

    goto :goto_f

    :cond_4c
    const-string v0, "application/octetstream"

    goto :goto_f
.end method

.method private getCreationDate(Lde/aflx/sardine/model/Response;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p1}, Lde/aflx/sardine/model/Response;->getPropstat()Lde/aflx/sardine/model/Propstat;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    if-nez v0, :cond_10

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return-object v0

    :cond_10
    invoke-virtual {v0}, Lde/aflx/sardine/model/Propstat;->getProp()Lde/aflx/sardine/model/Prop;

    move-result-object v0

    invoke-virtual {v0}, Lde/aflx/sardine/model/Prop;->getCreationdate()Ljava/lang/String;

    move-result-object v0

    goto :goto_f
.end method

.method private getCustomProps(Lde/aflx/sardine/model/Response;)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/aflx/sardine/model/Response;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lde/aflx/sardine/util/QName;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method private getEtag(Lde/aflx/sardine/model/Response;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p1}, Lde/aflx/sardine/model/Response;->getPropstat()Lde/aflx/sardine/model/Propstat;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    if-nez v0, :cond_10

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return-object v0

    :cond_10
    invoke-virtual {v0}, Lde/aflx/sardine/model/Propstat;->getProp()Lde/aflx/sardine/model/Prop;

    move-result-object v0

    invoke-virtual {v0}, Lde/aflx/sardine/model/Prop;->getGetetag()Ljava/lang/String;

    move-result-object v0

    goto :goto_f
.end method

.method private getModifiedDate(Lde/aflx/sardine/model/Response;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p1}, Lde/aflx/sardine/model/Response;->getPropstat()Lde/aflx/sardine/model/Propstat;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    if-nez v0, :cond_10

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return-object v0

    :cond_10
    invoke-virtual {v0}, Lde/aflx/sardine/model/Propstat;->getProp()Lde/aflx/sardine/model/Prop;

    move-result-object v0

    invoke-virtual {v0}, Lde/aflx/sardine/model/Prop;->getGetlastmodified()Ljava/lang/String;

    move-result-object v0

    goto :goto_f
.end method


# virtual methods
.method public getContentLength()Ljava/lang/Long;
    .registers 2

    iget-object v0, p0, Lde/aflx/sardine/DavResource;->contentLength:Ljava/lang/Long;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lde/aflx/sardine/DavResource;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getCreation()Ljava/util/Date;
    .registers 2

    iget-object v0, p0, Lde/aflx/sardine/DavResource;->creation:Ljava/util/Date;

    return-object v0
.end method

.method public getCustomProps()Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lde/aflx/sardine/DavResource;->getCustomPropsNS()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_18

    return-object v1

    :cond_18
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/aflx/sardine/util/QName;

    invoke-virtual {v0}, Lde/aflx/sardine/util/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11
.end method

.method public getCustomPropsNS()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lde/aflx/sardine/util/QName;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lde/aflx/sardine/DavResource;->customProps:Ljava/util/Map;

    return-object v0
.end method

.method public getEtag()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lde/aflx/sardine/DavResource;->etag:Ljava/lang/String;

    return-object v0
.end method

.method public getHref()Ljava/net/URI;
    .registers 2

    iget-object v0, p0, Lde/aflx/sardine/DavResource;->href:Ljava/net/URI;

    return-object v0
.end method

.method public getModified()Ljava/util/Date;
    .registers 2

    iget-object v0, p0, Lde/aflx/sardine/DavResource;->modified:Ljava/util/Date;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 6

    const/4 v4, 0x0

    iget-object v0, p0, Lde/aflx/sardine/DavResource;->href:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    :try_start_7
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_1a
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_25
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_7 .. :try_end_25} :catch_27

    move-result-object v0

    :goto_26
    return-object v0

    :catch_27
    move-exception v1

    sget-object v1, Lde/aflx/sardine/DavResource;->log:Lde/aflx/sardine/util/Logger;

    const-string v2, "Failed to parse name from path %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lde/aflx/sardine/util/Logger;->warn(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_26
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lde/aflx/sardine/DavResource;->href:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isDirectory()Z
    .registers 5

    const-string v0, "httpd/unix-directory"

    iget-object v1, p0, Lde/aflx/sardine/DavResource;->contentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lde/aflx/sardine/DavResource;->contentLength:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_18

    const/4 v0, 0x0

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x1

    goto :goto_17
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lde/aflx/sardine/DavResource;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
