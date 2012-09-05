.class public Lcom/google/android/gm/DefaultComposeLayout;
.super Lcom/google/android/gm/ComposeLayout;
.source "DefaultComposeLayout.java"

# interfaces
.implements Landroid/app/ActionBar$OnNavigationListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/DefaultComposeLayout$ComposeModeAdapter;
    }
.end annotation


# instance fields
.field protected mActionBar:Landroid/app/ActionBar;

.field private mAddBcc:Landroid/view/MenuItem;

.field private mAddCc:Landroid/view/MenuItem;

.field private mComposeArea:Lcom/google/android/gm/ComposeAreaController;

.field private mComposeMode:I

.field private mComposeModeAdapter:Lcom/google/android/gm/DefaultComposeLayout$ComposeModeAdapter;

.field protected final mController:Lcom/google/android/gm/ComposeController;

.field private mMenu:Landroid/view/Menu;

.field private final mParent:Landroid/app/Activity;

.field private mSaveEnabled:Z

.field private mSendEnabled:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/gm/ComposeController;)V
    .registers 4
    .parameter "parent"
    .parameter "controller"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/google/android/gm/ComposeLayout;-><init>()V

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gm/DefaultComposeLayout;->mComposeMode:I

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/DefaultComposeLayout;->mSendEnabled:Z

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/DefaultComposeLayout;->mSaveEnabled:Z

    .line 54
    iput-object p1, p0, Lcom/google/android/gm/DefaultComposeLayout;->mParent:Landroid/app/Activity;

    .line 55
    iput-object p2, p0, Lcom/google/android/gm/DefaultComposeLayout;->mController:Lcom/google/android/gm/ComposeController;

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gm/DefaultComposeLayout;)Landroid/app/Activity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/gm/DefaultComposeLayout;->mParent:Landroid/app/Activity;

    return-object v0
.end method

.method private initializeCcBccMenuItems()V
    .registers 3

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/gm/DefaultComposeLayout;->mAddCc:Landroid/view/MenuItem;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gm/DefaultComposeLayout;->mAddBcc:Landroid/view/MenuItem;

    if-nez v0, :cond_22

    :cond_8
    iget-object v0, p0, Lcom/google/android/gm/DefaultComposeLayout;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_22

    .line 84
    iget-object v0, p0, Lcom/google/android/gm/DefaultComposeLayout;->mMenu:Landroid/view/Menu;

    const v1, 0x7f0f001b

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/DefaultComposeLayout;->mAddCc:Landroid/view/MenuItem;

    .line 85
    iget-object v0, p0, Lcom/google/android/gm/DefaultComposeLayout;->mMenu:Landroid/view/Menu;

    const v1, 0x7f0f001c

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/DefaultComposeLayout;->mAddBcc:Landroid/view/MenuItem;

    .line 87
    :cond_22
    return-void
.end method


# virtual methods
.method public enableSave(Z)V
    .registers 4
    .parameter "enable"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/google/android/gm/DefaultComposeLayout;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_10

    .line 154
    iget-object v0, p0, Lcom/google/android/gm/DefaultComposeLayout;->mMenu:Landroid/view/Menu;

    const v1, 0x7f0f00e7

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 156
    :cond_10
    iput-boolean p1, p0, Lcom/google/android/gm/DefaultComposeLayout;->mSaveEnabled:Z

    .line 157
    return-void
.end method

.method public enableSend(Z)V
    .registers 4
    .parameter "enable"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/android/gm/DefaultComposeLayout;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_10

    .line 146
    iget-object v0, p0, Lcom/google/android/gm/DefaultComposeLayout;->mMenu:Landroid/view/Menu;

    const v1, 0x7f0f00e6

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 148
    :cond_10
    iput-boolean p1, p0, Lcom/google/android/gm/DefaultComposeLayout;->mSendEnabled:Z

    .line 149
    return-void
.end method

.method protected findViewById(I)Landroid/view/View;
    .registers 3
    .parameter "id"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/android/gm/DefaultComposeLayout;->mParent:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getComposeArea()Lcom/google/android/gm/ComposeAreaController;
    .registers 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/android/gm/DefaultComposeLayout;->mComposeArea:Lcom/google/android/gm/ComposeAreaController;

    return-object v0
.end method

