.class public Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "TrackBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field album:Lcom/google/android/music/StatefulShadowTextView;

.field public albumId:J

.field artist:Lcom/google/android/music/StatefulShadowTextView;

.field comboColumn:Landroid/view/View;

.field contextMenu:Landroid/view/View;

.field duration:Lcom/google/android/music/StatefulShadowTextView;

.field hasRemote:Z

.field icon:Lcom/google/android/music/AsyncAlbumArtImageView;

.field partyModeAddButton:Landroid/widget/ImageView;

.field partyModeQueueState:I

.field play_indicator:Lcom/google/android/music/PlayingIndicator;

.field quickContact:Lcom/google/android/music/widgets/QuickContactBadgeComp;

.field syncProgress:Landroid/view/View;

.field final synthetic this$0:Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;

.field title:Lcom/google/android/music/StatefulShadowTextView;

.field titleBuffer:Landroid/database/CharArrayBuffer;

.field trackId:J

.field year:Lcom/google/android/music/StatefulShadowTextView;


# direct methods
.method public constructor <init>(Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;)V
    .registers 2
    .parameter

    .prologue
    .line 1511
    iput-object p1, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->this$0:Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
