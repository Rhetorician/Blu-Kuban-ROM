.class public Lcom/google/common/util/concurrent/ExecutionError;
.super Ljava/lang/Error;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Error;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Error;)V
    .registers 2
    .parameter

    .prologue
    .line 60
    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    .line 61
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 46
    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Error;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 54
    return-void
.end method
