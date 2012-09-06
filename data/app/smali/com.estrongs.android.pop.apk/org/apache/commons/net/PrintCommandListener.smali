.class public Lorg/apache/commons/net/PrintCommandListener;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/commons/net/ProtocolCommandListener;


# instance fields
.field private final __directionMarker:Z

.field private final __eolMarker:C

.field private final __nologin:Z

.field private final __writer:Ljava/io/PrintWriter;


# direct methods
.method public constructor <init>(Ljava/io/PrintStream;)V
    .registers 3

    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p0, v0}, Lorg/apache/commons/net/PrintCommandListener;-><init>(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/PrintStream;Z)V
    .registers 4

    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p0, v0, p2}, Lorg/apache/commons/net/PrintCommandListener;-><init>(Ljava/io/PrintWriter;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/PrintStream;ZC)V
    .registers 5

    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p0, v0, p2, p3}, Lorg/apache/commons/net/PrintCommandListener;-><init>(Ljava/io/PrintWriter;ZC)V

    return-void
.end method

.method public constructor <init>(Ljava/io/PrintStream;ZCZ)V
    .registers 6

    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p0, v0, p2, p3, p4}, Lorg/apache/commons/net/PrintCommandListener;-><init>(Ljava/io/PrintWriter;ZCZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/PrintWriter;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/net/PrintCommandListener;-><init>(Ljava/io/PrintWriter;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/PrintWriter;Z)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/net/PrintCommandListener;-><init>(Ljava/io/PrintWriter;ZC)V

    return-void
.end method

.method public constructor <init>(Ljava/io/PrintWriter;ZC)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/net/PrintCommandListener;-><init>(Ljava/io/PrintWriter;ZCZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/PrintWriter;ZCZ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/net/PrintCommandListener;->__writer:Ljava/io/PrintWriter;

    iput-boolean p2, p0, Lorg/apache/commons/net/PrintCommandListener;->__nologin:Z

    iput-char p3, p0, Lorg/apache/commons/net/PrintCommandListener;->__eolMarker:C

    iput-boolean p4, p0, Lorg/apache/commons/net/PrintCommandListener;->__directionMarker:Z

    return-void
.end method

.method private getPrintableString(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    iget-char v0, p0, Lorg/apache/commons/net/PrintCommandListener;->__eolMarker:C

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-object p1

    :cond_5
    const-string v0, "\r\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v2, p0, Lorg/apache/commons/net/PrintCommandListener;->__eolMarker:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_4
.end method


# virtual methods
.method public protocolCommandSent(Lorg/apache/commons/net/ProtocolCommandEvent;)V
    .registers 6

    iget-boolean v0, p0, Lorg/apache/commons/net/PrintCommandListener;->__directionMarker:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/apache/commons/net/PrintCommandListener;->__writer:Ljava/io/PrintWriter;

    const-string v1, "> "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_b
    iget-boolean v0, p0, Lorg/apache/commons/net/PrintCommandListener;->__nologin:Z

    if-eqz v0, :cond_70

    invoke-virtual {p1}, Lorg/apache/commons/net/ProtocolCommandEvent;->getCommand()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PASS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_23

    const-string v1, "USER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_35

    :cond_23
    iget-object v1, p0, Lorg/apache/commons/net/PrintCommandListener;->__writer:Ljava/io/PrintWriter;

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/commons/net/PrintCommandListener;->__writer:Ljava/io/PrintWriter;

    const-string v1, " *******"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_2f
    iget-object v0, p0, Lorg/apache/commons/net/PrintCommandListener;->__writer:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    return-void

    :cond_35
    const-string v1, "LOGIN"

    const-string v1, "LOGIN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_62

    invoke-virtual {p1}, Lorg/apache/commons/net/ProtocolCommandEvent;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "LOGIN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const-string v3, "LOGIN"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/net/PrintCommandListener;->__writer:Ljava/io/PrintWriter;

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/commons/net/PrintCommandListener;->__writer:Ljava/io/PrintWriter;

    const-string v1, " *******"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2f

    :cond_62
    iget-object v0, p0, Lorg/apache/commons/net/PrintCommandListener;->__writer:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Lorg/apache/commons/net/ProtocolCommandEvent;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/commons/net/PrintCommandListener;->getPrintableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2f

    :cond_70
    iget-object v0, p0, Lorg/apache/commons/net/PrintCommandListener;->__writer:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Lorg/apache/commons/net/ProtocolCommandEvent;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/commons/net/PrintCommandListener;->getPrintableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2f
.end method

.method public protocolReplyReceived(Lorg/apache/commons/net/ProtocolCommandEvent;)V
    .registers 4

    iget-boolean v0, p0, Lorg/apache/commons/net/PrintCommandListener;->__directionMarker:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/apache/commons/net/PrintCommandListener;->__writer:Ljava/io/PrintWriter;

    const-string v1, "< "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_b
    iget-object v0, p0, Lorg/apache/commons/net/PrintCommandListener;->__writer:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Lorg/apache/commons/net/ProtocolCommandEvent;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/commons/net/PrintCommandListener;->__writer:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method
