.class Lcom/google/android/apps/translate/asreditor/Vibrator$1;
.super Ljava/lang/Object;
.source "Vibrator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/translate/asreditor/Vibrator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/translate/asreditor/Vibrator;


# direct methods
.method constructor <init>(Lcom/google/android/apps/translate/asreditor/Vibrator;)V
    .registers 2
    .parameter

    .prologue
    .line 15
    iput-object p1, p0, Lcom/google/android/apps/translate/asreditor/Vibrator$1;->this$0:Lcom/google/android/apps/translate/asreditor/Vibrator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 18
    iget-object v0, p0, Lcom/google/android/apps/translate/asreditor/Vibrator$1;->this$0:Lcom/google/android/apps/translate/asreditor/Vibrator;

    #getter for: Lcom/google/android/apps/translate/asreditor/Vibrator;->mVibrator:Landroid/os/Vibrator;
    invoke-static {v0}, Lcom/google/android/apps/translate/asreditor/Vibrator;->access$000(Lcom/google/android/apps/translate/asreditor/Vibrator;)Landroid/os/Vibrator;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [J

    fill-array-data v1, :array_12

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 19
    return-void

    .line 18
    nop

    :array_12
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method
