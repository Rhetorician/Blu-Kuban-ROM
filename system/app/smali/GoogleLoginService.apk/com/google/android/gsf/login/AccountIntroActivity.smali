.class public Lcom/google/android/gsf/login/AccountIntroActivity;
.super Lcom/google/android/gsf/login/BaseActivity;
.source "AccountIntroActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/google/android/gsf/login/BaseActivity;-><init>()V

    return-void
.end method

.method private afterAccountIntro(I)V
    .registers 4
    .parameter "resultCode"

    .prologue
    const/4 v1, 0x0

    .line 47
    sparse-switch p1, :sswitch_data_30

    .line 71
    :goto_4
    return-void

    .line 49
    :sswitch_5
    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/AccountIntroActivity;->setResult(I)V

    .line 50
    invoke-virtual {p0}, Lcom/google/android/gsf/login/AccountIntroActivity;->finish()V

    goto :goto_4

    .line 54
    :sswitch_c
    invoke-virtual {p0}, Lcom/google/android/gsf/login/AccountIntroActivity;->accountAuthenticatorResultForSkip()V

    .line 55
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/AccountIntroActivity;->setResult(I)V

    .line 56
    invoke-virtual {p0}, Lcom/google/android/gsf/login/AccountIntroActivity;->finish()V

    goto :goto_4

    .line 60
    :sswitch_17
    const/16 v0, 0x3f7

    iput v0, p0, Lcom/google/android/gsf/login/AccountIntroActivity;->mNextRequest:I

    .line 61
    iget-object v0, p0, Lcom/google/android/gsf/login/AccountIntroActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iput-boolean v1, v0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mCreatingAccount:Z

    .line 62
    invoke-direct {p0}, Lcom/google/android/gsf/login/AccountIntroActivity;->checkConnectionAndCheckin()V

    goto :goto_4

    .line 66
    :sswitch_23
    const/16 v0, 0x3f6

    iput v0, p0, Lcom/google/android/gsf/login/AccountIntroActivity;->mNextRequest:I

    .line 67
    iget-object v0, p0, Lcom/google/android/gsf/login/AccountIntroActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mCreatingAccount:Z

    .line 68
    invoke-direct {p0}, Lcom/google/android/gsf/login/AccountIntroActivity;->checkConnectionAndCheckin()V

    goto :goto_4

    .line 47
    :sswitch_data_30
    .sparse-switch
        0x0 -> :sswitch_5
        0x7 -> :sswitch_c
        0x8 -> :sswitch_17
        0x9 -> :sswitch_23
    .end sparse-switch
.end method

.method private afterWaitForCheckin()V
    .registers 3

    .prologue
    .line 96
    iget v0, p0, Lcom/google/android/gsf/login/AccountIntroActivity;->mNextRequest:I

    const/16 v1, 0x3f6

    if-ne v0, v1, :cond_13

    .line 97
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/CreateAccountActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 98
    iget v1, p0, Lcom/google/android/gsf/login/AccountIntroActivity;->mNextRequest:I

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/AccountIntroActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 105
    :goto_12
    return-void

    .line 101
    :cond_13
    iget-object v0, p0, Lcom/google/android/gsf/login/AccountIntroActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mError:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    .line 102
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/LoginActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 103
    iget v1, p0, Lcom/google/android/gsf/login/AccountIntroActivity;->mNextRequest:I

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/AccountIntroActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_12
.end method

