.class public final enum Lcom/google/android/youtube/core/player/MediaActionHelper$ActionState;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/youtube/core/player/MediaActionHelper$ActionState;

.field public static final enum ACTIVE:Lcom/google/android/youtube/core/player/MediaActionHelper$ActionState;

.field public static final enum GONE:Lcom/google/android/youtube/core/player/MediaActionHelper$ActionState;

.field public static final enum INACTIVE:Lcom/google/android/youtube/core/player/MediaActionHelper$ActionState;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 49
    new-instance v0, Lcom/google/android/youtube/core/player/MediaActionHelper$ActionState;

    const-string v1, "ACTIVE"

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/player/MediaActionHelper$ActionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/player/MediaActionHelper$ActionState;->ACTIVE:Lcom/google/android/youtube/core/player/MediaActionHelper$ActionState;

    .line 50
    new-instance v0, Lcom/google/android/youtube/core/player/MediaActionHelper$ActionState;

    const-string v1, "INACTIVE"

    invoke-direct {v0, v1, v3}, Lcom/google/android/youtube/core/player/MediaActionHelper$ActionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/player/MediaActionHelper$ActionState;->INACTIVE:Lcom/google/android/youtube/core/player/MediaActionHelper$ActionState;

    .line 51
    new-instance v0, Lcom/google/android/youtube/core/player/MediaActionHelper$ActionState;

    const-string v1, "GONE"

    invoke-direct {v0, v1, v4}, Lcom/google/android/youtube/core/player/MediaActionHelper$ActionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/player/MediaActionHelper$ActionState;->GONE:Lcom/google/android/youtube/core/player/MediaActionHelper$ActionState;

    .line 48
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/youtube/core/player/MediaActionHelper$ActionState;

    sget-object v1, Lcom/google/android/youtube/core/player/MediaActionHelper$ActionState;->ACTIVE:Lcom/google/android/youtube/core/player/MediaActionHelper$ActionState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/youtube/core/player/MediaActionHelper$ActionState;->INACTIVE:Lcom/google/android/youtube/core/player/MediaActionHelper$ActionState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/youtube/core/player/MediaActionHelper$ActionState;->GONE:Lcom/google/android/youtube/core/player/MediaActionHelper$ActionState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/youtube/core/player/MediaActionHelper$ActionState;->$VALUES:[Lcom/google/android/youtube/core/player/MediaActionHelper$ActionState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/youtube/core/player/MediaActionHelper$ActionState;
    .registers 2
    .parameter

    .prologue
    .line 48
    const-class v0, Lcom/google/android/youtube/core/player/MediaActionHelper$ActionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/player/MediaActionHelper$ActionState;

    return-object v0
.end method

.method public static values()[Lcom/google/android/youtube/core/player/MediaActionHelper$ActionState;
    .registers 1

    .prologue
    .line 48
    sget-object v0, Lcom/google/android/youtube/core/player/MediaActionHelper$ActionState;->$VALUES:[Lcom/google/android/youtube/core/player/MediaActionHelper$ActionState;

    invoke-virtual {v0}, [Lcom/google/android/youtube/core/player/MediaActionHelper$ActionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/youtube/core/player/MediaActionHelper$ActionState;

    return-object v0
.end method
