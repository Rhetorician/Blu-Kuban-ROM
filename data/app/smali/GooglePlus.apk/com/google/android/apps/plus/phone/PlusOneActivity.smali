.class public Lcom/google/android/apps/plus/phone/PlusOneActivity;
.super Lcom/google/android/apps/plus/fragments/EsFragmentActivity;
.source "PlusOneActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private mApiInfo:Lcom/google/android/apps/plus/network/ApiaryApiInfo;

.field private mFragment:Lcom/google/android/apps/plus/fragments/PlusOneFragment;

.field private mInsert:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/phone/PlusOneActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/PlusOneActivity;->recordExitedAction()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/phone/PlusOneActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/PlusOneActivity;->mInsert:Z

    return v0
.end method

.method private recordErrorAndFinish()V
    .registers 4

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PlusOneActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PlusOneActivity;->mApiInfo:Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    invoke-static {v1}, Lcom/google/android/apps/plus/external/PlatformContractUtils;->getCallingPackageAnalytics(Lcom/google/android/apps/plus/network/ApiaryApiInfo;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/PlusOneActivity;->getAnalyticsInfo(Ljava/util/Map;)Lcom/google/android/apps/plus/analytics/AnalyticsInfo;

    move-result-object v1

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->PLATFORM_ERROR_PLUSONE:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-static {p0, v0, v1, v2}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->recordEvent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/analytics/AnalyticsInfo;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)J

    .line 153
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PlusOneActivity;->finish()V

    .line 154
    return-void
.end method

.method private recordExitedAction()V
    .registers 2

    .prologue
    .line 229
    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/PlusOneActivity;->mInsert:Z

    if-eqz v0, :cond_a

    .line 232
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->PLATFORM_PLUSONE_CONFIRMED:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/PlusOneActivity;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 238
    :goto_9
    return-void

    .line 236
    :cond_a
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->PLATFORM_UNDO_PLUSONE_CANCELED:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/PlusOneActivity;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    goto :goto_9
.end method


# virtual methods
.method protected getAccount()Lcom/google/android/apps/plus/content/EsAccount;
    .registers 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PlusOneActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    return-object v0
.end method

.method protected getViewForLogging()Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;
    .registers 2

    .prologue
    .line 172
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->PLUSONE:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    return-object v0
.end method

.method public onAttachedToWindow()V
    .registers 3

    .prologue
    .line 216
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onAttachedToWindow()V

    .line 218
    const v1, 0x7f090277

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/PlusOneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 219
    .local v0, progressBarView:Landroid/widget/ProgressBar;
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PlusOneActivity;->mFragment:Lcom/google/android/apps/plus/fragments/PlusOneFragment;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->setProgressBar(Landroid/widget/ProgressBar;)V

    .line 220
    return-void
.end method

