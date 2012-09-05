.class public Lcom/samsung/upnp/Device;
.super Ljava/lang/Object;
.source "Device.java"

# interfaces
.implements Lcom/samsung/http/HTTPReceivedListener;
.implements Lcom/samsung/http/HTTPRequestListener;


# instance fields
.field private descriptionCache:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private devUUID:Ljava/lang/String;

.field private deviceNode:Lcom/samsung/xml/Node;

.field private rootNode:Lcom/samsung/xml/Node;

.field private wirelessMode:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .prologue
    .line 217
    invoke-static {}, Lcom/samsung/upnp/UPnP;->initialize()V

    .line 160
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 235
    invoke-direct {p0, v0, v0}, Lcom/samsung/upnp/Device;-><init>(Lcom/samsung/xml/Node;Lcom/samsung/xml/Node;)V

    .line 236
    return-void
.end method

.method public constructor <init>(Lcom/samsung/xml/Node;)V
    .registers 3
    .parameter "device"

    .prologue
    .line 240
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/samsung/upnp/Device;-><init>(Lcom/samsung/xml/Node;Lcom/samsung/xml/Node;)V

    .line 241
    return-void
.end method

.method public constructor <init>(Lcom/samsung/xml/Node;Lcom/samsung/xml/Node;)V
    .registers 4
    .parameter "root"
    .parameter "device"

    .prologue
    .line 225
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1647
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/upnp/Device;->descriptionCache:Ljava/util/LinkedHashMap;

    .line 227
    iput-object p1, p0, Lcom/samsung/upnp/Device;->rootNode:Lcom/samsung/xml/Node;

    .line 228
    iput-object p2, p0, Lcom/samsung/upnp/Device;->deviceNode:Lcom/samsung/xml/Node;

    .line 229
    invoke-static {}, Lcom/samsung/upnp/UPnP;->createUUID()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/upnp/Device;->setUUID(Ljava/lang/String;)V

    .line 230
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/Device;->setWirelessMode(Z)V

    .line 231
    return-void
.end method

