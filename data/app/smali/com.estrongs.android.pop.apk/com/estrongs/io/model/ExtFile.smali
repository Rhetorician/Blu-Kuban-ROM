.class public Lcom/estrongs/io/model/ExtFile;
.super Ljava/io/File;


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public copyTo(Ljava/io/File;)V
    .registers 2

    return-void
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 3

    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Lcom/estrongs/io/model/ExtFile;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .registers 3

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual {p0}, Lcom/estrongs/io/model/ExtFile;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public listFiles()[Ljava/io/File;
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/estrongs/io/model/ExtFile;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public listFiles(Ljava/io/FileFilter;)[Ljava/io/File;
    .registers 8

    const/4 v1, 0x0

    invoke-super {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_9

    const/4 v0, 0x0

    :goto_8
    return-object v0

    :cond_9
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    :goto_f
    array-length v4, v2

    if-lt v0, v4, :cond_20

    sget-object v0, Lcom/estrongs/android/a/d;->a:Ljava/util/Comparator;

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-array v0, v1, [Ljava/io/File;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/io/File;

    goto :goto_8

    :cond_20
    if-eqz p1, :cond_2a

    aget-object v4, v2, v0

    invoke-interface {p1, v4}, Ljava/io/FileFilter;->accept(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_38

    :cond_2a
    new-instance v4, Lcom/estrongs/io/model/ExtFile;

    aget-object v5, v2, v0

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/estrongs/io/model/ExtFile;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_38
    add-int/lit8 v0, v0, 0x1

    goto :goto_f
.end method
