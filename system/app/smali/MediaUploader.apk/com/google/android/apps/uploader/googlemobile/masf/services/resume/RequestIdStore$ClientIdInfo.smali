.class Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/RequestIdStore$ClientIdInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/RequestIdStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ClientIdInfo"
.end annotation


# instance fields
.field private serverId:Ljava/lang/String;

.field private timestamp:J


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/RequestIdStore$ClientIdInfo;->serverId:Ljava/lang/String;

    iput-wide p2, p0, Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/RequestIdStore$ClientIdInfo;->timestamp:J

    return-void
.end method


# virtual methods
.method public getServerId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/RequestIdStore$ClientIdInfo;->serverId:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/RequestIdStore$ClientIdInfo;->timestamp:J

    return-wide v0
.end method

.method public setServerId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/RequestIdStore$ClientIdInfo;->serverId:Ljava/lang/String;

    return-void
.end method

.method public setTimestamp(J)V
    .registers 3

    iput-wide p1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/RequestIdStore$ClientIdInfo;->timestamp:J

    return-void
.end method
