.class Lcom/sec/android/app/controlpanel/activity/HelpActivity$1;
.super Ljava/lang/Object;
.source "HelpActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/controlpanel/activity/HelpActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/controlpanel/activity/HelpActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/controlpanel/activity/HelpActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/activity/HelpActivity$1;->this$0:Lcom/sec/android/app/controlpanel/activity/HelpActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/HelpActivity$1;->this$0:Lcom/sec/android/app/controlpanel/activity/HelpActivity;

    #calls: Lcom/sec/android/app/controlpanel/activity/HelpActivity;->loadPage()V
    invoke-static {v0}, Lcom/sec/android/app/controlpanel/activity/HelpActivity;->access$000(Lcom/sec/android/app/controlpanel/activity/HelpActivity;)V

    .line 37
    return-void
.end method
