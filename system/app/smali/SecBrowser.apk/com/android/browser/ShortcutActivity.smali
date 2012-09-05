.class public Lcom/android/browser/ShortcutActivity;
.super Landroid/app/Activity;
.source "ShortcutActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/browser/BookmarksPageCallbacks;


# instance fields
.field private mBookmarks:Lcom/android/browser/BrowserBookmarksPage;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBookmarkSelected(Landroid/database/Cursor;Z)Z
    .registers 5
    .parameter "c"
    .parameter "isFolder"

    .prologue
    .line 51
    if-eqz p2, :cond_4

    .line 52
    const/4 v1, 0x0

    .line 57
    :goto_3
    return v1

    .line 54
    :cond_4
    invoke-static {p0, p1}, Lcom/android/browser/BrowserBookmarksPage;->createShortcutIntent(Landroid/content/Context;Landroid/database/Cursor;)Landroid/content/Intent;

    move-result-object v0

    .line 55
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/browser/ShortcutActivity;->setResult(ILandroid/content/Intent;)V

    .line 56
    invoke-virtual {p0}, Lcom/android/browser/ShortcutActivity;->finish()V

    .line 57
    const/4 v1, 0x1

    goto :goto_3
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 67
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_c

    .line 72
    :goto_7
    return-void

    .line 69
    :pswitch_8
    invoke-virtual {p0}, Lcom/android/browser/ShortcutActivity;->finish()V

    goto :goto_7

    .line 67
    :pswitch_data_c
    .packed-switch 0x7f0d0052
        :pswitch_8
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const v1, 0x7f0c0056

    invoke-virtual {p0, v1}, Lcom/android/browser/ShortcutActivity;->setTitle(I)V

    .line 35
    const v1, 0x7f040031

    invoke-virtual {p0, v1}, Lcom/android/browser/ShortcutActivity;->setContentView(I)V

    .line 36
    invoke-virtual {p0}, Lcom/android/browser/ShortcutActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0d002d

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/browser/BrowserBookmarksPage;

    iput-object v1, p0, Lcom/android/browser/ShortcutActivity;->mBookmarks:Lcom/android/browser/BrowserBookmarksPage;

    .line 38
    iget-object v1, p0, Lcom/android/browser/ShortcutActivity;->mBookmarks:Lcom/android/browser/BrowserBookmarksPage;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/browser/BrowserBookmarksPage;->setEnableContextMenu(Z)V

    .line 39
    iget-object v1, p0, Lcom/android/browser/ShortcutActivity;->mBookmarks:Lcom/android/browser/BrowserBookmarksPage;

    invoke-virtual {v1, p0}, Lcom/android/browser/BrowserBookmarksPage;->setCallbackListener(Lcom/android/browser/BookmarksPageCallbacks;)V

    .line 40
    iget-object v1, p0, Lcom/android/browser/ShortcutActivity;->mBookmarks:Lcom/android/browser/BrowserBookmarksPage;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/browser/BrowserBookmarksPage;->setShortcutWidget(Z)V

    .line 41
    const v1, 0x7f0d0052

    invoke-virtual {p0, v1}, Lcom/android/browser/ShortcutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 42
    .local v0, cancel:Landroid/view/View;
    if-eqz v0, :cond_3b

    .line 43
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    :cond_3b
    return-void
.end method

.method public varargs onOpenInNewWindow([Ljava/lang/String;)Z
    .registers 3
    .parameter "urls"

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method