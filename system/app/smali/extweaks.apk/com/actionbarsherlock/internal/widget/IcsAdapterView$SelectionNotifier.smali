.class Lcom/actionbarsherlock/internal/widget/IcsAdapterView$SelectionNotifier;
.super Ljava/lang/Object;
.source "IcsAdapterView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/actionbarsherlock/internal/widget/IcsAdapterView;


# direct methods
.method private constructor <init>(Lcom/actionbarsherlock/internal/widget/IcsAdapterView;)V
    .registers 2
    .parameter

    .prologue
    .line 817
    iput-object p1, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView$SelectionNotifier;->this$0:Lcom/actionbarsherlock/internal/widget/IcsAdapterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/actionbarsherlock/internal/widget/IcsAdapterView;Lcom/actionbarsherlock/internal/widget/IcsAdapterView$SelectionNotifier;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 817
    invoke-direct {p0, p1}, Lcom/actionbarsherlock/internal/widget/IcsAdapterView$SelectionNotifier;-><init>(Lcom/actionbarsherlock/internal/widget/IcsAdapterView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 819
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView$SelectionNotifier;->this$0:Lcom/actionbarsherlock/internal/widget/IcsAdapterView;

    iget-boolean v0, v0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mDataChanged:Z

    if-eqz v0, :cond_14

    .line 823
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView$SelectionNotifier;->this$0:Lcom/actionbarsherlock/internal/widget/IcsAdapterView;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 824
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView$SelectionNotifier;->this$0:Lcom/actionbarsherlock/internal/widget/IcsAdapterView;

    invoke-virtual {v0, p0}, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->post(Ljava/lang/Runnable;)Z

    .line 829
    :cond_13
    :goto_13
    return-void

    .line 827
    :cond_14
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView$SelectionNotifier;->this$0:Lcom/actionbarsherlock/internal/widget/IcsAdapterView;

    #calls: Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->fireOnSelected()V
    invoke-static {v0}, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->access$2(Lcom/actionbarsherlock/internal/widget/IcsAdapterView;)V

    goto :goto_13
.end method