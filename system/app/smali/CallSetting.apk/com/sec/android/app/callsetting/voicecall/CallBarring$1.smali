.class Lcom/sec/android/app/callsetting/voicecall/CallBarring$1;
.super Ljava/lang/Object;
.source "CallBarring.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/callsetting/voicecall/CallBarring;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/callsetting/voicecall/CallBarring;


# direct methods
.method constructor <init>(Lcom/sec/android/app/callsetting/voicecall/CallBarring;)V
    .registers 2
    .parameter

    .prologue
    .line 234
    iput-object p1, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring$1;->this$0:Lcom/sec/android/app/callsetting/voicecall/CallBarring;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 237
    iget-object v0, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring$1;->this$0:Lcom/sec/android/app/callsetting/voicecall/CallBarring;

    #getter for: Lcom/sec/android/app/callsetting/voicecall/CallBarring;->callbarring_password:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->access$000(Lcom/sec/android/app/callsetting/voicecall/CallBarring;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_38

    .line 239
    iget-object v0, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring$1;->this$0:Lcom/sec/android/app/callsetting/voicecall/CallBarring;

    iget-object v1, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring$1;->this$0:Lcom/sec/android/app/callsetting/voicecall/CallBarring;

    const v2, 0x7f0700a3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->getString(I)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/sec/android/app/callsetting/voicecall/CallBarring;->displayToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->access$100(Lcom/sec/android/app/callsetting/voicecall/CallBarring;Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring$1;->this$0:Lcom/sec/android/app/callsetting/voicecall/CallBarring;

    const/4 v1, 0x1

    #setter for: Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mSkipCallBarringReq:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->access$202(Lcom/sec/android/app/callsetting/voicecall/CallBarring;Z)Z

    .line 242
    iget-object v0, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring$1;->this$0:Lcom/sec/android/app/callsetting/voicecall/CallBarring;

    #getter for: Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mPreference:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->access$400(Lcom/sec/android/app/callsetting/voicecall/CallBarring;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring$1;->this$0:Lcom/sec/android/app/callsetting/voicecall/CallBarring;

    #getter for: Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mSelectedIndex:I
    invoke-static {v1}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->access$300(Lcom/sec/android/app/callsetting/voicecall/CallBarring;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 249
    :goto_37
    return-void

    .line 247
    :cond_38
    iget-object v0, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring$1;->this$0:Lcom/sec/android/app/callsetting/voicecall/CallBarring;

    #calls: Lcom/sec/android/app/callsetting/voicecall/CallBarring;->setCallBarring(I)V
    invoke-static {v0, v3}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->access$500(Lcom/sec/android/app/callsetting/voicecall/CallBarring;I)V

    goto :goto_37
.end method
