.class public Lorg/apache/james/mime4j/field/address/parser/Token;
.super Ljava/lang/Object;
.source "Token.java"


# instance fields
.field public beginColumn:I

.field public beginLine:I

.field public endColumn:I

.field public endLine:I

.field public image:Ljava/lang/String;

.field public kind:I

.field public next:Lorg/apache/james/mime4j/field/address/parser/Token;

.field public specialToken:Lorg/apache/james/mime4j/field/address/parser/Token;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final newToken(I)Lorg/apache/james/mime4j/field/address/parser/Token;
    .registers 2
    .parameter "ofKind"

    .prologue
    .line 90
    .line 92
    new-instance v0, Lorg/apache/james/mime4j/field/address/parser/Token;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/address/parser/Token;-><init>()V

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/Token;->image:Ljava/lang/String;

    return-object v0
.end method
