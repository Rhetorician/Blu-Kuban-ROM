.class Lcom/android/browser/Tab$2$5;
.super Ljava/lang/Object;
.source "Tab.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/Tab$2;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/browser/Tab$2;


# direct methods
.method constructor <init>(Lcom/android/browser/Tab$2;)V
    .registers 2
    .parameter

    .prologue
    .line 836
    iput-object p1, p0, Lcom/android/browser/Tab$2$5;->this$1:Lcom/android/browser/Tab$2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 840
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 841
    return-void
.end method
