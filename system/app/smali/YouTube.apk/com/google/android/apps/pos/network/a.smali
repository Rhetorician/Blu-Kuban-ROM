.class final Lcom/google/android/apps/pos/network/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 22
    new-instance v0, Lcom/google/android/apps/pos/network/BatchResponseItemJson;

    invoke-direct {v0, p1}, Lcom/google/android/apps/pos/network/BatchResponseItemJson;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 22
    new-array v0, p1, [Lcom/google/android/apps/pos/network/BatchResponseItemJson;

    return-object v0
.end method
