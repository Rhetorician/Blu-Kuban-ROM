.class Lcom/android/inputmethod/latin/spellcheck/SpellCheckerInfo$1;
.super Ljava/lang/Object;
.source "SpellCheckerInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/spellcheck/SpellCheckerInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/android/inputmethod/latin/spellcheck/SpellCheckerInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/inputmethod/latin/spellcheck/SpellCheckerInfo;
    .registers 3
    .parameter "source"

    .prologue
    .line 193
    new-instance v0, Lcom/android/inputmethod/latin/spellcheck/SpellCheckerInfo;

    invoke-direct {v0, p1}, Lcom/android/inputmethod/latin/spellcheck/SpellCheckerInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/latin/spellcheck/SpellCheckerInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/inputmethod/latin/spellcheck/SpellCheckerInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/inputmethod/latin/spellcheck/SpellCheckerInfo;
    .registers 3
    .parameter "size"

    .prologue
    .line 198
    new-array v0, p1, [Lcom/android/inputmethod/latin/spellcheck/SpellCheckerInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/latin/spellcheck/SpellCheckerInfo$1;->newArray(I)[Lcom/android/inputmethod/latin/spellcheck/SpellCheckerInfo;

    move-result-object v0

    return-object v0
.end method
