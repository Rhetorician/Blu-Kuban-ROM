.class public final Lcom/google/common/collect/Iterators;
.super Ljava/lang/Object;
.source "Iterators.java"


# static fields
.field static final EMPTY_ITERATOR:Lcom/google/common/collect/UnmodifiableIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/UnmodifiableIterator",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY_MODIFIABLE_ITERATOR:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 63
    new-instance v0, Lcom/google/common/collect/Iterators$1;

    invoke-direct {v0}, Lcom/google/common/collect/Iterators$1;-><init>()V

    sput-object v0, Lcom/google/common/collect/Iterators;->EMPTY_ITERATOR:Lcom/google/common/collect/UnmodifiableIterator;

    .line 87
    new-instance v0, Lcom/google/common/collect/Iterators$2;

    invoke-direct {v0}, Lcom/google/common/collect/Iterators$2;-><init>()V

    sput-object v0, Lcom/google/common/collect/Iterators;->EMPTY_MODIFIABLE_ITERATOR:Ljava/util/Iterator;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addAll(Ljava/util/Collection;Ljava/util/Iterator;)Z
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;",
            "Ljava/util/Iterator",
            "<+TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 353
    .local p0, addTo:Ljava/util/Collection;,"Ljava/util/Collection<TT;>;"
    .local p1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<+TT;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    const/4 v0, 0x0

    .line 355
    .local v0, wasModified:Z
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 356
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_4

    .line 358
    :cond_14
    return v0
.end method

.method public static any(Ljava/util/Iterator;Lcom/google/common/base/Predicate;)Z
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<TT;>;",
            "Lcom/google/common/base/Predicate",
            "<-TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 682
    .local p0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<TT;>;"
    .local p1, predicate:Lcom/google/common/base/Predicate;,"Lcom/google/common/base/Predicate<-TT;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 683
    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 684
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 685
    .local v0, element:Ljava/lang/Object;,"TT;"
    invoke-interface {p1, v0}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 686
    const/4 v1, 0x1

    .line 689
    .end local v0           #element:Ljava/lang/Object;,"TT;"
    :goto_14
    return v1

    :cond_15
    const/4 v1, 0x0

    goto :goto_14
.end method

.method public static contains(Ljava/util/Iterator;Ljava/lang/Object;)Z
    .registers 4
    .parameter
    .parameter "element"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    const/4 v0, 0x1

    .line 163
    if-nez p1, :cond_10

    .line 164
    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 165
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    .line 176
    :goto_f
    return v0

    .line 170
    :cond_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 171
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_f

    .line 176
    :cond_21
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static elementsEqual(Ljava/util/Iterator;Ljava/util/Iterator;)Z
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<*>;",
            "Ljava/util/Iterator",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, iterator1:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    .local p1, iterator2:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    const/4 v2, 0x0

    .line 259
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 260
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_e

    .line 269
    :cond_d
    :goto_d
    return v2

    .line 263
    :cond_e
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 264
    .local v0, o1:Ljava/lang/Object;
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 265
    .local v1, o2:Ljava/lang/Object;
    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_d

    .line 269
    .end local v0           #o1:Ljava/lang/Object;
    .end local v1           #o2:Ljava/lang/Object;
    :cond_1d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_d

    const/4 v2, 0x1

    goto :goto_d
.end method

.method public static emptyIterator()Lcom/google/common/collect/UnmodifiableIterator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/UnmodifiableIterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 84
    sget-object v0, Lcom/google/common/collect/Iterators;->EMPTY_ITERATOR:Lcom/google/common/collect/UnmodifiableIterator;

    return-object v0
.end method

.method public static filter(Ljava/util/Iterator;Lcom/google/common/base/Predicate;)Lcom/google/common/collect/UnmodifiableIterator;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<TT;>;",
            "Lcom/google/common/base/Predicate",
            "<-TT;>;)",
            "Lcom/google/common/collect/UnmodifiableIterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 643
    .local p0, unfiltered:Ljava/util/Iterator;,"Ljava/util/Iterator<TT;>;"
    .local p1, predicate:Lcom/google/common/base/Predicate;,"Lcom/google/common/base/Predicate<-TT;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    new-instance v0, Lcom/google/common/collect/Iterators$7;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Iterators$7;-><init>(Ljava/util/Iterator;Lcom/google/common/base/Predicate;)V

    return-object v0
