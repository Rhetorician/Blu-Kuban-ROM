.class final Lcom/google/android/youtube/app/honeycomb/phone/al;
.super Lcom/google/android/youtube/app/ui/cv;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;Landroid/app/Activity;Lcom/google/android/youtube/app/o;Lcom/google/android/youtube/core/ui/h;Lcom/google/android/youtube/app/a/x;Lcom/google/android/youtube/core/async/ad;Lcom/google/android/youtube/core/client/af;Lcom/google/android/youtube/core/client/ag;ZZLcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;Lcom/google/android/youtube/core/client/al;Lcom/google/android/youtube/core/e;)V
    .registers 29
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 169
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/al;->a:Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;

    const/4 v8, 0x1

    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move/from16 v9, p10

    move-object/from16 v10, p11

    move-object/from16 v11, p12

    move-object/from16 v12, p13

    move-object/from16 v13, p14

    invoke-direct/range {v0 .. v13}, Lcom/google/android/youtube/app/ui/cv;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/app/o;Lcom/google/android/youtube/core/ui/h;Lcom/google/android/youtube/app/a/x;Lcom/google/android/youtube/core/async/ad;Lcom/google/android/youtube/core/client/af;Lcom/google/android/youtube/core/client/ag;ZZLcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;Lcom/google/android/youtube/core/client/al;Lcom/google/android/youtube/core/e;)V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/view/View;Lcom/google/android/youtube/core/model/Video;I)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/al;->a:Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->l()Lcom/google/android/youtube/app/o;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/al;->a:Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;

    invoke-static {v1}, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->c(Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/al;->a:Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;

    invoke-static {v2}, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->d(Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;)Z

    move-result v2

    sget-object v3, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;->PLAYLIST:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

    invoke-interface {v0, v1, p3, v2, v3}, Lcom/google/android/youtube/app/o;->a(Landroid/net/Uri;IZLcom/google/android/youtube/core/client/al;)V

    .line 173
    return-void
.end method