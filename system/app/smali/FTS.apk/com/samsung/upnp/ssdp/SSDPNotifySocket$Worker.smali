.class Lcom/samsung/upnp/ssdp/SSDPNotifySocket$Worker;
.super Ljava/lang/Object;
.source "SSDPNotifySocket.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/upnp/ssdp/SSDPNotifySocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Worker"
.end annotation


# instance fields
.field _packet:Lcom/samsung/upnp/ssdp/SSDPPacket;

.field final synthetic this$0:Lcom/samsung/upnp/ssdp/SSDPNotifySocket;


# direct methods
.method public constructor <init>(Lcom/samsung/upnp/ssdp/SSDPNotifySocket;Lcom/samsung/upnp/ssdp/SSDPPacket;)V
    .registers 3
    .parameter
    .parameter "packet"

    .prologue
    .line 173
    iput-object p1, p0, Lcom/samsung/upnp/ssdp/SSDPNotifySocket$Worker;->this$0:Lcom/samsung/upnp/ssdp/SSDPNotifySocket;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 174
    iput-object p2, p0, Lcom/samsung/upnp/ssdp/SSDPNotifySocket$Worker;->_packet:Lcom/samsung/upnp/ssdp/SSDPPacket;

    .line 175
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 180
    iget-object v2, p0, Lcom/samsung/upnp/ssdp/SSDPNotifySocket$Worker;->this$0:Lcom/samsung/upnp/ssdp/SSDPNotifySocket;

    invoke-virtual {v2}, Lcom/samsung/upnp/ssdp/SSDPNotifySocket;->getControlPoint()Lcom/samsung/upnp/ControlPoint;

    move-result-object v0

    .line 181
    .local v0, ctrlPoint:Lcom/samsung/upnp/ControlPoint;
    iget-object v2, p0, Lcom/samsung/upnp/ssdp/SSDPNotifySocket$Worker;->this$0:Lcom/samsung/upnp/ssdp/SSDPNotifySocket;

    invoke-virtual {v2}, Lcom/samsung/upnp/ssdp/SSDPNotifySocket;->getPersonalMessageCP()Lcom/samsung/pmr/PersonalMessageControlPoint;

    move-result-object v1

    .line 183
    .local v1, pmcp:Lcom/samsung/pmr/PersonalMessageControlPoint;
    if-eqz v0, :cond_13

    .line 184
    iget-object v2, p0, Lcom/samsung/upnp/ssdp/SSDPNotifySocket$Worker;->_packet:Lcom/samsung/upnp/ssdp/SSDPPacket;

    invoke-virtual {v0, v2}, Lcom/samsung/upnp/ControlPoint;->notifyReceived(Lcom/samsung/upnp/ssdp/SSDPPacket;)V

    .line 185
    :cond_13
    if-eqz v1, :cond_1a

    .line 186
    iget-object v2, p0, Lcom/samsung/upnp/ssdp/SSDPNotifySocket$Worker;->_packet:Lcom/samsung/upnp/ssdp/SSDPPacket;

    invoke-virtual {v1, v2}, Lcom/samsung/pmr/PersonalMessageControlPoint;->notifyReceived(Lcom/samsung/upnp/ssdp/SSDPPacket;)V

    .line 187
    :cond_1a
    return-void
.end method