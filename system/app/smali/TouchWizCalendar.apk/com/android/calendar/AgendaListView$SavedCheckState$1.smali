.class final Lcom/android/calendar/AgendaListView$SavedCheckState$1;
.super Ljava/lang/Object;
.source "AgendaListView.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/AgendaListView$SavedCheckState;
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
        "Lcom/android/calendar/AgendaListView$SavedCheckState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 375
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/calendar/AgendaListView$SavedCheckState;
    .registers 4
    .parameter "in"

    .prologue
    .line 377
    new-instance v0, Lcom/android/calendar/AgendaListView$SavedCheckState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/calendar/AgendaListView$SavedCheckState;-><init>(Landroid/os/Parcel;Lcom/android/calendar/AgendaListView$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 375
    invoke-virtual {p0, p1}, Lcom/android/calendar/AgendaListView$SavedCheckState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/calendar/AgendaListView$SavedCheckState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/calendar/AgendaListView$SavedCheckState;
    .registers 3
    .parameter "size"

    .prologue
    .line 381
    new-array v0, p1, [Lcom/android/calendar/AgendaListView$SavedCheckState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 375
    invoke-virtual {p0, p1}, Lcom/android/calendar/AgendaListView$SavedCheckState$1;->newArray(I)[Lcom/android/calendar/AgendaListView$SavedCheckState;

    move-result-object v0

    return-object v0
.end method