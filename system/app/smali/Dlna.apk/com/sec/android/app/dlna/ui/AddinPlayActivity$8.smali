.class Lcom/sec/android/app/dlna/ui/AddinPlayActivity$8;
.super Ljava/lang/Object;
.source "AddinPlayActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 510
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$8;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 512
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$8;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->handleVolumeDown()V

    .line 513
    return-void
.end method