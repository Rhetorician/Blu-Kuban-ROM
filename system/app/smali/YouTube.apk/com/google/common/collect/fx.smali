.class final Lcom/google/common/collect/fx;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/common/collect/fy;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 214
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 215
    new-instance v1, Lcom/google/common/collect/fy;

    invoke-direct {v1, v0}, Lcom/google/common/collect/fy;-><init>(Ljava/lang/reflect/Field;)V
    :try_end_9
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_9} :catch_a

    return-object v1

    .line 216
    :catch_a
    move-exception v0

    .line 217
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static a(Lcom/google/common/collect/ew;Ljava/io/ObjectInputStream;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 183
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 184
    invoke-static {p0, p1, v0}, Lcom/google/common/collect/fx;->a(Lcom/google/common/collect/ew;Ljava/io/ObjectInputStream;I)V

    .line 185
    return-void
.end method

.method public static a(Lcom/google/common/collect/ew;Ljava/io/ObjectInputStream;I)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    move v2, v1

    .line 196
    :goto_2
    if-ge v2, p2, :cond_21

    .line 198
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    .line 199
    invoke-interface {p0, v0}, Lcom/google/common/collect/ew;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v3

    .line 200
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v4

    move v0, v1

    .line 201
    :goto_11
    if-ge v0, v4, :cond_1d

    .line 203
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    .line 204
    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 201
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 196
    :cond_1d
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 207
    :cond_21
    return-void
.end method

.method public static a(Lcom/google/common/collect/ew;Ljava/io/ObjectOutputStream;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 165
    invoke-interface {p0}, Lcom/google/common/collect/ew;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 166
    invoke-interface {p0}, Lcom/google/common/collect/ew;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 167
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 168
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 169
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_41
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 170
    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_41

    .line 173
    :cond_4f
    return-void
.end method

.method public static a(Lcom/google/common/collect/fj;Ljava/io/ObjectInputStream;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 131
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 132
    invoke-static {p0, p1, v0}, Lcom/google/common/collect/fx;->a(Lcom/google/common/collect/fj;Ljava/io/ObjectInputStream;I)V

    .line 133
    return-void
.end method

.method public static a(Lcom/google/common/collect/fj;Ljava/io/ObjectInputStream;I)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 144
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_11

    .line 146
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    .line 147
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v2

    .line 148
    invoke-interface {p0, v1, v2}, Lcom/google/common/collect/fj;->add(Ljava/lang/Object;I)I

    .line 144
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 150
    :cond_11
    return-void
.end method

.method public static a(Lcom/google/common/collect/fj;Ljava/io/ObjectOutputStream;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 115
    invoke-interface {p0}, Lcom/google/common/collect/fj;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    .line 116
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 117
    invoke-interface {p0}, Lcom/google/common/collect/fj;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/fk;

    .line 118
    invoke-interface {v0}, Lcom/google/common/collect/fk;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 119
    invoke-interface {v0}, Lcom/google/common/collect/fk;->b()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    goto :goto_13

    .line 121
    :cond_2e
    return-void
.end method

.method public static a(Ljava/util/Map;Ljava/io/ObjectInputStream;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 83
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 84
    invoke-static {p0, p1, v0}, Lcom/google/common/collect/fx;->a(Ljava/util/Map;Ljava/io/ObjectInputStream;I)V

    .line 85
    return-void
.end method

.method public static a(Ljava/util/Map;Ljava/io/ObjectInputStream;I)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 95
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_11

    .line 97
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    .line 99
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 100
    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 102
    :cond_11
    return-void
.end method

.method public static a(Ljava/util/Map;Ljava/io/ObjectOutputStream;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 69
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 70
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 71
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 72
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_f

    .line 74
    :cond_2a
    return-void
.end method