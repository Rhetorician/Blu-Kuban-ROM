.class Lcom/sec/android/mimage/photoretouching/PhotoRetouching$13;
.super Ljava/lang/Object;
.source "PhotoRetouching.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->showShareAppList(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$13;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    .line 2210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 2212
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$13;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    const/4 v1, -0x1

    #setter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentSubDialog:I
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$13(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;I)V

    .line 2213
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$13;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->m_dlg:Landroid/app/Dialog;
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$12(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;Landroid/app/Dialog;)V

    .line 2214
    return-void
.end method