.class Lcom/sprint/dsa/dss/DsaJavaScriptInterface$1;
.super Ljava/lang/Object;
.source "DsaJavaScriptInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/dsa/dss/DsaJavaScriptInterface;->setViewText(Landroid/widget/Button;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/dsa/dss/DsaJavaScriptInterface;

.field private final synthetic val$text:Ljava/lang/String;

.field private final synthetic val$view:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/sprint/dsa/dss/DsaJavaScriptInterface;Landroid/widget/Button;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/dsa/dss/DsaJavaScriptInterface$1;->this$0:Lcom/sprint/dsa/dss/DsaJavaScriptInterface;

    iput-object p2, p0, Lcom/sprint/dsa/dss/DsaJavaScriptInterface$1;->val$view:Landroid/widget/Button;

    iput-object p3, p0, Lcom/sprint/dsa/dss/DsaJavaScriptInterface$1;->val$text:Ljava/lang/String;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaJavaScriptInterface$1;->val$view:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sprint/dsa/dss/DsaJavaScriptInterface$1;->val$text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 76
    return-void
.end method
