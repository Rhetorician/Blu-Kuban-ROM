.class public Lcom/google/android/providers/AbstractGDataSyncAdapter;
.super Ljava/lang/Object;
.source "AbstractGDataSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method public static newGDataSyncDataFromBytes([B)Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData;
    .registers 4
    .parameter "data"

    .prologue
    const/4 v2, 0x0

    .line 238
    if-eqz p0, :cond_1e

    .line 239
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 240
    .local v0, parcel:Landroid/os/Parcel;
    array-length v1, p0

    invoke-virtual {v0, p0, v2, v1}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 241
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 243
    :try_start_e
    sget-object v1, Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData;
    :try_end_16
    .catchall {:try_start_e .. :try_end_16} :catchall_20
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_16} :catch_1a

    .line 248
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 251
    .end local v0           #parcel:Landroid/os/Parcel;
    :goto_19
    return-object v1

    .line 244
    .restart local v0       #parcel:Landroid/os/Parcel;
    :catch_1a
    move-exception v1

    .line 248
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 251
    .end local v0           #parcel:Landroid/os/Parcel;
    :cond_1e
    const/4 v1, 0x0

    goto :goto_19

    .line 248
    .restart local v0       #parcel:Landroid/os/Parcel;
    :catchall_20
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method
