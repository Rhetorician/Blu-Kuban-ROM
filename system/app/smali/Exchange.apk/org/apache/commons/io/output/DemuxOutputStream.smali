.class public Lorg/apache/commons/io/output/DemuxOutputStream;
.super Ljava/io/OutputStream;
.source "DemuxOutputStream.java"


# instance fields
.field private m_streams:Ljava/lang/InheritableThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/InheritableThreadLocal",
            "<",
            "Ljava/io/OutputStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 32
    new-instance v0, Ljava/lang/InheritableThreadLocal;

    invoke-direct {v0}, Ljava/lang/InheritableThreadLocal;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/io/output/DemuxOutputStream;->m_streams:Ljava/lang/InheritableThreadLocal;

    return-void
.end method

.method private getStream()Ljava/io/OutputStream;
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lorg/apache/commons/io/output/DemuxOutputStream;->m_streams:Ljava/lang/InheritableThreadLocal;

    invoke-virtual {v0}, Ljava/lang/InheritableThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/OutputStream;

    return-object v0
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0}, Lorg/apache/commons/io/output/DemuxOutputStream;->getStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 57
    .local v0, output:Ljava/io/OutputStream;
    if-eqz v0, :cond_9

    .line 59
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 61
    :cond_9
    return-void
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-direct {p0}, Lorg/apache/commons/io/output/DemuxOutputStream;->getStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 73
    .local v0, output:Ljava/io/OutputStream;
    if-eqz v0, :cond_9

    .line 75
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 77
    :cond_9
    return-void
.end method

.method public write(I)V
    .registers 3
    .parameter "ch"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    invoke-direct {p0}, Lorg/apache/commons/io/output/DemuxOutputStream;->getStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 90
    .local v0, output:Ljava/io/OutputStream;
    if-eqz v0, :cond_9

    .line 92
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 94
    :cond_9
    return-void
.end method
