.class Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils$3;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->clearAll()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils$3;->this$1:Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;

    .line 539
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 542
    iget-object v0, p0, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils$3;->this$1:Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;

    #getter for: Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->mFile:Ljava/io/File;
    invoke-static {v0}, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->access$7(Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils$3;->this$1:Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;

    #getter for: Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->mFile:Ljava/io/File;
    invoke-static {v0}, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->access$7(Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 543
    sget-boolean v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sDBG:Z

    if-eqz v0, :cond_21

    .line 544
    invoke-static {}, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->access$3()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Delete log file."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    :cond_21
    iget-object v0, p0, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils$3;->this$1:Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;

    #getter for: Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->mFile:Ljava/io/File;
    invoke-static {v0}, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->access$7(Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 547
    iget-object v0, p0, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils$3;->this$1:Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;

    #getter for: Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->mWriter:Ljava/io/PrintWriter;
    invoke-static {v0}, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->access$4(Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;)Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 549
    :cond_33
    return-void
.end method