.class public Lmyorg/bouncycastle/asn1/cmp/POPODecKeyChallContent;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "POPODecKeyChallContent.java"


# instance fields
.field private content:Lmyorg/bouncycastle/asn1/ASN1Sequence;


# virtual methods
.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/cmp/POPODecKeyChallContent;->content:Lmyorg/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method