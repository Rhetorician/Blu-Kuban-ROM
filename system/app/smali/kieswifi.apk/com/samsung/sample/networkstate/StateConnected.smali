.class public Lcom/samsung/sample/networkstate/StateConnected;
.super Ljava/lang/Object;
.source "StateConnected.java"

# interfaces
.implements Lcom/samsung/sample/networkstate/INetworkState;


# instance fields
.field mMachine:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;


# direct methods
.method public constructor <init>(Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;)V
    .registers 2
    .parameter "machine"

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/samsung/sample/networkstate/StateConnected;->mMachine:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    .line 30
    return-void
.end method


# virtual methods
.method public getStateType()I
    .registers 2

    .prologue
    .line 54
    const/4 v0, 0x2

    return v0
.end method

.method public ipChanged()V
    .registers 3

    .prologue
    .line 34
    iget-object v0, p0, Lcom/samsung/sample/networkstate/StateConnected;->mMachine:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->sendMessage(I)V

    .line 35
    return-void
.end method

.method public notifyMessage()V
    .registers 3

    .prologue
    .line 48
    iget-object v0, p0, Lcom/samsung/sample/networkstate/StateConnected;->mMachine:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->sendMessage(I)V

    .line 49
    return-void
.end method

.method public wifiConnected()V
    .registers 1

    .prologue
    .line 39
    return-void
.end method

.method public wifiDisconnected()V
    .registers 3

    .prologue
    .line 43
    iget-object v0, p0, Lcom/samsung/sample/networkstate/StateConnected;->mMachine:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    iget-object v1, p0, Lcom/samsung/sample/networkstate/StateConnected;->mMachine:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    iget-object v1, v1, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->mDisConnectedState:Lcom/samsung/sample/networkstate/INetworkState;

    invoke-virtual {v0, v1}, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->setState(Lcom/samsung/sample/networkstate/INetworkState;)V

    .line 44
    return-void
.end method