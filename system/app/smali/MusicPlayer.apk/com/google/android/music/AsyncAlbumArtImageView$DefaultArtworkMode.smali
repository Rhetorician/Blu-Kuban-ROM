.class Lcom/google/android/music/AsyncAlbumArtImageView$DefaultArtworkMode;
.super Lcom/google/android/music/AsyncAlbumArtImageView$Mode;
.source "AsyncAlbumArtImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/AsyncAlbumArtImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultArtworkMode"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 115
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/music/AsyncAlbumArtImageView$Mode;-><init>(Lcom/google/android/music/AsyncAlbumArtImageView$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/music/AsyncAlbumArtImageView$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/google/android/music/AsyncAlbumArtImageView$DefaultArtworkMode;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 118
    const-string v0, "DefaultArtworkMode<>"

    return-object v0
.end method
