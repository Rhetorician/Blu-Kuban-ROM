.class public final enum Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;
.super Ljava/lang/Enum;
.source "GCommNativeWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MeetingEnterError"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;

.field public static final enum AUDIO_VIDEO_SESSION:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;

.field public static final enum BLOCKED_BY_SOMEONE_IN_HANGOUT:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;

.field public static final enum BLOCKING_SOMEONE_IN_HANGOUT:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;

.field public static final enum GREEN_ROOM_INFO:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;

.field public static final enum HANGOUT_ON_AIR:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;

.field public static final enum HANGOUT_OVER:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;

.field public static final enum MAX_USERS:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;

.field public static final enum MEDIA_START_TIMEOUT:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;

.field public static final enum OUTDATED_CLIENT:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;

.field public static final enum SERVER:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;

.field public static final enum TIMEOUT:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;

.field public static final enum UNKNOWN:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 117
    new-instance v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;->UNKNOWN:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;

    .line 118
    new-instance v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;

    const-string v1, "TIMEOUT"

    invoke-direct {v0, v1, v4}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;->TIMEOUT:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;

    .line 119
    new-instance v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;

    const-string v1, "BLOCKED_BY_SOMEONE_IN_HANGOUT"

    invoke-direct {v0, v1, v5}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;->BLOCKED_BY_SOMEONE_IN_HANGOUT:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;

    .line 120
    new-instance v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;

    const-string v1, "BLOCKING_SOMEONE_IN_HANGOUT"

    invoke-direct {v0, v1, v6}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;->BLOCKING_SOMEONE_IN_HANGOUT:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;

    .line 121
    new-instance v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;

    const-string v1, "MAX_USERS"

    invoke-direct {v0, v1, v7}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;->MAX_USERS:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;

    .line 122
    new-instance v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;

    const-string v1, "SERVER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;->SERVER:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;

    .line 123
    new-instance v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;

    const-string v1, "MEDIA_START_TIMEOUT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;->MEDIA_START_TIMEOUT:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;

    .line 124
    new-instance v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;

    const-string v1, "AUDIO_VIDEO_SESSION"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;->AUDIO_VIDEO_SESSION:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;

    .line 125
    new-instance v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;

    const-string v1, "GREEN_ROOM_INFO"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;->GREEN_ROOM_INFO:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;

    .line 126
    new-instance v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;

    const-string v1, "OUTDATED_CLIENT"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;->OUTDATED_CLIENT:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;

    .line 127
    new-instance v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;

    const-string v1, "HANGOUT_OVER"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;->HANGOUT_OVER:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;

    .line 128
    new-instance v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;

    const-string v1, "HANGOUT_ON_AIR"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;->HANGOUT_ON_AIR:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;

    .line 116
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;

    sget-object v1, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;->UNKNOWN:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;->TIMEOUT:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;->BLOCKED_BY_SOMEONE_IN_HANGOUT:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;->BLOCKING_SOMEONE_IN_HANGOUT:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;->MAX_USERS:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;->SERVER:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;->MEDIA_START_TIMEOUT:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;->AUDIO_VIDEO_SESSION:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;->GREEN_ROOM_INFO:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;->OUTDATED_CLIENT:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;->HANGOUT_OVER:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;->HANGOUT_ON_AIR:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;->$VALUES:[Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 116
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;
    .registers 2
    .parameter "name"

    .prologue
    .line 116
    const-class v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;
    .registers 1

    .prologue
    .line 116
    sget-object v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;->$VALUES:[Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;

    invoke-virtual {v0}, [Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;

    return-object v0
.end method
