.class Lcom/sec/android/widgetapp/stockclock/stockview/StockView$7;
.super Ljava/lang/Object;
.source "StockView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->makeFlipper(Ljava/lang/String;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

.field final synthetic val$linkURL:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1138
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$7;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    iput-object p2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$7;->val$linkURL:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    .line 1140
    const-string v1, ""

    .line 1141
    .local v1, url:Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$7;->val$linkURL:Ljava/lang/String;

    if-eqz v2, :cond_14

    const-string v2, ""

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$7;->val$linkURL:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 1142
    :cond_14
    const-string v1, "http://m.yahoo.com/samsungwi/finance"

    .line 1146
    :goto_16
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1147
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$7;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    invoke-virtual {v2, v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->startActivity(Landroid/content/Intent;)V

    .line 1148
    return-void

    .line 1144
    .end local v0           #intent:Landroid/content/Intent;
    :cond_27
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$7;->val$linkURL:Ljava/lang/String;

    goto :goto_16
.end method