.class Landroid/webkit/WebView$RequestFormData;
.super Ljava/lang/Object;
.source "WebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestFormData"
.end annotation


# instance fields
.field private mAutoComplete:Z

.field private mAutoFillable:Z

.field private mName:Ljava/lang/String;

.field private mUpdateMessage:Landroid/os/Message;

.field private mUrl:Ljava/lang/String;

.field private mWebSettings:Landroid/webkit/WebSettings;

.field final synthetic this$0:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;ZZ)V
    .registers 8
    .parameter
    .parameter "name"
    .parameter "url"
    .parameter "msg"
    .parameter "autoFillable"
    .parameter "autoComplete"

    .prologue
    .line 6423
    iput-object p1, p0, Landroid/webkit/WebView$RequestFormData;->this$0:Landroid/webkit/WebView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 6424
    iput-object p2, p0, Landroid/webkit/WebView$RequestFormData;->mName:Ljava/lang/String;

    .line 6425
    invoke-static {p3}, Landroid/webkit/WebTextView;->urlForAutoCompleteData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebView$RequestFormData;->mUrl:Ljava/lang/String;

    .line 6426
    iput-object p4, p0, Landroid/webkit/WebView$RequestFormData;->mUpdateMessage:Landroid/os/Message;

    .line 6427
    iput-boolean p5, p0, Landroid/webkit/WebView$RequestFormData;->mAutoFillable:Z

    .line 6428
    iput-boolean p6, p0, Landroid/webkit/WebView$RequestFormData;->mAutoComplete:Z

    .line 6429
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebView$RequestFormData;->mWebSettings:Landroid/webkit/WebSettings;

    .line 6430
    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 6433
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6435
    .local v1, pastEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-boolean v2, p0, Landroid/webkit/WebView$RequestFormData;->mAutoFillable:Z

    if-eqz v2, :cond_54

    .line 6439
    iget-object v2, p0, Landroid/webkit/WebView$RequestFormData;->mWebSettings:Landroid/webkit/WebSettings;

    if-eqz v2, :cond_84

    iget-object v2, p0, Landroid/webkit/WebView$RequestFormData;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getAutoFillProfile()Landroid/webkit/WebSettings$AutoFillProfile;

    move-result-object v2

    if-eqz v2, :cond_84

    .line 6440
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/webkit/WebView$RequestFormData;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10403d3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/WebView$RequestFormData;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mAutoFillData:Landroid/webkit/WebViewCore$AutoFillData;
    invoke-static {v3}, Landroid/webkit/WebView;->access$2900(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore$AutoFillData;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebViewCore$AutoFillData;->getPreviewString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6444
    iget-object v2, p0, Landroid/webkit/WebView$RequestFormData;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v2}, Landroid/webkit/WebView;->access$1800(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebTextView;->setAutoFillProfileIsSet(Z)V

    .line 6454
    :cond_54
    :goto_54
    iget-boolean v2, p0, Landroid/webkit/WebView$RequestFormData;->mAutoComplete:Z

    if-eqz v2, :cond_69

    .line 6455
    iget-object v2, p0, Landroid/webkit/WebView$RequestFormData;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mDatabase:Landroid/webkit/WebViewDatabase;
    invoke-static {v2}, Landroid/webkit/WebView;->access$3000(Landroid/webkit/WebView;)Landroid/webkit/WebViewDatabase;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/WebView$RequestFormData;->mUrl:Ljava/lang/String;

    iget-object v4, p0, Landroid/webkit/WebView$RequestFormData;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/webkit/WebViewDatabase;->getFormData(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 6458
    :cond_69
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_83

    .line 6459
    new-instance v0, Landroid/webkit/WebTextView$AutoCompleteAdapter;

    iget-object v2, p0, Landroid/webkit/WebView$RequestFormData;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/webkit/WebView;->access$3100(Landroid/webkit/WebView;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Landroid/webkit/WebTextView$AutoCompleteAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 6461
    .local v0, adapter:Landroid/webkit/WebTextView$AutoCompleteAdapter;
    iget-object v2, p0, Landroid/webkit/WebView$RequestFormData;->mUpdateMessage:Landroid/os/Message;

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 6462
    iget-object v2, p0, Landroid/webkit/WebView$RequestFormData;->mUpdateMessage:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 6464
    .end local v0           #adapter:Landroid/webkit/WebTextView$AutoCompleteAdapter;
    :cond_83
    return-void

    .line 6448
    :cond_84
    iget-object v2, p0, Landroid/webkit/WebView$RequestFormData;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10403d4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6450
    iget-object v2, p0, Landroid/webkit/WebView$RequestFormData;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v2}, Landroid/webkit/WebView;->access$1800(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/webkit/WebTextView;->setAutoFillProfileIsSet(Z)V

    goto :goto_54
.end method
