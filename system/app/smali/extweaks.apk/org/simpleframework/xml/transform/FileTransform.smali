.class Lorg/simpleframework/xml/transform/FileTransform;
.super Ljava/lang/Object;
.source "FileTransform.java"

# interfaces
.implements Lorg/simpleframework/xml/transform/Transform;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/simpleframework/xml/transform/Transform",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Ljava/lang/String;)Ljava/io/File;
    .registers 3
    .parameter

    .prologue
    .line 57
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic read(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/transform/FileTransform;->read(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/io/File;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 71
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic write(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 44
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/transform/FileTransform;->write(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
