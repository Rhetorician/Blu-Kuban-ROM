.class public Lcom/android/email/service/AccountService;
.super Landroid/app/Service;
.source "AccountService.java"


# instance fields
.field private final mBinder:Lcom/android/emailcommon/service/IAccountService$Stub;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 43
    new-instance v0, Lcom/android/email/service/AccountService$1;

    invoke-direct {v0, p0}, Lcom/android/email/service/AccountService$1;-><init>(Lcom/android/email/service/AccountService;)V

    iput-object v0, p0, Lcom/android/email/service/AccountService;->mBinder:Lcom/android/emailcommon/service/IAccountService$Stub;

    return-void
.end method

.method static synthetic access$000(Lcom/android/email/service/AccountService;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/email/service/AccountService;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/email/service/AccountService;->mContext:Landroid/content/Context;

    if-nez v0, :cond_6

    .line 146
    iput-object p0, p0, Lcom/android/email/service/AccountService;->mContext:Landroid/content/Context;

    .line 154
    :cond_6
    iget-object v0, p0, Lcom/android/email/service/AccountService;->mBinder:Lcom/android/emailcommon/service/IAccountService$Stub;

    return-object v0
.end method