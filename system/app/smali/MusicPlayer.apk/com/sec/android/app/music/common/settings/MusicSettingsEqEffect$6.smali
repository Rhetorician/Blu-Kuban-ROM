.class Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect$6;
.super Ljava/lang/Object;
.source "MusicSettingsEqEffect.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->onConfigurationChanged(Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;)V
    .registers 2
    .parameter

    .prologue
    .line 770
    iput-object p1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect$6;->this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 773
    iget-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect$6;->this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;

    #getter for: Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->access$1200(Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect$6;->this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;

    #getter for: Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mCheckedItemId:I
    invoke-static {v1}, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->access$1100(Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 774
    return-void
.end method