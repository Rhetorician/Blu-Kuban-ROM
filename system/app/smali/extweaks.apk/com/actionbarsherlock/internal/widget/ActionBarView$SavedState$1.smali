.class Lcom/actionbarsherlock/internal/widget/ActionBarView$SavedState$1;
.super Ljava/lang/Object;
.source "ActionBarView.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/actionbarsherlock/internal/widget/ActionBarView$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/actionbarsherlock/internal/widget/ActionBarView$SavedState;
    .registers 4
    .parameter

    .prologue
    .line 1279
    new-instance v0, Lcom/actionbarsherlock/internal/widget/ActionBarView$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/actionbarsherlock/internal/widget/ActionBarView$SavedState;-><init>(Landroid/os/Parcel;Lcom/actionbarsherlock/internal/widget/ActionBarView$SavedState;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/actionbarsherlock/internal/widget/ActionBarView$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/actionbarsherlock/internal/widget/ActionBarView$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/actionbarsherlock/internal/widget/ActionBarView$SavedState;
    .registers 3
    .parameter

    .prologue
    .line 1283
    new-array v0, p1, [Lcom/actionbarsherlock/internal/widget/ActionBarView$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/actionbarsherlock/internal/widget/ActionBarView$SavedState$1;->newArray(I)[Lcom/actionbarsherlock/internal/widget/ActionBarView$SavedState;

    move-result-object v0

    return-object v0
.end method
