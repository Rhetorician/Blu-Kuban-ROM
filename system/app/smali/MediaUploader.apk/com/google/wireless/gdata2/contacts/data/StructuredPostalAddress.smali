.class public Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;
.super Lcom/google/wireless/gdata2/contacts/data/ContactsElement;
.source "StructuredPostalAddress.java"


# static fields
.field public static final TYPE_HOME:B = 0x1t

.field public static final TYPE_OTHER:B = 0x3t

.field public static final TYPE_WORK:B = 0x2t


# instance fields
.field private city:Ljava/lang/String;

.field private country:Ljava/lang/String;

.field private formattedAddress:Ljava/lang/String;

.field private neighborhood:Ljava/lang/String;

.field private pobox:Ljava/lang/String;

.field private postcode:Ljava/lang/String;

.field private region:Ljava/lang/String;

.field private street:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/wireless/gdata2/contacts/data/ContactsElement;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;Z)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p9, p10, p11}, Lcom/google/wireless/gdata2/contacts/data/ContactsElement;-><init>(BLjava/lang/String;Z)V

    .line 37
    iput-object p1, p0, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->street:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->pobox:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->city:Ljava/lang/String;

    .line 40
    iput-object p4, p0, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->postcode:Ljava/lang/String;

    .line 41
    iput-object p5, p0, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->country:Ljava/lang/String;

    .line 42
    iput-object p6, p0, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->region:Ljava/lang/String;

    .line 43
    iput-object p7, p0, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->neighborhood:Ljava/lang/String;

    .line 44
    iput-object p8, p0, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->formattedAddress:Ljava/lang/String;

    .line 45
    return-void
.end method


# virtual methods
.method public getCity()Ljava/lang/String;
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .registers 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getFormattedAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->formattedAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getNeighborhood()Ljava/lang/String;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->neighborhood:Ljava/lang/String;

    return-object v0
.end method

.method public getPobox()Ljava/lang/String;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->pobox:Ljava/lang/String;

    return-object v0
.end method

.method public getPostcode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->postcode:Ljava/lang/String;

    return-object v0
.end method

.method public getRegion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->region:Ljava/lang/String;

    return-object v0
.end method

.method public getStreet()Ljava/lang/String;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->street:Ljava/lang/String;

    return-object v0
.end method

.method public setCity(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->city:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->country:Ljava/lang/String;

    .line 176
    return-void
.end method

.method public setFormattedAddress(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 191
    iput-object p1, p0, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->formattedAddress:Ljava/lang/String;

    .line 192
    return-void
.end method

.method public setNeighborhood(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->neighborhood:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setPobox(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->pobox:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setPostcode(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->postcode:Ljava/lang/String;

    .line 160
    return-void
.end method

.method public setRegion(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->region:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public setStreet(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->street:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public toString(Ljava/lang/StringBuffer;)V
    .registers 4
    .parameter

    .prologue
    .line 195
    const-string v0, "PostalAddress"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 196
    invoke-super {p0, p1}, Lcom/google/wireless/gdata2/contacts/data/ContactsElement;->toString(Ljava/lang/StringBuffer;)V

    .line 197
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->street:Ljava/lang/String;

    if-eqz v0, :cond_17

    const-string v0, " street:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->street:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 198
    :cond_17
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->pobox:Ljava/lang/String;

    if-eqz v0, :cond_26

    const-string v0, " pobox:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->pobox:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 199
    :cond_26
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->neighborhood:Ljava/lang/String;

    if-eqz v0, :cond_35

    const-string v0, " neighborhood:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->neighborhood:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 200
    :cond_35
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->city:Ljava/lang/String;

    if-eqz v0, :cond_44

    const-string v0, " city:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->city:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 201
    :cond_44
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->region:Ljava/lang/String;

    if-eqz v0, :cond_53

    const-string v0, " region:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->region:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 202
    :cond_53
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->postcode:Ljava/lang/String;

    if-eqz v0, :cond_62

    const-string v0, " postcode:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->postcode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 203
    :cond_62
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->country:Ljava/lang/String;

    if-eqz v0, :cond_71

    const-string v0, " country:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->country:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 204
    :cond_71
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->formattedAddress:Ljava/lang/String;

    if-eqz v0, :cond_80

    const-string v0, " formattedAddress:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->formattedAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 205
    :cond_80
    return-void
.end method
