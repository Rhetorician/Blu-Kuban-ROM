.class public final Lcom/google/api/services/plusi/model/HangoutData;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "HangoutData.java"


# instance fields
.field public broadcastDetails:Lcom/google/api/services/plusi/model/HangoutDataBroadcastDetails;

.field public broadcastId:Ljava/lang/String;

.field public broadcastTitle:Ljava/lang/String;

.field public hashedRoomId:Ljava/lang/String;

.field public idIsAutogenerated:Ljava/lang/Boolean;

.field public isActive:Ljava/lang/Boolean;

.field public isNoMinors:Ljava/lang/Boolean;

.field public isViewOnly:Ljava/lang/Boolean;

.field public joinType:Ljava/lang/String;

.field public notificationId:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public occupant:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/HangoutOccupant;",
            ">;"
        }
    .end annotation
.end field

.field public occupantEver:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/HangoutOccupant;",
            ">;"
        }
    .end annotation
.end field

.field public preferredLanguage:Ljava/lang/String;

.field public region:Ljava/lang/String;

.field public roomDomain:Ljava/lang/String;

.field public roomId:Ljava/lang/String;

.field public subject:Ljava/lang/String;

.field public topic:Ljava/lang/String;

.field public topicMaybeNsfw:Ljava/lang/Boolean;

.field public topicUrl:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 127
    const-class v0, Lcom/google/api/services/plusi/model/HangoutOccupant;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 140
    const-class v0, Lcom/google/api/services/plusi/model/HangoutOccupant;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 141
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
