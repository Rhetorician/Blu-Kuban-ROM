.class final enum Lcom/google/common/collect/MapMakerInternalMap$EntryFactory$1;
.super Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 353
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;-><init>(Ljava/lang/String;ILcom/google/common/collect/fs;)V

    return-void
.end method


# virtual methods
.method final newEntry(Lcom/google/common/collect/MapMakerInternalMap$Segment;Ljava/lang/Object;ILcom/google/common/collect/gg;)Lcom/google/common/collect/gg;
    .registers 6
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 357
    new-instance v0, Lcom/google/common/collect/gm;

    invoke-direct {v0, p2, p3, p4}, Lcom/google/common/collect/gm;-><init>(Ljava/lang/Object;ILcom/google/common/collect/gg;)V

    return-object v0
.end method
