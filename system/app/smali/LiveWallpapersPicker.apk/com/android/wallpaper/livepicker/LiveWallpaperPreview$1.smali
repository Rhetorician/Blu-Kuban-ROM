.class Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$1;
.super Ljava/lang/Object;
.source "LiveWallpaperPreview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;


# direct methods
.method constructor <init>(Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;)V
    .registers 2
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$1;->this$0:Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$1;->this$0:Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;

    #getter for: Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->mWallpaperConnection:Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;
    invoke-static {v0}, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->access$000(Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;)Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;->connect()Z

    move-result v0

    if-nez v0, :cond_12

    .line 151
    iget-object v0, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$1;->this$0:Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;

    const/4 v1, 0x0

    #setter for: Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->mWallpaperConnection:Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;
    invoke-static {v0, v1}, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->access$002(Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;)Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;

    .line 153
    :cond_12
    return-void
.end method
