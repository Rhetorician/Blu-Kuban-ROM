.class Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity$1;
.super Ljava/lang/Object;
.source "SendAppListDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity$1;->this$0:Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity$1;->this$0:Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity;->finish()V

    .line 67
    return-void
.end method
