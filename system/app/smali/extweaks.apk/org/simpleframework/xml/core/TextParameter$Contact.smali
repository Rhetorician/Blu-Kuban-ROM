.class Lorg/simpleframework/xml/core/TextParameter$Contact;
.super Lorg/simpleframework/xml/core/ParameterContact;
.source "TextParameter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/simpleframework/xml/core/ParameterContact",
        "<",
        "Lorg/simpleframework/xml/Text;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/Text;Ljava/lang/reflect/Constructor;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 260
    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/core/ParameterContact;-><init>(Ljava/lang/annotation/Annotation;Ljava/lang/reflect/Constructor;I)V

    .line 261
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 272
    const-string v0, ""

    return-object v0
.end method
