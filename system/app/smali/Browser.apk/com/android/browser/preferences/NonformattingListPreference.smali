.class public Lcom/android/browser/preferences/NonformattingListPreference;
.super Landroid/preference/ListPreference;
.source "NonformattingListPreference.java"


# instance fields
.field private mSummary:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method


# virtual methods
.method public getSummary()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/browser/preferences/NonformattingListPreference;->mSummary:Ljava/lang/CharSequence;

    if-eqz v0, :cond_7

    .line 43
    iget-object v0, p0, Lcom/android/browser/preferences/NonformattingListPreference;->mSummary:Ljava/lang/CharSequence;

    .line 45
    :goto_6
    return-object v0

    :cond_7
    invoke-super {p0}, Landroid/preference/ListPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_6
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .registers 2
    .parameter "summary"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/browser/preferences/NonformattingListPreference;->mSummary:Ljava/lang/CharSequence;

    .line 37
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 38
    return-void
.end method
