.class Lcom/estrongs/android/pop/c/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/c/c;

.field private b:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/pop/c/c;Ljava/net/Socket;)V
    .registers 5

    iput-object p1, p0, Lcom/estrongs/android/pop/c/e;->a:Lcom/estrongs/android/pop/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/estrongs/android/pop/c/e;->b:Ljava/net/Socket;

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private a([BI)I
    .registers 6

    const/16 v2, 0xd

    const/16 v1, 0xa

    :goto_4
    array-length v0, p1

    if-lt p2, v0, :cond_a

    :cond_7
    add-int/lit8 v0, p2, 0x1

    return v0

    :cond_a
    aget-byte v0, p1, p2

    if-ne v0, v2, :cond_20

    add-int/lit8 p2, p2, 0x1

    aget-byte v0, p1, p2

    if-ne v0, v1, :cond_20

    add-int/lit8 p2, p2, 0x1

    aget-byte v0, p1, p2

    if-ne v0, v2, :cond_20

    add-int/lit8 p2, p2, 0x1

    aget-byte v0, p1, p2

    if-eq v0, v1, :cond_7

    :cond_20
    add-int/lit8 p2, p2, 0x1

    goto :goto_4
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    :goto_4
    return-object v0

    :catch_5
    move-exception v0

    const-string v0, "400 Bad Request"

    const-string v1, "BAD REQUEST: Bad percent-encoding."

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/pop/c/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_4
.end method

.method private a([BII)Ljava/lang/String;
    .registers 9

    const-string v0, ""

    if-lez p3, :cond_26

    const-string v1, "java.io.tmpdir"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_a
    const-string v2, "NanoHTTPD"

    const-string v3, ""

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3, v4}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_25} :catch_27

    move-result-object v0

    :cond_26
    :goto_26
    return-object v0

    :catch_27
    move-exception v1

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_26
.end method

