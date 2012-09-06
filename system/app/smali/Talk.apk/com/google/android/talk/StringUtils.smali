.class public Lcom/google/android/talk/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseAbbreviatedAddress(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "xmppAddress"

    .prologue
    .line 40
    if-nez p0, :cond_4

    .line 41
    const/4 p0, 0x0

    .line 47
    .end local p0
    .local v0, index:I
    :cond_3
    :goto_3
    return-object p0

    .line 43
    .end local v0           #index:I
    .restart local p0
    :cond_4
    const/16 v1, 0x40

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 44
    .restart local v0       #index:I
    if-ltz v0, :cond_3

    .line 47
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_3
.end method

.method public static parseBareAddress(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "xmppAddress"

    .prologue
    .line 26
    if-nez p0, :cond_4

    .line 27
    const/4 p0, 0x0

    .line 35
    .end local p0
    .local v0, slashIndex:I
    :cond_3
    :goto_3
    return-object p0

    .line 29
    .end local v0           #slashIndex:I
    .restart local p0
    :cond_4
    const/16 v1, 0x2f

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 30
    .restart local v0       #slashIndex:I
    if-ltz v0, :cond_3

    .line 32
    if-nez v0, :cond_11

    .line 33
    const-string p0, ""

    goto :goto_3

    .line 35
    :cond_11
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_3
.end method

.method public static parseDomain(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "xmppAddress"

    .prologue
    const/4 v2, 0x0

    .line 57
    invoke-static {p0}, Lcom/google/android/talk/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, bareAddress:Ljava/lang/String;
    if-nez v0, :cond_8

    .line 65
    :cond_7
    :goto_7
    return-object v2

    .line 61
    :cond_8
    const/16 v3, 0x40

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 62
    .local v1, index:I
    if-ltz v1, :cond_7

    .line 65
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_7
.end method
