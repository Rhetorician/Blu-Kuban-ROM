.class Lcom/google/android/music/GenreAlbumBrowserActivity$6;
.super Lcom/google/android/music/dl/IStreamabilityChangeListener$Stub;
.source "GenreAlbumBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/GenreAlbumBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/GenreAlbumBrowserActivity;


# direct methods
.method constructor <init>(Lcom/google/android/music/GenreAlbumBrowserActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1101
    iput-object p1, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$6;->this$0:Lcom/google/android/music/GenreAlbumBrowserActivity;

    invoke-direct {p0}, Lcom/google/android/music/dl/IStreamabilityChangeListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onStreamabilityChanged(Z)V
    .registers 4
    .parameter "isStreamable"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1104
    iget-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$6;->this$0:Lcom/google/android/music/GenreAlbumBrowserActivity;

    #setter for: Lcom/google/android/music/GenreAlbumBrowserActivity;->mIsStreamingEnabled:Z
    invoke-static {v0, p1}, Lcom/google/android/music/GenreAlbumBrowserActivity;->access$602(Lcom/google/android/music/GenreAlbumBrowserActivity;Z)Z

    .line 1105
    iget-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$6;->this$0:Lcom/google/android/music/GenreAlbumBrowserActivity;

    new-instance v1, Lcom/google/android/music/GenreAlbumBrowserActivity$6$1;

    invoke-direct {v1, p0}, Lcom/google/android/music/GenreAlbumBrowserActivity$6$1;-><init>(Lcom/google/android/music/GenreAlbumBrowserActivity$6;)V

    invoke-virtual {v0, v1}, Lcom/google/android/music/GenreAlbumBrowserActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1112
    return-void
.end method
