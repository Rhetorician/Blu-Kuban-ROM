.class Ljcifs/smb/Trans2SetFileInformationResponse;
.super Ljcifs/smb/SmbComTransactionResponse;
.source "Trans2SetFileInformationResponse.java"


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Ljcifs/smb/SmbComTransactionResponse;-><init>()V

    .line 24
    const/16 v0, 0x8

    iput-byte v0, p0, Ljcifs/smb/Trans2SetFileInformationResponse;->subCommand:B

    .line 25
    return-void
.end method


# virtual methods
.method readDataWireFormat([BII)I
    .registers 5
    .parameter "buffer"
    .parameter "bufferIndex"
    .parameter "len"

    .prologue
    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method readParametersWireFormat([BII)I
    .registers 5
    .parameter "buffer"
    .parameter "bufferIndex"
    .parameter "len"

    .prologue
    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method readSetupWireFormat([BII)I
    .registers 5
    .parameter "buffer"
    .parameter "bufferIndex"
    .parameter "len"

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 46
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trans2SetFileInformationResponse["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Ljcifs/smb/SmbComTransactionResponse;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method writeDataWireFormat([BI)I
    .registers 4
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method writeParametersWireFormat([BI)I
    .registers 4
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method writeSetupWireFormat([BI)I
    .registers 4
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 28
    const/4 v0, 0x0

    return v0
.end method