.method private a(Ljava/io/BufferedReader;Ljava/util/Properties;Ljava/util/Properties;Ljava/util/Properties;)V
    .registers 10

    :try_start_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    :goto_6
    return-void

    :cond_7
    new-instance v2, Ljava/util/StringTokenizer;

    invoke-direct {v2, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "400 Bad Request"

    const-string v3, "BAD REQUEST: Syntax error. Usage: GET /example/file.html"

    invoke-direct {p0, v0, v3}, Lcom/estrongs/android/pop/c/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    const-string v3, "method"

    invoke-virtual {p2, v3, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-nez v3, :cond_2f

    const-string v3, "400 Bad Request"

    const-string v4, "BAD REQUEST: Missing URI. Usage: GET /example/file.html"

    invoke-direct {p0, v3, v4}, Lcom/estrongs/android/pop/c/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2f
    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v3

    add-int/lit8 v3, v0, 0x1

    const-string v0, "HTTP/1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_4c

    const-string v0, "http/1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :cond_4c
    if-lez v0, :cond_a8

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    :goto_55
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_ad

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, p3}, Lcom/estrongs/android/pop/c/e;->a(Ljava/lang/String;Ljava/util/Properties;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/c/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_70
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_86

    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    :goto_7a
    if-eqz v0, :cond_86

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_b3

    :cond_86
    const-string v0, "uri"

    invoke-virtual {p2, v0, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8b} :catch_8d

    goto/16 :goto_6

    :catch_8d
    move-exception v0

    const-string v1, "500 Internal Server Error"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SERVER INTERNAL ERROR: IOException: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/estrongs/android/pop/c/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_a8
    :try_start_a8
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    goto :goto_55

    :cond_ad
    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/c/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_70

    :cond_b3
    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_d5

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v3, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d5
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_d8
    .catch Ljava/io/IOException; {:try_start_a8 .. :try_end_d8} :catch_8d

    move-result-object v0

    goto :goto_7a
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    const-string v0, "text/plain"

    const/4 v1, 0x0

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/estrongs/android/pop/c/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;Ljava/io/InputStream;)V

    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;Ljava/io/InputStream;)V
    .registers 11

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    if-nez p1, :cond_1d

    :try_start_9
    new-instance v0, Ljava/lang/Error;

    const-string v1, "sendResponse(): Status can\'t be null."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_11} :catch_11

    :catch_11
    move-exception v0

    if-eqz p4, :cond_17

    :try_start_14
    invoke-virtual {p4}, Ljava/io/InputStream;->close()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_17} :catch_e9

    :cond_17
    :goto_17
    :try_start_17
    iget-object v0, p0, Lcom/estrongs/android/pop/c/e;->b:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_1c} :catch_ec

    :cond_1c
    :goto_1c
    return-void

    :cond_1d
    :try_start_1d
    iget-object v0, p0, Lcom/estrongs/android/pop/c/e;->b:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "HTTP/1.0 "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " \r\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz p2, :cond_5a

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Content-Type: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\r\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_5a
    if-eqz p3, :cond_64

    const-string v0, "Date"

    invoke-virtual {p3, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_89

    :cond_64
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Date: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/estrongs/android/pop/c/c;->c()Ljava/text/SimpleDateFormat;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\r\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_89
    if-eqz p3, :cond_95

    invoke-virtual {p3}, Ljava/util/Properties;->keys()Ljava/util/Enumeration;

    move-result-object v3

    :goto_8f
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_b9

    :cond_95
    const-string v0, "\r\n"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    if-eqz p4, :cond_ac

    const/16 v0, 0x4000

    new-array v0, v0, [B

    :goto_a3
    const/4 v2, 0x0

    const/16 v3, 0x4000

    invoke-virtual {p4, v0, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-gtz v2, :cond_e4

    :cond_ac
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    if-eqz p4, :cond_1c

    invoke-virtual {p4}, Ljava/io/InputStream;->close()V

    goto/16 :goto_1c

    :cond_b9
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ": "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\r\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_8f

    :cond_e4
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_e8
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_e8} :catch_11

    goto :goto_a3

    :catch_e9
    move-exception v0

    goto/16 :goto_17

    :catch_ec
    move-exception v0

    goto/16 :goto_1c
.end method

.method private a(Ljava/lang/String;Ljava/util/Properties;)V
    .registers 7

    if-nez p1, :cond_3

    :cond_2
    return-void

    :cond_3
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "&"

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    :goto_a
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_a

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/estrongs/android/pop/c/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/estrongs/android/pop/c/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v3, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a
.end method

.method private a(Ljava/lang/String;[BLjava/io/BufferedReader;Ljava/util/Properties;Ljava/util/Properties;)V
    .registers 16

    const/4 v0, 0x1

    const/4 v9, -0x1

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Lcom/estrongs/android/pop/c/e;->a([B[B)[I

    move-result-object v3

    invoke-virtual {p3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    :goto_e
    if-nez v1, :cond_11

    :goto_10
    return-void

    :cond_11
    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v9, :cond_1e

    const-string v1, "400 Bad Request"

    const-string v2, "BAD REQUEST: Content type is multipart/form-data but next chunk does not start with boundary. Usage: GET /example/file.html"

    invoke-direct {p0, v1, v2}, Lcom/estrongs/android/pop/c/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1e
    add-int/lit8 v2, v0, 0x1

    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    invoke-virtual {p3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    :goto_29
    if-eqz v1, :cond_35

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_80

    :cond_35
    if-eqz v1, :cond_7e

    const-string v0, "content-disposition"

    invoke-virtual {v4, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_46

    const-string v5, "400 Bad Request"

    const-string v6, "BAD REQUEST: Content type is multipart/form-data but no content-disposition info found. Usage: GET /example/file.html"

    invoke-direct {p0, v5, v6}, Lcom/estrongs/android/pop/c/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_46
    new-instance v5, Ljava/util/StringTokenizer;

    const-string v6, "; "

    invoke-direct {v5, v0, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Ljava/util/Properties;

    invoke-direct {v6}, Ljava/util/Properties;-><init>()V

    :cond_52
    :goto_52
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-nez v0, :cond_a7

    const-string v0, "name"

    invoke-virtual {v6, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v0, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v0, ""

    const-string v7, "content-type"

    invoke-virtual {v4, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_122

    :cond_73
    :goto_73
    if-eqz v1, :cond_7b

    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v9, :cond_e9

    :cond_7b
    :goto_7b
    invoke-virtual {p4, v5, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7e
    move v0, v2

    goto :goto_e

    :cond_80
    const/16 v0, 0x3a

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v9, :cond_a2

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a2
    invoke-virtual {p3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    goto :goto_29

    :cond_a7
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    const/16 v7, 0x3d

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-eq v7, v9, :cond_52

    const/4 v8, 0x0

    invoke-virtual {v0, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v8, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_cd
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_cd} :catch_ce

    goto :goto_52

    :catch_ce
    move-exception v0

    const-string v1, "500 Internal Server Error"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SERVER INTERNAL ERROR: IOException: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/estrongs/android/pop/c/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10

    :cond_e9
    :try_start_e9
    invoke-virtual {p3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_73

    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v9, :cond_108

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_73

    :cond_108
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_73

    :cond_122
    array-length v0, v3

    if-le v2, v0, :cond_12c

    const-string v0, "500 Internal Server Error"

    const-string v1, "Error processing request"

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/pop/c/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12c
    add-int/lit8 v0, v2, -0x2

    aget v0, v3, v0

    invoke-direct {p0, p2, v0}, Lcom/estrongs/android/pop/c/e;->a([BI)I

    move-result v0

    add-int/lit8 v1, v2, -0x1

    aget v1, v3, v1

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x4

    invoke-direct {p0, p2, v0, v1}, Lcom/estrongs/android/pop/c/e;->a([BII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v5, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "filename"

    invoke-virtual {v6, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_153
    invoke-virtual {p3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7b

    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_15c
    .catch Ljava/io/IOException; {:try_start_e9 .. :try_end_15c} :catch_ce

    move-result v4

    if-eq v4, v9, :cond_153

    goto/16 :goto_7b
.end method


# virtual methods
.method public a([B[B)[I
    .registers 11

    const/4 v3, -0x1

    const/4 v1, 0x0

    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    move v0, v1

    move v2, v3

    move v4, v1

    :goto_a
    array-length v6, p1

    if-lt v0, v6, :cond_17

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v2, v0, [I

    :goto_13
    array-length v0, v2

    if-lt v1, v0, :cond_36

    return-object v2

    :cond_17
    aget-byte v6, p1, v0

    aget-byte v7, p2, v4

    if-ne v6, v7, :cond_32

    if-nez v4, :cond_20

    move v2, v0

    :cond_20
    add-int/lit8 v4, v4, 0x1

    array-length v6, p2

    if-ne v4, v6, :cond_2f

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move v2, v3

    move v4, v1

    :cond_2f
    :goto_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_32
    sub-int/2addr v0, v4

    move v2, v3

    move v4, v1

    goto :goto_2f

    :cond_36
    invoke-virtual {v5, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_13
.end method

.method public run()V
    .registers 18

    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/estrongs/android/pop/c/e;->b:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v13

    if-nez v13, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    const/16 v1, 0x2000

    new-array v11, v1, [B

    const/4 v2, 0x0

    invoke-virtual {v13, v11, v2, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-lez v4, :cond_a

    new-instance v1, Ljava/io/ByteArrayInputStream;

    const/4 v2, 0x0

    invoke-direct {v1, v11, v2, v4}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    new-instance v5, Ljava/util/Properties;

    invoke-direct {v5}, Ljava/util/Properties;-><init>()V

    new-instance v10, Ljava/util/Properties;

    invoke-direct {v10}, Ljava/util/Properties;-><init>()V

    new-instance v6, Ljava/util/Properties;

    invoke-direct {v6}, Ljava/util/Properties;-><init>()V

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v1, v5, v10}, Lcom/estrongs/android/pop/c/e;->a(Ljava/io/BufferedReader;Ljava/util/Properties;Ljava/util/Properties;Ljava/util/Properties;)V

    const-string v2, "method"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v2, "uri"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-wide v1, 0x7fffffffffffffffL

    const-string v3, "content-length"

    invoke-virtual {v10, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_55} :catch_118
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_55} :catch_182

    move-result-object v3

    if-eqz v3, :cond_5d

    :try_start_58
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_5b
    .catch Ljava/lang/NumberFormatException; {:try_start_58 .. :try_end_5b} :catch_1ce
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_118
    .catch Ljava/lang/InterruptedException; {:try_start_58 .. :try_end_5b} :catch_182

    move-result v1

    int-to-long v1, v1

    :cond_5d
    :goto_5d
    const/4 v3, 0x0

    const/4 v7, 0x0

    :goto_5f
    if-lt v3, v4, :cond_138

    move/from16 v16, v7

    move v7, v3

    move/from16 v3, v16

    :goto_66
    add-int/lit8 v7, v7, 0x1

    :try_start_68
    new-instance v12, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v12}, Ljava/io/ByteArrayOutputStream;-><init>()V

    if-ge v7, v4, :cond_74

    sub-int v14, v4, v7

    invoke-virtual {v12, v11, v7, v14}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_74
    if-ge v7, v4, :cond_162

    sub-int v3, v4, v7

    add-int/lit8 v3, v3, 0x1

    int-to-long v14, v3

    sub-long/2addr v1, v14

    :cond_7c
    :goto_7c
    const/16 v3, 0x200

    new-array v7, v3, [B

    move v3, v4

    :cond_81
    :goto_81
    if-ltz v3, :cond_89

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gtz v3, :cond_171

    :cond_89
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v4, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const-string v1, "POST"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_fb

    const-string v1, ""

    const-string v2, "content-type"

    invoke-virtual {v10, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v7, Ljava/util/StringTokenizer;

    const-string v11, "; "

    invoke-direct {v7, v2, v11}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_bd

    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    :cond_bd
    const-string v2, "multipart/form-data"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_185

    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-nez v1, :cond_d4

    const-string v1, "400 Bad Request"

    const-string v2, "BAD REQUEST: Content type is multipart/form-data but boundary missing. Usage: GET /example/file.html"

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/pop/c/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d4
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/StringTokenizer;

    const-string v7, "="

    invoke-direct {v2, v1, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v1

    const/4 v7, 0x2

    if-eq v1, v7, :cond_ef

    const-string v1, "400 Bad Request"

    const-string v7, "BAD REQUEST: Content type is multipart/form-data but boundary syntax error. Usage: GET /example/file.html"

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v7}, Lcom/estrongs/android/pop/c/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ef
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/estrongs/android/pop/c/e;->a(Ljava/lang/String;[BLjava/io/BufferedReader;Ljava/util/Properties;Ljava/util/Properties;)V

    :cond_fb
    :goto_fb
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/estrongs/android/pop/c/e;->a:Lcom/estrongs/android/pop/c/c;

    move-object v11, v5

    move-object v12, v6

    invoke-virtual/range {v7 .. v12}, Lcom/estrongs/android/pop/c/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;Ljava/util/Properties;Ljava/util/Properties;)Lcom/estrongs/android/pop/c/f;

    move-result-object v1

    if-nez v1, :cond_1bf

    const-string v1, "500 Internal Server Error"

    const-string v2, "SERVER INTERNAL ERROR: Serve() returned a null response."

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/pop/c/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_110
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_116
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_116} :catch_118
    .catch Ljava/lang/InterruptedException; {:try_start_68 .. :try_end_116} :catch_182

    goto/16 :goto_a

    :catch_118
    move-exception v1

    :try_start_119
    const-string v2, "500 Internal Server Error"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SERVER INTERNAL ERROR: IOException: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v1}, Lcom/estrongs/android/pop/c/e;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_133
    .catch Ljava/lang/Throwable; {:try_start_119 .. :try_end_133} :catch_135

    goto/16 :goto_a

    :catch_135
    move-exception v1

    goto/16 :goto_a

    :cond_138
    :try_start_138
    aget-byte v12, v11, v3

    const/16 v14, 0xd

    if-ne v12, v14, :cond_15e

    add-int/lit8 v3, v3, 0x1

    aget-byte v12, v11, v3

    const/16 v14, 0xa

    if-ne v12, v14, :cond_15e

    add-int/lit8 v3, v3, 0x1

    aget-byte v12, v11, v3

    const/16 v14, 0xd

    if-ne v12, v14, :cond_15e

    add-int/lit8 v3, v3, 0x1

    aget-byte v12, v11, v3

    const/16 v14, 0xa

    if-ne v12, v14, :cond_15e

    const/4 v7, 0x1

    move/from16 v16, v7

    move v7, v3

    move/from16 v3, v16

    goto/16 :goto_66

    :cond_15e
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_5f

    :cond_162
    if-eqz v3, :cond_16d

    const-wide v14, 0x7fffffffffffffffL

    cmp-long v3, v1, v14

    if-nez v3, :cond_7c

    :cond_16d
    const-wide/16 v1, 0x0

    goto/16 :goto_7c

    :cond_171
    const/4 v3, 0x0

    const/16 v4, 0x200

    invoke-virtual {v13, v7, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    int-to-long v14, v3

    sub-long/2addr v1, v14

    if-lez v3, :cond_81

    const/4 v4, 0x0

    invoke-virtual {v12, v7, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto/16 :goto_81

    :catch_182
    move-exception v1

    goto/16 :goto_a

    :cond_185
    const-string v2, ""

    const/16 v1, 0x200

    new-array v3, v1, [C

    invoke-virtual {v4, v3}, Ljava/io/BufferedReader;->read([C)I

    move-result v1

    :goto_18f
    if-ltz v1, :cond_199

    const-string v7, "\r\n"

    invoke-virtual {v2, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1a4

    :cond_199
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v5}, Lcom/estrongs/android/pop/c/e;->a(Ljava/lang/String;Ljava/util/Properties;)V

    goto/16 :goto_fb

    :cond_1a4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v3, v2, v1}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v3}, Ljava/io/BufferedReader;->read([C)I

    move-result v1

    goto :goto_18f

    :cond_1bf
    iget-object v2, v1, Lcom/estrongs/android/pop/c/f;->a:Ljava/lang/String;

    iget-object v3, v1, Lcom/estrongs/android/pop/c/f;->b:Ljava/lang/String;

    iget-object v5, v1, Lcom/estrongs/android/pop/c/f;->d:Ljava/util/Properties;

    iget-object v1, v1, Lcom/estrongs/android/pop/c/f;->c:Ljava/io/InputStream;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v5, v1}, Lcom/estrongs/android/pop/c/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;Ljava/io/InputStream;)V
    :try_end_1cc
    .catch Ljava/io/IOException; {:try_start_138 .. :try_end_1cc} :catch_118
    .catch Ljava/lang/InterruptedException; {:try_start_138 .. :try_end_1cc} :catch_182

    goto/16 :goto_110

    :catch_1ce
    move-exception v3

    goto/16 :goto_5d
.end method