.method public hideOrShowBcc(Z)V
    .registers 5
    .parameter "show"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/google/android/gm/DefaultComposeLayout;->initializeCcBccMenuItems()V

    .line 92
    iget-object v1, p0, Lcom/google/android/gm/DefaultComposeLayout;->mAddBcc:Landroid/view/MenuItem;

    if-eqz v1, :cond_18

    .line 93
    iget-object v2, p0, Lcom/google/android/gm/DefaultComposeLayout;->mAddBcc:Landroid/view/MenuItem;

    if-nez p1, :cond_19

    const/4 v1, 0x1

    :goto_c
    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 94
    invoke-virtual {p0}, Lcom/google/android/gm/DefaultComposeLayout;->getComposeArea()Lcom/google/android/gm/ComposeAreaController;

    move-result-object v0

    .line 95
    .local v0, controller:Lcom/google/android/gm/ComposeAreaController;
    if-eqz v0, :cond_18

    .line 96
    invoke-virtual {v0, p1}, Lcom/google/android/gm/ComposeAreaController;->hideOrShowBcc(Z)V

    .line 99
    .end local v0           #controller:Lcom/google/android/gm/ComposeAreaController;
    :cond_18
    return-void

    .line 93
    :cond_19
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public hideOrShowCcBcc(ZZ)V
    .registers 6
    .parameter "show"
    .parameter "updateFields"

    .prologue
    const/4 v1, 0x0

    .line 169
    iget-object v0, p0, Lcom/google/android/gm/DefaultComposeLayout;->mMenu:Landroid/view/Menu;

    if-nez v0, :cond_6

    .line 180
    :goto_5
    return-void

    .line 172
    :cond_6
    if-eqz p2, :cond_22

    .line 173
    invoke-direct {p0}, Lcom/google/android/gm/DefaultComposeLayout;->initializeCcBccMenuItems()V

    .line 174
    iget-object v2, p0, Lcom/google/android/gm/DefaultComposeLayout;->mAddCc:Landroid/view/MenuItem;

    if-nez p1, :cond_20

    const/4 v0, 0x1

    :goto_10
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 175
    iget-object v0, p0, Lcom/google/android/gm/DefaultComposeLayout;->mAddBcc:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 176
    invoke-virtual {p0}, Lcom/google/android/gm/DefaultComposeLayout;->getComposeArea()Lcom/google/android/gm/ComposeAreaController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gm/ComposeAreaController;->hideOrShowCcBcc(Z)V

    goto :goto_5

    :cond_20
    move v0, v1

    .line 174
    goto :goto_10

    .line 178
    :cond_22
    invoke-virtual {p0}, Lcom/google/android/gm/DefaultComposeLayout;->setCcBccVisibility()V

    goto :goto_5
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    .line 106
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 107
    .local v0, id:I
    sparse-switch v0, :sswitch_data_24

    .line 127
    :goto_8
    return-void

    .line 109
    :sswitch_9
    iget-object v1, p0, Lcom/google/android/gm/DefaultComposeLayout;->mController:Lcom/google/android/gm/ComposeController;

    invoke-interface {v1, v2}, Lcom/google/android/gm/ComposeController;->doSend(Z)V

    goto :goto_8

    .line 112
    :sswitch_f
    iget-object v1, p0, Lcom/google/android/gm/DefaultComposeLayout;->mController:Lcom/google/android/gm/ComposeController;

    invoke-interface {v1, v2, v2}, Lcom/google/android/gm/ComposeController;->doSave(ZZ)V

    goto :goto_8

    .line 115
    :sswitch_15
    invoke-virtual {p0, v2, v2}, Lcom/google/android/gm/DefaultComposeLayout;->hideOrShowCcBcc(ZZ)V

    goto :goto_8

    .line 119
    :sswitch_19
    invoke-virtual {p0, v2}, Lcom/google/android/gm/DefaultComposeLayout;->hideOrShowBcc(Z)V

    goto :goto_8

    .line 123
    :sswitch_1d
    iget-object v1, p0, Lcom/google/android/gm/DefaultComposeLayout;->mController:Lcom/google/android/gm/ComposeController;

    invoke-interface {v1}, Lcom/google/android/gm/ComposeController;->doAttach()V

    goto :goto_8

    .line 107
    nop

    :sswitch_data_24
    .sparse-switch
        0x7f0f001b -> :sswitch_15
        0x7f0f001c -> :sswitch_19
        0x7f0f001d -> :sswitch_1d
        0x7f0f00e6 -> :sswitch_9
        0x7f0f00e7 -> :sswitch_f
    .end sparse-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Z)Z
    .registers 5
    .parameter "menu"
    .parameter "isReplyOrForward"

    .prologue
    .line 184
    iget-object v1, p0, Lcom/google/android/gm/DefaultComposeLayout;->mParent:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 185
    .local v0, inflater:Landroid/view/MenuInflater;
    const/high16 v1, 0x7f12

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 186
    invoke-virtual {p0, p1}, Lcom/google/android/gm/DefaultComposeLayout;->setMenu(Landroid/view/Menu;)V

    .line 187
    invoke-virtual {p0}, Lcom/google/android/gm/DefaultComposeLayout;->setCcBccVisibility()V

    .line 188
    const/4 v1, 0x1

    return v1
