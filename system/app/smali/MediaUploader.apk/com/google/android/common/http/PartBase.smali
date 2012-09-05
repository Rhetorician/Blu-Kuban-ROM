.class public abstract Lcom/google/android/common/http/PartBase;
.super Lcom/google/android/common/http/Part;
.source "PartBase.java"


# instance fields
.field private charSet:Ljava/lang/String;

.field private contentType:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private transferEncoding:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/google/android/common/http/Part;-><init>()V

    .line 63
    if-nez p1, :cond_d

    .line 64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Name must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_d
    iput-object p1, p0, Lcom/google/android/common/http/PartBase;->name:Ljava/lang/String;

    .line 67
    iput-object p2, p0, Lcom/google/android/common/http/PartBase;->contentType:Ljava/lang/String;

    .line 68
    iput-object p3, p0, Lcom/google/android/common/http/PartBase;->charSet:Ljava/lang/String;

    .line 69
    iput-object p4, p0, Lcom/google/android/common/http/PartBase;->transferEncoding:Ljava/lang/String;

    .line 70
    return-void
.end method


# virtual methods
.method public getCharSet()Ljava/lang/String;
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/common/http/PartBase;->charSet:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/android/common/http/PartBase;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/common/http/PartBase;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTransferEncoding()Ljava/lang/String;
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/android/common/http/PartBase;->transferEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public setCharSet(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/google/android/common/http/PartBase;->charSet:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/google/android/common/http/PartBase;->contentType:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 134
    if-nez p1, :cond_a

    .line 135
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Name must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_a
    iput-object p1, p0, Lcom/google/android/common/http/PartBase;->name:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public setTransferEncoding(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/google/android/common/http/PartBase;->transferEncoding:Ljava/lang/String;

    .line 148
    return-void
.end method
