.class public final Lcom/google/api/services/plus/model/ActivityObjectAttachmentsImage;
.super Lcom/google/api/client/json/GenericJson;
.source "ActivityObjectAttachmentsImage.java"


# instance fields
.field private height:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "height"
    .end annotation
.end field

.field private type:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "type"
    .end annotation
.end field

.field private url:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "url"
    .end annotation
.end field

.field private width:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "width"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/api/services/plus/model/ActivityObjectAttachmentsImage;->url:Ljava/lang/String;

    return-object v0
.end method