.class Lcom/actionbarsherlock/internal/widget/IcsProgressBar$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "IcsProgressBar.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/actionbarsherlock/internal/widget/IcsProgressBar$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field progress:I

.field secondaryProgress:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1106
    new-instance v0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar$SavedState$1;

    invoke-direct {v0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar$SavedState$1;-><init>()V

    .line 1105
    sput-object v0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1078
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .parameter

    .prologue
    .line 1093
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 1094
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar$SavedState;->progress:I

    .line 1095
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar$SavedState;->secondaryProgress:I

    .line 1096
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/actionbarsherlock/internal/widget/IcsProgressBar$SavedState;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1092
    invoke-direct {p0, p1}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .registers 2
    .parameter

    .prologue
    .line 1086
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1087
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1100
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1101
    iget v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar$SavedState;->progress:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1102
    iget v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar$SavedState;->secondaryProgress:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1103
    return-void
.end method