.method public onBackPressed()V
    .registers 1

    .prologue
    .line 224
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/PlusOneActivity;->recordExitedAction()V

    .line 225
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onBackPressed()V

    .line 226
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 205
    packed-switch p2, :pswitch_data_c

    .line 212
    :goto_3
    return-void

    .line 207
    :pswitch_4
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/PlusOneActivity;->setResult(I)V

    .line 208
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PlusOneActivity;->finish()V

    goto :goto_3

    .line 205
    :pswitch_data_c
    .packed-switch -0x3
        :pswitch_4
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 16
    .parameter "savedInstanceState"

    .prologue
    const v13, 0x7f0901b3

    const/4 v10, 0x0

    .line 52
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const v11, 0x7f03009a

    invoke-virtual {p0, v11}, Lcom/google/android/apps/plus/phone/PlusOneActivity;->setContentView(I)V

    .line 56
    invoke-virtual {p0, v10}, Lcom/google/android/apps/plus/phone/PlusOneActivity;->showTitlebar(Z)V

    .line 57
    const v11, 0x7f080040

    invoke-virtual {p0, v11}, Lcom/google/android/apps/plus/phone/PlusOneActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/google/android/apps/plus/phone/PlusOneActivity;->setTitlebarTitle(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PlusOneActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 60
    .local v5, intent:Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 64
    .local v1, args:Landroid/os/Bundle;
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAccountsData;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v11

    iput-object v11, p0, Lcom/google/android/apps/plus/phone/PlusOneActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 65
    iget-object v11, p0, Lcom/google/android/apps/plus/phone/PlusOneActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {p0, v11}, Lcom/google/android/apps/plus/phone/SignOnActivity;->finishIfNoAccount(Landroid/app/Activity;Lcom/google/android/apps/plus/content/EsAccount;)Z

    move-result v11

    if-eqz v11, :cond_32

    .line 147
    :goto_31
    return-void

    .line 69
    :cond_32
    const-string v11, "PlusOneFragment#mAccount"

    iget-object v12, p0, Lcom/google/android/apps/plus/phone/PlusOneActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v1, v11, v12}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 72
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PlusOneActivity;->getCallingPackage()Ljava/lang/String;

    move-result-object v2

    .line 73
    .local v2, callingPackage:Ljava/lang/String;
    const-string v11, "from_signup"

    invoke-virtual {v5, v11, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 74
    .local v3, fromSignup:Z
    const-string v11, "calling_package"

    invoke-virtual {v5, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 75
    .local v7, thirdPartyPackageName:Ljava/lang/String;
    const/4 v11, 0x0

    sget-object v12, Lcom/google/android/apps/plus/util/Property;->PLUS_CLIENTID:Lcom/google/android/apps/plus/util/Property;

    invoke-virtual {v12}, Lcom/google/android/apps/plus/util/Property;->get()Ljava/lang/String;

    move-result-object v12

    invoke-static {p0, v5, v11, v12, v7}, Lcom/google/android/apps/plus/external/PlatformContractUtils;->generateApiaryApiInfo(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    move-result-object v11

    iput-object v11, p0, Lcom/google/android/apps/plus/phone/PlusOneActivity;->mApiInfo:Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    .line 78
    if-nez p1, :cond_67

    .line 79
    iget-object v11, p0, Lcom/google/android/apps/plus/phone/PlusOneActivity;->mApiInfo:Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    invoke-static {v11}, Lcom/google/android/apps/plus/external/PlatformContractUtils;->getCallingPackageAnalytics(Lcom/google/android/apps/plus/network/ApiaryApiInfo;)Ljava/util/Map;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/google/android/apps/plus/phone/PlusOneActivity;->getAnalyticsInfo(Ljava/util/Map;)Lcom/google/android/apps/plus/analytics/AnalyticsInfo;

    move-result-object v11

    sget-object v12, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->PLATFORM_CLICKED_PLUSONE:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-virtual {p0, v11, v12}, Lcom/google/android/apps/plus/phone/PlusOneActivity;->recordUserAction(Lcom/google/android/apps/plus/analytics/AnalyticsInfo;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 84
    :cond_67
    if-eqz v3, :cond_79

    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PlusOneActivity;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_79

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_7d

    .line 86
    :cond_79
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/PlusOneActivity;->recordErrorAndFinish()V

    goto :goto_31

    .line 90
    :cond_7d
    iget-object v11, p0, Lcom/google/android/apps/plus/phone/PlusOneActivity;->mApiInfo:Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    invoke-virtual {v11}, Lcom/google/android/apps/plus/network/ApiaryApiInfo;->getSourceInfo()Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    move-result-object v6

    .line 91
    .local v6, source:Lcom/google/android/apps/plus/network/ApiaryApiInfo;
    if-eqz v6, :cond_b7

    invoke-virtual {v6}, Lcom/google/android/apps/plus/network/ApiaryApiInfo;->getApiKey()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_b7

    invoke-virtual {v6}, Lcom/google/android/apps/plus/network/ApiaryApiInfo;->getCertificate()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_b7

    invoke-virtual {v6}, Lcom/google/android/apps/plus/network/ApiaryApiInfo;->getClientId()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_b7

    invoke-virtual {v6}, Lcom/google/android/apps/plus/network/ApiaryApiInfo;->getSdkVersion()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_b7

    invoke-virtual {v6}, Lcom/google/android/apps/plus/network/ApiaryApiInfo;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_bc

    .line 96
    :cond_b7
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/PlusOneActivity;->recordErrorAndFinish()V

    goto/16 :goto_31

    .line 99
    :cond_bc
    const-string v11, "PlusOneFragment#mApiaryApiInfo"

    iget-object v12, p0, Lcom/google/android/apps/plus/phone/PlusOneActivity;->mApiInfo:Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    invoke-virtual {v1, v11, v12}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 101
    const-string v11, "com.google.circles.platform.intent.extra.TOKEN"

    invoke-virtual {v5, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 103
    .local v8, token:Ljava/lang/String;
    const-string v11, "com.google.circles.platform.intent.extra.ENTITY"

    invoke-virtual {v5, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 105
    .local v9, url:Ljava/lang/String;
    const-string v11, "com.google.circles.platform.intent.extra.ACTION"

    invoke-virtual {v5, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, action:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_e7

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_e7

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_ec

    .line 109
    :cond_e7
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/PlusOneActivity;->recordErrorAndFinish()V

    goto/16 :goto_31

    .line 112
    :cond_ec
    const-string v11, "delete"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_f5

    const/4 v10, 0x1

    :cond_f5
    iput-boolean v10, p0, Lcom/google/android/apps/plus/phone/PlusOneActivity;->mInsert:Z

    .line 114
    const-string v10, "PlusOneFragment#mToken"

    invoke-virtual {v1, v10, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v10, "PlusOneFragment#mUrl"

    invoke-virtual {v1, v10, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v10, "PlusOneFragment#mInsert"

    iget-boolean v11, p0, Lcom/google/android/apps/plus/phone/PlusOneActivity;->mInsert:Z

    invoke-virtual {v1, v10, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 118
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PlusOneActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v10

    const-string v11, "PlusOneActivity#Fragment"

    invoke-virtual {v10, v11}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v10

    check-cast v10, Lcom/google/android/apps/plus/fragments/PlusOneFragment;

    iput-object v10, p0, Lcom/google/android/apps/plus/phone/PlusOneActivity;->mFragment:Lcom/google/android/apps/plus/fragments/PlusOneFragment;

    .line 120
    iget-object v10, p0, Lcom/google/android/apps/plus/phone/PlusOneActivity;->mFragment:Lcom/google/android/apps/plus/fragments/PlusOneFragment;

    if-nez v10, :cond_138

    .line 121
    new-instance v10, Lcom/google/android/apps/plus/fragments/PlusOneFragment;

    invoke-direct {v10}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;-><init>()V

    iput-object v10, p0, Lcom/google/android/apps/plus/phone/PlusOneActivity;->mFragment:Lcom/google/android/apps/plus/fragments/PlusOneFragment;

    .line 122
    iget-object v10, p0, Lcom/google/android/apps/plus/phone/PlusOneActivity;->mFragment:Lcom/google/android/apps/plus/fragments/PlusOneFragment;

    invoke-virtual {v10, v1}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->setArguments(Landroid/os/Bundle;)V

    .line 123
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PlusOneActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v4

    .line 124
    .local v4, ft:Landroid/support/v4/app/FragmentTransaction;
    iget-object v10, p0, Lcom/google/android/apps/plus/phone/PlusOneActivity;->mFragment:Lcom/google/android/apps/plus/fragments/PlusOneFragment;

    const-string v11, "PlusOneActivity#Fragment"

    invoke-virtual {v4, v13, v10, v11}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 125
    invoke-virtual {v4}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 129
    .end local v4           #ft:Landroid/support/v4/app/FragmentTransaction;
    :cond_138
    const v10, 0x7f0901b2

    invoke-virtual {p0, v10}, Lcom/google/android/apps/plus/phone/PlusOneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    new-instance v11, Lcom/google/android/apps/plus/phone/PlusOneActivity$1;

    invoke-direct {v11, p0}, Lcom/google/android/apps/plus/phone/PlusOneActivity$1;-><init>(Lcom/google/android/apps/plus/phone/PlusOneActivity;)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    invoke-virtual {p0, v13}, Lcom/google/android/apps/plus/phone/PlusOneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    new-instance v11, Lcom/google/android/apps/plus/phone/PlusOneActivity$2;

    invoke-direct {v11, p0}, Lcom/google/android/apps/plus/phone/PlusOneActivity$2;-><init>(Lcom/google/android/apps/plus/phone/PlusOneActivity;)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_31
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 6
    .parameter "dialogId"
    .parameter "args"

    .prologue
    .line 188
    packed-switch p1, :pswitch_data_22

    .line 197
    const/4 v1, 0x0

    :goto_4
    return-object v1

    .line 190
    :pswitch_5
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 191
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0801ce

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 193
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_4

    .line 188
    nop

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 161
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onResume()V

    .line 162
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PlusOneActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {p0, v0}, Lcom/google/android/apps/plus/phone/SignOnActivity;->finishIfNoAccount(Landroid/app/Activity;Lcom/google/android/apps/plus/content/EsAccount;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 165
    :cond_b
    return-void
.end method

.method protected showTitlebar(ZZ)V
    .registers 8
    .parameter "showAnimation"
    .parameter "enableUp"

    .prologue
    const/4 v4, 0x0

    .line 245
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->showTitlebar(ZZ)V

    .line 247
    const v2, 0x7f090270

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/phone/PlusOneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 248
    .local v1, titleLayout:Landroid/view/View;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PlusOneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0196

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 250
    .local v0, paddingLeft:I
    invoke-virtual {v1, v0, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 251
    return-void
.end method
