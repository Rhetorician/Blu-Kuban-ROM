.class Lcom/samsung/client/DeviceManagement$4;
.super Ljava/lang/Object;
.source "DeviceManagement.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/client/DeviceManagement;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/client/DeviceManagement;


# direct methods
.method constructor <init>(Lcom/samsung/client/DeviceManagement;)V
    .registers 2
    .parameter

    .prologue
    .line 213
    iput-object p1, p0, Lcom/samsung/client/DeviceManagement$4;->this$0:Lcom/samsung/client/DeviceManagement;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 7
    .parameter "preference"

    .prologue
    const/4 v0, 0x0

    .line 216
    sget v1, Lcom/samsung/client/DMApp;->mCallState:I

    if-eqz v1, :cond_c

    .line 217
    iget-object v0, p0, Lcom/samsung/client/DeviceManagement$4;->this$0:Lcom/samsung/client/DeviceManagement;

    #calls: Lcom/samsung/client/DeviceManagement;->showCallError()V
    invoke-static {v0}, Lcom/samsung/client/DeviceManagement;->access$200(Lcom/samsung/client/DeviceManagement;)V

    .line 218
    const/4 v0, 0x1

    .line 242
    :cond_b
    :goto_b
    return v0

    .line 221
    :cond_c
    sget-object v1, Lcom/samsung/client/DeviceManagement;->root:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 223
    iget-object v1, p0, Lcom/samsung/client/DeviceManagement$4;->this$0:Lcom/samsung/client/DeviceManagement;

    #getter for: Lcom/samsung/client/DeviceManagement;->mApp:Lcom/samsung/client/DMApp;
    invoke-static {v1}, Lcom/samsung/client/DeviceManagement;->access$000(Lcom/samsung/client/DeviceManagement;)Lcom/samsung/client/DMApp;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/samsung/client/DMApp;->setSessionType(I)V

    .line 224
    iget-object v1, p0, Lcom/samsung/client/DeviceManagement$4;->this$0:Lcom/samsung/client/DeviceManagement;

    #getter for: Lcom/samsung/client/DeviceManagement;->mApp:Lcom/samsung/client/DMApp;
    invoke-static {v1}, Lcom/samsung/client/DeviceManagement;->access$000(Lcom/samsung/client/DeviceManagement;)Lcom/samsung/client/DMApp;

    move-result-object v1

    iput-boolean v0, v1, Lcom/samsung/client/DMApp;->userCancel:Z

    .line 226
    const-wide/16 v1, 0x0

    iget-object v3, p0, Lcom/samsung/client/DeviceManagement$4;->this$0:Lcom/samsung/client/DeviceManagement;

    #getter for: Lcom/samsung/client/DeviceManagement;->mApp:Lcom/samsung/client/DMApp;
    invoke-static {v3}, Lcom/samsung/client/DeviceManagement;->access$000(Lcom/samsung/client/DeviceManagement;)Lcom/samsung/client/DMApp;

    move-result-object v3

    const-string v4, "prl_enable"

    invoke-virtual {v3, v4}, Lcom/samsung/client/DMApp;->readFromPreference(Ljava/lang/String;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_b

    .line 231
    iget-object v1, p0, Lcom/samsung/client/DeviceManagement$4;->this$0:Lcom/samsung/client/DeviceManagement;

    #getter for: Lcom/samsung/client/DeviceManagement;->mApp:Lcom/samsung/client/DMApp;
    invoke-static {v1}, Lcom/samsung/client/DeviceManagement;->access$000(Lcom/samsung/client/DeviceManagement;)Lcom/samsung/client/DMApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/client/DMApp;->checkAirplaneMode()Z

    move-result v1

    if-nez v1, :cond_b

    .line 235
    iget-object v1, p0, Lcom/samsung/client/DeviceManagement$4;->this$0:Lcom/samsung/client/DeviceManagement;

    #getter for: Lcom/samsung/client/DeviceManagement;->mApp:Lcom/samsung/client/DMApp;
    invoke-static {v1}, Lcom/samsung/client/DeviceManagement;->access$000(Lcom/samsung/client/DeviceManagement;)Lcom/samsung/client/DMApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/client/DMApp;->checkDunEnabled()Z

    move-result v1

    if-nez v1, :cond_b

    .line 239
    iget-object v1, p0, Lcom/samsung/client/DeviceManagement$4;->this$0:Lcom/samsung/client/DeviceManagement;

    #getter for: Lcom/samsung/client/DeviceManagement;->mApp:Lcom/samsung/client/DMApp;
    invoke-static {v1}, Lcom/samsung/client/DeviceManagement;->access$000(Lcom/samsung/client/DeviceManagement;)Lcom/samsung/client/DMApp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/client/DMApp;->setHfaInitiated(Z)V

    .line 241
    iget-object v1, p0, Lcom/samsung/client/DeviceManagement$4;->this$0:Lcom/samsung/client/DeviceManagement;

    #getter for: Lcom/samsung/client/DeviceManagement;->mApp:Lcom/samsung/client/DMApp;
    invoke-static {v1}, Lcom/samsung/client/DeviceManagement;->access$000(Lcom/samsung/client/DeviceManagement;)Lcom/samsung/client/DMApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/client/DMApp;->prlStartSession()V

    goto :goto_b
.end method
