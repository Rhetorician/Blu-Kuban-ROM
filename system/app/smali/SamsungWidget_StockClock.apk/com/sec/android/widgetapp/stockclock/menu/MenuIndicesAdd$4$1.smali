.class Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd$4$1;
.super Ljava/lang/Object;
.source "MenuIndicesAdd.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd$4;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd$4;)V
    .registers 2
    .parameter

    .prologue
    .line 265
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd$4$1;->this$1:Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd$4;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 12
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const v5, 0x7f0b00c7

    .line 268
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v0

    .line 269
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    if-ge v1, v0, :cond_1e

    .line 271
    invoke-virtual {p1, v1}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 272
    .local v3, view:Landroid/view/View;
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 273
    .local v2, rowName:Landroid/widget/TextView;
    if-eqz v2, :cond_1b

    .line 275
    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 269
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 278
    .end local v2           #rowName:Landroid/widget/TextView;
    .end local v3           #view:Landroid/view/View;
    :cond_1e
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 279
    .restart local v2       #rowName:Landroid/widget/TextView;
    if-eqz v2, :cond_2f

    .line 281
    sget-object v4, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 282
    const/4 v4, -0x1

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    .line 284
    :cond_2f
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 289
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 290
    return-void
.end method