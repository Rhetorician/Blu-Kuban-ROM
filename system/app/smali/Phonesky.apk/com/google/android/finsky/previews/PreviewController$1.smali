.class final Lcom/google/android/finsky/previews/PreviewController$1;
.super Ljava/lang/Object;
.source "PreviewController.java"

# interfaces
.implements Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/previews/PreviewController;->setupOnBackStackChangedListener(Lcom/google/android/finsky/navigationmanager/NavigationManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$navigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/navigationmanager/NavigationManager;)V
    .registers 2
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/google/android/finsky/previews/PreviewController$1;->val$navigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackStackChanged()V
    .registers 2

    .prologue
    .line 66
    invoke-static {}, Lcom/google/android/finsky/previews/PreviewController;->access$000()Lcom/google/android/finsky/previews/PreviewPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/previews/PreviewPlayer;->clear()V

    .line 67
    invoke-static {}, Lcom/google/android/finsky/previews/PreviewController;->access$000()Lcom/google/android/finsky/previews/PreviewPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/previews/PreviewPlayer;->stop()V

    .line 68
    invoke-static {}, Lcom/google/android/finsky/previews/PreviewController;->access$000()Lcom/google/android/finsky/previews/PreviewPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/previews/PreviewPlayer;->reset()V

    .line 69
    iget-object v0, p0, Lcom/google/android/finsky/previews/PreviewController$1;->val$navigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->removeOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V

    .line 70
    return-void
.end method