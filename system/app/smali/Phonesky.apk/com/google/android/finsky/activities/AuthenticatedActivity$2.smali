.class Lcom/google/android/finsky/activities/AuthenticatedActivity$2;
.super Ljava/lang/Object;
.source "AuthenticatedActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/AuthenticatedActivity;->fireOnReadyRunnable(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/AuthenticatedActivity;

.field final synthetic val$shouldHandleIntent:Z


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/AuthenticatedActivity;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 547
    iput-object p1, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity$2;->this$0:Lcom/google/android/finsky/activities/AuthenticatedActivity;

    iput-boolean p2, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity$2;->val$shouldHandleIntent:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 550
    iget-object v0, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity$2;->this$0:Lcom/google/android/finsky/activities/AuthenticatedActivity;

    iget-boolean v0, v0, Lcom/google/android/finsky/activities/AuthenticatedActivity;->mStateSaved:Z

    if-eqz v0, :cond_f

    .line 551
    const-string v0, "onSaveInstanceState() called, not firing onReady()."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 555
    :goto_e
    return-void

    .line 553
    :cond_f
    iget-object v0, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity$2;->this$0:Lcom/google/android/finsky/activities/AuthenticatedActivity;

    iget-boolean v1, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity$2;->val$shouldHandleIntent:Z

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->onReady(Z)V

    goto :goto_e
.end method
