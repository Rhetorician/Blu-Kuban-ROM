.class Lcom/android/browser/OfflineComboViewActivity$4;
.super Ljava/lang/Object;
.source "OfflineComboViewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/OfflineComboViewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/OfflineComboViewActivity;


# direct methods
.method constructor <init>(Lcom/android/browser/OfflineComboViewActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 313
    iput-object p1, p0, Lcom/android/browser/OfflineComboViewActivity$4;->this$0:Lcom/android/browser/OfflineComboViewActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/browser/OfflineComboViewActivity$4;->this$0:Lcom/android/browser/OfflineComboViewActivity;

    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/browser/OfflineComboViewActivity;->openUrl(Ljava/lang/String;)V

    .line 317
    return-void
.end method