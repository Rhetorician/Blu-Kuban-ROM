.class Lcom/google/android/apps/pos/network/PosClient$GetRequestJson$Params;
.super Lcom/google/android/apps/pos/network/PosClient$PosRequestJson$Params;
.source "PosClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/pos/network/PosClient$GetRequestJson;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Params"
.end annotation


# instance fields
.field private ad:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private maxPeople:Ljava/lang/Integer;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "max_people"
    .end annotation
.end field

.field private noLog:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "nolog"
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 349
    invoke-direct {p0}, Lcom/google/android/apps/pos/network/PosClient$PosRequestJson$Params;-><init>()V

    .line 359
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/pos/network/PosClient$GetRequestJson$Params;->maxPeople:Ljava/lang/Integer;

    .line 363
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/apps/pos/network/PosClient$GetRequestJson$Params;->noLog:Ljava/lang/Boolean;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/pos/network/PosClient$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 349
    invoke-direct {p0}, Lcom/google/android/apps/pos/network/PosClient$GetRequestJson$Params;-><init>()V

    return-void
.end method

.method static synthetic access$502(Lcom/google/android/apps/pos/network/PosClient$GetRequestJson$Params;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 349
    iput-object p1, p0, Lcom/google/android/apps/pos/network/PosClient$GetRequestJson$Params;->id:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lcom/google/android/apps/pos/network/PosClient$GetRequestJson$Params;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 349
    iput-object p1, p0, Lcom/google/android/apps/pos/network/PosClient$GetRequestJson$Params;->ad:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$702(Lcom/google/android/apps/pos/network/PosClient$GetRequestJson$Params;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 349
    iput-object p1, p0, Lcom/google/android/apps/pos/network/PosClient$GetRequestJson$Params;->maxPeople:Ljava/lang/Integer;

    return-object p1
.end method