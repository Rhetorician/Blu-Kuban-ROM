.class Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup$10;
.super Ljava/lang/Object;
.source "MusicBarViewGroup.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->createVolumeBGMDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup$10;->this$0:Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;

    .line 470
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 6
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Inside BGM onProgress and Value s-->"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 475
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup$10;->this$0:Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;

    #setter for: Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->mBGMVolume:I
    invoke-static {v0, p2}, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->access$12(Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;I)V

    .line 477
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2
    .parameter "seekBar"

    .prologue
    .line 481
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2
    .parameter "seekBar"

    .prologue
    .line 485
    return-void
.end method