.method private deviceActionControlRecieved(Lcom/samsung/upnp/control/ActionRequest;Lcom/samsung/upnp/Service;)V
    .registers 8
    .parameter "ctlReq"
    .parameter "service"

    .prologue
    .line 1798
    if-eqz p2, :cond_4

    if-nez p1, :cond_5

    .line 1814
    :cond_4
    :goto_4
    return-void

    .line 1800
    :cond_5
    invoke-static {}, Lcom/samsung/api/Debugs;->isOn()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1801
    invoke-virtual {p1}, Lcom/samsung/upnp/control/ActionRequest;->print()V

    .line 1802
    :cond_e
    invoke-virtual {p1}, Lcom/samsung/upnp/control/ActionRequest;->getActionName()Ljava/lang/String;

    move-result-object v2

    .line 1803
    .local v2, actionName:Ljava/lang/String;
    invoke-virtual {p2, v2}, Lcom/samsung/upnp/Service;->getAction(Ljava/lang/String;)Lcom/samsung/upnp/Action;

    move-result-object v0

    .line 1804
    .local v0, action:Lcom/samsung/upnp/Action;
    if-nez v0, :cond_1c

    .line 1805
    invoke-direct {p0, p1}, Lcom/samsung/upnp/Device;->invalidActionControlRecieved(Lcom/samsung/upnp/control/ControlRequest;)V

    goto :goto_4

    .line 1809
    :cond_1c
    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->getArgumentList()Lcom/samsung/upnp/ArgumentList;

    move-result-object v1

    .line 1810
    .local v1, actionArgList:Lcom/samsung/upnp/ArgumentList;
    invoke-virtual {p1}, Lcom/samsung/upnp/control/ActionRequest;->getArgumentList()Lcom/samsung/upnp/ArgumentList;

    move-result-object v3

    .line 1811
    .local v3, reqArgList:Lcom/samsung/upnp/ArgumentList;
    invoke-virtual {v1, v3}, Lcom/samsung/upnp/ArgumentList;->set(Lcom/samsung/upnp/ArgumentList;)V

    .line 1812
    invoke-virtual {v0, p1}, Lcom/samsung/upnp/Action;->performActionListener(Lcom/samsung/upnp/control/ActionRequest;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1813
    invoke-direct {p0, p1}, Lcom/samsung/upnp/Device;->invalidActionControlRecieved(Lcom/samsung/upnp/control/ControlRequest;)V

    goto :goto_4
.end method

.method private deviceControlRequestRecieved(Lcom/samsung/upnp/control/ControlRequest;Lcom/samsung/upnp/Service;)V
    .registers 4
    .parameter "ctlReq"
    .parameter "service"

    .prologue
    .line 1779
    if-nez p1, :cond_3

    .line 1785
    :goto_2
    return-void

    .line 1781
    :cond_3
    invoke-virtual {p1}, Lcom/samsung/upnp/control/ControlRequest;->isQueryControl()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1782
    new-instance v0, Lcom/samsung/upnp/control/QueryRequest;

    invoke-direct {v0, p1}, Lcom/samsung/upnp/control/QueryRequest;-><init>(Lcom/samsung/http/HTTPRequest;)V

    invoke-direct {p0, v0, p2}, Lcom/samsung/upnp/Device;->deviceQueryControlRecieved(Lcom/samsung/upnp/control/QueryRequest;Lcom/samsung/upnp/Service;)V

    goto :goto_2

    .line 1784
    :cond_12
    new-instance v0, Lcom/samsung/upnp/control/ActionRequest;

    invoke-direct {v0, p1}, Lcom/samsung/upnp/control/ActionRequest;-><init>(Lcom/samsung/http/HTTPRequest;)V

    invoke-direct {p0, v0, p2}, Lcom/samsung/upnp/Device;->deviceActionControlRecieved(Lcom/samsung/upnp/control/ActionRequest;Lcom/samsung/upnp/Service;)V

    goto :goto_2
.end method

.method private deviceEventNewSubscriptionRecieved(Lcom/samsung/upnp/Service;Lcom/samsung/upnp/event/SubscriptionRequest;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x19c

    .line 1906
    if-eqz p1, :cond_6

    if-nez p2, :cond_7

    .line 1960
    :cond_6
    :goto_6
    return-void

    .line 1908
    :cond_7
    const-string v0, "Device"

    const-string v1, "Subscription : deviceEventNewSubscriptionRecieved"

    invoke-static {v0, v1}, Lcom/samsung/api/Debugs;->warning(Ljava/lang/String;Ljava/lang/String;)V

    .line 1909
    const-string v0, "NT"

    invoke-virtual {p2, v0}, Lcom/samsung/upnp/event/SubscriptionRequest;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1910
    invoke-virtual {p2}, Lcom/samsung/upnp/event/SubscriptionRequest;->getCallback()Ljava/lang/String;

    move-result-object v1

    .line 1912
    if-eqz v0, :cond_28

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_28

    .line 1913
    if-eqz v1, :cond_28

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2e

    .line 1914
    :cond_28
    const/16 v0, 0x190

    invoke-direct {p0, p2, v0}, Lcom/samsung/upnp/Device;->upnpBadSubscriptionRecieved(Lcom/samsung/upnp/event/SubscriptionRequest;I)V

    goto :goto_6

    .line 1918
    :cond_2e
    const-string v2, "upnp:event"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 1919
    invoke-direct {p0, p2, v3}, Lcom/samsung/upnp/Device;->upnpBadSubscriptionRecieved(Lcom/samsung/upnp/event/SubscriptionRequest;I)V

    goto :goto_6

    .line 1924
    :cond_3a
    :try_start_3a
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3f} :catch_96

    .line 1931
    invoke-virtual {p2}, Lcom/samsung/upnp/event/SubscriptionRequest;->getTimeout()J

    move-result-wide v2

    .line 1932
    invoke-static {}, Lcom/samsung/upnp/event/Subscription;->createSID()Ljava/lang/String;

    move-result-object v0

    .line 1934
    new-instance v4, Lcom/samsung/upnp/event/Subscriber;

    invoke-direct {v4}, Lcom/samsung/upnp/event/Subscriber;-><init>()V

    .line 1935
    invoke-virtual {v4, v1}, Lcom/samsung/upnp/event/Subscriber;->setDeliveryURL(Ljava/lang/String;)V

    .line 1936
    invoke-virtual {v4, v2, v3}, Lcom/samsung/upnp/event/Subscriber;->setTimeOut(J)V

    .line 1937
    invoke-virtual {v4, v0}, Lcom/samsung/upnp/event/Subscriber;->setSID(Ljava/lang/String;)V

    .line 1938
    invoke-virtual {p1, v4}, Lcom/samsung/upnp/Service;->addSubscriber(Lcom/samsung/upnp/event/Subscriber;)V

    .line 1940
    new-instance v1, Lcom/samsung/upnp/event/SubscriptionResponse;

    invoke-direct {v1}, Lcom/samsung/upnp/event/SubscriptionResponse;-><init>()V

    .line 1941
    const/16 v5, 0xc8

    invoke-virtual {v1, v5}, Lcom/samsung/upnp/event/SubscriptionResponse;->setStatusCode(I)V

    .line 1942
    invoke-virtual {v1, v0}, Lcom/samsung/upnp/event/SubscriptionResponse;->setSID(Ljava/lang/String;)V

    .line 1943
    invoke-virtual {v1, v2, v3}, Lcom/samsung/upnp/event/SubscriptionResponse;->setTimeout(J)V

    .line 1944
    invoke-static {}, Lcom/samsung/api/Debugs;->isOn()Z

    move-result v0

    if-eqz v0, :cond_71

    .line 1945
    invoke-virtual {v1}, Lcom/samsung/upnp/event/SubscriptionResponse;->print()V

    .line 1946
    :cond_71
    invoke-virtual {p2, v1}, Lcom/samsung/upnp/event/SubscriptionRequest;->post(Lcom/samsung/upnp/event/SubscriptionResponse;)V

    .line 1948
    invoke-virtual {p2}, Lcom/samsung/upnp/event/SubscriptionRequest;->isKeepAliveConnection()Z

    move-result v0

    if-nez v0, :cond_81

    .line 1949
    invoke-virtual {p2}, Lcom/samsung/upnp/event/SubscriptionRequest;->getSocket()Lcom/samsung/http/HTTPSocket;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/http/HTTPSocket;->close()Z

    .line 1955
    :cond_81
    invoke-static {}, Lcom/samsung/api/Debugs;->isOn()Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 1956
    invoke-virtual {v1}, Lcom/samsung/upnp/event/SubscriptionResponse;->print()V

    .line 1957
    :cond_8a
    const-string v0, "Device"

    const-string v1, "Subscription : Notify To Subscriber"

    invoke-static {v0, v1}, Lcom/samsung/api/Debugs;->warning(Ljava/lang/String;Ljava/lang/String;)V

    .line 1958
    invoke-virtual {p1, v4}, Lcom/samsung/upnp/Service;->notifyAllStateVariablesToSubscriber(Lcom/samsung/upnp/event/Subscriber;)V

    goto/16 :goto_6

    .line 1926
    :catch_96
    move-exception v0

    .line 1927
    invoke-direct {p0, p2, v3}, Lcom/samsung/upnp/Device;->upnpBadSubscriptionRecieved(Lcom/samsung/upnp/event/SubscriptionRequest;I)V

    goto/16 :goto_6
.end method

.method private deviceEventRenewSubscriptionRecieved(Lcom/samsung/upnp/Service;Lcom/samsung/upnp/event/SubscriptionRequest;)V
    .registers 9
    .parameter "service"
    .parameter "subReq"

    .prologue
    .line 1965
    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    .line 1987
    :cond_4
    :goto_4
    return-void

    .line 1967
    :cond_5
    invoke-virtual {p2}, Lcom/samsung/upnp/event/SubscriptionRequest;->getSID()Ljava/lang/String;

    move-result-object v0

    .line 1968
    .local v0, sid:Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/samsung/upnp/Service;->getSubscriber(Ljava/lang/String;)Lcom/samsung/upnp/event/Subscriber;

    move-result-object v1

    .line 1970
    .local v1, sub:Lcom/samsung/upnp/event/Subscriber;
    if-nez v1, :cond_15

    .line 1971
    const/16 v5, 0x190

    invoke-direct {p0, p2, v5}, Lcom/samsung/upnp/Device;->upnpBadSubscriptionRecieved(Lcom/samsung/upnp/event/SubscriptionRequest;I)V

    goto :goto_4

    .line 1975
    :cond_15
    invoke-virtual {p2}, Lcom/samsung/upnp/event/SubscriptionRequest;->getTimeout()J

    move-result-wide v3

    .line 1976
    .local v3, timeOut:J
    invoke-virtual {v1, v3, v4}, Lcom/samsung/upnp/event/Subscriber;->setTimeOut(J)V

    .line 1977
    invoke-virtual {v1}, Lcom/samsung/upnp/event/Subscriber;->renew()V

    .line 1979
    new-instance v2, Lcom/samsung/upnp/event/SubscriptionResponse;

    invoke-direct {v2}, Lcom/samsung/upnp/event/SubscriptionResponse;-><init>()V

    .line 1980
    .local v2, subRes:Lcom/samsung/upnp/event/SubscriptionResponse;
    const/16 v5, 0xc8

    invoke-virtual {v2, v5}, Lcom/samsung/upnp/event/SubscriptionResponse;->setStatusCode(I)V

    .line 1981
    invoke-virtual {v2, v0}, Lcom/samsung/upnp/event/SubscriptionResponse;->setSID(Ljava/lang/String;)V

    .line 1982
    invoke-virtual {v2, v3, v4}, Lcom/samsung/upnp/event/SubscriptionResponse;->setTimeout(J)V

    .line 1983
    invoke-virtual {p2, v2}, Lcom/samsung/upnp/event/SubscriptionRequest;->post(Lcom/samsung/upnp/event/SubscriptionResponse;)V

    .line 1985
    invoke-static {}, Lcom/samsung/api/Debugs;->isOn()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1986
    invoke-virtual {v2}, Lcom/samsung/upnp/event/SubscriptionResponse;->print()V

    goto :goto_4
.end method

.method private deviceEventSubscriptionRecieved(Lcom/samsung/upnp/event/SubscriptionRequest;)V
    .registers 7
    .parameter

    .prologue
    const/16 v4, 0x19c

    const/16 v3, 0x190

    .line 1848
    invoke-virtual {p1}, Lcom/samsung/upnp/event/SubscriptionRequest;->getURI()Ljava/lang/String;

    move-result-object v0

    .line 1849
    invoke-virtual {p0, v0}, Lcom/samsung/upnp/Device;->getServiceByEventSubURL(Ljava/lang/String;)Lcom/samsung/upnp/Service;

    move-result-object v0

    .line 1850
    if-nez v0, :cond_12

    .line 1851
    invoke-virtual {p1}, Lcom/samsung/upnp/event/SubscriptionRequest;->returnBadRequest()Z

    .line 1894
    :goto_11
    return-void

    .line 1854
    :cond_12
    invoke-virtual {p1}, Lcom/samsung/upnp/event/SubscriptionRequest;->hasCallback()Z

    move-result v1

    if-nez v1, :cond_2e

    invoke-virtual {p1}, Lcom/samsung/upnp/event/SubscriptionRequest;->hasSID()Z

    move-result v1

    if-nez v1, :cond_2e

    .line 1856
    const-string v0, "SID"

    invoke-virtual {p1, v0}, Lcom/samsung/upnp/event/SubscriptionRequest;->getHeader(Ljava/lang/String;)Lcom/samsung/http/HTTPHeader;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 1857
    invoke-direct {p0, p1, v3}, Lcom/samsung/upnp/Device;->upnpBadSubscriptionRecieved(Lcom/samsung/upnp/event/SubscriptionRequest;I)V

    goto :goto_11

    .line 1859
    :cond_2a
    invoke-direct {p0, p1, v4}, Lcom/samsung/upnp/Device;->upnpBadSubscriptionRecieved(Lcom/samsung/upnp/event/SubscriptionRequest;I)V

    goto :goto_11

    .line 1863
    :cond_2e
    invoke-virtual {p1}, Lcom/samsung/upnp/event/SubscriptionRequest;->hasNT()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-virtual {p1}, Lcom/samsung/upnp/event/SubscriptionRequest;->getNT()Ljava/lang/String;

    move-result-object v1

    const-string v2, "upnp:event"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_44

    .line 1864
    invoke-direct {p0, p1, v4}, Lcom/samsung/upnp/Device;->upnpBadSubscriptionRecieved(Lcom/samsung/upnp/event/SubscriptionRequest;I)V

    goto :goto_11

    .line 1869
    :cond_44
    invoke-virtual {p1}, Lcom/samsung/upnp/event/SubscriptionRequest;->isUnsubscribeRequest()Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 1870
    invoke-direct {p0, v0, p1}, Lcom/samsung/upnp/Device;->deviceEventUnsubscriptionRecieved(Lcom/samsung/upnp/Service;Lcom/samsung/upnp/event/SubscriptionRequest;)V

    goto :goto_11

    .line 1875
    :cond_4e
    invoke-virtual {p1}, Lcom/samsung/upnp/event/SubscriptionRequest;->hasCallback()Z

    move-result v1

    if-eqz v1, :cond_58

    .line 1876
    invoke-direct {p0, v0, p1}, Lcom/samsung/upnp/Device;->deviceEventNewSubscriptionRecieved(Lcom/samsung/upnp/Service;Lcom/samsung/upnp/event/SubscriptionRequest;)V

    goto :goto_11

    .line 1888
    :cond_58
    invoke-virtual {p1}, Lcom/samsung/upnp/event/SubscriptionRequest;->hasSID()Z

    move-result v1

    if-eqz v1, :cond_62

    .line 1889
    invoke-direct {p0, v0, p1}, Lcom/samsung/upnp/Device;->deviceEventRenewSubscriptionRecieved(Lcom/samsung/upnp/Service;Lcom/samsung/upnp/event/SubscriptionRequest;)V

    goto :goto_11

    .line 1893
    :cond_62
    invoke-direct {p0, p1, v3}, Lcom/samsung/upnp/Device;->upnpBadSubscriptionRecieved(Lcom/samsung/upnp/event/SubscriptionRequest;I)V

    goto :goto_11
.end method

.method private deviceEventUnsubscriptionRecieved(Lcom/samsung/upnp/Service;Lcom/samsung/upnp/event/SubscriptionRequest;)V
    .registers 7
    .parameter "service"
    .parameter "subReq"

    .prologue
    .line 1991
    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    .line 2013
    :cond_4
    :goto_4
    return-void

    .line 1993
    :cond_5
    invoke-virtual {p2}, Lcom/samsung/upnp/event/SubscriptionRequest;->getSID()Ljava/lang/String;

    move-result-object v0

    .line 1994
    .local v0, sid:Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/samsung/upnp/Service;->getSubscriber(Ljava/lang/String;)Lcom/samsung/upnp/event/Subscriber;

    move-result-object v1

    .line 1996
    .local v1, sub:Lcom/samsung/upnp/event/Subscriber;
    if-nez v1, :cond_15

    .line 1997
    const/16 v3, 0x19c

    invoke-direct {p0, p2, v3}, Lcom/samsung/upnp/Device;->upnpBadSubscriptionRecieved(Lcom/samsung/upnp/event/SubscriptionRequest;I)V

    goto :goto_4

    .line 2002
    :cond_15
    monitor-enter p0

    .line 2003
    :try_start_16
    invoke-virtual {p1, v1}, Lcom/samsung/upnp/Service;->removeSubscriber(Lcom/samsung/upnp/event/Subscriber;)V

    .line 2002
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_16 .. :try_end_1a} :catchall_31

    .line 2007
    new-instance v2, Lcom/samsung/upnp/event/SubscriptionResponse;

    invoke-direct {v2}, Lcom/samsung/upnp/event/SubscriptionResponse;-><init>()V

    .line 2008
    .local v2, subRes:Lcom/samsung/upnp/event/SubscriptionResponse;
    const/16 v3, 0xc8

    invoke-virtual {v2, v3}, Lcom/samsung/upnp/event/SubscriptionResponse;->setStatusCode(I)V

    .line 2009
    invoke-virtual {p2, v2}, Lcom/samsung/upnp/event/SubscriptionRequest;->post(Lcom/samsung/upnp/event/SubscriptionResponse;)V

    .line 2011
    invoke-static {}, Lcom/samsung/api/Debugs;->isOn()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2012
    invoke-virtual {v2}, Lcom/samsung/upnp/event/SubscriptionResponse;->print()V

    goto :goto_4

    .line 2002
    .end local v2           #subRes:Lcom/samsung/upnp/event/SubscriptionResponse;
    :catchall_31
    move-exception v3

    :try_start_32
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v3
.end method