.end method

.method public onNavigationItemSelected(IJ)Z
    .registers 7
    .parameter "position"
    .parameter "itemId"

    .prologue
    const/4 v0, 0x2

    const/4 v2, 0x1

    .line 231
    if-nez p1, :cond_f

    .line 232
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gm/DefaultComposeLayout;->mComposeMode:I

    .line 238
    :cond_7
    :goto_7
    iget-object v0, p0, Lcom/google/android/gm/DefaultComposeLayout;->mController:Lcom/google/android/gm/ComposeController;

    iget v1, p0, Lcom/google/android/gm/DefaultComposeLayout;->mComposeMode:I

    invoke-interface {v0, v1}, Lcom/google/android/gm/ComposeController;->setComposeMode(I)V

    .line 239
    return v2

    .line 233
    :cond_f
    if-ne p1, v2, :cond_14

    .line 234
    iput v2, p0, Lcom/google/android/gm/DefaultComposeLayout;->mComposeMode:I

    goto :goto_7

    .line 235
    :cond_14
    if-ne p1, v0, :cond_7

    .line 236
    iput v0, p0, Lcom/google/android/gm/DefaultComposeLayout;->mComposeMode:I

    goto :goto_7
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .parameter "menu"

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/google/android/gm/DefaultComposeLayout;->mSendEnabled:Z

    invoke-virtual {p0, v0}, Lcom/google/android/gm/DefaultComposeLayout;->enableSend(Z)V

    .line 162
    iget-boolean v0, p0, Lcom/google/android/gm/DefaultComposeLayout;->mSaveEnabled:Z

    invoke-virtual {p0, v0}, Lcom/google/android/gm/DefaultComposeLayout;->enableSave(Z)V

    .line 163
    invoke-virtual {p0}, Lcom/google/android/gm/DefaultComposeLayout;->setCcBccVisibility()V

    .line 164
    const/4 v0, 0x1

    return v0
.end method

.method protected setCcBccVisibility()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 67
    invoke-virtual {p0}, Lcom/google/android/gm/DefaultComposeLayout;->getComposeArea()Lcom/google/android/gm/ComposeAreaController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gm/ComposeAreaController;->currentlyShowingCc()Z

    move-result v1

    .line 68
    .local v1, showingCc:Z
    invoke-virtual {p0}, Lcom/google/android/gm/DefaultComposeLayout;->getComposeArea()Lcom/google/android/gm/ComposeAreaController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gm/ComposeAreaController;->currentlyShowingBcc()Z

    move-result v0

    .line 69
    .local v0, showingBcc:Z
    invoke-direct {p0}, Lcom/google/android/gm/DefaultComposeLayout;->initializeCcBccMenuItems()V

    .line 70
    if-eqz v1, :cond_24

    if-eqz v0, :cond_24

    .line 71
    iget-object v2, p0, Lcom/google/android/gm/DefaultComposeLayout;->mAddCc:Landroid/view/MenuItem;

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 72
    iget-object v2, p0, Lcom/google/android/gm/DefaultComposeLayout;->mAddBcc:Landroid/view/MenuItem;

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 80
    :cond_23
    :goto_23
    return-void

    .line 73
    :cond_24
    if-eqz v1, :cond_33

    if-nez v0, :cond_33

    .line 74
    iget-object v2, p0, Lcom/google/android/gm/DefaultComposeLayout;->mAddCc:Landroid/view/MenuItem;

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 75
    iget-object v2, p0, Lcom/google/android/gm/DefaultComposeLayout;->mAddBcc:Landroid/view/MenuItem;

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_23

    .line 76
    :cond_33
    if-nez v1, :cond_23

    .line 77
    iget-object v2, p0, Lcom/google/android/gm/DefaultComposeLayout;->mAddCc:Landroid/view/MenuItem;

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 78
    iget-object v2, p0, Lcom/google/android/gm/DefaultComposeLayout;->mAddBcc:Landroid/view/MenuItem;

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_23
.end method

