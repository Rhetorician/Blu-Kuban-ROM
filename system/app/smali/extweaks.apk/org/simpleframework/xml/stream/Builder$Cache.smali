.class Lorg/simpleframework/xml/stream/Builder$Cache;
.super Ljava/util/concurrent/ConcurrentHashMap;
.source "Builder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/ConcurrentHashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/simpleframework/xml/stream/Builder;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/stream/Builder;)V
    .registers 2
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lorg/simpleframework/xml/stream/Builder$Cache;->this$0:Lorg/simpleframework/xml/stream/Builder;

    .line 164
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 165
    return-void
.end method
