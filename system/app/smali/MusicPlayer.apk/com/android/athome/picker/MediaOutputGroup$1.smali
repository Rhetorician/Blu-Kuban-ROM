.class final Lcom/android/athome/picker/MediaOutputGroup$1;
.super Ljava/lang/Object;
.source "MediaOutputGroup.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/athome/picker/MediaOutputGroup;
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
        "Lcom/android/athome/picker/MediaOutputGroup;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/athome/picker/MediaOutputGroup;
    .registers 3
    .parameter "in"

    .prologue
    .line 46
    new-instance v0, Lcom/android/athome/picker/MediaOutputGroup;

    invoke-direct {v0, p1}, Lcom/android/athome/picker/MediaOutputGroup;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/android/athome/picker/MediaOutputGroup$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/athome/picker/MediaOutputGroup;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/athome/picker/MediaOutputGroup;
    .registers 3
    .parameter "size"

    .prologue
    .line 51
    new-array v0, p1, [Lcom/android/athome/picker/MediaOutputGroup;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/android/athome/picker/MediaOutputGroup$1;->newArray(I)[Lcom/android/athome/picker/MediaOutputGroup;

    move-result-object v0

    return-object v0
.end method
