.class final Lcom/google/android/youtube/app/honeycomb/phone/az;
.super Lcom/google/android/youtube/core/ui/e;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;Lcom/google/android/youtube/core/d;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/az;->a:Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;

    invoke-direct {p0, p2}, Lcom/google/android/youtube/core/ui/e;-><init>(Lcom/google/android/youtube/core/d;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 4
    .parameter

    .prologue
    .line 159
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/az;->a:Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->v()Lcom/google/android/youtube/core/Analytics;

    move-result-object v0

    const-string v1, "CreatePlaylist"

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/Analytics;->b(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/az;->a:Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;

    const/16 v1, 0x3ed

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->showDialog(I)V

    .line 161
    return-void
.end method
