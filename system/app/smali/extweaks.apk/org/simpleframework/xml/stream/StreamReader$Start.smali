.class Lorg/simpleframework/xml/stream/StreamReader$Start;
.super Lorg/simpleframework/xml/stream/EventElement;
.source "StreamReader.java"


# instance fields
.field private final element:Ljavax/xml/stream/events/StartElement;

.field private final location:Ljavax/xml/stream/Location;


# direct methods
.method public constructor <init>(Ljavax/xml/stream/events/XMLEvent;)V
    .registers 3
    .parameter

    .prologue
    .line 337
    invoke-direct {p0}, Lorg/simpleframework/xml/stream/EventElement;-><init>()V

    .line 338
    invoke-interface {p1}, Ljavax/xml/stream/events/XMLEvent;->asStartElement()Ljavax/xml/stream/events/StartElement;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/stream/StreamReader$Start;->element:Ljavax/xml/stream/events/StartElement;

    .line 339
    invoke-interface {p1}, Ljavax/xml/stream/events/XMLEvent;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/stream/StreamReader$Start;->location:Ljavax/xml/stream/Location;

    .line 340
    return-void
.end method


# virtual methods
.method public getAttributes()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljavax/xml/stream/events/Attribute;",
            ">;"
        }
    .end annotation

    .prologue
    .line 396
    iget-object v0, p0, Lorg/simpleframework/xml/stream/StreamReader$Start;->element:Ljavax/xml/stream/events/StartElement;

    invoke-interface {v0}, Ljavax/xml/stream/events/StartElement;->getAttributes()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getLine()I
    .registers 2

    .prologue
    .line 350
    iget-object v0, p0, Lorg/simpleframework/xml/stream/StreamReader$Start;->location:Ljavax/xml/stream/Location;

    invoke-interface {v0}, Ljavax/xml/stream/Location;->getLineNumber()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 361
    iget-object v0, p0, Lorg/simpleframework/xml/stream/StreamReader$Start;->element:Ljavax/xml/stream/events/StartElement;

    invoke-interface {v0}, Ljavax/xml/stream/events/StartElement;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .registers 2

    .prologue
    .line 373
    iget-object v0, p0, Lorg/simpleframework/xml/stream/StreamReader$Start;->element:Ljavax/xml/stream/events/StartElement;

    invoke-interface {v0}, Ljavax/xml/stream/events/StartElement;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReference()Ljava/lang/String;
    .registers 2

    .prologue
    .line 385
    iget-object v0, p0, Lorg/simpleframework/xml/stream/StreamReader$Start;->element:Ljavax/xml/stream/events/StartElement;

    invoke-interface {v0}, Ljavax/xml/stream/events/StartElement;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSource()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 407
    iget-object v0, p0, Lorg/simpleframework/xml/stream/StreamReader$Start;->element:Ljavax/xml/stream/events/StartElement;

    return-object v0
.end method
