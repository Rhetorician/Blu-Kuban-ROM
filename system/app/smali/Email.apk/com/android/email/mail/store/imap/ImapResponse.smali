.class public Lcom/android/email/mail/store/imap/ImapResponse;
.super Lcom/android/email/mail/store/imap/ImapList;
.source "ImapResponse.java"


# instance fields
.field private final mIsContinuationRequest:Z

.field private final mTag:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .registers 3
    .parameter "tag"
    .parameter "isContinuationRequest"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapList;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/android/email/mail/store/imap/ImapResponse;->mTag:Ljava/lang/String;

    .line 28
    iput-boolean p2, p0, Lcom/android/email/mail/store/imap/ImapResponse;->mIsContinuationRequest:Z

    .line 29
    return-void
.end method

.method static isStatusResponse(Ljava/lang/String;)Z
    .registers 2
    .parameter "symbol"

    .prologue
    .line 32
    const-string v0, "OK"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_28

    const-string v0, "NO"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_28

    const-string v0, "BAD"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_28

    const-string v0, "PREAUTH"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_28

    const-string v0, "BYE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    :cond_28
    const/4 v0, 0x1

    :goto_29
    return v0

    :cond_2a
    const/4 v0, 0x0

    goto :goto_29
.end method


# virtual methods
.method public equalsForTest(Lcom/android/email/mail/store/imap/ImapElement;)Z
    .registers 6
    .parameter "that"

    .prologue
    const/4 v1, 0x0

    .line 143
    invoke-super {p0, p1}, Lcom/android/email/mail/store/imap/ImapList;->equalsForTest(Lcom/android/email/mail/store/imap/ImapElement;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 159
    :cond_7
    :goto_7
    return v1

    :cond_8
    move-object v0, p1

    .line 146
    check-cast v0, Lcom/android/email/mail/store/imap/ImapResponse;

    .line 147
    .local v0, thatResponse:Lcom/android/email/mail/store/imap/ImapResponse;
    iget-object v2, p0, Lcom/android/email/mail/store/imap/ImapResponse;->mTag:Ljava/lang/String;

    if-nez v2, :cond_1b

    .line 148
    iget-object v2, v0, Lcom/android/email/mail/store/imap/ImapResponse;->mTag:Ljava/lang/String;

    if-nez v2, :cond_7

    .line 156
    :cond_13
    iget-boolean v2, p0, Lcom/android/email/mail/store/imap/ImapResponse;->mIsContinuationRequest:Z

    iget-boolean v3, v0, Lcom/android/email/mail/store/imap/ImapResponse;->mIsContinuationRequest:Z

    if-ne v2, v3, :cond_7

    .line 159
    const/4 v1, 0x1

    goto :goto_7

    .line 152
    :cond_1b
    iget-object v2, p0, Lcom/android/email/mail/store/imap/ImapResponse;->mTag:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/email/mail/store/imap/ImapResponse;->mTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    goto :goto_7
.end method

.method public getAlertTextOrEmpty()Lcom/android/email/mail/store/imap/ImapString;
    .registers 3

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/android/email/mail/store/imap/ImapResponse;->getResponseCodeOrEmpty()Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v0

    const-string v1, "ALERT"

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/ImapString;->is(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 116
    sget-object v0, Lcom/android/email/mail/store/imap/ImapString;->EMPTY:Lcom/android/email/mail/store/imap/ImapString;

    .line 119
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/email/mail/store/imap/ImapResponse;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v0

    goto :goto_e
.end method

.method public getResponseCodeOrEmpty()Lcom/android/email/mail/store/imap/ImapString;
    .registers 3

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/android/email/mail/store/imap/ImapResponse;->isStatusResponse()Z

    move-result v0

    if-nez v0, :cond_9

    .line 104
    sget-object v0, Lcom/android/email/mail/store/imap/ImapString;->EMPTY:Lcom/android/email/mail/store/imap/ImapString;

    .line 106
    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/email/mail/store/imap/ImapResponse;->getListOrEmpty(I)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v0

    goto :goto_8
.end method

.method public getStatusResponseTextOrEmpty()Lcom/android/email/mail/store/imap/ImapString;
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 126
    invoke-virtual {p0}, Lcom/android/email/mail/store/imap/ImapResponse;->isStatusResponse()Z

    move-result v1

    if-nez v1, :cond_a

    .line 127
    sget-object v0, Lcom/android/email/mail/store/imap/ImapString;->EMPTY:Lcom/android/email/mail/store/imap/ImapString;

    .line 129
    :goto_9
    return-object v0

    :cond_a
    invoke-virtual {p0, v0}, Lcom/android/email/mail/store/imap/ImapResponse;->getElementOrNone(I)Lcom/android/email/mail/store/imap/ImapElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/mail/store/imap/ImapElement;->isList()Z

    move-result v1

    if-eqz v1, :cond_15

    const/4 v0, 0x2

    :cond_15
    invoke-virtual {p0, v0}, Lcom/android/email/mail/store/imap/ImapResponse;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v0

    goto :goto_9
.end method

.method public isContinuationRequest()Z
    .registers 2

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/android/email/mail/store/imap/ImapResponse;->mIsContinuationRequest:Z

    return v0
.end method

.method public final isDataResponse(ILjava/lang/String;)Z
    .registers 4
    .parameter "index"
    .parameter "responseType"

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/android/email/mail/store/imap/ImapResponse;->isTagged()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p0, p1}, Lcom/android/email/mail/store/imap/ImapResponse;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/email/mail/store/imap/ImapString;->is(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public isExist()Z
    .registers 3

    .prologue
    .line 83
    const/4 v0, 0x1

    const-string v1, "EXISTS"

    invoke-virtual {p0, v0, v1}, Lcom/android/email/mail/store/imap/ImapResponse;->isDataResponse(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isFetch()Z
    .registers 3

    .prologue
    .line 76
    const/4 v0, 0x1

    const-string v1, "FETCH"

    invoke-virtual {p0, v0, v1}, Lcom/android/email/mail/store/imap/ImapResponse;->isDataResponse(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isOk()Z
    .registers 3

    .prologue
    .line 61
    const/4 v0, 0x0

    const-string v1, "OK"

    invoke-virtual {p0, v0, v1}, Lcom/android/email/mail/store/imap/ImapResponse;->is(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isStatusResponse()Z
    .registers 2

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/email/mail/store/imap/ImapResponse;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/mail/store/imap/ImapResponse;->isStatusResponse(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isTagged()Z
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/email/mail/store/imap/ImapResponse;->mTag:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isVanished()Z
    .registers 3

    .prologue
    .line 69
    const/4 v0, 0x0

    const-string v1, "VANISHED"

    invoke-virtual {p0, v0, v1}, Lcom/android/email/mail/store/imap/ImapResponse;->is(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/email/mail/store/imap/ImapResponse;->mTag:Ljava/lang/String;

    .line 135
    .local v0, tag:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/email/mail/store/imap/ImapResponse;->isContinuationRequest()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 136
    const-string v0, "+"

    .line 138
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Lcom/android/email/mail/store/imap/ImapList;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method