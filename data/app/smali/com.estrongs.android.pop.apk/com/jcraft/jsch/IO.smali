.class public Lcom/jcraft/jsch/IO;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/io/InputStream;

.field b:Ljava/io/OutputStream;

.field c:Ljava/io/OutputStream;

.field private d:Z

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/jcraft/jsch/IO;->d:Z

    iput-boolean v0, p0, Lcom/jcraft/jsch/IO;->e:Z

    iput-boolean v0, p0, Lcom/jcraft/jsch/IO;->f:Z

    return-void
.end method


# virtual methods
.method a()I
    .registers 2

    iget-object v0, p0, Lcom/jcraft/jsch/IO;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public a(Lcom/jcraft/jsch/Packet;)V
    .registers 6

    iget-object v0, p0, Lcom/jcraft/jsch/IO;->b:Ljava/io/OutputStream;

    iget-object v1, p1, Lcom/jcraft/jsch/Packet;->a:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v1, Lcom/jcraft/jsch/Buffer;->b:[B

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/jcraft/jsch/Packet;->a:Lcom/jcraft/jsch/Buffer;

    iget v3, v3, Lcom/jcraft/jsch/Buffer;->c:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    iget-object v0, p0, Lcom/jcraft/jsch/IO;->b:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method a(Ljava/io/InputStream;)V
    .registers 2

    iput-object p1, p0, Lcom/jcraft/jsch/IO;->a:Ljava/io/InputStream;

    return-void
.end method

.method a(Ljava/io/InputStream;Z)V
    .registers 3

    iput-boolean p2, p0, Lcom/jcraft/jsch/IO;->d:Z

    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/IO;->a(Ljava/io/InputStream;)V

    return-void
.end method

.method a(Ljava/io/OutputStream;)V
    .registers 2

    iput-object p1, p0, Lcom/jcraft/jsch/IO;->b:Ljava/io/OutputStream;

    return-void
.end method

.method a(Ljava/io/OutputStream;Z)V
    .registers 3

    iput-boolean p2, p0, Lcom/jcraft/jsch/IO;->e:Z

    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/IO;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method a([BII)V
    .registers 5

    iget-object v0, p0, Lcom/jcraft/jsch/IO;->b:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    iget-object v0, p0, Lcom/jcraft/jsch/IO;->b:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method b()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/IO;->b:Ljava/io/OutputStream;

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/jcraft/jsch/IO;->e:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/jcraft/jsch/IO;->b:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_d
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/IO;->b:Ljava/io/OutputStream;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    :goto_10
    return-void

    :catch_11
    move-exception v0

    goto :goto_10
.end method

.method b([BII)V
    .registers 5

    iget-object v0, p0, Lcom/jcraft/jsch/IO;->c:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    iget-object v0, p0, Lcom/jcraft/jsch/IO;->c:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public c()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/IO;->a:Ljava/io/InputStream;

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/jcraft/jsch/IO;->d:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/jcraft/jsch/IO;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_d
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/IO;->a:Ljava/io/InputStream;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_26

    :goto_10
    invoke-virtual {p0}, Lcom/jcraft/jsch/IO;->b()V

    :try_start_13
    iget-object v0, p0, Lcom/jcraft/jsch/IO;->c:Ljava/io/OutputStream;

    if-eqz v0, :cond_20

    iget-boolean v0, p0, Lcom/jcraft/jsch/IO;->f:Z

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/jcraft/jsch/IO;->c:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/IO;->c:Ljava/io/OutputStream;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_23} :catch_24

    :goto_23
    return-void

    :catch_24
    move-exception v0

    goto :goto_23

    :catch_26
    move-exception v0

    goto :goto_10
.end method

.method c([BII)V
    .registers 6

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/IO;->a:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-gez v0, :cond_10

    new-instance v0, Ljava/io/IOException;

    const-string v1, "End of IO Stream Read"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    if-gtz p3, :cond_0

    return-void
.end method
