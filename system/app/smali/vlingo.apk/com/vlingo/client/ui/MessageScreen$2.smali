.class Lcom/vlingo/client/ui/MessageScreen$2;
.super Ljava/lang/Object;
.source "MessageScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/ui/MessageScreen;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/ui/MessageScreen;


# direct methods
.method constructor <init>(Lcom/vlingo/client/ui/MessageScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/vlingo/client/ui/MessageScreen$2;->this$0:Lcom/vlingo/client/ui/MessageScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/vlingo/client/ui/MessageScreen$2;->this$0:Lcom/vlingo/client/ui/MessageScreen;

    invoke-virtual {v0}, Lcom/vlingo/client/ui/MessageScreen;->hide()V

    .line 61
    return-void
.end method