.class Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$MenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "MenuPopupHelper.java"


# instance fields
.field private mAdapterMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

.field private mExpandedIndex:I

.field final synthetic this$0:Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;


# direct methods
.method public constructor <init>(Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 310
    iput-object p1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 308
    const/4 v0, -0x1

    iput v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    .line 311
    iput-object p2, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    .line 312
    new-instance v0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$ExpandedIndexObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$ExpandedIndexObserver;-><init>(Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$ExpandedIndexObserver;)V

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$MenuAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 313
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$MenuAdapter;->findExpandedIndex()V

    .line 314
    return-void
.end method

.method static synthetic access$1(Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$MenuAdapter;)Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;
    .registers 2
    .parameter

    .prologue
    .line 307
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    return-object v0
.end method


# virtual methods
.method findExpandedIndex()V
    .registers 6

    .prologue
    .line 354
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;

    #getter for: Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;
    invoke-static {v0}, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->access$2(Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;)Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->getExpandedItem()Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    move-result-object v2

    .line 355
    if-eqz v2, :cond_1e

    .line 356
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;

    #getter for: Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;
    invoke-static {v0}, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->access$2(Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;)Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v3

    .line 357
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 358
    const/4 v0, 0x0

    move v1, v0

    :goto_1c
    if-lt v1, v4, :cond_22

    .line 366
    :cond_1e
    const/4 v0, -0x1

    iput v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    .line 367
    :goto_21
    return-void

    .line 359
    :cond_22
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    .line 360
    if-ne v0, v2, :cond_2d

    .line 361
    iput v1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    goto :goto_21

    .line 358
    :cond_2d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1c
.end method

.method public getCount()I
    .registers 3

    .prologue
    .line 317
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;

    #getter for: Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mOverflowOnly:Z
    invoke-static {v0}, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->access$0(Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 318
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 319
    :goto_e
    iget v1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    if-gez v1, :cond_1e

    .line 320
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 322
    :goto_16
    return v0

    .line 318
    :cond_17
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_e

    .line 322
    :cond_1e
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_16
.end method

.method public getItem(I)Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;
    .registers 4
    .parameter

    .prologue
    .line 326
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;

    #getter for: Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mOverflowOnly:Z
    invoke-static {v0}, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->access$0(Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 327
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 328
    :goto_e
    iget v1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    if-ltz v1, :cond_18

    iget v1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    if-lt p1, v1, :cond_18

    .line 329
    add-int/lit8 p1, p1, 0x1

    .line 331
    :cond_18
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    return-object v0

    .line 327
    :cond_1f
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_e
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$MenuAdapter;->getItem(I)Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter

    .prologue
    .line 337
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 341
    if-nez p2, :cond_27

    .line 342
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;

    #getter for: Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v0}, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->access$1(Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->ITEM_LAYOUT:I

    invoke-virtual {v0, v1, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    :goto_f
    move-object v0, v1

    .line 345
    check-cast v0, Lcom/actionbarsherlock/internal/view/menu/MenuView$ItemView;

    .line 346
    iget-object v2, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;

    iget-boolean v2, v2, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mForceShowIcon:Z

    if-eqz v2, :cond_1f

    move-object v2, v1

    .line 347
    check-cast v2, Lcom/actionbarsherlock/internal/view/menu/ListMenuItemView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/internal/view/menu/ListMenuItemView;->setForceShowIcon(Z)V

    .line 349
    :cond_1f
    invoke-virtual {p0, p1}, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$MenuAdapter;->getItem(I)Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    move-result-object v2

    invoke-interface {v0, v2, v4}, Lcom/actionbarsherlock/internal/view/menu/MenuView$ItemView;->initialize(Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;I)V

    .line 350
    return-object v1

    :cond_27
    move-object v1, p2

    goto :goto_f
.end method
