.class final Lcom/google/android/youtube/app/honeycomb/phone/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/adapter/bj;

.field final synthetic b:Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;Lcom/google/android/youtube/app/adapter/bj;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 335
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/h;->b:Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;

    iput-object p2, p0, Lcom/google/android/youtube/app/honeycomb/phone/h;->a:Lcom/google/android/youtube/app/adapter/bj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 337
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/h;->a:Lcom/google/android/youtube/app/adapter/bj;

    invoke-virtual {v0, p3}, Lcom/google/android/youtube/app/adapter/bj;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Playlist;

    .line 338
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/h;->b:Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->t()Lcom/google/android/youtube/app/a;

    move-result-object v1

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Playlist;->contentUri:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/google/android/youtube/app/a;->a(Landroid/net/Uri;Z)V

    .line 339
    return-void
.end method
