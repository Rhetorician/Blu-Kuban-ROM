.class public Lmyorg/bouncycastle/jce/provider/JDKDigestSignature$RIPEMD160WithRSAEncryption;
.super Lmyorg/bouncycastle/jce/provider/JDKDigestSignature;
.source "JDKDigestSignature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/jce/provider/JDKDigestSignature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RIPEMD160WithRSAEncryption"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    .line 263
    sget-object v0, Lmyorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->ripemd160:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v1, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;

    invoke-direct {v1}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;-><init>()V

    new-instance v2, Lmyorg/bouncycastle/crypto/encodings/PKCS1Encoding;

    new-instance v3, Lmyorg/bouncycastle/crypto/engines/RSABlindedEngine;

    invoke-direct {v3}, Lmyorg/bouncycastle/crypto/engines/RSABlindedEngine;-><init>()V

    invoke-direct {v2, v3}, Lmyorg/bouncycastle/crypto/encodings/PKCS1Encoding;-><init>(Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;)V

    invoke-direct {p0, v0, v1, v2}, Lmyorg/bouncycastle/jce/provider/JDKDigestSignature;-><init>(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/crypto/Digest;Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;)V

    .line 265
    return-void
.end method