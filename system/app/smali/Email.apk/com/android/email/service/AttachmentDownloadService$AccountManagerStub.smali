.class Lcom/android/email/service/AttachmentDownloadService$AccountManagerStub;
.super Ljava/lang/Object;
.source "AttachmentDownloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/service/AttachmentDownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccountManagerStub"
.end annotation


# instance fields
.field private final mAccountManager:Landroid/accounts/AccountManager;

.field private mNumberOfAccounts:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 153
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 154
    if-eqz p1, :cond_c

    .line 155
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/service/AttachmentDownloadService$AccountManagerStub;->mAccountManager:Landroid/accounts/AccountManager;

    .line 159
    :goto_b
    return-void

    .line 157
    :cond_c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/service/AttachmentDownloadService$AccountManagerStub;->mAccountManager:Landroid/accounts/AccountManager;

    goto :goto_b
.end method


# virtual methods
.method getNumberOfAccounts()I
    .registers 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/email/service/AttachmentDownloadService$AccountManagerStub;->mAccountManager:Landroid/accounts/AccountManager;

    if-eqz v0, :cond_c

    .line 163
    iget-object v0, p0, Lcom/android/email/service/AttachmentDownloadService$AccountManagerStub;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v0

    array-length v0, v0

    .line 165
    :goto_b
    return v0

    :cond_c
    iget v0, p0, Lcom/android/email/service/AttachmentDownloadService$AccountManagerStub;->mNumberOfAccounts:I

    goto :goto_b
.end method