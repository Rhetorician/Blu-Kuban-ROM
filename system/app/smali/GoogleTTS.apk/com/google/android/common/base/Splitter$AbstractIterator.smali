.class abstract Lcom/google/android/common/base/Splitter$AbstractIterator;
.super Ljava/lang/Object;
.source "Splitter.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/common/base/Splitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "AbstractIterator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/common/base/Splitter$AbstractIterator$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field next:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field state:Lcom/google/android/common/base/Splitter$AbstractIterator$State;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 407
    .local p0, this:Lcom/google/android/common/base/Splitter$AbstractIterator;,"Lcom/google/android/common/base/Splitter$AbstractIterator<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 408
    sget-object v0, Lcom/google/android/common/base/Splitter$AbstractIterator$State;->NOT_READY:Lcom/google/android/common/base/Splitter$AbstractIterator$State;

    iput-object v0, p0, Lcom/google/android/common/base/Splitter$AbstractIterator;->state:Lcom/google/android/common/base/Splitter$AbstractIterator$State;

    .line 410
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/common/base/Splitter$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 407
    .local p0, this:Lcom/google/android/common/base/Splitter$AbstractIterator;,"Lcom/google/android/common/base/Splitter$AbstractIterator<TT;>;"
    invoke-direct {p0}, Lcom/google/android/common/base/Splitter$AbstractIterator;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract computeNext()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method protected final endOfData()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 419
    .local p0, this:Lcom/google/android/common/base/Splitter$AbstractIterator;,"Lcom/google/android/common/base/Splitter$AbstractIterator<TT;>;"
    sget-object v0, Lcom/google/android/common/base/Splitter$AbstractIterator$State;->DONE:Lcom/google/android/common/base/Splitter$AbstractIterator$State;

    iput-object v0, p0, Lcom/google/android/common/base/Splitter$AbstractIterator;->state:Lcom/google/android/common/base/Splitter$AbstractIterator$State;

    .line 420
    const/4 v0, 0x0

    return-object v0
.end method

.method public final hasNext()Z
    .registers 5

    .prologue
    .local p0, this:Lcom/google/android/common/base/Splitter$AbstractIterator;,"Lcom/google/android/common/base/Splitter$AbstractIterator<TT;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 424
    iget-object v0, p0, Lcom/google/android/common/base/Splitter$AbstractIterator;->state:Lcom/google/android/common/base/Splitter$AbstractIterator$State;

    sget-object v3, Lcom/google/android/common/base/Splitter$AbstractIterator$State;->FAILED:Lcom/google/android/common/base/Splitter$AbstractIterator$State;

    if-eq v0, v3, :cond_1e

    move v0, v1

    :goto_9
    invoke-static {v0}, Lcom/google/android/common/base/Preconditions;->checkState(Z)V

    .line 425
    sget-object v0, Lcom/google/android/common/base/Splitter$6;->$SwitchMap$com$google$android$common$base$Splitter$AbstractIterator$State:[I

    iget-object v3, p0, Lcom/google/android/common/base/Splitter$AbstractIterator;->state:Lcom/google/android/common/base/Splitter$AbstractIterator$State;

    invoke-virtual {v3}, Lcom/google/android/common/base/Splitter$AbstractIterator$State;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_22

    .line 432
    invoke-virtual {p0}, Lcom/google/android/common/base/Splitter$AbstractIterator;->tryToComputeNext()Z

    move-result v2

    :goto_1d
    :pswitch_1d
    return v2

    :cond_1e
    move v0, v2

    .line 424
    goto :goto_9

    :pswitch_20
    move v2, v1

    .line 429
    goto :goto_1d

    .line 425
    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_20
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 446
    .local p0, this:Lcom/google/android/common/base/Splitter$AbstractIterator;,"Lcom/google/android/common/base/Splitter$AbstractIterator<TT;>;"
    invoke-virtual {p0}, Lcom/google/android/common/base/Splitter$AbstractIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_c

    .line 447
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 449
    :cond_c
    sget-object v0, Lcom/google/android/common/base/Splitter$AbstractIterator$State;->NOT_READY:Lcom/google/android/common/base/Splitter$AbstractIterator$State;

    iput-object v0, p0, Lcom/google/android/common/base/Splitter$AbstractIterator;->state:Lcom/google/android/common/base/Splitter$AbstractIterator$State;

    .line 450
    iget-object v0, p0, Lcom/google/android/common/base/Splitter$AbstractIterator;->next:Ljava/lang/Object;

    return-object v0
.end method

.method public remove()V
    .registers 2

    .prologue
    .line 454
    .local p0, this:Lcom/google/android/common/base/Splitter$AbstractIterator;,"Lcom/google/android/common/base/Splitter$AbstractIterator<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method tryToComputeNext()Z
    .registers 3

    .prologue
    .line 436
    .local p0, this:Lcom/google/android/common/base/Splitter$AbstractIterator;,"Lcom/google/android/common/base/Splitter$AbstractIterator<TT;>;"
    sget-object v0, Lcom/google/android/common/base/Splitter$AbstractIterator$State;->FAILED:Lcom/google/android/common/base/Splitter$AbstractIterator$State;

    iput-object v0, p0, Lcom/google/android/common/base/Splitter$AbstractIterator;->state:Lcom/google/android/common/base/Splitter$AbstractIterator$State;

    .line 437
    invoke-virtual {p0}, Lcom/google/android/common/base/Splitter$AbstractIterator;->computeNext()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/common/base/Splitter$AbstractIterator;->next:Ljava/lang/Object;

    .line 438
    iget-object v0, p0, Lcom/google/android/common/base/Splitter$AbstractIterator;->state:Lcom/google/android/common/base/Splitter$AbstractIterator$State;

    sget-object v1, Lcom/google/android/common/base/Splitter$AbstractIterator$State;->DONE:Lcom/google/android/common/base/Splitter$AbstractIterator$State;

    if-eq v0, v1, :cond_16

    .line 439
    sget-object v0, Lcom/google/android/common/base/Splitter$AbstractIterator$State;->READY:Lcom/google/android/common/base/Splitter$AbstractIterator$State;

    iput-object v0, p0, Lcom/google/android/common/base/Splitter$AbstractIterator;->state:Lcom/google/android/common/base/Splitter$AbstractIterator$State;

    .line 440
    const/4 v0, 0x1

    .line 442
    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method
