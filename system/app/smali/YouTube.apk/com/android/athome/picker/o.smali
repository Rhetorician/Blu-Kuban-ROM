.class final Lcom/android/athome/picker/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 43
    new-instance v0, Lcom/android/athome/picker/MediaOutputGroup;

    invoke-direct {v0, p1}, Lcom/android/athome/picker/MediaOutputGroup;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 43
    new-array v0, p1, [Lcom/android/athome/picker/MediaOutputGroup;

    return-object v0
.end method
