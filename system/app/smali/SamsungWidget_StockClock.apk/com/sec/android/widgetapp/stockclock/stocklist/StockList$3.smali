.class Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$3;
.super Ljava/lang/Object;
.source "StockList.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;)V
    .registers 2
    .parameter

    .prologue
    .line 445
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$3;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 447
    const/16 v0, 0x42

    if-ne p2, v0, :cond_2a

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2a

    .line 449
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$3;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mAddCurrencyText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->access$000(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 450
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$3;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;

    const-class v2, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 451
    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 452
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$3;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;

    const/16 v2, 0x32

    invoke-virtual {v1, v0, v2}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->startActivityForResult(Landroid/content/Intent;I)V

    .line 454
    :cond_2a
    const/4 v0, 0x0

    return v0
.end method