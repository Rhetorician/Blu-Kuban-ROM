.class Lcom/google/android/talk/fragments/SetStatusFragment$ConnectionStateListener$2;
.super Ljava/lang/Object;
.source "SetStatusFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/fragments/SetStatusFragment$ConnectionStateListener;->connectionStateChanged(Lcom/google/android/gtalkservice/ConnectionState;Lcom/google/android/gtalkservice/ConnectionError;JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/fragments/SetStatusFragment$ConnectionStateListener;


# direct methods
.method constructor <init>(Lcom/google/android/talk/fragments/SetStatusFragment$ConnectionStateListener;)V
    .registers 2
    .parameter

    .prologue
    .line 287
    iput-object p1, p0, Lcom/google/android/talk/fragments/SetStatusFragment$ConnectionStateListener$2;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment$ConnectionStateListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 290
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment$ConnectionStateListener$2;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment$ConnectionStateListener;

    iget-object v0, v0, Lcom/google/android/talk/fragments/SetStatusFragment$ConnectionStateListener;->mFragment:Lcom/google/android/talk/fragments/SetStatusFragment;

    if-nez v0, :cond_7

    .line 294
    :goto_6
    return-void

    .line 293
    :cond_7
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment$ConnectionStateListener$2;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment$ConnectionStateListener;

    iget-object v0, v0, Lcom/google/android/talk/fragments/SetStatusFragment$ConnectionStateListener;->mFragment:Lcom/google/android/talk/fragments/SetStatusFragment;

    #calls: Lcom/google/android/talk/fragments/SetStatusFragment;->disableUI()V
    invoke-static {v0}, Lcom/google/android/talk/fragments/SetStatusFragment;->access$200(Lcom/google/android/talk/fragments/SetStatusFragment;)V

    goto :goto_6
.end method
