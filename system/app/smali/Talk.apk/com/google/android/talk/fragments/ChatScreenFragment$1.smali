.class Lcom/google/android/talk/fragments/ChatScreenFragment$1;
.super Ljava/lang/Object;
.source "ChatScreenFragment.java"

# interfaces
.implements Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/fragments/ChatScreenFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;


# direct methods
.method constructor <init>(Lcom/google/android/talk/fragments/ChatScreenFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 764
    iput-object p1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$1;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cacheContactId(Ljava/lang/String;J)V
    .registers 6
    .parameter "contact"
    .parameter "id"

    .prologue
    .line 934
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$1;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    #getter for: Lcom/google/android/talk/fragments/ChatScreenFragment;->mContactIdMap:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$2100(Lcom/google/android/talk/fragments/ChatScreenFragment;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 935
    return-void
.end method

.method public convertedToGroupChat(Lcom/google/android/talk/ChatView;Ljava/lang/String;)V
    .registers 4
    .parameter "cv"
    .parameter "room"

    .prologue
    .line 953
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$1;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    #setter for: Lcom/google/android/talk/fragments/ChatScreenFragment;->mTargetContact:Ljava/lang/String;
    invoke-static {v0, p2}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$402(Lcom/google/android/talk/fragments/ChatScreenFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 954
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$1;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    #getter for: Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatList:Lcom/google/android/talk/util/ChatList;
    invoke-static {v0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$1300(Lcom/google/android/talk/fragments/ChatScreenFragment;)Lcom/google/android/talk/util/ChatList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/talk/util/ChatList;->resumeRequery()V

    .line 955
    return-void
.end method

.method public getCachedContactId(Ljava/lang/String;)J
    .registers 5
    .parameter "contact"

    .prologue
    .line 939
    const-wide/16 v0, -0x1

    .line 940
    .local v0, id:J
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$1;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    #getter for: Lcom/google/android/talk/fragments/ChatScreenFragment;->mContactIdMap:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$2100(Lcom/google/android/talk/fragments/ChatScreenFragment;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 941
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$1;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    #getter for: Lcom/google/android/talk/fragments/ChatScreenFragment;->mContactIdMap:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$2100(Lcom/google/android/talk/fragments/ChatScreenFragment;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 943
    :cond_1e
    return-wide v0
.end method

.method public getMessageBar()Landroid/view/View;
    .registers 2

    .prologue
    .line 767
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$1;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    #getter for: Lcom/google/android/talk/fragments/ChatScreenFragment;->mMessageBar:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$1400(Lcom/google/android/talk/fragments/ChatScreenFragment;)Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public handleMenuItem(Lcom/google/android/talk/ChatView;Landroid/view/MenuItem;I)Z
    .registers 11
    .parameter "cv"
    .parameter "item"
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 772
    if-nez p1, :cond_6

    move v3, v4

    .line 865
    :cond_5
    :goto_5
    return v3

    .line 775
    :cond_6
    invoke-virtual {p1}, Lcom/google/android/talk/ChatView;->getContact()Ljava/lang/String;

    move-result-object v2

    .line 776
    .local v2, username:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/android/talk/ChatView;->getImSession()Lcom/google/android/gtalkservice/IImSession;

    move-result-object v1

    .line 778
    .local v1, session:Lcom/google/android/gtalkservice/IImSession;
    sparse-switch p3, :sswitch_data_c2

    .line 861
    const-string v5, "talk"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ">>>>>>>>>>>>> no handler for menu item: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez p2, :cond_b9

    const-string v3, "NULL"

    :goto_26
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_31
    move v3, v4

    .line 865
    goto :goto_5

    .line 780
    :sswitch_33
    invoke-virtual {p1}, Lcom/google/android/talk/ChatView;->startVoiceChat()V

    goto :goto_5

    .line 784
    :sswitch_37
    invoke-virtual {p1}, Lcom/google/android/talk/ChatView;->startVideoChat()V

    goto :goto_5

    .line 788
    :sswitch_3b
    invoke-virtual {p1}, Lcom/google/android/talk/ChatView;->resumeVideoChat()V

    goto :goto_5

    .line 792
    :sswitch_3f
    invoke-virtual {p1}, Lcom/google/android/talk/ChatView;->endVideoOrVoiceChat()V

    goto :goto_5

    .line 796
    :sswitch_43
    invoke-virtual {p1}, Lcom/google/android/talk/ChatView;->endVideoOrVoiceChat()V

    goto :goto_5

    .line 800
    :sswitch_47
    iget-object v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$1;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-virtual {v4}, Lcom/google/android/talk/fragments/ChatScreenFragment;->addToChat()V

    goto :goto_5

    .line 804
    :sswitch_4d
    iget-object v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$1;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-virtual {v4}, Lcom/google/android/talk/fragments/ChatScreenFragment;->leaveChat()V

    goto :goto_5

    .line 808
    :sswitch_53
    iget-object v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$1;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-virtual {v4}, Lcom/google/android/talk/fragments/ChatScreenFragment;->clearChat()V

    goto :goto_5

    .line 812
    :sswitch_59
    new-instance v0, Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;

    invoke-direct {v0}, Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;-><init>()V

    .line 813
    .local v0, buddyInfo:Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;
    invoke-virtual {p1}, Lcom/google/android/talk/ChatView;->getChatsTableContactId()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;->mContactId:J

    .line 814
    invoke-virtual {p1}, Lcom/google/android/talk/ChatView;->getAccountId()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;->mAccountId:J

    .line 815
    invoke-virtual {p1}, Lcom/google/android/talk/ChatView;->getContact()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;->mUsername:Ljava/lang/String;

    .line 816
    iget-object v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$1;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    #getter for: Lcom/google/android/talk/fragments/ChatScreenFragment;->mController:Lcom/google/android/talk/fragments/ChatScreenFragment$Controller;
    invoke-static {v4}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$1500(Lcom/google/android/talk/fragments/ChatScreenFragment;)Lcom/google/android/talk/fragments/ChatScreenFragment$Controller;

    move-result-object v4

    invoke-interface {v4, v0}, Lcom/google/android/talk/fragments/ChatScreenFragment$Controller;->onShowContactInfo(Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;)V

    goto :goto_5

    .line 820
    .end local v0           #buddyInfo:Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;
    :sswitch_7a
    if-eqz v2, :cond_5

    if-eqz v1, :cond_5

    .line 824
    :try_start_7e
    iget-object v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$1;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-virtual {v4}, Lcom/google/android/talk/fragments/ChatScreenFragment;->leaveChat()V

    .line 825
    invoke-interface {v1, v2}, Lcom/google/android/gtalkservice/IImSession;->blockContact(Ljava/lang/String;)V
    :try_end_86
    .catch Landroid/os/RemoteException; {:try_start_7e .. :try_end_86} :catch_bf

    .line 829
    :goto_86
    iget-object v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$1;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-virtual {v4}, Lcom/google/android/talk/fragments/ChatScreenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/android/talk/ChatView;->getChatsTableContactId()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/google/android/talk/DatabaseUtils;->removeChatsByContactId(Landroid/content/ContentResolver;J)I

    goto/16 :goto_5

    .line 833
    :sswitch_99
    if-eqz v2, :cond_5

    .line 838
    :try_start_9b
    iget-object v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$1;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-virtual {v4}, Lcom/google/android/talk/fragments/ChatScreenFragment;->leaveChat()V

    .line 839
    invoke-interface {v1, v2}, Lcom/google/android/gtalkservice/IImSession;->removeContact(Ljava/lang/String;)V
    :try_end_a3
    .catch Landroid/os/RemoteException; {:try_start_9b .. :try_end_a3} :catch_a5

    goto/16 :goto_5

    .line 840
    :catch_a5
    move-exception v4

    goto/16 :goto_5

    .line 846
    :sswitch_a8
    iget-object v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$1;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-virtual {v4}, Lcom/google/android/talk/fragments/ChatScreenFragment;->toggleOtr()V

    goto/16 :goto_5

    .line 850
    :sswitch_af
    invoke-virtual {p1}, Lcom/google/android/talk/ChatView;->toggleMute()V

    goto/16 :goto_31

    .line 857
    :sswitch_b4
    invoke-virtual {p1, p3}, Lcom/google/android/talk/ChatView;->handleAudioChoice(I)V

    goto/16 :goto_31

    .line 861
    :cond_b9
    invoke-interface {p2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    goto/16 :goto_26

    .line 826
    :catch_bf
    move-exception v4

    goto :goto_86

    .line 778
    nop

    :sswitch_data_c2
    .sparse-switch
        0x7f10005e -> :sswitch_3f
        0x7f10005f -> :sswitch_43
        0x7f100062 -> :sswitch_af
        0x7f100063 -> :sswitch_3b
        0x7f1000b6 -> :sswitch_b4
        0x7f1000b7 -> :sswitch_b4
        0x7f1000b8 -> :sswitch_b4
        0x7f1000b9 -> :sswitch_b4
        0x7f1000ba -> :sswitch_7a
        0x7f1000bb -> :sswitch_99
        0x7f1000c2 -> :sswitch_37
        0x7f1000c3 -> :sswitch_33
        0x7f1000c5 -> :sswitch_4d
        0x7f1000c6 -> :sswitch_a8
        0x7f1000c7 -> :sswitch_59
        0x7f1000c8 -> :sswitch_47
        0x7f1000c9 -> :sswitch_53
    .end sparse-switch
.end method

.method public invalidateImSession()V
    .registers 3

    .prologue
    .line 900
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$1;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    const-string v1, "invalidateImSession"

    #calls: Lcom/google/android/talk/fragments/ChatScreenFragment;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$1200(Lcom/google/android/talk/fragments/ChatScreenFragment;Ljava/lang/String;)V

    .line 902
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$1;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    new-instance v1, Lcom/google/android/talk/fragments/ChatScreenFragment$1$1;

    invoke-direct {v1, p0}, Lcom/google/android/talk/fragments/ChatScreenFragment$1$1;-><init>(Lcom/google/android/talk/fragments/ChatScreenFragment$1;)V

    #calls: Lcom/google/android/talk/fragments/ChatScreenFragment;->foreachChat(Lcom/google/android/talk/fragments/ChatScreenFragment$ViewRunnable;)V
    invoke-static {v0, v1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$1800(Lcom/google/android/talk/fragments/ChatScreenFragment;Lcom/google/android/talk/fragments/ChatScreenFragment$ViewRunnable;)V

    .line 917
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .registers 4
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 948
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$1;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/talk/fragments/ChatScreenFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 949
    return-void
.end method

.method public startVideoChatAnimation()Z
    .registers 2

    .prologue
    .line 928
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$1;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    #calls: Lcom/google/android/talk/fragments/ChatScreenFragment;->hideKeyboard()V
    invoke-static {v0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$2000(Lcom/google/android/talk/fragments/ChatScreenFragment;)V

    .line 929
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$1;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    #getter for: Lcom/google/android/talk/fragments/ChatScreenFragment;->mController:Lcom/google/android/talk/fragments/ChatScreenFragment$Controller;
    invoke-static {v0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$1500(Lcom/google/android/talk/fragments/ChatScreenFragment;)Lcom/google/android/talk/fragments/ChatScreenFragment$Controller;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/talk/fragments/ChatScreenFragment$Controller;->onVideoChatStarted()Z

    move-result v0

    return v0
.end method

.method public update(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    .line 878
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$1;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    #calls: Lcom/google/android/talk/fragments/ChatScreenFragment;->getActiveChat()Lcom/google/android/talk/ChatView;
    invoke-static {v2}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$1700(Lcom/google/android/talk/fragments/ChatScreenFragment;)Lcom/google/android/talk/ChatView;

    move-result-object v1

    .line 879
    .local v1, cv:Lcom/google/android/talk/ChatView;
    if-eq p1, v1, :cond_9

    .line 896
    :cond_8
    :goto_8
    return-void

    .line 885
    :cond_9
    invoke-virtual {v1}, Lcom/google/android/talk/ChatView;->getContact()Ljava/lang/String;

    move-result-object v0

    .line 886
    .local v0, contact:Ljava/lang/String;
    if-eqz v0, :cond_8

    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$1;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    #getter for: Lcom/google/android/talk/fragments/ChatScreenFragment;->mTargetContact:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$400(Lcom/google/android/talk/fragments/ChatScreenFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 892
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$1;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-virtual {v2, v1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->updateTitle(Landroid/view/View;)V

    .line 893
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$1;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    #getter for: Lcom/google/android/talk/fragments/ChatScreenFragment;->mController:Lcom/google/android/talk/fragments/ChatScreenFragment$Controller;
    invoke-static {v2}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$1500(Lcom/google/android/talk/fragments/ChatScreenFragment;)Lcom/google/android/talk/fragments/ChatScreenFragment$Controller;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/talk/ChatView;->isOffTheRecord()Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/google/android/talk/fragments/ChatScreenFragment$Controller;->updateOtrStatus(Z)V

    .line 895
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$1;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-virtual {v2}, Lcom/google/android/talk/fragments/ChatScreenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_8
.end method

.method public willConvertToGroupChat(Lcom/google/android/talk/ChatView;Ljava/lang/String;)V
    .registers 4
    .parameter "cv"
    .parameter "room"

    .prologue
    .line 959
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$1;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    #getter for: Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatList:Lcom/google/android/talk/util/ChatList;
    invoke-static {v0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$1300(Lcom/google/android/talk/fragments/ChatScreenFragment;)Lcom/google/android/talk/util/ChatList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/talk/util/ChatList;->suspendRequery()V

    .line 960
    return-void
.end method