.method private afterWifi()V
    .registers 3

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/google/android/gsf/login/AccountIntroActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gsf/login/WaitForDeviceCountryActivity;->haveCheckin(Landroid/content/ContentResolver;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 87
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/WaitForDeviceCountryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 88
    const/16 v1, 0x3f0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/AccountIntroActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 93
    :goto_16
    return-void

    .line 92
    :cond_17
    invoke-direct {p0}, Lcom/google/android/gsf/login/AccountIntroActivity;->afterWaitForCheckin()V

    goto :goto_16
.end method

.method private checkConnectionAndCheckin()V
    .registers 3

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/google/android/gsf/login/AccountIntroActivity;->hasNetworkConnection()Z

    move-result v0

    if-nez v0, :cond_13

    .line 76
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/SetupWirelessActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 77
    const/16 v1, 0x3fd

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/AccountIntroActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 81
    :goto_12
    return-void

    .line 80
    :cond_13
    invoke-direct {p0}, Lcom/google/android/gsf/login/AccountIntroActivity;->afterWifi()V

    goto :goto_12
.end method

.method private maybeSkipAccountSetup()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 186
    sget-object v1, Lcom/google/android/gsf/login/AccountIntroActivity;->sTestHooks:Lcom/google/android/gsf/loginservice/BaseActivity$TestHooks;

    iget-boolean v1, v1, Lcom/google/android/gsf/loginservice/BaseActivity$TestHooks;->mSkipExistingAccountCheck:Z

    if-nez v1, :cond_25

    .line 187
    iget-object v1, p0, Lcom/google/android/gsf/login/AccountIntroActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-boolean v1, v1, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mSetupWizard:Z

    if-eqz v1, :cond_25

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const-string v2, "com.google"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_25

    .line 190
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/AccountIntroActivity;->setResult(I)V

    .line 191
    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/AccountIntroActivity;->onSetupComplete(Z)V

    .line 192
    invoke-virtual {p0}, Lcom/google/android/gsf/login/AccountIntroActivity;->finish()V

    .line 193
    const/4 v0, 0x1

    .line 196
    :cond_25
    return v0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v2, 0x408

    const/4 v4, -0x1

    .line 110
    sparse-switch p1, :sswitch_data_be

    .line 170
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gsf/login/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 173
    :goto_9
    return-void

    .line 113
    :sswitch_a
    invoke-direct {p0, p2}, Lcom/google/android/gsf/login/AccountIntroActivity;->afterAccountIntro(I)V

    goto :goto_9

    .line 118
    :sswitch_e
    if-nez p2, :cond_1b

    .line 120
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/AccountIntroUIActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 121
    invoke-virtual {p0, v0, v2}, Lcom/google/android/gsf/login/AccountIntroActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_9

    .line 123
    :cond_1b
    const-string v0, "GLSActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AccountIntro: activity result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-virtual {p0}, Lcom/google/android/gsf/login/AccountIntroActivity;->isSetupWizard()Z

    move-result v0

    if-eqz v0, :cond_9d

    .line 125
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 126
    const-string v0, "nameCompleted"

    iget-object v2, p0, Lcom/google/android/gsf/login/AccountIntroActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-boolean v2, v2, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mNameActivityCompleted:Z

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 127
    const-string v0, "photoCompleted"

    iget-object v2, p0, Lcom/google/android/gsf/login/AccountIntroActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-boolean v2, v2, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mPhotoActivityCompleted:Z

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 129
    sget-object v0, Lcom/google/android/gsf/login/BackendStub$Key;->FIRST_NAME:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v0}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gsf/login/AccountIntroActivity;->getUserData()Ljava/util/HashMap;

    move-result-object v0

    sget-object v3, Lcom/google/android/gsf/login/BackendStub$Key;->FIRST_NAME:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v3}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    sget-object v0, Lcom/google/android/gsf/login/BackendStub$Key;->LAST_NAME:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v0}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gsf/login/AccountIntroActivity;->getUserData()Ljava/util/HashMap;

    move-result-object v0

    sget-object v3, Lcom/google/android/gsf/login/BackendStub$Key;->LAST_NAME:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v3}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    invoke-virtual {p0, v4, v1}, Lcom/google/android/gsf/login/AccountIntroActivity;->setResult(ILandroid/content/Intent;)V

    .line 137
    :goto_85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gsf/login/AccountIntroActivity;->mCallAuthenticatorResponseOnFinish:Z

    .line 140
    iget-object v0, p0, Lcom/google/android/gsf/login/AccountIntroActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-object v0, v0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mActivities:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 142
    if-ne p2, v4, :cond_a1

    .line 143
    iget-object v0, p0, Lcom/google/android/gsf/login/AccountIntroActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-object v0, v0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUsername:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/AccountIntroActivity;->accountAuthenticatorResultForAdd(Ljava/lang/String;)V

    .line 148
    :goto_98
    invoke-virtual {p0}, Lcom/google/android/gsf/login/AccountIntroActivity;->finish()V

    goto/16 :goto_9

    .line 135
    :cond_9d
    invoke-virtual {p0, p2}, Lcom/google/android/gsf/login/AccountIntroActivity;->setResult(I)V

    goto :goto_85

    .line 146
    :cond_a1
    invoke-virtual {p0}, Lcom/google/android/gsf/login/AccountIntroActivity;->accountAuthenticatorResultForSkip()V

    goto :goto_98

    .line 157
    :sswitch_a5
    invoke-direct {p0}, Lcom/google/android/gsf/login/AccountIntroActivity;->afterWaitForCheckin()V

    goto/16 :goto_9

    .line 161
    :sswitch_aa
    if-nez p2, :cond_b8

    .line 162
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/AccountIntroUIActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 163
    invoke-virtual {p0, v0, v2}, Lcom/google/android/gsf/login/AccountIntroActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_9

    .line 165
    :cond_b8
    invoke-direct {p0}, Lcom/google/android/gsf/login/AccountIntroActivity;->afterWifi()V

    goto/16 :goto_9

    .line 110
    nop

    :sswitch_data_be
    .sparse-switch
        0x3f0 -> :sswitch_a5
        0x3f6 -> :sswitch_e
        0x3f7 -> :sswitch_e
        0x3fd -> :sswitch_aa
        0x408 -> :sswitch_a
    .end sparse-switch
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 177
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/AccountIntroActivity;->setResult(I)V

    .line 178
    invoke-super {p0}, Lcom/google/android/gsf/login/BaseActivity;->onBackPressed()V

    .line 179
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-direct {p0}, Lcom/google/android/gsf/login/AccountIntroActivity;->maybeSkipAccountSetup()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 44
    :cond_9
    :goto_9
    return-void

    .line 39
    :cond_a
    if-nez p1, :cond_9

    .line 40
    const-string v0, "GLSActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting account intro "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gsf/login/AccountIntroActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/AccountIntroUIActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 42
    const/16 v1, 0x408

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/AccountIntroActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_9
.end method
