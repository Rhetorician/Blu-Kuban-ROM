.class public abstract Lcom/google/android/apps/uploader/googlemobile/common/io/BaseTcpConnectionFactory;
.super Lcom/google/android/apps/uploader/googlemobile/common/io/BaseConnectionFactory;

# interfaces
.implements Lcom/google/android/apps/uploader/googlemobile/common/io/TcpConnectionFactory;


# static fields
.field protected static final NETWORK_AVAILABLE_PREF_NAME:Ljava/lang/String; = "TcpWorks"


# direct methods
.method protected constructor <init>()V
    .registers 2

    const-string v0, "TcpWorks"

    invoke-direct {p0, v0}, Lcom/google/android/apps/uploader/googlemobile/common/io/BaseConnectionFactory;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public isAvailable()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public notifyUnreliable()V
    .registers 1

    return-void
.end method

.method public setLogAdapter(Lcom/google/android/apps/uploader/googlemobile/common/io/LogAdapter;)V
    .registers 2

    return-void
.end method
