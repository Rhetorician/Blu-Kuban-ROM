.class public final Lcom/google/android/music/store/MusicContent$Playlists;
.super Ljava/lang/Object;
.source "MusicContent.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/store/MusicContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Playlists"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/store/MusicContent$Playlists$Members;
    }
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 349
    sget-object v0, Lcom/google/android/music/store/MusicContent;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "playlists"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/music/store/MusicContent$Playlists;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 611
    return-void
.end method

.method public static appendAlbumToPlayList(Landroid/content/ContentResolver;JJ)I
    .registers 10
    .parameter "resolver"
    .parameter "playlistId"
    .parameter "albumId"

    .prologue
    const/4 v4, 0x0

    .line 517
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 518
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "album_id"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 519
    invoke-static {p1, p2}, Lcom/google/android/music/store/MusicContent$Playlists;->getPlaylistUri(J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 520
    .local v0, builder:Landroid/net/Uri$Builder;
    const-string v2, "action"

    const-string v3, "album"

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 522
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0, v2, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public static appendArtistToPlayList(Landroid/content/ContentResolver;JJ)I
    .registers 10
    .parameter "resolver"
    .parameter "playlistId"
    .parameter "artistId"

    .prologue
    const/4 v4, 0x0

    .line 535
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 536
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "AlbumArtistId"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 537
    invoke-static {p1, p2}, Lcom/google/android/music/store/MusicContent$Playlists;->getPlaylistUri(J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 538
    .local v0, builder:Landroid/net/Uri$Builder;
    const-string v2, "action"

    const-string v3, "artist"

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 540
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0, v2, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public static appendGenreToPlayList(Landroid/content/ContentResolver;JJ)I
    .registers 10
    .parameter "resolver"
    .parameter "playlistId"
    .parameter "genreId"

    .prologue
    const/4 v4, 0x0

    .line 553
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 554
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "GenreId"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 555
    invoke-static {p1, p2}, Lcom/google/android/music/store/MusicContent$Playlists;->getPlaylistUri(J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 556
    .local v0, builder:Landroid/net/Uri$Builder;
    const-string v2, "action"

    const-string v3, "genre"

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 558
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0, v2, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public static appendItemToPlayList(Landroid/content/ContentResolver;JJ)I
    .registers 10
    .parameter "resolver"
    .parameter "playlistId"
    .parameter "musicId"

    .prologue
    const/4 v2, 0x1

    .line 471
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 472
    .local v1, values:Landroid/content/ContentValues;
    const-string v3, "audio_id"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 473
    invoke-static {p1, p2}, Lcom/google/android/music/store/MusicContent$Playlists$Members;->getPlaylistItemsUri(J)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 474
    .local v0, newItemUri:Landroid/net/Uri;
    if-nez v0, :cond_1b

    const/high16 v2, -0x8000

    :cond_1b
    return v2
.end method

.method public static appendItemsToPlayList(Landroid/content/ContentResolver;J[J)I
    .registers 15
    .parameter "resolver"
    .parameter "playlistId"
    .parameter "musicIds"

    .prologue
    .line 488
    array-length v9, p3

    if-nez v9, :cond_5

    .line 489
    const/4 v0, 0x0

    .line 504
    :cond_4
    :goto_4
    return v0

    .line 492
    :cond_5
    invoke-static {p1, p2}, Lcom/google/android/music/store/MusicContent$Playlists$Members;->getPlaylistItemsUri(J)Landroid/net/Uri;

    move-result-object v7

    .line 493
    .local v7, playlistUri:Landroid/net/Uri;
    new-instance v8, Landroid/content/ContentValues;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Landroid/content/ContentValues;-><init>(I)V

    .line 494
    .local v8, values:Landroid/content/ContentValues;
    const/4 v0, 0x0

    .line 495
    .local v0, added:I
    move-object v1, p3

    .local v1, arr$:[J
    array-length v5, v1

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_13
    if-ge v2, v5, :cond_4

    aget-wide v3, v1, v2

    .line 496
    .local v3, id:J
    const-string v9, "audio_id"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 497
    invoke-virtual {p0, v7, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    .line 498
    .local v6, newItemUri:Landroid/net/Uri;
    if-nez v6, :cond_2b

    .line 499
    if-gtz v0, :cond_4

    const/high16 v0, -0x8000

    goto :goto_4

    .line 501
    :cond_2b
    add-int/lit8 v0, v0, 0x1

    .line 495
    add-int/lit8 v2, v2, 0x1

    goto :goto_13
.end method

.method public static appendPlaylistToPlayList(Landroid/content/ContentResolver;JJ)I
    .registers 10
    .parameter "resolver"
    .parameter "playlistId"
    .parameter "sourcePlaylistId"

    .prologue
    const/4 v4, 0x0

    .line 583
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 584
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "playlist_id"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 585
    invoke-static {p1, p2}, Lcom/google/android/music/store/MusicContent$Playlists;->getPlaylistUri(J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 586
    .local v0, builder:Landroid/net/Uri$Builder;
    const-string v2, "action"

    const-string v3, "playlist"

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 588
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0, v2, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public static createPlaylist(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/net/Uri;
    .registers 4
    .parameter "resolver"
    .parameter "name"

    .prologue
    .line 453
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 454
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    sget-object v1, Lcom/google/android/music/store/MusicContent$Playlists;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public static getPlaylistUri(J)Landroid/net/Uri;
    .registers 5
    .parameter "playlistId"

    .prologue
    .line 428
    const-wide/16 v0, 0x1

    cmp-long v0, p0, v0

    if-gez v0, :cond_1f

    .line 429
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid playlist id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 431
    :cond_1f
    sget-object v0, Lcom/google/android/music/store/MusicContent$Playlists;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getPlaylistUri(Ljava/lang/String;)Landroid/net/Uri;
    .registers 3
    .parameter "name"

    .prologue
    .line 442
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_10

    .line 443
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Empty playlist name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 446
    :cond_10
    sget-object v0, Lcom/google/android/music/store/MusicContent$Playlists;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static movePlaylistItem(Landroid/content/ContentResolver;JJJ)V
    .registers 12
    .parameter "resolver"
    .parameter "playlistId"
    .parameter "itemToMove"
    .parameter "desiredPreviousItem"

    .prologue
    const/4 v4, 0x0

    .line 602
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 603
    .local v1, values:Landroid/content/ContentValues;
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/music/store/MusicContent$Playlists$Members;->getPlaylistItemUri(JJ)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 604
    .local v0, builder:Landroid/net/Uri$Builder;
    const-string v2, "moveBefore"

    invoke-static {p5, p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 607
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0, v2, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 608
    return-void
.end method
