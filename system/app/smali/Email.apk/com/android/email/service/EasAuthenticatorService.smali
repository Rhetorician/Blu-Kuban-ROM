.class public Lcom/android/email/service/EasAuthenticatorService;
.super Landroid/app/Service;
.source "EasAuthenticatorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/service/EasAuthenticatorService$EasAuthenticator;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 49
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .parameter "intent"

    .prologue
    .line 158
    const-string v0, "android.accounts.AccountAuthenticator"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 159
    new-instance v0, Lcom/android/email/service/EasAuthenticatorService$EasAuthenticator;

    invoke-direct {v0, p0, p0}, Lcom/android/email/service/EasAuthenticatorService$EasAuthenticator;-><init>(Lcom/android/email/service/EasAuthenticatorService;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/email/service/EasAuthenticatorService$EasAuthenticator;->getIBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 161
    :goto_15
    return-object v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method
