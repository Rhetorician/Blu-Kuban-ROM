.class public Lmyorg/bouncycastle/sasn1/DerOctetString;
.super Lmyorg/bouncycastle/sasn1/DerObject;
.source "DerOctetString.java"

# interfaces
.implements Lmyorg/bouncycastle/sasn1/Asn1OctetString;


# direct methods
.method protected constructor <init>(I[B)V
    .registers 4
    .parameter "baseTag"
    .parameter "contentStream"

    .prologue
    .line 11
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0, p2}, Lmyorg/bouncycastle/sasn1/DerObject;-><init>(II[B)V

    .line 12
    return-void
.end method


# virtual methods
.method public getOctetStream()Ljava/io/InputStream;
    .registers 3

    .prologue
    .line 15
    invoke-virtual {p0}, Lmyorg/bouncycastle/sasn1/DerOctetString;->isConstructed()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 16
    new-instance v0, Lmyorg/bouncycastle/sasn1/ConstructedOctetStream;

    invoke-virtual {p0}, Lmyorg/bouncycastle/sasn1/DerOctetString;->getRawContentStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/sasn1/ConstructedOctetStream;-><init>(Ljava/io/InputStream;)V

    .line 18
    :goto_f
    return-object v0

    :cond_10
    invoke-virtual {p0}, Lmyorg/bouncycastle/sasn1/DerOctetString;->getRawContentStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_f
.end method