.class Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;
.super Lcom/google/android/music/AsyncAlbumArtImageView$Mode;
.source "AsyncAlbumArtImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/AsyncAlbumArtImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AlbumMode"
.end annotation


# instance fields
.field public album:Ljava/lang/String;

.field public albumId:J

.field public artist:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/music/AsyncAlbumArtImageView$Mode;-><init>(Lcom/google/android/music/AsyncAlbumArtImageView$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/music/AsyncAlbumArtImageView$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AlbumMode<albumId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;->albumId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", album:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;->album:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", artist:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;->artist:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
