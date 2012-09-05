.class public Lcom/google/android/googlequicksearchbox/util/SafeDataSetObservable;
.super Landroid/database/DataSetObservable;
.source "SafeDataSetObservable.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/database/DataSetObservable;-><init>()V

    return-void
.end method

.method private observersCopy()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/database/DataSetObserver;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/util/SafeDataSetObservable;->mObservers:Ljava/util/ArrayList;

    monitor-enter v1

    .line 61
    :try_start_3
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/util/SafeDataSetObservable;->mObservers:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 62
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method


# virtual methods
.method public getObserverCount()I
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/util/SafeDataSetObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public notifyChanged()V
    .registers 4

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/util/SafeDataSetObservable;->observersCopy()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/DataSetObserver;

    .line 44
    .local v1, o:Landroid/database/DataSetObserver;
    invoke-virtual {v1}, Landroid/database/DataSetObserver;->onChanged()V

    goto :goto_8

    .line 46
    .end local v1           #o:Landroid/database/DataSetObserver;
    :cond_18
    return-void
.end method

.method public notifyInvalidated()V
    .registers 4

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/util/SafeDataSetObservable;->observersCopy()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/DataSetObserver;

    .line 51
    .local v1, o:Landroid/database/DataSetObserver;
    invoke-virtual {v1}, Landroid/database/DataSetObserver;->onInvalidated()V

    goto :goto_8

    .line 53
    .end local v1           #o:Landroid/database/DataSetObserver;
    :cond_18
    return-void
.end method