.method public setComposeArea(Lcom/google/android/gm/ComposeAreaController;)V
    .registers 2
    .parameter "area"

    .prologue
    .line 131
    iput-object p1, p0, Lcom/google/android/gm/DefaultComposeLayout;->mComposeArea:Lcom/google/android/gm/ComposeAreaController;

    .line 132
    return-void
.end method

.method protected setMenu(Landroid/view/Menu;)V
    .registers 2
    .parameter "menu"

    .prologue
    .line 192
    iput-object p1, p0, Lcom/google/android/gm/DefaultComposeLayout;->mMenu:Landroid/view/Menu;

    .line 193
    invoke-direct {p0}, Lcom/google/android/gm/DefaultComposeLayout;->initializeCcBccMenuItems()V

    .line 194
    return-void
.end method

.method public setupLayout()V
    .registers 4

    .prologue
    .line 60
    iget-object v1, p0, Lcom/google/android/gm/DefaultComposeLayout;->mParent:Landroid/app/Activity;

    const v2, 0x7f040009

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setContentView(I)V

    .line 61
    iget-object v1, p0, Lcom/google/android/gm/DefaultComposeLayout;->mParent:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/DefaultComposeLayout;->mActionBar:Landroid/app/ActionBar;

    .line 62
    const v1, 0x7f0f0018

    invoke-virtual {p0, v1}, Lcom/google/android/gm/DefaultComposeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    .line 63
    .local v0, scrollArea:Landroid/widget/ScrollView;
    invoke-virtual {p0}, Lcom/google/android/gm/DefaultComposeLayout;->getComposeArea()Lcom/google/android/gm/ComposeAreaController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gm/ComposeAreaController;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 64
    return-void
.end method

.method public shouldShowToast(I)Z
    .registers 3
    .parameter "i"

    .prologue
    .line 140
    const/4 v0, 0x1

    return v0
.end method

.method public updateComposeMode(I)V
    .registers 6
    .parameter "mode"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 198
    iput p1, p0, Lcom/google/android/gm/DefaultComposeLayout;->mComposeMode:I

    .line 200
    iget-object v0, p0, Lcom/google/android/gm/DefaultComposeLayout;->mActionBar:Landroid/app/ActionBar;

    if-nez v0, :cond_9

    .line 227
    :goto_8
    return-void

    .line 205
    :cond_9
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1a

    .line 206
    iget-object v0, p0, Lcom/google/android/gm/DefaultComposeLayout;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 207
    iget-object v0, p0, Lcom/google/android/gm/DefaultComposeLayout;->mActionBar:Landroid/app/ActionBar;

    const v1, 0x7f0c00c5

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    goto :goto_8

    .line 209
    :cond_1a
    iget-object v0, p0, Lcom/google/android/gm/DefaultComposeLayout;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 210
    iget-object v0, p0, Lcom/google/android/gm/DefaultComposeLayout;->mComposeModeAdapter:Lcom/google/android/gm/DefaultComposeLayout$ComposeModeAdapter;

    if-nez v0, :cond_2d

    .line 211
    new-instance v0, Lcom/google/android/gm/DefaultComposeLayout$ComposeModeAdapter;

    iget-object v1, p0, Lcom/google/android/gm/DefaultComposeLayout;->mParent:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gm/DefaultComposeLayout$ComposeModeAdapter;-><init>(Lcom/google/android/gm/DefaultComposeLayout;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gm/DefaultComposeLayout;->mComposeModeAdapter:Lcom/google/android/gm/DefaultComposeLayout$ComposeModeAdapter;

    .line 213
    :cond_2d
    iget-object v0, p0, Lcom/google/android/gm/DefaultComposeLayout;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 214
    iget-object v0, p0, Lcom/google/android/gm/DefaultComposeLayout;->mActionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/google/android/gm/DefaultComposeLayout;->mComposeModeAdapter:Lcom/google/android/gm/DefaultComposeLayout$ComposeModeAdapter;

    invoke-virtual {v0, v1, p0}, Landroid/app/ActionBar;->setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V

    .line 215
    packed-switch p1, :pswitch_data_50

    goto :goto_8

    .line 217
    :pswitch_3d
    iget-object v0, p0, Lcom/google/android/gm/DefaultComposeLayout;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    goto :goto_8

    .line 220
    :pswitch_43
    iget-object v0, p0, Lcom/google/android/gm/DefaultComposeLayout;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    goto :goto_8

    .line 223
    :pswitch_49
    iget-object v0, p0, Lcom/google/android/gm/DefaultComposeLayout;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    goto :goto_8

    .line 215
    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_3d
        :pswitch_43
        :pswitch_49
    .end packed-switch
.end method
