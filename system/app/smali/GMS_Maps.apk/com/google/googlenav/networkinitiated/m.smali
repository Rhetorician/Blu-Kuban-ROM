.class public Lcom/google/googlenav/networkinitiated/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/networkinitiated/b;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/google/googlenav/networkinitiated/m;->a:Landroid/content/Context;

    .line 24
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)Z
    .registers 4
    .parameter

    .prologue
    .line 28
    const-string v0, "uploadHistory"

    const-string v1, "op"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public b(Landroid/content/Intent;)V
    .registers 5
    .parameter

    .prologue
    .line 36
    const-string v0, "op"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    const-string v1, "uploadHistory"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 38
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/googlenav/networkinitiated/m;->a:Landroid/content/Context;

    const-class v2, Lcom/google/googlenav/friend/reporting/LocationReportingService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 39
    iget-object v1, p0, Lcom/google/googlenav/networkinitiated/m;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 41
    :cond_1c
    return-void
.end method
