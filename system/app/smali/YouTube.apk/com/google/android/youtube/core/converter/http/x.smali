.class public final Lcom/google/android/youtube/core/converter/http/x;
.super Lcom/google/android/youtube/core/converter/http/ar;
.source "SourceFile"


# instance fields
.field private final b:Lcom/google/android/youtube/core/converter/c;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/converter/k;)V
    .registers 3
    .parameter

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/converter/http/ar;-><init>(Lcom/google/android/youtube/core/converter/k;)V

    .line 19
    new-instance v0, Lcom/google/android/youtube/core/converter/d;

    invoke-direct {v0}, Lcom/google/android/youtube/core/converter/d;-><init>()V

    .line 20
    invoke-static {v0}, Lcom/google/android/youtube/core/converter/http/y;->b(Lcom/google/android/youtube/core/converter/d;)V

    .line 21
    invoke-virtual {v0}, Lcom/google/android/youtube/core/converter/d;->a()Lcom/google/android/youtube/core/converter/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/converter/http/x;->b:Lcom/google/android/youtube/core/converter/c;

    .line 22
    return-void
.end method


# virtual methods
.method protected final a()Lcom/google/android/youtube/core/converter/c;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/android/youtube/core/converter/http/x;->b:Lcom/google/android/youtube/core/converter/c;

    return-object v0
.end method
