.class Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup$1;
.super Ljava/lang/Object;
.source "VideoSortByPopup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup;->createPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup;)V
    .registers 2
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup$1;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup$1;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup;

    #getter for: Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup;->sortBy:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup;->access$000(Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 53
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup$1;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup;

    #getter for: Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup;->sortBy:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup;->access$000(Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->hide()V

    .line 54
    :cond_11
    return-void
.end method