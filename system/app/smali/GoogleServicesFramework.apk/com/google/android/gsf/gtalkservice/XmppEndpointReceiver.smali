.class public Lcom/google/android/gsf/gtalkservice/XmppEndpointReceiver;
.super Landroid/content/BroadcastReceiver;
.source "XmppEndpointReceiver.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 20
    const-class v0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 21
    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 22
    return-void
.end method
