.class Lcom/google/android/voicesearch/HelpDialog$3;
.super Ljava/lang/Object;
.source "HelpDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/voicesearch/HelpDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/voicesearch/HelpDialog;


# direct methods
.method constructor <init>(Lcom/google/android/voicesearch/HelpDialog;)V
    .registers 2
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcom/google/android/voicesearch/HelpDialog$3;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog$3;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    #getter for: Lcom/google/android/voicesearch/HelpDialog;->mListener:Lcom/google/android/voicesearch/HelpDialog$Listener;
    invoke-static {v0}, Lcom/google/android/voicesearch/HelpDialog;->access$400(Lcom/google/android/voicesearch/HelpDialog;)Lcom/google/android/voicesearch/HelpDialog$Listener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 179
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog$3;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    #getter for: Lcom/google/android/voicesearch/HelpDialog;->mListener:Lcom/google/android/voicesearch/HelpDialog$Listener;
    invoke-static {v0}, Lcom/google/android/voicesearch/HelpDialog;->access$400(Lcom/google/android/voicesearch/HelpDialog;)Lcom/google/android/voicesearch/HelpDialog$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/voicesearch/HelpDialog$Listener;->onCancel()V

    .line 181
    :cond_11
    return-void
.end method
