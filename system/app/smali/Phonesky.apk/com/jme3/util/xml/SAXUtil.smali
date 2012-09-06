.class public final Lcom/jme3/util/xml/SAXUtil;
.super Ljava/lang/Object;
.source "SAXUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseBool(Ljava/lang/String;Z)Z
    .registers 3
    .parameter "bool"
    .parameter "def"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 103
    if-eqz p0, :cond_a

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 106
    .end local p1
    :cond_a
    :goto_a
    return p1

    .restart local p1
    :cond_b
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_a
.end method

.method public static parseColor(Lorg/xml/sax/Attributes;)Lcom/jme3/math/ColorRGBA;
    .registers 6
    .parameter "attribs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 134
    const-string v3, "r"

    invoke-interface {p0, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/jme3/util/xml/SAXUtil;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 135
    .local v2, r:F
    const-string v3, "g"

    invoke-interface {p0, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/jme3/util/xml/SAXUtil;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 136
    .local v1, g:F
    const-string v3, "b"

    invoke-interface {p0, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/jme3/util/xml/SAXUtil;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 137
    .local v0, b:F
    new-instance v3, Lcom/jme3/math/ColorRGBA;

    const/high16 v4, 0x3f80

    invoke-direct {v3, v2, v1, v0, v4}, Lcom/jme3/math/ColorRGBA;-><init>(FFFF)V

    return-object v3
.end method

.method public static parseFloat(Ljava/lang/String;)F
    .registers 5
    .parameter "f"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 91
    if-nez p0, :cond_a

    .line 92
    new-instance v1, Lorg/xml/sax/SAXException;

    const-string v2, "Expected a decimal"

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 95
    :cond_a
    :try_start_a
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_d} :catch_f

    move-result v1

    return v1

    .line 96
    :catch_f
    move-exception v0

    .line 97
    .local v0, ex:Ljava/lang/NumberFormatException;
    new-instance v1, Lorg/xml/sax/SAXException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected a decimal, got \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static parseInt(Ljava/lang/String;)I
    .registers 5
    .parameter "i"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 67
    if-nez p0, :cond_a

    .line 68
    new-instance v1, Lorg/xml/sax/SAXException;

    const-string v2, "Expected an integer"

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 71
    :cond_a
    :try_start_a
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_d} :catch_f

    move-result v1

    return v1

    .line 72
    :catch_f
    move-exception v0

    .line 73
    .local v0, ex:Ljava/lang/NumberFormatException;
    new-instance v1, Lorg/xml/sax/SAXException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected an integer, got \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static parseInt(Ljava/lang/String;I)I
    .registers 6
    .parameter "i"
    .parameter "def"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 55
    if-nez p0, :cond_3

    .line 59
    .end local p1
    :goto_2
    return p1

    .restart local p1
    :cond_3
    :try_start_3
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_6} :catch_8

    move-result p1

    goto :goto_2

    .line 60
    :catch_8
    move-exception v0

    .line 61
    .local v0, ex:Ljava/lang/NumberFormatException;
    new-instance v1, Lorg/xml/sax/SAXException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected an integer, got \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static parseString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "str"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 120
    if-nez p0, :cond_a

    .line 121
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "Expected a string"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_a
    return-object p0
.end method

.method public static parseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "str"
    .parameter "def"

    .prologue
    .line 113
    if-nez p0, :cond_3

    .line 116
    .end local p1
    :goto_2
    return-object p1

    .restart local p1
    :cond_3
    move-object p1, p0

    goto :goto_2
.end method

.method public static parseVector3(Lorg/xml/sax/Attributes;)Lcom/jme3/math/Vector3f;
    .registers 5
    .parameter "attribs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 127
    const-string v3, "x"

    invoke-interface {p0, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/jme3/util/xml/SAXUtil;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 128
    .local v0, x:F
    const-string v3, "y"

    invoke-interface {p0, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/jme3/util/xml/SAXUtil;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 129
    .local v1, y:F
    const-string v3, "z"

    invoke-interface {p0, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/jme3/util/xml/SAXUtil;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 130
    .local v2, z:F
    new-instance v3, Lcom/jme3/math/Vector3f;

    invoke-direct {v3, v0, v1, v2}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    return-object v3
.end method
