.class final Lcom/android/emailcommon/provider/QuickResponse$1;
.super Ljava/lang/Object;
.source "QuickResponse.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/provider/QuickResponse;
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
        "Lcom/android/emailcommon/provider/QuickResponse;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/emailcommon/provider/QuickResponse;
    .registers 4
    .parameter "in"

    .prologue
    .line 208
    new-instance v0, Lcom/android/emailcommon/provider/QuickResponse;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/emailcommon/provider/QuickResponse;-><init>(Landroid/os/Parcel;Lcom/android/emailcommon/provider/QuickResponse$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 205
    invoke-virtual {p0, p1}, Lcom/android/emailcommon/provider/QuickResponse$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/emailcommon/provider/QuickResponse;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/emailcommon/provider/QuickResponse;
    .registers 3
    .parameter "size"

    .prologue
    .line 213
    new-array v0, p1, [Lcom/android/emailcommon/provider/QuickResponse;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 205
    invoke-virtual {p0, p1}, Lcom/android/emailcommon/provider/QuickResponse$1;->newArray(I)[Lcom/android/emailcommon/provider/QuickResponse;

    move-result-object v0

    return-object v0
.end method