.method private deviceQueryControlRecieved(Lcom/samsung/upnp/control/QueryRequest;Lcom/samsung/upnp/Service;)V
    .registers 6
    .parameter "ctlReq"
    .parameter "service"

    .prologue
    .line 1818
    if-eqz p2, :cond_4

    if-nez p1, :cond_5

    .line 1830
    :cond_4
    :goto_4
    return-void

    .line 1820
    :cond_5
    invoke-static {}, Lcom/samsung/api/Debugs;->isOn()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1821
    invoke-virtual {p1}, Lcom/samsung/upnp/control/QueryRequest;->print()V

    .line 1822
    :cond_e
    invoke-virtual {p1}, Lcom/samsung/upnp/control/QueryRequest;->getVarName()Ljava/lang/String;

    move-result-object v1

    .line 1823
    .local v1, varName:Ljava/lang/String;
    invoke-virtual {p2, v1}, Lcom/samsung/upnp/Service;->hasStateVariable(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 1824
    invoke-direct {p0, p1}, Lcom/samsung/upnp/Device;->invalidActionControlRecieved(Lcom/samsung/upnp/control/ControlRequest;)V

    goto :goto_4

    .line 1827
    :cond_1c
    invoke-virtual {p0, v1}, Lcom/samsung/upnp/Device;->getStateVariable(Ljava/lang/String;)Lcom/samsung/upnp/StateVariable;

    move-result-object v0

    .line 1828
    .local v0, stateVar:Lcom/samsung/upnp/StateVariable;
    if-eqz v0, :cond_28

    invoke-virtual {v0, p1}, Lcom/samsung/upnp/StateVariable;->performQueryListener(Lcom/samsung/upnp/control/QueryRequest;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1829
    :cond_28
    invoke-direct {p0, p1}, Lcom/samsung/upnp/Device;->invalidActionControlRecieved(Lcom/samsung/upnp/control/ControlRequest;)V

    goto :goto_4
.end method

.method private declared-synchronized getDescriptionData(Ljava/lang/String;)[B
    .registers 5
    .parameter

    .prologue
    .line 1634
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getRootNode()Lcom/samsung/xml/Node;

    move-result-object v0

    .line 1635
    if-nez v0, :cond_c

    .line 1636
    const/4 v0, 0x0

    new-array v0, v0, [B
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_51

    .line 1644
    :goto_a
    monitor-exit p0

    return-object v0

    .line 1639
    :cond_c
    :try_start_c
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 1640
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "<?xml version=\"1.0\"?>"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1641
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1642
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/xml/Node;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1644
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B
    :try_end_4f
    .catchall {:try_start_c .. :try_end_4f} :catchall_51

    move-result-object v0

    goto :goto_a

    .line 1634
    :catchall_51
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getDescriptionURI()Ljava/lang/String;
    .registers 2

    .prologue
    .line 408
    invoke-direct {p0}, Lcom/samsung/upnp/Device;->getDeviceData()Lcom/samsung/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/upnp/xml/DeviceData;->getDescriptionURI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDeviceData()Lcom/samsung/upnp/xml/DeviceData;
    .registers 3

    .prologue
    .line 377
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getDeviceNode()Lcom/samsung/xml/Node;

    move-result-object v0

    .line 378
    .local v0, node:Lcom/samsung/xml/Node;
    invoke-virtual {v0}, Lcom/samsung/xml/Node;->getUserData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/upnp/xml/DeviceData;

    .line 379
    .local v1, userData:Lcom/samsung/upnp/xml/DeviceData;
    if-nez v1, :cond_17

    .line 380
    new-instance v1, Lcom/samsung/upnp/xml/DeviceData;

    .end local v1           #userData:Lcom/samsung/upnp/xml/DeviceData;
    invoke-direct {v1}, Lcom/samsung/upnp/xml/DeviceData;-><init>()V

    .line 381
    .restart local v1       #userData:Lcom/samsung/upnp/xml/DeviceData;
    invoke-virtual {v0, v1}, Lcom/samsung/xml/Node;->setUserData(Ljava/lang/Object;)V

    .line 382
    invoke-virtual {v1, v0}, Lcom/samsung/upnp/xml/DeviceData;->setNode(Lcom/samsung/xml/Node;)V

    .line 384
    :cond_17
    return-object v1
.end method

.method private getNotifyDeviceNT()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1217
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->isRootDevice()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1218
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v0

    .line 1219
    :goto_a
    return-object v0

    :cond_b
    const-string v0, "upnp:rootdevice"

    goto :goto_a
.end method

.method private httpGetRequestRecieved(Lcom/samsung/http/HTTPRequest;)V
    .registers 5
    .parameter

    .prologue
    .line 1689
    if-nez p1, :cond_3

    .line 1713
    :goto_2
    return-void

    .line 1691
    :cond_3
    invoke-virtual {p1}, Lcom/samsung/http/HTTPRequest;->getURI()Ljava/lang/String;

    move-result-object v0

    .line 1693
    if-nez v0, :cond_d

    .line 1694
    invoke-virtual {p1}, Lcom/samsung/http/HTTPRequest;->returnNotFoundRequest()Z

    goto :goto_2

    .line 1698
    :cond_d
    invoke-virtual {p1}, Lcom/samsung/http/HTTPRequest;->getLocalAddress()Ljava/lang/String;

    move-result-object v1

    .line 1700
    invoke-direct {p0, v1, v0}, Lcom/samsung/upnp/Device;->requestDescriptionData(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    .line 1702
    if-nez v1, :cond_1b

    .line 1703
    invoke-virtual {p1}, Lcom/samsung/http/HTTPRequest;->returnNotFoundRequest()Z

    goto :goto_2

    .line 1707
    :cond_1b
    invoke-static {p1}, Lcom/samsung/http/HTTPResponse;->buildHTTPResponse(Lcom/samsung/http/HTTPRequest;)Lcom/samsung/http/HTTPResponse;

    move-result-object v2

    .line 1708
    invoke-static {v0}, Lcom/samsung/util/FileUtil;->isXMLFileName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1709
    const-string v0, "text/xml; charset=\"utf-8\""

    invoke-virtual {v2, v0}, Lcom/samsung/http/HTTPResponse;->setContentType(Ljava/lang/String;)V

    .line 1710
    :cond_2a
    const/16 v0, 0xc8

    invoke-virtual {v2, v0}, Lcom/samsung/http/HTTPResponse;->setStatusCode(I)V

    .line 1711
    invoke-virtual {v2, v1}, Lcom/samsung/http/HTTPResponse;->setContent([B)V

    .line 1712
    invoke-virtual {p1, v2}, Lcom/samsung/http/HTTPRequest;->post(Lcom/samsung/http/HTTPResponse;)Z

    goto :goto_2
.end method

.method private httpHostRequestRecieved(Lcom/samsung/http/HTTPRequest;)V
    .registers 5
    .parameter

    .prologue
    .line 1609
    if-nez p1, :cond_3

    .line 1623
    :goto_2
    return-void

    .line 1611
    :cond_3
    invoke-static {p1}, Lcom/samsung/http/HTTPResponse;->buildHTTPResponse(Lcom/samsung/http/HTTPRequest;)Lcom/samsung/http/HTTPResponse;

    move-result-object v0

    .line 1612
    invoke-virtual {p1}, Lcom/samsung/http/HTTPRequest;->getHeader()Ljava/lang/String;

    move-result-object v1

    .line 1613
    if-eqz v1, :cond_1a

    .line 1614
    const-string v2, "contentFeatures.dlna.org"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1615
    const/16 v1, 0x190

    invoke-virtual {v0, v1}, Lcom/samsung/http/HTTPResponse;->setStatusCode(I)V

    .line 1618
    :cond_1a
    const-string v1, "Device_Header"

    invoke-virtual {p1}, Lcom/samsung/http/HTTPRequest;->getHeader()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/api/Debugs;->warning(Ljava/lang/String;Ljava/lang/String;)V

    .line 1619
    const-string v1, "Device_Header"

    invoke-virtual {p1}, Lcom/samsung/http/HTTPRequest;->getHeaderString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/api/Debugs;->warning(Ljava/lang/String;Ljava/lang/String;)V

    .line 1621
    invoke-virtual {p1, v0}, Lcom/samsung/http/HTTPRequest;->post(Lcom/samsung/http/HTTPResponse;)Z

    goto :goto_2
.end method

.method private httpPostRequestRecieved(Lcom/samsung/http/HTTPRequest;)V
    .registers 3
    .parameter "httpReq"

    .prologue
    .line 1723
    invoke-virtual {p1}, Lcom/samsung/http/HTTPRequest;->isSOAPAction()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1726
    invoke-direct {p0, p1}, Lcom/samsung/upnp/Device;->soapActionRecieved(Lcom/samsung/http/HTTPRequest;)V

    .line 1730
    :goto_9
    return-void

    .line 1729
    :cond_a
    invoke-virtual {p1}, Lcom/samsung/http/HTTPRequest;->returnBadRequest()Z

    goto :goto_9
.end method

.method private invalidActionControlRecieved(Lcom/samsung/upnp/control/ControlRequest;)V
    .registers 4
    .parameter "ctlReq"

    .prologue
    .line 1789
    if-nez p1, :cond_3

    .line 1794
    :goto_2
    return-void

    .line 1791
    :cond_3
    new-instance v0, Lcom/samsung/upnp/control/ActionResponse;

    invoke-direct {v0}, Lcom/samsung/upnp/control/ActionResponse;-><init>()V

    .line 1792
    .local v0, actRes:Lcom/samsung/upnp/control/ControlResponse;
    const/16 v1, 0x191

    invoke-virtual {v0, v1}, Lcom/samsung/upnp/control/ControlResponse;->setFaultResponse(I)V

    .line 1793
    invoke-virtual {p1, v0}, Lcom/samsung/upnp/control/ControlRequest;->post(Lcom/samsung/http/HTTPResponse;)Z

    goto :goto_2
.end method

.method private isDescriptionURI(Ljava/lang/String;)Z
    .registers 4
    .parameter "uri"

    .prologue
    .line 413
    invoke-direct {p0}, Lcom/samsung/upnp/Device;->getDescriptionURI()Ljava/lang/String;

    move-result-object v0

    .line 414
    .local v0, descriptionURI:Ljava/lang/String;
    if-eqz p1, :cond_8

    if-nez v0, :cond_a

    .line 415
    :cond_8
    const/4 v1, 0x0

    .line 416
    :goto_9
    return v1

    :cond_a
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_9
.end method

.method public static isDeviceNode(Lcom/samsung/xml/Node;)Z
    .registers 3
    .parameter "node"

    .prologue
    .line 517
    const-string v0, "device"

    invoke-virtual {p0}, Lcom/samsung/xml/Node;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static final notifyWait()V
    .registers 1

    .prologue
    .line 1246
    const/16 v0, 0x64

    invoke-static {v0}, Lcom/samsung/util/TimerUtil;->waitRandom(I)V

    .line 1247
    return-void
.end method

.method private requestDescriptionData(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 9
    .parameter "localAddr"
    .parameter "uri"

    .prologue
    .line 1655
    iget-object v5, p0, Lcom/samsung/upnp/Device;->descriptionCache:Ljava/util/LinkedHashMap;

    monitor-enter v5

    .line 1656
    :try_start_3
    iget-object v4, p0, Lcom/samsung/upnp/Device;->descriptionCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 1658
    .local v0, buffer:[B
    if-eqz v0, :cond_10

    .line 1659
    monitor-exit v5

    move-object v1, v0

    .line 1675
    .end local v0           #buffer:[B
    .local v1, buffer:[B
    :goto_f
    return-object v1

    .line 1664
    .end local v1           #buffer:[B
    .restart local v0       #buffer:[B
    :cond_10
    invoke-direct {p0, p2}, Lcom/samsung/upnp/Device;->isDescriptionURI(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 1665
    invoke-direct {p0, p1}, Lcom/samsung/upnp/Device;->getDescriptionData(Ljava/lang/String;)[B

    move-result-object v0

    .line 1673
    :cond_1a
    :goto_1a
    if-eqz v0, :cond_21

    .line 1674
    iget-object v4, p0, Lcom/samsung/upnp/Device;->descriptionCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, p2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1675
    :cond_21
    monitor-exit v5

    move-object v1, v0

    .end local v0           #buffer:[B
    .restart local v1       #buffer:[B
    goto :goto_f

    .line 1667
    .end local v1           #buffer:[B
    .restart local v0       #buffer:[B
    :cond_24
    invoke-virtual {p0, p2}, Lcom/samsung/upnp/Device;->getDeviceByDescriptionURI(Ljava/lang/String;)Lcom/samsung/upnp/Device;

    move-result-object v2

    .local v2, embDev:Lcom/samsung/upnp/Device;
    if-eqz v2, :cond_2f

    .line 1668
    invoke-direct {v2, p1}, Lcom/samsung/upnp/Device;->getDescriptionData(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_1a

    .line 1670
    :cond_2f
    invoke-virtual {p0, p2}, Lcom/samsung/upnp/Device;->getServiceBySCPDURL(Ljava/lang/String;)Lcom/samsung/upnp/Service;

    move-result-object v3

    .local v3, embService:Lcom/samsung/upnp/Service;
    if-eqz v3, :cond_1a

    .line 1671
    invoke-virtual {v3}, Lcom/samsung/upnp/Service;->getSCPDData()[B

    move-result-object v0

    goto :goto_1a

    .line 1655
    .end local v0           #buffer:[B
    .end local v2           #embDev:Lcom/samsung/upnp/Device;
    .end local v3           #embService:Lcom/samsung/upnp/Service;
    :catchall_3a
    move-exception v4

    monitor-exit v5
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_3a

    throw v4
.end method

.method private setUUID(Ljava/lang/String;)V
    .registers 2
    .parameter "uuid"

    .prologue
    .line 327
    iput-object p1, p0, Lcom/samsung/upnp/Device;->devUUID:Ljava/lang/String;

    .line 328
    return-void
.end method

.method private soapActionRecieved(Lcom/samsung/http/HTTPRequest;)V
    .registers 5
    .parameter "soapReq"

    .prologue
    .line 1753
    if-nez p1, :cond_3

    .line 1771
    :goto_2
    return-void

    .line 1755
    :cond_3
    invoke-virtual {p1}, Lcom/samsung/http/HTTPRequest;->getURI()Ljava/lang/String;

    move-result-object v2

    .line 1756
    .local v2, uri:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/samsung/upnp/Device;->getServiceByControlURL(Ljava/lang/String;)Lcom/samsung/upnp/Service;

    move-result-object v1

    .line 1757
    .local v1, ctlService:Lcom/samsung/upnp/Service;
    if-eqz v1, :cond_16

    .line 1758
    new-instance v0, Lcom/samsung/upnp/control/ActionRequest;

    invoke-direct {v0, p1}, Lcom/samsung/upnp/control/ActionRequest;-><init>(Lcom/samsung/http/HTTPRequest;)V

    .line 1759
    .local v0, crlReq:Lcom/samsung/upnp/control/ActionRequest;
    invoke-direct {p0, v0, v1}, Lcom/samsung/upnp/Device;->deviceControlRequestRecieved(Lcom/samsung/upnp/control/ControlRequest;Lcom/samsung/upnp/Service;)V

    goto :goto_2

    .line 1770
    .end local v0           #crlReq:Lcom/samsung/upnp/control/ActionRequest;
    :cond_16
    invoke-direct {p0, p1}, Lcom/samsung/upnp/Device;->soapBadActionRecieved(Lcom/samsung/http/HTTPRequest;)V

    goto :goto_2
.end method

.method private soapBadActionRecieved(Lcom/samsung/http/HTTPRequest;)V
    .registers 4
    .parameter "soapReq"

    .prologue
    .line 1741
    if-nez p1, :cond_3

    .line 1746
    :goto_2
    return-void

    .line 1743
    :cond_3
    new-instance v0, Lcom/samsung/soap/SOAPResponse;

    invoke-direct {v0}, Lcom/samsung/soap/SOAPResponse;-><init>()V

    .line 1744
    .local v0, soapRes:Lcom/samsung/soap/SOAPResponse;
    const/16 v1, 0x190

    invoke-virtual {v0, v1}, Lcom/samsung/soap/SOAPResponse;->setStatusCode(I)V

    .line 1745
    invoke-virtual {p1, v0}, Lcom/samsung/http/HTTPRequest;->post(Lcom/samsung/http/HTTPResponse;)Z

    goto :goto_2
.end method

.method private upnpBadSubscriptionRecieved(Lcom/samsung/upnp/event/SubscriptionRequest;I)V
    .registers 4
    .parameter "subReq"
    .parameter "code"

    .prologue
    .line 1838
    if-nez p1, :cond_3

    .line 1843
    :goto_2
    return-void

    .line 1840
    :cond_3
    new-instance v0, Lcom/samsung/upnp/event/SubscriptionResponse;

    invoke-direct {v0}, Lcom/samsung/upnp/event/SubscriptionResponse;-><init>()V

    .line 1841
    .local v0, subRes:Lcom/samsung/upnp/event/SubscriptionResponse;
    invoke-virtual {v0, p2}, Lcom/samsung/upnp/event/SubscriptionResponse;->setErrorResponse(I)V

    .line 1842
    invoke-virtual {p1, v0}, Lcom/samsung/upnp/event/SubscriptionRequest;->post(Lcom/samsung/upnp/event/SubscriptionResponse;)V

    goto :goto_2
.end method


# virtual methods
.method public announce()V
    .registers 9

    .prologue
    .line 1317
    invoke-static {}, Lcom/samsung/upnp/Device;->notifyWait()V

    .line 1319
    invoke-static {}, Lcom/samsung/net/HostInterface;->getNHostAddresses()I

    move-result v4

    .line 1320
    .local v4, nHostAddrs:I
    const/4 v3, 0x0

    .local v3, n:I
    :goto_8
    if-lt v3, v4, :cond_b

    .line 1334
    return-void

    .line 1321
    :cond_b
    invoke-static {v3}, Lcom/samsung/net/HostInterface;->getHostAddress(I)Ljava/lang/String;

    move-result-object v0

    .line 1322
    .local v0, bindAddr:Ljava/lang/String;
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_1a

    .line 1320
    :cond_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 1324
    :cond_1a
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getSSDPAnnounceCount()I

    move-result v5

    .line 1325
    .local v5, ssdpCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1f
    if-ge v2, v5, :cond_17

    .line 1326
    invoke-virtual {p0, v0}, Lcom/samsung/upnp/Device;->announce(Ljava/lang/String;)V

    .line 1328
    const-wide/16 v6, 0xc8

    :try_start_26
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_29
    .catch Ljava/lang/InterruptedException; {:try_start_26 .. :try_end_29} :catch_2c

    .line 1325
    :goto_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 1329
    :catch_2c
    move-exception v1

    .line 1330
    .local v1, e:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_29
.end method

.method public announce(Ljava/lang/String;)V
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1260
    invoke-virtual {p0, p1}, Lcom/samsung/upnp/Device;->getLocationURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1261
    new-instance v2, Lcom/samsung/upnp/ssdp/SSDPNotifySocket;

    invoke-direct {v2, p1}, Lcom/samsung/upnp/ssdp/SSDPNotifySocket;-><init>(Ljava/lang/String;)V

    .line 1262
    new-instance v3, Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;

    invoke-direct {v3}, Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;-><init>()V

    .line 1263
    invoke-static {}, Lcom/samsung/upnp/UPnP;->getServerName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;->setServer(Ljava/lang/String;)V

    .line 1264
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getLeaseTime()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;->setLeaseTime(I)V

    .line 1265
    invoke-virtual {v3, v1}, Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;->setLocation(Ljava/lang/String;)V

    .line 1266
    const-string v1, "ssdp:alive"

    invoke-virtual {v3, v1}, Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;->setNTS(Ljava/lang/String;)V

    .line 1269
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v1

    .line 1270
    invoke-virtual {v3, v1}, Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;->setNT(Ljava/lang/String;)V

    .line 1272
    invoke-virtual {v3, v1}, Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;->setUSN(Ljava/lang/String;)V

    .line 1273
    invoke-virtual {v2, v3}, Lcom/samsung/upnp/ssdp/SSDPNotifySocket;->post(Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;)Z

    .line 1275
    const-string v1, "[FT]-Stack"

    const-string v4, "device announce"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->isRootDevice()Z

    move-result v1

    if-eqz v1, :cond_50

    .line 1278
    invoke-direct {p0}, Lcom/samsung/upnp/Device;->getNotifyDeviceNT()Ljava/lang/String;

    move-result-object v1

    .line 1279
    invoke-virtual {v3, v1}, Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;->setNT(Ljava/lang/String;)V

    .line 1280
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getNotifyRootDeviceUSN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;->setUSN(Ljava/lang/String;)V

    .line 1281
    invoke-virtual {v2, v3}, Lcom/samsung/upnp/ssdp/SSDPNotifySocket;->post(Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;)Z

    .line 1285
    :cond_50
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getNotifyDeviceTypeUSN()Ljava/lang/String;

    move-result-object v1

    .line 1286
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getNotifyDeviceTypeNT()Ljava/lang/String;

    move-result-object v4

    .line 1287
    invoke-virtual {v3, v4}, Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;->setNT(Ljava/lang/String;)V

    .line 1288
    invoke-virtual {v3, v1}, Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;->setUSN(Ljava/lang/String;)V

    .line 1289
    invoke-virtual {v2, v3}, Lcom/samsung/upnp/ssdp/SSDPNotifySocket;->post(Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;)Z

    .line 1292
    invoke-virtual {v2}, Lcom/samsung/upnp/ssdp/SSDPNotifySocket;->close()Z

    .line 1294
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getServiceList()Lcom/samsung/upnp/ServiceList;

    move-result-object v2

    .line 1295
    invoke-virtual {v2}, Lcom/samsung/upnp/ServiceList;->size()I

    move-result v3

    move v1, v0

    .line 1296
    :goto_6d
    if-lt v1, v3, :cond_7a

    .line 1301
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getDeviceList()Lcom/samsung/upnp/DeviceList;

    move-result-object v1

    .line 1302
    invoke-virtual {v1}, Lcom/samsung/upnp/DeviceList;->size()I

    move-result v2

    .line 1303
    :goto_77
    if-lt v0, v2, :cond_84

    .line 1307
    return-void

    .line 1297
    :cond_7a
    invoke-virtual {v2, v1}, Lcom/samsung/upnp/ServiceList;->getService(I)Lcom/samsung/upnp/Service;

    move-result-object v4

    .line 1298
    invoke-virtual {v4, p1}, Lcom/samsung/upnp/Service;->announce(Ljava/lang/String;)V

    .line 1296
    add-int/lit8 v1, v1, 0x1

    goto :goto_6d

    .line 1304
    :cond_84
    invoke-virtual {v1, v0}, Lcom/samsung/upnp/DeviceList;->getDevice(I)Lcom/samsung/upnp/Device;

    move-result-object v3

    .line 1305
    invoke-virtual {v3, p1}, Lcom/samsung/upnp/Device;->announce(Ljava/lang/String;)V

    .line 1303
    add-int/lit8 v0, v0, 0x1

    goto :goto_77
.end method

.method public getAction(Ljava/lang/String;)Lcom/samsung/upnp/Action;
    .registers 15
    .parameter "name"

    .prologue
    .line 1149
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getServiceList()Lcom/samsung/upnp/ServiceList;

    move-result-object v11

    .line 1150
    .local v11, serviceList:Lcom/samsung/upnp/ServiceList;
    invoke-virtual {v11}, Lcom/samsung/upnp/ServiceList;->size()I

    move-result v10

    .line 1151
    .local v10, serviceCnt:I
    const/4 v8, 0x0

    .local v8, n:I
    :goto_9
    if-lt v8, v10, :cond_18

    .line 1165
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getDeviceList()Lcom/samsung/upnp/DeviceList;

    move-result-object v6

    .line 1166
    .local v6, devList:Lcom/samsung/upnp/DeviceList;
    invoke-virtual {v6}, Lcom/samsung/upnp/DeviceList;->size()I

    move-result v5

    .line 1167
    .local v5, devCnt:I
    const/4 v8, 0x0

    :goto_14
    if-lt v8, v5, :cond_3e

    .line 1174
    const/4 v0, 0x0

    .end local v5           #devCnt:I
    .end local v6           #devList:Lcom/samsung/upnp/DeviceList;
    :cond_17
    :goto_17
    return-object v0

    .line 1152
    :cond_18
    invoke-virtual {v11, v8}, Lcom/samsung/upnp/ServiceList;->getService(I)Lcom/samsung/upnp/Service;

    move-result-object v9

    .line 1153
    .local v9, service:Lcom/samsung/upnp/Service;
    invoke-virtual {v9}, Lcom/samsung/upnp/Service;->getActionList()Lcom/samsung/upnp/ActionList;

    move-result-object v2

    .line 1154
    .local v2, actionList:Lcom/samsung/upnp/ActionList;
    invoke-virtual {v2}, Lcom/samsung/upnp/ActionList;->size()I

    move-result v1

    .line 1155
    .local v1, actionCnt:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_25
    if-lt v7, v1, :cond_2a

    .line 1151
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    .line 1156
    :cond_2a
    invoke-virtual {v2, v7}, Lcom/samsung/upnp/ActionList;->getAction(I)Lcom/samsung/upnp/Action;

    move-result-object v0

    .line 1157
    .local v0, action:Lcom/samsung/upnp/Action;
    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1158
    .local v3, actionName:Ljava/lang/String;
    if-nez v3, :cond_37

    .line 1155
    :cond_34
    add-int/lit8 v7, v7, 0x1

    goto :goto_25

    .line 1160
    :cond_37
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_34

    goto :goto_17

    .line 1168
    .end local v0           #action:Lcom/samsung/upnp/Action;
    .end local v1           #actionCnt:I
    .end local v2           #actionList:Lcom/samsung/upnp/ActionList;
    .end local v3           #actionName:Ljava/lang/String;
    .end local v7           #i:I
    .end local v9           #service:Lcom/samsung/upnp/Service;
    .restart local v5       #devCnt:I
    .restart local v6       #devList:Lcom/samsung/upnp/DeviceList;
    :cond_3e
    invoke-virtual {v6, v8}, Lcom/samsung/upnp/DeviceList;->getDevice(I)Lcom/samsung/upnp/Device;

    move-result-object v4

    .line 1169
    .local v4, dev:Lcom/samsung/upnp/Device;
    invoke-virtual {v4, p1}, Lcom/samsung/upnp/Device;->getAction(Ljava/lang/String;)Lcom/samsung/upnp/Action;

    move-result-object v0

    .line 1170
    .restart local v0       #action:Lcom/samsung/upnp/Action;
    if-nez v0, :cond_17

    .line 1167
    add-int/lit8 v8, v8, 0x1

    goto :goto_14
.end method

.method public getDescriptionFile()Ljava/io/File;
    .registers 2

    .prologue
    .line 398
    invoke-direct {p0}, Lcom/samsung/upnp/Device;->getDeviceData()Lcom/samsung/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/upnp/xml/DeviceData;->getDescriptionFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptionFilePath()Ljava/lang/String;
    .registers 3

    .prologue
    .line 421
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getDescriptionFile()Ljava/io/File;

    move-result-object v0

    .line 422
    .local v0, descriptionFile:Ljava/io/File;
    if-nez v0, :cond_9

    .line 423
    const-string v1, ""

    .line 424
    :goto_8
    return-object v1

    :cond_9
    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    goto :goto_8
.end method

.method public getDevice(Ljava/lang/String;)Lcom/samsung/upnp/Device;
    .registers 8
    .parameter "name"

    .prologue
    .line 922
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getDeviceList()Lcom/samsung/upnp/DeviceList;

    move-result-object v3

    .line 923
    .local v3, devList:Lcom/samsung/upnp/DeviceList;
    invoke-virtual {v3}, Lcom/samsung/upnp/DeviceList;->size()I

    move-result v2

    .line 924
    .local v2, devCnt:I
    const/4 v4, 0x0

    .local v4, n:I
    :goto_9
    if-lt v4, v2, :cond_d

    .line 932
    const/4 v1, 0x0

    :cond_c
    :goto_c
    return-object v1

    .line 925
    :cond_d
    invoke-virtual {v3, v4}, Lcom/samsung/upnp/DeviceList;->getDevice(I)Lcom/samsung/upnp/Device;

    move-result-object v1

    .line 926
    .local v1, dev:Lcom/samsung/upnp/Device;
    invoke-virtual {v1, p1}, Lcom/samsung/upnp/Device;->isDevice(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 928
    invoke-virtual {v1, p1}, Lcom/samsung/upnp/Device;->getDevice(Ljava/lang/String;)Lcom/samsung/upnp/Device;

    move-result-object v0

    .line 929
    .local v0, cdev:Lcom/samsung/upnp/Device;
    if-eqz v0, :cond_1f

    move-object v1, v0

    .line 930
    goto :goto_c

    .line 924
    :cond_1f
    add-int/lit8 v4, v4, 0x1

    goto :goto_9
.end method

.method public getDeviceByDescriptionURI(Ljava/lang/String;)Lcom/samsung/upnp/Device;
    .registers 8
    .parameter "uri"

    .prologue
    .line 937
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getDeviceList()Lcom/samsung/upnp/DeviceList;

    move-result-object v3

    .line 938
    .local v3, devList:Lcom/samsung/upnp/DeviceList;
    invoke-virtual {v3}, Lcom/samsung/upnp/DeviceList;->size()I

    move-result v2

    .line 939
    .local v2, devCnt:I
    const/4 v4, 0x0

    .local v4, n:I
    :goto_9
    if-lt v4, v2, :cond_d

    .line 947
    const/4 v1, 0x0

    :cond_c
    :goto_c
    return-object v1

    .line 940
    :cond_d
    invoke-virtual {v3, v4}, Lcom/samsung/upnp/DeviceList;->getDevice(I)Lcom/samsung/upnp/Device;

    move-result-object v1

    .line 941
    .local v1, dev:Lcom/samsung/upnp/Device;
    invoke-direct {v1, p1}, Lcom/samsung/upnp/Device;->isDescriptionURI(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 943
    invoke-virtual {v1, p1}, Lcom/samsung/upnp/Device;->getDeviceByDescriptionURI(Ljava/lang/String;)Lcom/samsung/upnp/Device;

    move-result-object v0

    .line 944
    .local v0, cdev:Lcom/samsung/upnp/Device;
    if-eqz v0, :cond_1f

    move-object v1, v0

    .line 945
    goto :goto_c

    .line 939
    :cond_1f
    add-int/lit8 v4, v4, 0x1

    goto :goto_9
.end method

.method public getDeviceList()Lcom/samsung/upnp/DeviceList;
    .registers 7

    .prologue
    .line 881
    new-instance v1, Lcom/samsung/upnp/DeviceList;

    invoke-direct {v1}, Lcom/samsung/upnp/DeviceList;-><init>()V

    .line 882
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getDeviceNode()Lcom/samsung/xml/Node;

    move-result-object v0

    const-string v2, "deviceList"

    invoke-virtual {v0, v2}, Lcom/samsung/xml/Node;->getNode(Ljava/lang/String;)Lcom/samsung/xml/Node;

    move-result-object v3

    .line 883
    if-nez v3, :cond_13

    move-object v0, v1

    .line 896
    :goto_12
    return-object v0

    .line 885
    :cond_13
    invoke-virtual {v3}, Lcom/samsung/xml/Node;->getNNodes()I

    move-result v4

    .line 886
    const/4 v0, 0x0

    move v2, v0

    :goto_19
    if-lt v2, v4, :cond_1d

    move-object v0, v1

    .line 896
    goto :goto_12

    .line 887
    :cond_1d
    invoke-virtual {v3, v2}, Lcom/samsung/xml/Node;->getNode(I)Lcom/samsung/xml/Node;

    move-result-object v0

    .line 888
    invoke-static {v0}, Lcom/samsung/upnp/Device;->isDeviceNode(Lcom/samsung/xml/Node;)Z

    move-result v5

    if-nez v5, :cond_2b

    .line 886
    :cond_27
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_19

    .line 890
    :cond_2b
    new-instance v5, Lcom/samsung/upnp/Device;

    invoke-direct {v5, v0}, Lcom/samsung/upnp/Device;-><init>(Lcom/samsung/xml/Node;)V

    .line 891
    invoke-virtual {v1, v5}, Lcom/samsung/upnp/DeviceList;->add(Ljava/lang/Object;)Z

    .line 892
    invoke-virtual {v5}, Lcom/samsung/upnp/Device;->getDeviceList()Lcom/samsung/upnp/DeviceList;

    move-result-object v0

    .line 893
    invoke-virtual {v0}, Lcom/samsung/upnp/DeviceList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/upnp/Device;

    .line 894
    invoke-virtual {v1, v0}, Lcom/samsung/upnp/DeviceList;->add(Ljava/lang/Object;)Z

    goto :goto_3b
.end method

.method public getDeviceNode()Lcom/samsung/xml/Node;
    .registers 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/samsung/upnp/Device;->deviceNode:Lcom/samsung/xml/Node;

    return-object v0
.end method

.method public getDeviceType()Ljava/lang/String;
    .registers 3

    .prologue
    .line 662
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getDeviceNode()Lcom/samsung/xml/Node;

    move-result-object v0

    const-string v1, "deviceType"

    invoke-virtual {v0, v1}, Lcom/samsung/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFriendlyName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 697
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getDeviceNode()Lcom/samsung/xml/Node;

    move-result-object v0

    .line 698
    .local v0, node:Lcom/samsung/xml/Node;
    if-nez v0, :cond_9

    .line 699
    const-string v1, ""

    .line 700
    :goto_8
    return-object v1

    :cond_9
    const-string v1, "friendlyName"

    invoke-virtual {v0, v1}, Lcom/samsung/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_8
.end method

.method public getHTTPPort()I
    .registers 2

    .prologue
    .line 1558
    invoke-direct {p0}, Lcom/samsung/upnp/Device;->getDeviceData()Lcom/samsung/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/upnp/xml/DeviceData;->getHTTPPort()I

    move-result v0

    return v0
.end method

.method public getIconList()Lcom/samsung/upnp/IconList;
    .registers 7

    .prologue
    .line 1183
    new-instance v0, Lcom/samsung/upnp/IconList;

    invoke-direct {v0}, Lcom/samsung/upnp/IconList;-><init>()V

    .line 1184
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getDeviceNode()Lcom/samsung/xml/Node;

    move-result-object v1

    const-string v2, "iconList"

    invoke-virtual {v1, v2}, Lcom/samsung/xml/Node;->getNode(Ljava/lang/String;)Lcom/samsung/xml/Node;

    move-result-object v2

    .line 1185
    if-nez v2, :cond_12

    .line 1195
    :cond_11
    return-object v0

    .line 1187
    :cond_12
    invoke-virtual {v2}, Lcom/samsung/xml/Node;->getNNodes()I

    move-result v3

    .line 1188
    const/4 v1, 0x0

    :goto_17
    if-ge v1, v3, :cond_11

    .line 1189
    invoke-virtual {v2, v1}, Lcom/samsung/xml/Node;->getNode(I)Lcom/samsung/xml/Node;

    move-result-object v4

    .line 1190
    invoke-static {v4}, Lcom/samsung/upnp/Icon;->isIconNode(Lcom/samsung/xml/Node;)Z

    move-result v5

    if-nez v5, :cond_26

    .line 1188
    :goto_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 1192
    :cond_26
    new-instance v5, Lcom/samsung/upnp/Icon;

    invoke-direct {v5, v4}, Lcom/samsung/upnp/Icon;-><init>(Lcom/samsung/xml/Node;)V

    .line 1193
    invoke-virtual {v0, v5}, Lcom/samsung/upnp/IconList;->add(Ljava/lang/Object;)Z

    goto :goto_23
.end method

.method public getInterfaceAddress()Ljava/lang/String;
    .registers 3

    .prologue
    .line 2136
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getSSDPPacket()Lcom/samsung/upnp/ssdp/SSDPPacket;

    move-result-object v0

    .line 2137
    .local v0, ssdpPacket:Lcom/samsung/upnp/ssdp/SSDPPacket;
    if-nez v0, :cond_9

    .line 2138
    const-string v1, ""

    .line 2139
    :goto_8
    return-object v1

    :cond_9
    invoke-virtual {v0}, Lcom/samsung/upnp/ssdp/SSDPPacket;->getLocalAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_8
.end method

.method public getLeaseTime()I
    .registers 3

    .prologue
    .line 578
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getSSDPPacket()Lcom/samsung/upnp/ssdp/SSDPPacket;

    move-result-object v0

    .line 579
    .local v0, packet:Lcom/samsung/upnp/ssdp/SSDPPacket;
    if-eqz v0, :cond_b

    .line 580
    invoke-virtual {v0}, Lcom/samsung/upnp/ssdp/SSDPPacket;->getLeaseTime()I

    move-result v1

    .line 581
    :goto_a
    return v1

    :cond_b
    invoke-direct {p0}, Lcom/samsung/upnp/Device;->getDeviceData()Lcom/samsung/upnp/xml/DeviceData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/upnp/xml/DeviceData;->getLeaseTime()I

    move-result v1

    goto :goto_a
.end method

.method public getLocation()Ljava/lang/String;
    .registers 3

    .prologue
    .line 556
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getSSDPPacket()Lcom/samsung/upnp/ssdp/SSDPPacket;

    move-result-object v0

    .line 557
    .local v0, packet:Lcom/samsung/upnp/ssdp/SSDPPacket;
    if-eqz v0, :cond_b

    .line 558
    invoke-virtual {v0}, Lcom/samsung/upnp/ssdp/SSDPPacket;->getLocation()Ljava/lang/String;

    move-result-object v1

    .line 559
    :goto_a
    return-object v1

    :cond_b
    invoke-direct {p0}, Lcom/samsung/upnp/Device;->getDeviceData()Lcom/samsung/upnp/xml/DeviceData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/upnp/xml/DeviceData;->getLocation()Ljava/lang/String;

    move-result-object v1

    goto :goto_a
.end method

.method public getLocationURL(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "host"

    .prologue
    .line 1212
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getHTTPPort()I

    move-result v0

    invoke-direct {p0}, Lcom/samsung/upnp/Device;->getDescriptionURI()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/samsung/net/HostInterface;->getHostURL(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getManufacture()Ljava/lang/String;
    .registers 3

    .prologue
    .line 716
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getDeviceNode()Lcom/samsung/xml/Node;

    move-result-object v0

    const-string v1, "manufacturer"

    invoke-virtual {v0, v1}, Lcom/samsung/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getModelName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 764
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getDeviceNode()Lcom/samsung/xml/Node;

    move-result-object v0

    const-string v1, "modelName"

    invoke-virtual {v0, v1}, Lcom/samsung/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getModelNumber()Ljava/lang/String;
    .registers 3

    .prologue
    .line 780
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getDeviceNode()Lcom/samsung/xml/Node;

    move-result-object v0

    const-string v1, "modelNumber"

    invoke-virtual {v0, v1}, Lcom/samsung/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getNotifyDeviceTypeNT()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1231
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getDeviceType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getNotifyDeviceTypeUSN()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getDeviceType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getNotifyRootDeviceUSN()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "upnp:rootdevice"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRootDevice()Lcom/samsung/upnp/Device;
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 346
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getRootNode()Lcom/samsung/xml/Node;

    move-result-object v1

    .line 347
    .local v1, rootNode:Lcom/samsung/xml/Node;
    if-nez v1, :cond_8

    .line 352
    :cond_7
    :goto_7
    return-object v2

    .line 349
    :cond_8
    const-string v3, "device"

    invoke-virtual {v1, v3}, Lcom/samsung/xml/Node;->getNode(Ljava/lang/String;)Lcom/samsung/xml/Node;

    move-result-object v0

    .line 350
    .local v0, devNode:Lcom/samsung/xml/Node;
    if-eqz v0, :cond_7

    .line 352
    new-instance v2, Lcom/samsung/upnp/Device;

    invoke-direct {v2, v1, v0}, Lcom/samsung/upnp/Device;-><init>(Lcom/samsung/xml/Node;Lcom/samsung/xml/Node;)V

    goto :goto_7
.end method

.method public getRootNode()Lcom/samsung/xml/Node;
    .registers 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/samsung/upnp/Device;->rootNode:Lcom/samsung/xml/Node;

    if-eqz v0, :cond_7

    .line 190
    iget-object v0, p0, Lcom/samsung/upnp/Device;->rootNode:Lcom/samsung/xml/Node;

    .line 193
    :goto_6
    return-object v0

    .line 191
    :cond_7
    iget-object v0, p0, Lcom/samsung/upnp/Device;->deviceNode:Lcom/samsung/xml/Node;

    if-nez v0, :cond_d

    .line 192
    const/4 v0, 0x0

    goto :goto_6

    .line 193
    :cond_d
    iget-object v0, p0, Lcom/samsung/upnp/Device;->deviceNode:Lcom/samsung/xml/Node;

    invoke-virtual {v0}, Lcom/samsung/xml/Node;->getRootNode()Lcom/samsung/xml/Node;

    move-result-object v0

    goto :goto_6
.end method

.method public getSSDPAnnounceCount()I
    .registers 2

    .prologue
    .line 314
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->isNMPRMode()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->isWirelessMode()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 315
    const/4 v0, 0x4

    .line 316
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x2

    goto :goto_d
.end method

.method public getSSDPPacket()Lcom/samsung/upnp/ssdp/SSDPPacket;
    .registers 2

    .prologue
    .line 540
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->isRootDevice()Z

    move-result v0

    if-nez v0, :cond_8

    .line 541
    const/4 v0, 0x0

    .line 542
    :goto_7
    return-object v0

    :cond_8
    invoke-direct {p0}, Lcom/samsung/upnp/Device;->getDeviceData()Lcom/samsung/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/upnp/xml/DeviceData;->getSSDPPacket()Lcom/samsung/upnp/ssdp/SSDPPacket;

    move-result-object v0

    goto :goto_7
.end method

.method public getService(Ljava/lang/String;)Lcom/samsung/upnp/Service;
    .registers 10
    .parameter "name"

    .prologue
    .line 973
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getServiceList()Lcom/samsung/upnp/ServiceList;

    move-result-object v6

    .line 974
    .local v6, serviceList:Lcom/samsung/upnp/ServiceList;
    invoke-virtual {v6}, Lcom/samsung/upnp/ServiceList;->size()I

    move-result v5

    .line 975
    .local v5, serviceCnt:I
    const/4 v3, 0x0

    .local v3, n:I
    :goto_9
    if-lt v3, v5, :cond_18

    .line 981
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getDeviceList()Lcom/samsung/upnp/DeviceList;

    move-result-object v2

    .line 982
    .local v2, devList:Lcom/samsung/upnp/DeviceList;
    invoke-virtual {v2}, Lcom/samsung/upnp/DeviceList;->size()I

    move-result v1

    .line 983
    .local v1, devCnt:I
    const/4 v3, 0x0

    :goto_14
    if-lt v3, v1, :cond_25

    .line 990
    const/4 v4, 0x0

    .end local v1           #devCnt:I
    .end local v2           #devList:Lcom/samsung/upnp/DeviceList;
    :cond_17
    return-object v4

    .line 976
    :cond_18
    invoke-virtual {v6, v3}, Lcom/samsung/upnp/ServiceList;->getService(I)Lcom/samsung/upnp/Service;

    move-result-object v4

    .line 977
    .local v4, service:Lcom/samsung/upnp/Service;
    invoke-virtual {v4, p1}, Lcom/samsung/upnp/Service;->isService(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_17

    .line 975
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 984
    .end local v4           #service:Lcom/samsung/upnp/Service;
    .restart local v1       #devCnt:I
    .restart local v2       #devList:Lcom/samsung/upnp/DeviceList;
    :cond_25
    invoke-virtual {v2, v3}, Lcom/samsung/upnp/DeviceList;->getDevice(I)Lcom/samsung/upnp/Device;

    move-result-object v0

    .line 985
    .local v0, dev:Lcom/samsung/upnp/Device;
    invoke-virtual {v0, p1}, Lcom/samsung/upnp/Device;->getService(Ljava/lang/String;)Lcom/samsung/upnp/Service;

    move-result-object v4

    .line 986
    .restart local v4       #service:Lcom/samsung/upnp/Service;
    if-nez v4, :cond_17

    .line 983
    add-int/lit8 v3, v3, 0x1

    goto :goto_14
.end method

.method public getServiceByControlURL(Ljava/lang/String;)Lcom/samsung/upnp/Service;
    .registers 10
    .parameter "searchUrl"

    .prologue
    .line 1017
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getServiceList()Lcom/samsung/upnp/ServiceList;

    move-result-object v6

    .line 1018
    .local v6, serviceList:Lcom/samsung/upnp/ServiceList;
    invoke-virtual {v6}, Lcom/samsung/upnp/ServiceList;->size()I

    move-result v5

    .line 1019
    .local v5, serviceCnt:I
    const/4 v3, 0x0

    .local v3, n:I
    :goto_9
    if-lt v3, v5, :cond_18

    .line 1025
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getDeviceList()Lcom/samsung/upnp/DeviceList;

    move-result-object v2

    .line 1026
    .local v2, devList:Lcom/samsung/upnp/DeviceList;
    invoke-virtual {v2}, Lcom/samsung/upnp/DeviceList;->size()I

    move-result v1

    .line 1027
    .local v1, devCnt:I
    const/4 v3, 0x0

    :goto_14
    if-lt v3, v1, :cond_25

    .line 1034
    const/4 v4, 0x0

    .end local v1           #devCnt:I
    .end local v2           #devList:Lcom/samsung/upnp/DeviceList;
    :cond_17
    return-object v4

    .line 1020
    :cond_18
    invoke-virtual {v6, v3}, Lcom/samsung/upnp/ServiceList;->getService(I)Lcom/samsung/upnp/Service;

    move-result-object v4

    .line 1021
    .local v4, service:Lcom/samsung/upnp/Service;
    invoke-virtual {v4, p1}, Lcom/samsung/upnp/Service;->isControlURL(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_17

    .line 1019
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 1028
    .end local v4           #service:Lcom/samsung/upnp/Service;
    .restart local v1       #devCnt:I
    .restart local v2       #devList:Lcom/samsung/upnp/DeviceList;
    :cond_25
    invoke-virtual {v2, v3}, Lcom/samsung/upnp/DeviceList;->getDevice(I)Lcom/samsung/upnp/Device;

    move-result-object v0

    .line 1029
    .local v0, dev:Lcom/samsung/upnp/Device;
    invoke-virtual {v0, p1}, Lcom/samsung/upnp/Device;->getServiceByControlURL(Ljava/lang/String;)Lcom/samsung/upnp/Service;

    move-result-object v4

    .line 1030
    .restart local v4       #service:Lcom/samsung/upnp/Service;
    if-nez v4, :cond_17

    .line 1027
    add-int/lit8 v3, v3, 0x1

    goto :goto_14
.end method

.method public getServiceByEventSubURL(Ljava/lang/String;)Lcom/samsung/upnp/Service;
    .registers 10
    .parameter "searchUrl"

    .prologue
    .line 1039
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getServiceList()Lcom/samsung/upnp/ServiceList;

    move-result-object v6

    .line 1040
    .local v6, serviceList:Lcom/samsung/upnp/ServiceList;
    invoke-virtual {v6}, Lcom/samsung/upnp/ServiceList;->size()I

    move-result v5

    .line 1041
    .local v5, serviceCnt:I
    const/4 v3, 0x0

    .local v3, n:I
    :goto_9
    if-lt v3, v5, :cond_18

    .line 1047
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getDeviceList()Lcom/samsung/upnp/DeviceList;

    move-result-object v2

    .line 1048
    .local v2, devList:Lcom/samsung/upnp/DeviceList;
    invoke-virtual {v2}, Lcom/samsung/upnp/DeviceList;->size()I

    move-result v1

    .line 1049
    .local v1, devCnt:I
    const/4 v3, 0x0

    :goto_14
    if-lt v3, v1, :cond_25

    .line 1056
    const/4 v4, 0x0

    .end local v1           #devCnt:I
    .end local v2           #devList:Lcom/samsung/upnp/DeviceList;
    :cond_17
    return-object v4

    .line 1042
    :cond_18
    invoke-virtual {v6, v3}, Lcom/samsung/upnp/ServiceList;->getService(I)Lcom/samsung/upnp/Service;

    move-result-object v4

    .line 1043
    .local v4, service:Lcom/samsung/upnp/Service;
    invoke-virtual {v4, p1}, Lcom/samsung/upnp/Service;->isEventSubURL(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_17

    .line 1041
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 1050
    .end local v4           #service:Lcom/samsung/upnp/Service;
    .restart local v1       #devCnt:I
    .restart local v2       #devList:Lcom/samsung/upnp/DeviceList;
    :cond_25
    invoke-virtual {v2, v3}, Lcom/samsung/upnp/DeviceList;->getDevice(I)Lcom/samsung/upnp/Device;

    move-result-object v0

    .line 1051
    .local v0, dev:Lcom/samsung/upnp/Device;
    invoke-virtual {v0, p1}, Lcom/samsung/upnp/Device;->getServiceByEventSubURL(Ljava/lang/String;)Lcom/samsung/upnp/Service;

    move-result-object v4

    .line 1052
    .restart local v4       #service:Lcom/samsung/upnp/Service;
    if-nez v4, :cond_17

    .line 1049
    add-int/lit8 v3, v3, 0x1

    goto :goto_14
.end method

.method public getServiceBySCPDURL(Ljava/lang/String;)Lcom/samsung/upnp/Service;
    .registers 10
    .parameter "searchUrl"

    .prologue
    .line 995
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getServiceList()Lcom/samsung/upnp/ServiceList;

    move-result-object v6

    .line 996
    .local v6, serviceList:Lcom/samsung/upnp/ServiceList;
    invoke-virtual {v6}, Lcom/samsung/upnp/ServiceList;->size()I

    move-result v5

    .line 997
    .local v5, serviceCnt:I
    const/4 v3, 0x0

    .local v3, n:I
    :goto_9
    if-lt v3, v5, :cond_18

    .line 1003
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getDeviceList()Lcom/samsung/upnp/DeviceList;

    move-result-object v2

    .line 1004
    .local v2, devList:Lcom/samsung/upnp/DeviceList;
    invoke-virtual {v2}, Lcom/samsung/upnp/DeviceList;->size()I

    move-result v1

    .line 1005
    .local v1, devCnt:I
    const/4 v3, 0x0

    :goto_14
    if-lt v3, v1, :cond_25

    .line 1012
    const/4 v4, 0x0

    .end local v1           #devCnt:I
    .end local v2           #devList:Lcom/samsung/upnp/DeviceList;
    :cond_17
    return-object v4

    .line 998
    :cond_18
    invoke-virtual {v6, v3}, Lcom/samsung/upnp/ServiceList;->getService(I)Lcom/samsung/upnp/Service;

    move-result-object v4

    .line 999
    .local v4, service:Lcom/samsung/upnp/Service;
    invoke-virtual {v4, p1}, Lcom/samsung/upnp/Service;->isSCPDURL(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_17

    .line 997
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 1006
    .end local v4           #service:Lcom/samsung/upnp/Service;
    .restart local v1       #devCnt:I
    .restart local v2       #devList:Lcom/samsung/upnp/DeviceList;
    :cond_25
    invoke-virtual {v2, v3}, Lcom/samsung/upnp/DeviceList;->getDevice(I)Lcom/samsung/upnp/Device;

    move-result-object v0

    .line 1007
    .local v0, dev:Lcom/samsung/upnp/Device;
    invoke-virtual {v0, p1}, Lcom/samsung/upnp/Device;->getServiceBySCPDURL(Ljava/lang/String;)Lcom/samsung/upnp/Service;

    move-result-object v4

    .line 1008
    .restart local v4       #service:Lcom/samsung/upnp/Service;
    if-nez v4, :cond_17

    .line 1005
    add-int/lit8 v3, v3, 0x1

    goto :goto_14
.end method

.method public getServiceList()Lcom/samsung/upnp/ServiceList;
    .registers 7

    .prologue
    .line 956
    new-instance v0, Lcom/samsung/upnp/ServiceList;

    invoke-direct {v0}, Lcom/samsung/upnp/ServiceList;-><init>()V

    .line 957
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getDeviceNode()Lcom/samsung/xml/Node;

    move-result-object v1

    const-string v2, "serviceList"

    invoke-virtual {v1, v2}, Lcom/samsung/xml/Node;->getNode(Ljava/lang/String;)Lcom/samsung/xml/Node;

    move-result-object v2

    .line 958
    if-nez v2, :cond_12

    .line 968
    :cond_11
    return-object v0

    .line 960
    :cond_12
    invoke-virtual {v2}, Lcom/samsung/xml/Node;->getNNodes()I

    move-result v3

    .line 961
    const/4 v1, 0x0

    :goto_17
    if-ge v1, v3, :cond_11

    .line 962
    invoke-virtual {v2, v1}, Lcom/samsung/xml/Node;->getNode(I)Lcom/samsung/xml/Node;

    move-result-object v4

    .line 963
    invoke-static {v4}, Lcom/samsung/upnp/Service;->isServiceNode(Lcom/samsung/xml/Node;)Z

    move-result v5

    if-nez v5, :cond_26

    .line 961
    :goto_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 965
    :cond_26
    new-instance v5, Lcom/samsung/upnp/Service;

    invoke-direct {v5, v4}, Lcom/samsung/upnp/Service;-><init>(Lcom/samsung/xml/Node;)V

    .line 966
    invoke-virtual {v0, v5}, Lcom/samsung/upnp/ServiceList;->add(Ljava/lang/Object;)Z

    goto :goto_23
.end method

.method public getStateVariable(Ljava/lang/String;)Lcom/samsung/upnp/StateVariable;
    .registers 3
    .parameter "name"

    .prologue
    .line 1140
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/samsung/upnp/Device;->getStateVariable(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/upnp/StateVariable;

    move-result-object v0

    return-object v0
.end method

.method public getStateVariable(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/upnp/StateVariable;
    .registers 13
    .parameter "serviceType"
    .parameter "name"

    .prologue
    const/4 v8, 0x0

    .line 1109
    if-nez p1, :cond_7

    if-nez p2, :cond_7

    move-object v7, v8

    .line 1135
    :cond_6
    :goto_6
    return-object v7

    .line 1112
    :cond_7
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getServiceList()Lcom/samsung/upnp/ServiceList;

    move-result-object v6

    .line 1113
    .local v6, serviceList:Lcom/samsung/upnp/ServiceList;
    invoke-virtual {v6}, Lcom/samsung/upnp/ServiceList;->size()I

    move-result v5

    .line 1114
    .local v5, serviceCnt:I
    const/4 v3, 0x0

    .local v3, n:I
    :goto_10
    if-lt v3, v5, :cond_1f

    .line 1126
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getDeviceList()Lcom/samsung/upnp/DeviceList;

    move-result-object v2

    .line 1127
    .local v2, devList:Lcom/samsung/upnp/DeviceList;
    invoke-virtual {v2}, Lcom/samsung/upnp/DeviceList;->size()I

    move-result v1

    .line 1128
    .local v1, devCnt:I
    const/4 v3, 0x0

    :goto_1b
    if-lt v3, v1, :cond_39

    move-object v7, v8

    .line 1135
    goto :goto_6

    .line 1115
    .end local v1           #devCnt:I
    .end local v2           #devList:Lcom/samsung/upnp/DeviceList;
    :cond_1f
    invoke-virtual {v6, v3}, Lcom/samsung/upnp/ServiceList;->getService(I)Lcom/samsung/upnp/Service;

    move-result-object v4

    .line 1117
    .local v4, service:Lcom/samsung/upnp/Service;
    if-eqz p1, :cond_32

    .line 1118
    invoke-virtual {v4}, Lcom/samsung/upnp/Service;->getServiceType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_32

    .line 1114
    :cond_2f
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 1121
    :cond_32
    invoke-virtual {v4, p2}, Lcom/samsung/upnp/Service;->getStateVariable(Ljava/lang/String;)Lcom/samsung/upnp/StateVariable;

    move-result-object v7

    .line 1122
    .local v7, stateVar:Lcom/samsung/upnp/StateVariable;
    if-eqz v7, :cond_2f

    goto :goto_6

    .line 1129
    .end local v4           #service:Lcom/samsung/upnp/Service;
    .end local v7           #stateVar:Lcom/samsung/upnp/StateVariable;
    .restart local v1       #devCnt:I
    .restart local v2       #devList:Lcom/samsung/upnp/DeviceList;
    :cond_39
    invoke-virtual {v2, v3}, Lcom/samsung/upnp/DeviceList;->getDevice(I)Lcom/samsung/upnp/Device;

    move-result-object v0

    .line 1130
    .local v0, dev:Lcom/samsung/upnp/Device;
    invoke-virtual {v0, p1, p2}, Lcom/samsung/upnp/Device;->getStateVariable(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/upnp/StateVariable;

    move-result-object v7

    .line 1131
    .restart local v7       #stateVar:Lcom/samsung/upnp/StateVariable;
    if-nez v7, :cond_6

    .line 1128
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b
.end method

.method public getUDN()Ljava/lang/String;
    .registers 4

    .prologue
    .line 828
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getDeviceNode()Lcom/samsung/xml/Node;

    move-result-object v0

    .line 829
    .local v0, deviceNode:Lcom/samsung/xml/Node;
    if-nez v0, :cond_9

    .line 830
    const-string v1, ""

    .line 831
    :goto_8
    return-object v1

    :cond_9
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getDeviceNode()Lcom/samsung/xml/Node;

    move-result-object v1

    const-string v2, "UDN"

    invoke-virtual {v1, v2}, Lcom/samsung/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_8
.end method

.method public getURLBase()Ljava/lang/String;
    .registers 3

    .prologue
    .line 641
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->isRootDevice()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 642
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getRootNode()Lcom/samsung/xml/Node;

    move-result-object v0

    .line 643
    .local v0, rootNode:Lcom/samsung/xml/Node;
    if-eqz v0, :cond_13

    .line 644
    const-string v1, "URLBase"

    invoke-virtual {v0, v1}, Lcom/samsung/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 646
    .end local v0           #rootNode:Lcom/samsung/xml/Node;
    :goto_12
    return-object v1

    :cond_13
    const-string v1, ""

    goto :goto_12
.end method

.method public httpRequestRecieved(Lcom/samsung/http/HTTPRequest;)V
    .registers 4
    .parameter "httpReq"

    .prologue
    .line 1569
    invoke-static {}, Lcom/samsung/api/Debugs;->isOn()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1570
    invoke-virtual {p1}, Lcom/samsung/http/HTTPRequest;->print()V

    .line 1573
    :cond_9
    invoke-virtual {p1}, Lcom/samsung/http/HTTPRequest;->isHeadRequest()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1574
    invoke-direct {p0, p1}, Lcom/samsung/upnp/Device;->httpHostRequestRecieved(Lcom/samsung/http/HTTPRequest;)V

    .line 1594
    :goto_12
    return-void

    .line 1578
    :cond_13
    invoke-virtual {p1}, Lcom/samsung/http/HTTPRequest;->isGetRequest()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1579
    invoke-direct {p0, p1}, Lcom/samsung/upnp/Device;->httpGetRequestRecieved(Lcom/samsung/http/HTTPRequest;)V

    goto :goto_12

    .line 1582
    :cond_1d
    invoke-virtual {p1}, Lcom/samsung/http/HTTPRequest;->isPostRequest()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 1583
    invoke-direct {p0, p1}, Lcom/samsung/upnp/Device;->httpPostRequestRecieved(Lcom/samsung/http/HTTPRequest;)V

    goto :goto_12

    .line 1587
    :cond_27
    invoke-virtual {p1}, Lcom/samsung/http/HTTPRequest;->isSubscribeRequest()Z

    move-result v1

    if-nez v1, :cond_33

    invoke-virtual {p1}, Lcom/samsung/http/HTTPRequest;->isUnsubscribeRequest()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 1588
    :cond_33
    new-instance v0, Lcom/samsung/upnp/event/SubscriptionRequest;

    invoke-direct {v0, p1}, Lcom/samsung/upnp/event/SubscriptionRequest;-><init>(Lcom/samsung/http/HTTPRequest;)V

    .line 1589
    .local v0, subReq:Lcom/samsung/upnp/event/SubscriptionRequest;
    invoke-direct {p0, v0}, Lcom/samsung/upnp/Device;->deviceEventSubscriptionRecieved(Lcom/samsung/upnp/event/SubscriptionRequest;)V

    goto :goto_12

    .line 1593
    .end local v0           #subReq:Lcom/samsung/upnp/event/SubscriptionRequest;
    :cond_3c
    invoke-virtual {p1}, Lcom/samsung/http/HTTPRequest;->returnBadRequest()Z

    goto :goto_12
.end method

.method public httptRecieved(Ljava/lang/String;)V
    .registers 2
    .parameter "firstLine"

    .prologue
    .line 1598
    return-void
.end method

.method public isDevice(Ljava/lang/String;)Z
    .registers 7
    .parameter "name"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 901
    if-nez p1, :cond_5

    .line 917
    :cond_4
    :goto_4
    return v2

    .line 903
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    move v2, v3

    .line 904
    goto :goto_4

    .line 905
    :cond_11
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getFriendlyName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    move v2, v3

    .line 906
    goto :goto_4

    .line 910
    :cond_1d
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getSSDPPacket()Lcom/samsung/upnp/ssdp/SSDPPacket;

    move-result-object v0

    .line 911
    .local v0, packet:Lcom/samsung/upnp/ssdp/SSDPPacket;
    if-eqz v0, :cond_4

    .line 912
    invoke-virtual {v0}, Lcom/samsung/upnp/ssdp/SSDPPacket;->getUSN()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/upnp/device/USN;->getUUID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 913
    .local v1, uuid:Ljava/lang/String;
    if-eqz v1, :cond_4

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v2, v3

    .line 914
    goto :goto_4
.end method

.method public isNMPRMode()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 290
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getDeviceNode()Lcom/samsung/xml/Node;

    move-result-object v0

    .line 291
    .local v0, devNode:Lcom/samsung/xml/Node;
    if-nez v0, :cond_8

    .line 293
    :cond_7
    :goto_7
    return v1

    :cond_8
    const-string v2, "INMPR03"

    invoke-virtual {v0, v2}, Lcom/samsung/xml/Node;->getNode(Ljava/lang/String;)Lcom/samsung/xml/Node;

    move-result-object v2

    if-eqz v2, :cond_7

    const/4 v1, 0x1

    goto :goto_7
.end method

.method public isRootDevice()Z
    .registers 2

    .prologue
    .line 526
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getRootNode()Lcom/samsung/xml/Node;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isWirelessMode()Z
    .registers 2

    .prologue
    .line 309
    iget-boolean v0, p0, Lcom/samsung/upnp/Device;->wirelessMode:Z

    return v0
.end method

.method public setSSDPPacket(Lcom/samsung/upnp/ssdp/SSDPPacket;)V
    .registers 3
    .parameter "packet"

    .prologue
    .line 535
    invoke-direct {p0}, Lcom/samsung/upnp/Device;->getDeviceData()Lcom/samsung/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/upnp/xml/DeviceData;->setSSDPPacket(Lcom/samsung/upnp/ssdp/SSDPPacket;)V

    .line 536
    return-void
.end method

.method public setWirelessMode(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 304
    iput-boolean p1, p0, Lcom/samsung/upnp/Device;->wirelessMode:Z

    .line 305
    return-void
.end method