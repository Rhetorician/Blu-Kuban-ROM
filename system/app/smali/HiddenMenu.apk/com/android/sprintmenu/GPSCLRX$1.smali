.class Lcom/android/sprintmenu/GPSCLRX$1;
.super Ljava/lang/Object;
.source "GPSCLRX.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/sprintmenu/GPSCLRX;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sprintmenu/GPSCLRX;


# direct methods
.method constructor <init>(Lcom/android/sprintmenu/GPSCLRX;)V
    .registers 2
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/sprintmenu/GPSCLRX$1;->this$0:Lcom/android/sprintmenu/GPSCLRX;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 53
    invoke-static {}, Lcom/android/sprintmenu/GPSCLRX;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "No select"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object v0, p0, Lcom/android/sprintmenu/GPSCLRX$1;->this$0:Lcom/android/sprintmenu/GPSCLRX;

    invoke-virtual {v0}, Lcom/android/sprintmenu/GPSCLRX;->finish()V

    .line 55
    return-void
.end method
