.class final enum Lcom/google/common/collect/SortedLists$KeyPresentBehavior$5;
.super Lcom/google/common/collect/SortedLists$KeyPresentBehavior;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 124
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/SortedLists$KeyPresentBehavior;-><init>(Ljava/lang/String;ILcom/google/common/collect/kf;)V

    return-void
.end method


# virtual methods
.method public final resultIndex(Ljava/util/Comparator;Ljava/lang/Object;Ljava/util/List;I)I
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 128
    sget-object v0, Lcom/google/common/collect/SortedLists$KeyPresentBehavior$5;->FIRST_PRESENT:Lcom/google/common/collect/SortedLists$KeyPresentBehavior;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/common/collect/SortedLists$KeyPresentBehavior;->resultIndex(Ljava/util/Comparator;Ljava/lang/Object;Ljava/util/List;I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method
