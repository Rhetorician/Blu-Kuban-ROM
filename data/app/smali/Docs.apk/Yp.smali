.class LYp;
.super Ljava/lang/Object;
.source "GellyInjectorStore.java"

# interfaces
.implements LWZ;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LWZ",
        "<",
        "Lcom/google/android/apps/docs/utils/TiledBlurEvaluatorFactoryImpl;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LXU;


# direct methods
.method constructor <init>(LXU;)V
    .registers 2
    .parameter

    .prologue
    .line 2335
    iput-object p1, p0, LYp;->a:LXU;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/apps/docs/utils/TiledBlurEvaluatorFactoryImpl;
    .registers 2

    .prologue
    .line 2338
    invoke-static {}, LZs;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/docs/utils/TiledBlurEvaluatorFactoryImpl;

    return-object v0
.end method

.method public a()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2348
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 2335
    invoke-virtual {p0}, LYp;->a()Lcom/google/android/apps/docs/utils/TiledBlurEvaluatorFactoryImpl;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 2358
    invoke-static {}, LZs;->a()V

    .line 2359
    return-void
.end method

.method public a(LanD;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LanD",
            "<",
            "Lcom/google/android/apps/docs/utils/TiledBlurEvaluatorFactoryImpl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2353
    invoke-static {p1}, LZs;->a(LanD;)V

    .line 2354
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 2343
    invoke-static {p1}, LZs;->a(LanG;)V

    .line 2344
    return-void
.end method
