.class Lcom/google/android/common/GoogleWebContentHelper$MyWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "GoogleWebContentHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/common/GoogleWebContentHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/common/GoogleWebContentHelper;


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5
    .parameter "view"
    .parameter "url"

    .prologue
    .line 318
    iget-object v0, p0, Lcom/google/android/common/GoogleWebContentHelper$MyWebViewClient;->this$0:Lcom/google/android/common/GoogleWebContentHelper;

    const/4 v1, 0x1

    #calls: Lcom/google/android/common/GoogleWebContentHelper;->handleWebViewCompletion(Z)V
    invoke-static {v0, v1}, Lcom/google/android/common/GoogleWebContentHelper;->access$100(Lcom/google/android/common/GoogleWebContentHelper;Z)V

    .line 319
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "view"
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    .line 324
    iget-object v0, p0, Lcom/google/android/common/GoogleWebContentHelper$MyWebViewClient;->this$0:Lcom/google/android/common/GoogleWebContentHelper;

    const/4 v1, 0x0

    #calls: Lcom/google/android/common/GoogleWebContentHelper;->handleWebViewCompletion(Z)V
    invoke-static {v0, v1}, Lcom/google/android/common/GoogleWebContentHelper;->access$100(Lcom/google/android/common/GoogleWebContentHelper;Z)V

    .line 325
    return-void
.end method

.method public onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "view"
    .parameter "handler"
    .parameter "host"
    .parameter "realm"

    .prologue
    .line 330
    iget-object v0, p0, Lcom/google/android/common/GoogleWebContentHelper$MyWebViewClient;->this$0:Lcom/google/android/common/GoogleWebContentHelper;

    const/4 v1, 0x0

    #calls: Lcom/google/android/common/GoogleWebContentHelper;->handleWebViewCompletion(Z)V
    invoke-static {v0, v1}, Lcom/google/android/common/GoogleWebContentHelper;->access$100(Lcom/google/android/common/GoogleWebContentHelper;Z)V

    .line 331
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 6
    .parameter "view"
    .parameter "handler"
    .parameter "error"

    .prologue
    .line 336
    iget-object v0, p0, Lcom/google/android/common/GoogleWebContentHelper$MyWebViewClient;->this$0:Lcom/google/android/common/GoogleWebContentHelper;

    const/4 v1, 0x0

    #calls: Lcom/google/android/common/GoogleWebContentHelper;->handleWebViewCompletion(Z)V
    invoke-static {v0, v1}, Lcom/google/android/common/GoogleWebContentHelper;->access$100(Lcom/google/android/common/GoogleWebContentHelper;Z)V

    .line 337
    return-void
.end method

.method public onTooManyRedirects(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .registers 6
    .parameter "view"
    .parameter "cancelMsg"
    .parameter "continueMsg"

    .prologue
    .line 342
    iget-object v0, p0, Lcom/google/android/common/GoogleWebContentHelper$MyWebViewClient;->this$0:Lcom/google/android/common/GoogleWebContentHelper;

    const/4 v1, 0x0

    #calls: Lcom/google/android/common/GoogleWebContentHelper;->handleWebViewCompletion(Z)V
    invoke-static {v0, v1}, Lcom/google/android/common/GoogleWebContentHelper;->access$100(Lcom/google/android/common/GoogleWebContentHelper;Z)V

    .line 343
    return-void
.end method
