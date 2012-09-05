.class public Landroid/webkit/SelectActionModeCallbackSec;
.super Ljava/lang/Object;
.source "SelectActionModeCallbackSec.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# static fields
.field static final LOGTAG:Ljava/lang/String; = "SelectActionModeCallbackSec"


# instance fields
.field private mActionMode:Landroid/view/ActionMode;

.field private mRecreate:Z

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method finish()V
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Landroid/webkit/SelectActionModeCallbackSec;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_c

    .line 52
    iget-object v0, p0, Landroid/webkit/SelectActionModeCallbackSec;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/SelectActionModeCallbackSec;->mActionMode:Landroid/view/ActionMode;

    .line 55
    :cond_c
    return-void
.end method

.method finish(Z)V
    .registers 2
    .parameter "recreate"

    .prologue
    .line 59
    iput-boolean p1, p0, Landroid/webkit/SelectActionModeCallbackSec;->mRecreate:Z

    .line 60
    invoke-virtual {p0}, Landroid/webkit/SelectActionModeCallbackSec;->finish()V

    .line 61
    return-void
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .registers 8
    .parameter "mode"
    .parameter "item"

    .prologue
    const/4 v3, 0x0

    .line 112
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    sparse-switch v4, :sswitch_data_70

    .line 148
    :goto_8
    return v3

    .line 114
    :sswitch_9
    iget-object v3, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->copySelectionSec()Z

    .line 115
    iget-object v3, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->clearSelection()V

    .line 116
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 148
    :goto_16
    const/4 v3, 0x1

    goto :goto_8

    .line 120
    :sswitch_18
    iget-object v3, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSelectionSec()Ljava/lang/String;

    move-result-object v2

    .line 121
    .local v2, selection:Ljava/lang/String;
    iget-object v3, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/provider/Browser;->sendString(Landroid/content/Context;Ljava/lang/String;)V

    .line 122
    iget-object v3, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->clearSelection()V

    .line 123
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_16

    .line 127
    .end local v2           #selection:Ljava/lang/String;
    :sswitch_30
    iget-object v3, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->selectAllSec()Z

    goto :goto_16

    .line 131
    :sswitch_36
    iget-object v4, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSelectionSec()Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, sel:Ljava/lang/String;
    iget-object v4, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->clearSelection()V

    .line 133
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 134
    iget-object v4, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4, v1, v3}, Landroid/webkit/WebView;->showFindDialog(Ljava/lang/String;Z)Z

    goto :goto_16

    .line 138
    .end local v1           #sel:Ljava/lang/String;
    :sswitch_4a
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.WEB_SEARCH"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 139
    .local v0, i:Landroid/content/Intent;
    const-string/jumbo v3, "query"

    iget-object v4, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSelectionSec()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    iget-object v3, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->clearSelection()V

    .line 141
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 142
    iget-object v3, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_16

    .line 112
    nop

    :sswitch_data_70
    .sparse-switch
        0x1020021 -> :sswitch_9
        0x10203b4 -> :sswitch_30
        0x10203b5 -> :sswitch_18
        0x10203b6 -> :sswitch_36
        0x10203b7 -> :sswitch_4a
    .end sparse-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 11
    .parameter "mode"
    .parameter "menu"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x6

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 69
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x1140001

    invoke-virtual {v1, v2, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 77
    iget-object v1, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 78
    .local v0, config:Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v3, :cond_4b

    iget v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0x4

    if-eq v1, v5, :cond_4b

    .line 84
    invoke-interface {p2, v7}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 85
    invoke-interface {p2, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 86
    invoke-interface {p2, v4}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 87
    const/4 v1, 0x3

    invoke-interface {p2, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 88
    invoke-interface {p2, v5}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 91
    :cond_4b
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v4, :cond_7b

    iget v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0x4

    if-eq v1, v5, :cond_7b

    .line 93
    invoke-interface {p2, v7}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 94
    invoke-interface {p2, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 95
    invoke-interface {p2, v4}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 96
    const/4 v1, 0x3

    invoke-interface {p2, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x5

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 97
    invoke-interface {p2, v5}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x5

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 101
    :cond_7b
    iput-object p1, p0, Landroid/webkit/SelectActionModeCallbackSec;->mActionMode:Landroid/view/ActionMode;

    .line 102
    return v3
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .registers 3
    .parameter "mode"

    .prologue
    .line 154
    iget-boolean v0, p0, Landroid/webkit/SelectActionModeCallbackSec;->mRecreate:Z

    if-nez v0, :cond_9

    .line 155
    iget-object v0, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearSelection()V

    .line 157
    :cond_9
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/SelectActionModeCallbackSec;->mRecreate:Z

    .line 160
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 4
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 107
    const/4 v0, 0x1

    return v0
.end method

.method protected setWebView(Landroid/webkit/WebView;)V
    .registers 2
    .parameter "webView"

    .prologue
    .line 45
    iput-object p1, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebView;

    .line 46
    return-void
.end method
