.class public Lde/aflx/sardine/impl/methods/HttpMkCol;
.super Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;


# static fields
.field public static final METHOD_NAME:Ljava/lang/String; = "MKCOL"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-direct {p0, v0}, Lde/aflx/sardine/impl/methods/HttpMkCol;-><init>(Ljava/net/URI;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .registers 5

    invoke-direct {p0}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;-><init>()V

    invoke-virtual {p0, p1}, Lde/aflx/sardine/impl/methods/HttpMkCol;->setURI(Ljava/net/URI;)V

    const-string v0, "Content-Type"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "text/xml; charset="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "UTF-8"

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lde/aflx/sardine/impl/methods/HttpMkCol;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getMethod()Ljava/lang/String;
    .registers 2

    const-string v0, "MKCOL"

    return-object v0
.end method
