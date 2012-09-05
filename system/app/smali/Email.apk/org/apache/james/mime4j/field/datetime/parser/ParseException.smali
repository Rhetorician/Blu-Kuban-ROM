.class public Lorg/apache/james/mime4j/field/datetime/parser/ParseException;
.super Ljava/lang/Exception;
.source "ParseException.java"


# instance fields
.field public currentToken:Lorg/apache/james/mime4j/field/datetime/parser/Token;

.field protected eol:Ljava/lang/String;

.field public expectedTokenSequences:[[I

.field protected specialConstructor:Z

.field public tokenImage:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 148
    const-string v0, "line.separator"

    const-string v1, "\n"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;->eol:Ljava/lang/String;

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;->specialConstructor:Z

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter "message"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 148
    const-string v0, "line.separator"

    const-string v1, "\n"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;->eol:Ljava/lang/String;

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;->specialConstructor:Z

    .line 65
    return-void
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/field/datetime/parser/Token;[[I[Ljava/lang/String;)V
    .registers 6
    .parameter "currentTokenVal"
    .parameter "expectedTokenSequencesVal"
    .parameter "tokenImageVal"

    .prologue
    .line 41
    const-string v0, ""

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 148
    const-string v0, "line.separator"

    const-string v1, "\n"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;->eol:Ljava/lang/String;

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;->specialConstructor:Z

    .line 43
    iput-object p1, p0, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;->currentToken:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 44
    iput-object p2, p0, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;->expectedTokenSequences:[[I

    .line 45
    iput-object p3, p0, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;->tokenImage:[Ljava/lang/String;

    .line 46
    return-void
.end method


# virtual methods
.method protected add_escapes(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter "str"

    .prologue
    .line 155
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 157
    .local v2, retval:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_93

    .line 158
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sparse-switch v4, :sswitch_data_98

    .line 186
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .local v0, ch:C
    const/16 v4, 0x20

    if-lt v0, v4, :cond_1f

    const/16 v4, 0x7e

    if-le v0, v4, :cond_8f

    .line 187
    :cond_1f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0000"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v0, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 188
    .local v3, s:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\\u"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 157
    .end local v0           #ch:C
    .end local v3           #s:Ljava/lang/String;
    :goto_5c
    :sswitch_5c
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 162
    :sswitch_5f
    const-string v4, "\\b"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5c

    .line 165
    :sswitch_65
    const-string v4, "\\t"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5c

    .line 168
    :sswitch_6b
    const-string v4, "\\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5c

    .line 171
    :sswitch_71
    const-string v4, "\\f"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5c

    .line 174
    :sswitch_77
    const-string v4, "\\r"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5c

    .line 177
    :sswitch_7d
    const-string v4, "\\\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5c

    .line 180
    :sswitch_83
    const-string v4, "\\\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5c

    .line 183
    :sswitch_89
    const-string v4, "\\\\"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5c

    .line 190
    .restart local v0       #ch:C
    :cond_8f
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5c

    .line 195
    .end local v0           #ch:C
    :cond_93
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 158
    :sswitch_data_98
    .sparse-switch
        0x0 -> :sswitch_5c
        0x8 -> :sswitch_5f
        0x9 -> :sswitch_65
        0xa -> :sswitch_6b
        0xc -> :sswitch_71
        0xd -> :sswitch_77
        0x22 -> :sswitch_7d
        0x27 -> :sswitch_83
        0x5c -> :sswitch_89
    .end sparse-switch
.end method

.method public getMessage()Ljava/lang/String;
    .registers 10

    .prologue
    .line 104
    iget-boolean v6, p0, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;->specialConstructor:Z

    if-nez v6, :cond_9

    .line 105
    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 142
    :goto_8
    return-object v4

    .line 107
    :cond_9
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 108
    .local v0, expected:Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .line 109
    .local v3, maxSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_10
    iget-object v6, p0, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;->expectedTokenSequences:[[I

    array-length v6, v6

    if-ge v1, v6, :cond_61

    .line 110
    iget-object v6, p0, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;->expectedTokenSequences:[[I

    aget-object v6, v6, v1

    array-length v6, v6

    if-ge v3, v6, :cond_21

    .line 111
    iget-object v6, p0, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;->expectedTokenSequences:[[I

    aget-object v6, v6, v1

    array-length v3, v6

    .line 113
    :cond_21
    const/4 v2, 0x0

    .local v2, j:I
    :goto_22
    iget-object v6, p0, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;->expectedTokenSequences:[[I

    aget-object v6, v6, v1

    array-length v6, v6

    if-ge v2, v6, :cond_3f

    .line 114
    iget-object v6, p0, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;->tokenImage:[Ljava/lang/String;

    iget-object v7, p0, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;->expectedTokenSequences:[[I

    aget-object v7, v7, v1

    aget v7, v7, v2

    aget-object v6, v6, v7

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 113
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 116
    :cond_3f
    iget-object v6, p0, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;->expectedTokenSequences:[[I

    aget-object v6, v6, v1

    iget-object v7, p0, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;->expectedTokenSequences:[[I

    aget-object v7, v7, v1

    array-length v7, v7

    add-int/lit8 v7, v7, -0x1

    aget v6, v6, v7

    if-eqz v6, :cond_53

    .line 117
    const-string v6, "..."

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 119
    :cond_53
    iget-object v6, p0, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;->eol:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "    "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 109
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 121
    .end local v2           #j:I
    :cond_61
    const-string v4, "Encountered \""

    .line 122
    .local v4, retval:Ljava/lang/String;
    iget-object v6, p0, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;->currentToken:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    iget-object v5, v6, Lorg/apache/james/mime4j/field/datetime/parser/Token;->next:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 123
    .local v5, tok:Lorg/apache/james/mime4j/field/datetime/parser/Token;
    const/4 v1, 0x0

    :goto_68
    if-ge v1, v3, :cond_99

    .line 124
    if-eqz v1, :cond_7f

    .line 125
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 126
    :cond_7f
    iget v6, v5, Lorg/apache/james/mime4j/field/datetime/parser/Token;->kind:I

    if-nez v6, :cond_11b

    .line 127
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;->tokenImage:[Ljava/lang/String;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 133
    :cond_99
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\" at line "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;->currentToken:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    iget-object v7, v7, Lorg/apache/james/mime4j/field/datetime/parser/Token;->next:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    iget v7, v7, Lorg/apache/james/mime4j/field/datetime/parser/Token;->beginLine:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", column "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;->currentToken:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    iget-object v7, v7, Lorg/apache/james/mime4j/field/datetime/parser/Token;->next:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    iget v7, v7, Lorg/apache/james/mime4j/field/datetime/parser/Token;->beginColumn:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 135
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;->eol:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 136
    iget-object v6, p0, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;->expectedTokenSequences:[[I

    array-length v6, v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_138

    .line 137
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Was expecting:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;->eol:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "    "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 141
    :goto_104
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 142
    goto/16 :goto_8

    .line 130
    :cond_11b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Lorg/apache/james/mime4j/field/datetime/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;->add_escapes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 131
    iget-object v5, v5, Lorg/apache/james/mime4j/field/datetime/parser/Token;->next:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 123
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_68

    .line 139
    :cond_138
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Was expecting one of:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;->eol:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "    "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_104
.end method