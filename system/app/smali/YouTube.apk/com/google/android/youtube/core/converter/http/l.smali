.class public final Lcom/google/android/youtube/core/converter/http/l;
.super Lcom/google/android/youtube/core/converter/http/ad;
.source "SourceFile"


# instance fields
.field private final b:Lcom/google/android/youtube/core/converter/c;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/converter/k;)V
    .registers 3
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/converter/http/ad;-><init>(Lcom/google/android/youtube/core/converter/k;)V

    .line 23
    invoke-static {}, Lcom/google/android/youtube/core/converter/e;->a()Lcom/google/android/youtube/core/converter/d;

    move-result-object v0

    .line 24
    invoke-static {v0}, Lcom/google/android/youtube/core/converter/http/n;->a(Lcom/google/android/youtube/core/converter/d;)V

    .line 25
    invoke-virtual {v0}, Lcom/google/android/youtube/core/converter/d;->a()Lcom/google/android/youtube/core/converter/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/converter/http/l;->b:Lcom/google/android/youtube/core/converter/c;

    .line 26
    return-void
.end method


# virtual methods
.method protected final a()Lcom/google/android/youtube/core/converter/c;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/youtube/core/converter/http/l;->b:Lcom/google/android/youtube/core/converter/c;

    return-object v0
.end method
