.class Lorg/simpleframework/xml/core/ContactMap;
.super Ljava/util/LinkedHashMap;
.source "ContactMap.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<",
        "Ljava/lang/Object;",
        "Lorg/simpleframework/xml/core/Contact;",
        ">;",
        "Ljava/lang/Iterable",
        "<",
        "Lorg/simpleframework/xml/core/Contact;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/simpleframework/xml/core/Contact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ContactMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method