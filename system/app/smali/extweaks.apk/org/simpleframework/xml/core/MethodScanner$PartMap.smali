.class Lorg/simpleframework/xml/core/MethodScanner$PartMap;
.super Ljava/util/LinkedHashMap;
.source "MethodScanner.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<",
        "Ljava/lang/String;",
        "Lorg/simpleframework/xml/core/MethodPart;",
        ">;",
        "Ljava/lang/Iterable",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/simpleframework/xml/core/MethodScanner;


# direct methods
.method private constructor <init>(Lorg/simpleframework/xml/core/MethodScanner;)V
    .registers 2
    .parameter

    .prologue
    .line 513
    iput-object p1, p0, Lorg/simpleframework/xml/core/MethodScanner$PartMap;->this$0:Lorg/simpleframework/xml/core/MethodScanner;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/simpleframework/xml/core/MethodScanner;Lorg/simpleframework/xml/core/MethodScanner$1;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 513
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/MethodScanner$PartMap;-><init>(Lorg/simpleframework/xml/core/MethodScanner;)V

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
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 523
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/MethodScanner$PartMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public take(Ljava/lang/String;)Lorg/simpleframework/xml/core/MethodPart;
    .registers 3
    .parameter

    .prologue
    .line 536
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/MethodScanner$PartMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/MethodPart;

    return-object v0
.end method
