.class public final Lcom/google/api/services/plusi/model/NameProtoJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "NameProtoJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/NameProto;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/NameProtoJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/NameProtoJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/NameProtoJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/NameProtoJson;->INSTANCE:Lcom/google/api/services/plusi/model/NameProtoJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/NameProto;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "rawText"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "language"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "routeDirection"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "text"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "shortText"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "featureDesignationProbability"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "flag"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 29
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/NameProtoJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/NameProtoJson;->INSTANCE:Lcom/google/api/services/plusi/model/NameProtoJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/NameProto;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 38
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/NameProto;->rawText:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/NameProto;->language:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/NameProto;->routeDirection:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/NameProto;->text:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/google/api/services/plusi/model/NameProto;->shortText:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/google/api/services/plusi/model/NameProto;->featureDesignationProbability:Ljava/lang/Float;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p1, Lcom/google/api/services/plusi/model/NameProto;->flag:Ljava/util/List;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/NameProto;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/NameProtoJson;->getValues(Lcom/google/api/services/plusi/model/NameProto;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/NameProto;
    .registers 2

    .prologue
    .line 33
    new-instance v0, Lcom/google/api/services/plusi/model/NameProto;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/NameProto;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/NameProtoJson;->newInstance()Lcom/google/api/services/plusi/model/NameProto;

    move-result-object v0

    return-object v0
.end method