.end method

.method public static varargs forArray([Ljava/lang/Object;)Lcom/google/common/collect/UnmodifiableIterator;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Lcom/google/common/collect/UnmodifiableIterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1037
    .local p0, array:[Ljava/lang/Object;,"[TT;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1038
    new-instance v0, Lcom/google/common/collect/Iterators$11;

    array-length v1, p0

    invoke-direct {v0, v1, p0}, Lcom/google/common/collect/Iterators$11;-><init>(I[Ljava/lang/Object;)V

    return-object v0
.end method

.method static forArray([Ljava/lang/Object;II)Lcom/google/common/collect/UnmodifiableIterator;
    .registers 5
    .parameter
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II)",
            "Lcom/google/common/collect/UnmodifiableIterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1061
    .local p0, array:[Ljava/lang/Object;,"[TT;"
    if-ltz p2, :cond_12

    const/4 v1, 0x1

    :goto_3
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 1062
    add-int v0, p1, p2

    .line 1065
    .local v0, end:I
    array-length v1, p0

    invoke-static {p1, v0, v1}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 1072
    new-instance v1, Lcom/google/common/collect/Iterators$12;

    invoke-direct {v1, p2, p0, p1}, Lcom/google/common/collect/Iterators$12;-><init>(I[Ljava/lang/Object;I)V

    return-object v1

    .line 1061
    .end local v0           #end:I
    :cond_12
    const/4 v1, 0x0

    goto :goto_3
.end method

.method public static getOnlyElement(Ljava/util/Iterator;)Ljava/lang/Object;
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 297
    .local p0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<TT;>;"
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 298
    .local v0, first:Ljava/lang/Object;,"TT;"
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_b

    .line 299
    return-object v0

    .line 302
    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 303
    .local v2, sb:Ljava/lang/StringBuilder;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "expected one element but was: <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    const/4 v1, 0x0

    .local v1, i:I
    :goto_27
    const/4 v3, 0x4

    if-ge v1, v3, :cond_4d

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 305
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 307
    :cond_4d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_58

    .line 308
    const-string v3, ", ..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    :cond_58
    const/16 v3, 0x3e

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 312
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static removeIf(Ljava/util/Iterator;Lcom/google/common/base/Predicate;)Z
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<TT;>;",
            "Lcom/google/common/base/Predicate",
            "<-TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 214
    .local p0, removeFrom:Ljava/util/Iterator;,"Ljava/util/Iterator<TT;>;"
    .local p1, predicate:Lcom/google/common/base/Predicate;,"Lcom/google/common/base/Predicate<-TT;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    const/4 v0, 0x0

    .line 216
    .local v0, modified:Z
    :cond_4
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 217
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 218
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    .line 219
    const/4 v0, 0x1

    goto :goto_4

    .line 222
    :cond_19
    return v0
.end method

.method public static singletonIterator(Ljava/lang/Object;)Lcom/google/common/collect/UnmodifiableIterator;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/google/common/collect/UnmodifiableIterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1087
    .local p0, value:Ljava/lang/Object;,"TT;"
    new-instance v0, Lcom/google/common/collect/Iterators$13;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Iterators$13;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static size(Ljava/util/Iterator;)I
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 150
    .local p0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    const/4 v0, 0x0

    .line 151
    .local v0, count:I
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 152
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 153
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 155
    :cond_d
    return v0
.end method

.method public static toString(Ljava/util/Iterator;)Ljava/lang/String;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 278
    .local p0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_9

    .line 279
    const-string v1, "[]"

    .line 286
    :goto_8
    return-object v1

    .line 281
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 282
    .local v0, builder:Ljava/lang/StringBuilder;
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 283
    :goto_1b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 284
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1b

    .line 286
    :cond_2f
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_8
.end method

.method public static transform(Ljava/util/Iterator;Lcom/google/common/base/Function;)Ljava/util/Iterator;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<TF;>;",
            "Lcom/google/common/base/Function",
            "<-TF;+TT;>;)",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 802
    .local p0, fromIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<TF;>;"
    .local p1, function:Lcom/google/common/base/Function;,"Lcom/google/common/base/Function<-TF;+TT;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 803
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 804
    new-instance v0, Lcom/google/common/collect/Iterators$8;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Iterators$8;-><init>(Ljava/util/Iterator;Lcom/google/common/base/Function;)V

    return-object v0
.end method
