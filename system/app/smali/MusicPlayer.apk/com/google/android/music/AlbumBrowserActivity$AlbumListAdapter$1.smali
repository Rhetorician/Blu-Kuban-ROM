.class Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$1;
.super Ljava/lang/Object;
.source "AlbumBrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;


# direct methods
.method constructor <init>(Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;)V
    .registers 2
    .parameter

    .prologue
    .line 595
    iput-object p1, p0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$1;->this$1:Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 597
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$1;->this$1:Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;

    #getter for: Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->mActivity:Lcom/google/android/music/AlbumBrowserActivity;
    invoke-static {v0}, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->access$800(Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;)Lcom/google/android/music/AlbumBrowserActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$1;->this$1:Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;

    iget-object v1, v1, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->this$0:Lcom/google/android/music/AlbumBrowserActivity;

    #getter for: Lcom/google/android/music/AlbumBrowserActivity;->mAlbumList:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/google/android/music/AlbumBrowserActivity;->access$400(Lcom/google/android/music/AlbumBrowserActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/music/AlbumBrowserActivity;->createContextMusicMenu(Landroid/view/View;I)V

    .line 598
    return-void
.end method
