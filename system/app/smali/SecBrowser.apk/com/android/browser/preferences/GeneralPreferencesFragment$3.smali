.class Lcom/android/browser/preferences/GeneralPreferencesFragment$3;
.super Ljava/lang/Object;
.source "GeneralPreferencesFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/preferences/GeneralPreferencesFragment;->promptForHomepage(Landroid/preference/ListPreference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/preferences/GeneralPreferencesFragment;

.field final synthetic val$dialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/android/browser/preferences/GeneralPreferencesFragment;Landroid/app/AlertDialog;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 192
    iput-object p1, p0, Lcom/android/browser/preferences/GeneralPreferencesFragment$3;->this$0:Lcom/android/browser/preferences/GeneralPreferencesFragment;

    iput-object p2, p0, Lcom/android/browser/preferences/GeneralPreferencesFragment$3;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 195
    const/4 v0, 0x6

    if-ne p2, v0, :cond_f

    .line 196
    iget-object v0, p0, Lcom/android/browser/preferences/GeneralPreferencesFragment$3;->val$dialog:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    .line 197
    const/4 v0, 0x1

    .line 199
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method
