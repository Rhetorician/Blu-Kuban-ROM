.class public final Ljavax/mail/search/MessageIDTerm;
.super Ljavax/mail/search/StringTerm;
.source "MessageIDTerm.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 49
    invoke-direct {p0, p1}, Ljavax/mail/search/StringTerm;-><init>(Ljava/lang/String;)V

    .line 50
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 80
    instance-of v0, p1, Ljavax/mail/search/MessageIDTerm;

    if-eqz v0, :cond_c

    invoke-super {p0, p1}, Ljavax/mail/search/StringTerm;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public match(Ljavax/mail/Message;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 60
    :try_start_1
    const-string v1, "Message-ID"

    invoke-virtual {p1, v1}, Ljavax/mail/Message;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 61
    if-eqz v2, :cond_16

    move v1, v0

    .line 63
    :goto_a
    array-length v3, v2

    if-ge v1, v3, :cond_16

    .line 65
    aget-object v3, v2, v1

    invoke-super {p0, v3}, Ljavax/mail/search/StringTerm;->match(Ljava/lang/String;)Z
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_12} :catch_1a

    move-result v3

    if-eqz v3, :cond_17

    .line 67
    const/4 v0, 0x1

    .line 75
    :cond_16
    :goto_16
    return v0

    .line 63
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 72
    :catch_1a
    move-exception v1

    goto :goto_16
.end method