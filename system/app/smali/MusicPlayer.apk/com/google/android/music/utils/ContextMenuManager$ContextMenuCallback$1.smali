.class Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback$1;
.super Ljava/lang/Object;
.source "ContextMenuManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->onMusicMenuItemSelected(Lcom/google/android/music/menu/MusicMenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;

.field final synthetic val$cursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

.field final synthetic val$itemPosition:I


# direct methods
.method constructor <init>(Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;Lcom/google/android/music/medialist/MediaList$MediaCursor;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 848
    iput-object p1, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback$1;->this$1:Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;

    iput-object p2, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback$1;->val$cursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    iput p3, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback$1;->val$itemPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 850
    iget-object v0, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback$1;->val$cursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    invoke-virtual {v0}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 856
    :goto_9
    return-void

    .line 851
    :cond_a
    iget-object v0, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback$1;->val$cursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    iget v1, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback$1;->val$itemPosition:I

    invoke-virtual {v0, v1}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->removeItem(I)V

    .line 852
    iget-object v0, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback$1;->this$1:Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;

    iget-object v0, v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->this$0:Lcom/google/android/music/utils/ContextMenuManager;

    #getter for: Lcom/google/android/music/utils/ContextMenuManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/music/utils/ContextMenuManager;->access$900(Lcom/google/android/music/utils/ContextMenuManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback$1;->this$1:Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;

    iget-object v1, v1, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->this$0:Lcom/google/android/music/utils/ContextMenuManager;

    #getter for: Lcom/google/android/music/utils/ContextMenuManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/google/android/music/utils/ContextMenuManager;->access$900(Lcom/google/android/music/utils/ContextMenuManager;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d0086

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback$1;->this$1:Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;

    #getter for: Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mSonglist:Lcom/google/android/music/medialist/SongList;
    invoke-static {v4}, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->access$1000(Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;)Lcom/google/android/music/medialist/SongList;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback$1;->this$1:Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;

    iget-object v5, v5, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->this$0:Lcom/google/android/music/utils/ContextMenuManager;

    #getter for: Lcom/google/android/music/utils/ContextMenuManager;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/google/android/music/utils/ContextMenuManager;->access$900(Lcom/google/android/music/utils/ContextMenuManager;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/music/medialist/SongList;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_9
.end method
