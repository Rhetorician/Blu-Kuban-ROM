.class final Lcom/google/android/voicesearch/actions/NavigateToAction$1;
.super Ljava/lang/Object;
.source "NavigateToAction.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/voicesearch/actions/NavigateToAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/voicesearch/actions/NavigateToAction;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/voicesearch/actions/NavigateToAction;
    .registers 4
    .parameter "source"

    .prologue
    .line 58
    new-instance v0, Lcom/google/android/voicesearch/actions/NavigateToAction;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/voicesearch/actions/NavigateToAction;-><init>(Landroid/os/Parcel;Lcom/google/android/voicesearch/actions/NavigateToAction$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lcom/google/android/voicesearch/actions/NavigateToAction$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/voicesearch/actions/NavigateToAction;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/voicesearch/actions/NavigateToAction;
    .registers 3
    .parameter "size"

    .prologue
    .line 63
    new-array v0, p1, [Lcom/google/android/voicesearch/actions/NavigateToAction;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lcom/google/android/voicesearch/actions/NavigateToAction$1;->newArray(I)[Lcom/google/android/voicesearch/actions/NavigateToAction;

    move-result-object v0

    return-object v0
.end method
