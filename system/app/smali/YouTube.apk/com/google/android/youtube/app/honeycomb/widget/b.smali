.class final Lcom/google/android/youtube/app/honeycomb/widget/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/RemoteViewsService$RemoteViewsFactory;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;)V
    .registers 3
    .parameter

    .prologue
    .line 166
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/app/honeycomb/widget/b;-><init>(Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;B)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/widget/b;->a:Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .registers 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/widget/b;->a:Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;->a(Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItemId(I)J
    .registers 4
    .parameter

    .prologue
    .line 175
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getLoadingView()Landroid/widget/RemoteViews;
    .registers 4

    .prologue
    .line 179
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/widget/b;->a:Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;

    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f040060

    invoke-direct {v1, v0, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 180
    return-object v1
.end method

.method public final getViewAt(I)Landroid/widget/RemoteViews;
    .registers 9
    .parameter

    .prologue
    .line 184
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/widget/b;->a:Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;->a(Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;)Ljava/util/List;

    move-result-object v2

    monitor-enter v2

    .line 185
    :try_start_7
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/widget/b;->a:Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;->a(Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_84

    .line 186
    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/widget/b;->a:Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/widget/b;->a:Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;->a(Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/c/a;

    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f04005f

    invoke-direct {v1, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const v4, 0x7f09001c

    iget-object v5, v0, Lcom/google/android/youtube/app/c/a;->a:Lcom/google/android/youtube/core/model/Video;

    iget-object v5, v5, Lcom/google/android/youtube/core/model/Video;->title:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v4, 0x7f09001b

    iget-object v5, v0, Lcom/google/android/youtube/app/c/a;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v4, v5}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    iget v4, v0, Lcom/google/android/youtube/app/c/a;->c:I

    const v5, 0x7f0a00de

    if-ne v4, v5, :cond_70

    const v4, 0x7f0900c6

    iget-object v5, v0, Lcom/google/android/youtube/app/c/a;->a:Lcom/google/android/youtube/core/model/Video;

    iget-object v5, v5, Lcom/google/android/youtube/core/model/Video;->ownerDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :goto_50
    const v4, 0x7f0900c3

    iget-object v0, v0, Lcom/google/android/youtube/app/c/a;->a:Lcom/google/android/youtube/core/model/Video;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/google/android/youtube/app/honeycomb/widget/WidgetActivity;

    invoke-direct {v5, v3, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "com.google.android.youtube.action.widget_play"

    invoke-virtual {v5, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v5, "video_id"

    invoke-virtual {v3, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    .line 188
    monitor-exit v2

    move-object v0, v1

    .line 194
    :goto_6f
    return-object v0

    .line 186
    :cond_70
    const v4, 0x7f0900c6

    iget v5, v0, Lcom/google/android/youtube/app/c/a;->c:I

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V
    :try_end_80
    .catchall {:try_start_7 .. :try_end_80} :catchall_81

    goto :goto_50

    .line 196
    :catchall_81
    move-exception v0

    monitor-exit v2

    throw v0

    .line 194
    :cond_84
    :try_start_84
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/widget/b;->getLoadingView()Landroid/widget/RemoteViews;

    move-result-object v0

    monitor-exit v2
    :try_end_89
    .catchall {:try_start_84 .. :try_end_89} :catchall_81

    goto :goto_6f
.end method

.method public final getViewTypeCount()I
    .registers 2

    .prologue
    .line 200
    const/4 v0, 0x2

    return v0
.end method

.method public final hasStableIds()Z
    .registers 2

    .prologue
    .line 204
    const/4 v0, 0x0

    return v0
.end method

.method public final onCreate()V
    .registers 1

    .prologue
    .line 168
    return-void
.end method

.method public final onDataSetChanged()V
    .registers 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/widget/b;->a:Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;->b(Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;)V

    .line 214
    return-void
.end method

.method public final onDestroy()V
    .registers 1

    .prologue
    .line 209
    return-void
.end method