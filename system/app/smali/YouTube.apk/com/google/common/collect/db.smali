.class public abstract Lcom/google/common/collect/db;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract delegate()Ljava/lang/Object;
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/google/common/collect/db;->delegate()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
