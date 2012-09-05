.class public Lcom/google/android/finsky/api/DfeRetryPolicy;
.super Lcom/android/volley/DefaultRetryPolicy;
.source "DfeRetryPolicy.java"


# instance fields
.field private final mDfeApiContext:Lcom/google/android/finsky/api/DfeApiContext;

.field private mHadAuthException:Z


# direct methods
.method public constructor <init>(IIFLcom/google/android/finsky/api/DfeApiContext;)V
    .registers 5
    .parameter "initialTimeoutMs"
    .parameter "maxNumRetries"
    .parameter "backoffMultiplier"
    .parameter "context"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    .line 41
    iput-object p4, p0, Lcom/google/android/finsky/api/DfeRetryPolicy;->mDfeApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/google/android/finsky/api/DfeApiContext;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 27
    sget-object v0, Lcom/google/android/finsky/config/G;->dfeRequestTimeoutMs:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v0, Lcom/google/android/finsky/config/G;->dfeMaxRetries:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v0, Lcom/google/android/finsky/config/G;->dfeBackoffMultipler:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {p0, v1, v2, v0}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    .line 28
    iput-object p1, p0, Lcom/google/android/finsky/api/DfeRetryPolicy;->mDfeApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    .line 29
    return-void
.end method


# virtual methods
.method public retry(Lcom/android/volley/VolleyError;)V
    .registers 3
    .parameter "error"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/VolleyError;
        }
    .end annotation

    .prologue
    .line 46
    instance-of v0, p1, Lcom/android/volley/AuthFailureError;

    if-eqz v0, :cond_11

    .line 47
    iget-boolean v0, p0, Lcom/google/android/finsky/api/DfeRetryPolicy;->mHadAuthException:Z

    if-eqz v0, :cond_9

    .line 48
    throw p1

    .line 50
    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/api/DfeRetryPolicy;->mHadAuthException:Z

    .line 51
    iget-object v0, p0, Lcom/google/android/finsky/api/DfeRetryPolicy;->mDfeApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/DfeApiContext;->invalidateAuthToken()V

    .line 53
    :cond_11
    invoke-super {p0, p1}, Lcom/android/volley/DefaultRetryPolicy;->retry(Lcom/android/volley/VolleyError;)V

    .line 54
    return-void
.end method