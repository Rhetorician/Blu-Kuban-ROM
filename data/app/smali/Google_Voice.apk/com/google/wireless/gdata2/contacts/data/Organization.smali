.class public Lcom/google/wireless/gdata2/contacts/data/Organization;
.super Lcom/google/wireless/gdata2/contacts/data/ContactsElement;
.source "Organization.java"


# static fields
.field public static final TYPE_OTHER:B = 0x2t

.field public static final TYPE_WORK:B = 0x1t


# instance fields
.field private name:Ljava/lang/String;

.field private nameYomi:Ljava/lang/String;

.field private orgDepartment:Ljava/lang/String;

.field private orgJobDescription:Ljava/lang/String;

.field private orgSymbol:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private where:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/google/wireless/gdata2/contacts/data/ContactsElement;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;Z)V
    .registers 11
    .parameter "name"
    .parameter "nameYomi"
    .parameter "title"
    .parameter "orgDepartment"
    .parameter "orgJobDescription"
    .parameter "orgSymbol"
    .parameter "where"
    .parameter "type"
    .parameter "label"
    .parameter "isPrimary"

    .prologue
    .line 27
    invoke-direct {p0, p8, p9, p10}, Lcom/google/wireless/gdata2/contacts/data/ContactsElement;-><init>(BLjava/lang/String;Z)V

    .line 28
    iput-object p1, p0, Lcom/google/wireless/gdata2/contacts/data/Organization;->name:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/google/wireless/gdata2/contacts/data/Organization;->nameYomi:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lcom/google/wireless/gdata2/contacts/data/Organization;->title:Ljava/lang/String;

    .line 31
    iput-object p4, p0, Lcom/google/wireless/gdata2/contacts/data/Organization;->orgDepartment:Ljava/lang/String;

    .line 32
    iput-object p5, p0, Lcom/google/wireless/gdata2/contacts/data/Organization;->orgJobDescription:Ljava/lang/String;

    .line 33
    iput-object p6, p0, Lcom/google/wireless/gdata2/contacts/data/Organization;->orgSymbol:Ljava/lang/String;

    .line 34
    iput-object p7, p0, Lcom/google/wireless/gdata2/contacts/data/Organization;->where:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/Organization;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNameYomi()Ljava/lang/String;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/Organization;->nameYomi:Ljava/lang/String;

    return-object v0
.end method

.method public getOrgDepartment()Ljava/lang/String;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/Organization;->orgDepartment:Ljava/lang/String;

    return-object v0
.end method

.method public getOrgJobDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/Organization;->orgJobDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getOrgSymbol()Ljava/lang/String;
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/Organization;->orgSymbol:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/Organization;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getWhere()Ljava/lang/String;
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/Organization;->where:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .parameter "name"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/google/wireless/gdata2/contacts/data/Organization;->name:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setNameYomi(Ljava/lang/String;)V
    .registers 2
    .parameter "nameYomi"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/google/wireless/gdata2/contacts/data/Organization;->nameYomi:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setOrgDepartment(Ljava/lang/String;)V
    .registers 2
    .parameter "orgDepartment"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/google/wireless/gdata2/contacts/data/Organization;->orgDepartment:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setOrgJobDescription(Ljava/lang/String;)V
    .registers 2
    .parameter "orgJobDescription"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/google/wireless/gdata2/contacts/data/Organization;->orgJobDescription:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setOrgSymbol(Ljava/lang/String;)V
    .registers 2
    .parameter "orgSymbol"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/google/wireless/gdata2/contacts/data/Organization;->orgSymbol:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 2
    .parameter "title"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/google/wireless/gdata2/contacts/data/Organization;->title:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setWhere(Ljava/lang/String;)V
    .registers 2
    .parameter "where"

    .prologue
    .line 122
    iput-object p1, p0, Lcom/google/wireless/gdata2/contacts/data/Organization;->where:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public toString(Ljava/lang/StringBuffer;)V
    .registers 4
    .parameter "sb"

    .prologue
    .line 126
    const-string v0, "Organization"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 127
    invoke-super {p0, p1}, Lcom/google/wireless/gdata2/contacts/data/ContactsElement;->toString(Ljava/lang/StringBuffer;)V

    .line 128
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/Organization;->name:Ljava/lang/String;

    if-eqz v0, :cond_17

    const-string v0, " name:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/Organization;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 129
    :cond_17
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/Organization;->title:Ljava/lang/String;

    if-eqz v0, :cond_26

    const-string v0, " title:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/Organization;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    :cond_26
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/Organization;->orgDepartment:Ljava/lang/String;

    if-eqz v0, :cond_35

    const-string v0, " orgDepartment:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/Organization;->orgDepartment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    :cond_35
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/Organization;->orgJobDescription:Ljava/lang/String;

    if-eqz v0, :cond_44

    const-string v0, " orgJobDescription:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/Organization;->orgJobDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 132
    :cond_44
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/Organization;->orgSymbol:Ljava/lang/String;

    if-eqz v0, :cond_53

    const-string v0, " orgSymbol:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/Organization;->orgSymbol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 133
    :cond_53
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/Organization;->nameYomi:Ljava/lang/String;

    if-eqz v0, :cond_62

    const-string v0, " nameYomi:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/Organization;->nameYomi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 134
    :cond_62
    return-void
.end method
