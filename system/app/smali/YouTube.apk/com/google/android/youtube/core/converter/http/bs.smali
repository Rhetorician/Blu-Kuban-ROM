.class public final Lcom/google/android/youtube/core/converter/http/bs;
.super Lcom/google/android/youtube/core/converter/http/ar;
.source "SourceFile"


# instance fields
.field private final b:Lcom/google/android/youtube/core/converter/c;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/core/converter/k;Lcom/google/android/youtube/core/converter/c;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/converter/http/ar;-><init>(Lcom/google/android/youtube/core/converter/k;)V

    .line 43
    iput-object p2, p0, Lcom/google/android/youtube/core/converter/http/bs;->b:Lcom/google/android/youtube/core/converter/c;

    .line 44
    return-void
.end method

.method public static b(Lcom/google/android/youtube/core/converter/k;)Lcom/google/android/youtube/core/converter/http/bs;
    .registers 3
    .parameter

    .prologue
    .line 26
    new-instance v0, Lcom/google/android/youtube/core/converter/d;

    invoke-direct {v0}, Lcom/google/android/youtube/core/converter/d;-><init>()V

    .line 27
    invoke-static {v0}, Lcom/google/android/youtube/core/converter/http/bt;->b(Lcom/google/android/youtube/core/converter/d;)V

    .line 28
    new-instance v1, Lcom/google/android/youtube/core/converter/http/bs;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/converter/d;->a()Lcom/google/android/youtube/core/converter/c;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/google/android/youtube/core/converter/http/bs;-><init>(Lcom/google/android/youtube/core/converter/k;Lcom/google/android/youtube/core/converter/c;)V

    return-object v1
.end method

.method public static c(Lcom/google/android/youtube/core/converter/k;)Lcom/google/android/youtube/core/converter/http/bs;
    .registers 3
    .parameter

    .prologue
    .line 36
    new-instance v0, Lcom/google/android/youtube/core/converter/d;

    invoke-direct {v0}, Lcom/google/android/youtube/core/converter/d;-><init>()V

    .line 37
    invoke-static {v0}, Lcom/google/android/youtube/core/converter/http/bt;->c(Lcom/google/android/youtube/core/converter/d;)V

    .line 38
    new-instance v1, Lcom/google/android/youtube/core/converter/http/bs;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/converter/d;->a()Lcom/google/android/youtube/core/converter/c;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/google/android/youtube/core/converter/http/bs;-><init>(Lcom/google/android/youtube/core/converter/k;Lcom/google/android/youtube/core/converter/c;)V

    return-object v1
.end method


# virtual methods
.method protected final a()Lcom/google/android/youtube/core/converter/c;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/youtube/core/converter/http/bs;->b:Lcom/google/android/youtube/core/converter/c;

    return-object v0
.end method
