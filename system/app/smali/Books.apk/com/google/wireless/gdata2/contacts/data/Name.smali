.class public Lcom/google/wireless/gdata2/contacts/data/Name;
.super Ljava/lang/Object;
.source "Name.java"


# instance fields
.field private additionalName:Ljava/lang/String;

.field private additionalNameYomi:Ljava/lang/String;

.field private familyName:Ljava/lang/String;

.field private familyNameYomi:Ljava/lang/String;

.field private fullName:Ljava/lang/String;

.field private fullNameYomi:Ljava/lang/String;

.field private givenName:Ljava/lang/String;

.field private givenNameYomi:Ljava/lang/String;

.field private namePrefix:Ljava/lang/String;

.field private nameSuffix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString(Ljava/lang/StringBuffer;)V
    .registers 4
    .parameter "sb"

    .prologue
    .line 171
    const-string v0, "Name"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 172
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/Name;->fullName:Ljava/lang/String;

    if-eqz v0, :cond_14

    const-string v0, " fullName:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/Name;->fullName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 173
    :cond_14
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/Name;->nameSuffix:Ljava/lang/String;

    if-eqz v0, :cond_23

    const-string v0, " nameSuffix:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/Name;->nameSuffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 174
    :cond_23
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/Name;->namePrefix:Ljava/lang/String;

    if-eqz v0, :cond_32

    const-string v0, " namePrefix:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/Name;->namePrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 175
    :cond_32
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/Name;->familyName:Ljava/lang/String;

    if-eqz v0, :cond_41

    const-string v0, " familyName:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/Name;->familyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 176
    :cond_41
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/Name;->additionalName:Ljava/lang/String;

    if-eqz v0, :cond_50

    const-string v0, " additionalName:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/Name;->additionalName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 177
    :cond_50
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/Name;->givenName:Ljava/lang/String;

    if-eqz v0, :cond_5f

    const-string v0, " givenName:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/Name;->givenName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 178
    :cond_5f
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/Name;->givenNameYomi:Ljava/lang/String;

    if-eqz v0, :cond_6e

    const-string v0, " givenNameYomi:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/Name;->givenNameYomi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 179
    :cond_6e
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/Name;->familyNameYomi:Ljava/lang/String;

    if-eqz v0, :cond_7d

    const-string v0, " familyNameYomi:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/Name;->familyNameYomi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 180
    :cond_7d
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/Name;->additionalNameYomi:Ljava/lang/String;

    if-eqz v0, :cond_8c

    const-string v0, " additionalNameYomi:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/Name;->additionalNameYomi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 181
    :cond_8c
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/Name;->fullNameYomi:Ljava/lang/String;

    if-eqz v0, :cond_9b

    const-string v0, " fullNameYomi:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/Name;->fullNameYomi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 182
    :cond_9b
    return-void
.end method
