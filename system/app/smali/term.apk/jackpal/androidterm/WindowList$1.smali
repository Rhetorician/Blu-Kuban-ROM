.class Ljackpal/androidterm/WindowList$1;
.super Ljava/lang/Object;
.source "WindowList.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljackpal/androidterm/WindowList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljackpal/androidterm/WindowList;


# direct methods
.method constructor <init>(Ljackpal/androidterm/WindowList;)V
    .registers 2
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Ljackpal/androidterm/WindowList$1;->this$0:Ljackpal/androidterm/WindowList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6
    .parameter "className"
    .parameter "service"

    .prologue
    .line 73
    move-object v0, p2

    check-cast v0, Ljackpal/androidterm/TermService$TSBinder;

    .line 74
    .local v0, binder:Ljackpal/androidterm/TermService$TSBinder;
    iget-object v1, p0, Ljackpal/androidterm/WindowList$1;->this$0:Ljackpal/androidterm/WindowList;

    invoke-virtual {v0}, Ljackpal/androidterm/TermService$TSBinder;->getService()Ljackpal/androidterm/TermService;

    move-result-object v2

    #setter for: Ljackpal/androidterm/WindowList;->mTermService:Ljackpal/androidterm/TermService;
    invoke-static {v1, v2}, Ljackpal/androidterm/WindowList;->access$002(Ljackpal/androidterm/WindowList;Ljackpal/androidterm/TermService;)Ljackpal/androidterm/TermService;

    .line 75
    iget-object v1, p0, Ljackpal/androidterm/WindowList$1;->this$0:Ljackpal/androidterm/WindowList;

    #calls: Ljackpal/androidterm/WindowList;->populateList()V
    invoke-static {v1}, Ljackpal/androidterm/WindowList;->access$100(Ljackpal/androidterm/WindowList;)V

    .line 76
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .parameter "arg0"

    .prologue
    .line 79
    iget-object v0, p0, Ljackpal/androidterm/WindowList$1;->this$0:Ljackpal/androidterm/WindowList;

    const/4 v1, 0x0

    #setter for: Ljackpal/androidterm/WindowList;->mTermService:Ljackpal/androidterm/TermService;
    invoke-static {v0, v1}, Ljackpal/androidterm/WindowList;->access$002(Ljackpal/androidterm/WindowList;Ljackpal/androidterm/TermService;)Ljackpal/androidterm/TermService;

    .line 80
    return-void
.end method
