.class public Lcom/google/android/common/base/CharEscaperBuilder;
.super Ljava/lang/Object;
.source "CharEscaperBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/common/base/CharEscaperBuilder$CharArrayDecorator;
    }
.end annotation


# instance fields
.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private max:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/common/base/CharEscaperBuilder;->max:I

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/common/base/CharEscaperBuilder;->map:Ljava/util/Map;

    .line 61
    return-void
.end method


# virtual methods
.method public addEscape(CLjava/lang/String;)Lcom/google/android/common/base/CharEscaperBuilder;
    .registers 5
    .parameter "c"
    .parameter "r"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/common/base/CharEscaperBuilder;->map:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget v0, p0, Lcom/google/android/common/base/CharEscaperBuilder;->max:I

    if-le p1, v0, :cond_f

    .line 69
    iput p1, p0, Lcom/google/android/common/base/CharEscaperBuilder;->max:I

    .line 71
    :cond_f
    return-object p0
.end method

.method public toArray()[[C
    .registers 6

    .prologue
    .line 92
    iget v3, p0, Lcom/google/android/common/base/CharEscaperBuilder;->max:I

    add-int/lit8 v3, v3, 0x1

    new-array v2, v3, [[C

    .line 93
    .local v2, result:[[C
    iget-object v3, p0, Lcom/google/android/common/base/CharEscaperBuilder;->map:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 94
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Character;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Character;

    invoke-virtual {v3}, Ljava/lang/Character;->charValue()C

    move-result v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    aput-object v3, v2, v4

    goto :goto_10

    .line 96
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Character;Ljava/lang/String;>;"
    :cond_33
    return-object v2
.end method

.method public toEscaper()Lcom/google/android/common/base/CharEscaper;
    .registers 3

    .prologue
    .line 106
    new-instance v0, Lcom/google/android/common/base/CharEscaperBuilder$CharArrayDecorator;

    invoke-virtual {p0}, Lcom/google/android/common/base/CharEscaperBuilder;->toArray()[[C

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/common/base/CharEscaperBuilder$CharArrayDecorator;-><init>([[C)V

    return-object v0
.end method
