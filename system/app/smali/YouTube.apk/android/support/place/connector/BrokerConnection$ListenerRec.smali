.class Landroid/support/place/connector/BrokerConnection$ListenerRec;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field broker:Landroid/support/place/connector/Broker;

.field listener:Landroid/support/place/connector/BrokerConnection$Listener;

.field place:Landroid/support/place/connector/PlaceInfo;

.field final synthetic this$0:Landroid/support/place/connector/BrokerConnection;


# direct methods
.method private constructor <init>(Landroid/support/place/connector/BrokerConnection;)V
    .registers 2
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Landroid/support/place/connector/BrokerConnection$ListenerRec;->this$0:Landroid/support/place/connector/BrokerConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/place/connector/BrokerConnection;Landroid/support/place/connector/BrokerConnection$1;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/support/place/connector/BrokerConnection$ListenerRec;-><init>(Landroid/support/place/connector/BrokerConnection;)V

    return-void
.end method