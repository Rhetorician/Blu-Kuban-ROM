.class public final enum Lcom/google/android/youtube/app/prefetch/Prefetch$Source;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/youtube/app/prefetch/Prefetch$Source;

.field public static final enum SUBSCRIPTION:Lcom/google/android/youtube/app/prefetch/Prefetch$Source;

.field public static final enum WATCH_LATER:Lcom/google/android/youtube/app/prefetch/Prefetch$Source;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v0, Lcom/google/android/youtube/app/prefetch/Prefetch$Source;

    const-string v1, "WATCH_LATER"

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/app/prefetch/Prefetch$Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/app/prefetch/Prefetch$Source;->WATCH_LATER:Lcom/google/android/youtube/app/prefetch/Prefetch$Source;

    .line 24
    new-instance v0, Lcom/google/android/youtube/app/prefetch/Prefetch$Source;

    const-string v1, "SUBSCRIPTION"

    invoke-direct {v0, v1, v3}, Lcom/google/android/youtube/app/prefetch/Prefetch$Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/app/prefetch/Prefetch$Source;->SUBSCRIPTION:Lcom/google/android/youtube/app/prefetch/Prefetch$Source;

    .line 22
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/youtube/app/prefetch/Prefetch$Source;

    sget-object v1, Lcom/google/android/youtube/app/prefetch/Prefetch$Source;->WATCH_LATER:Lcom/google/android/youtube/app/prefetch/Prefetch$Source;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/youtube/app/prefetch/Prefetch$Source;->SUBSCRIPTION:Lcom/google/android/youtube/app/prefetch/Prefetch$Source;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/youtube/app/prefetch/Prefetch$Source;->$VALUES:[Lcom/google/android/youtube/app/prefetch/Prefetch$Source;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/youtube/app/prefetch/Prefetch$Source;
    .registers 2
    .parameter

    .prologue
    .line 22
    const-class v0, Lcom/google/android/youtube/app/prefetch/Prefetch$Source;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/prefetch/Prefetch$Source;

    return-object v0
.end method

.method public static values()[Lcom/google/android/youtube/app/prefetch/Prefetch$Source;
    .registers 1

    .prologue
    .line 22
    sget-object v0, Lcom/google/android/youtube/app/prefetch/Prefetch$Source;->$VALUES:[Lcom/google/android/youtube/app/prefetch/Prefetch$Source;

    invoke-virtual {v0}, [Lcom/google/android/youtube/app/prefetch/Prefetch$Source;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/youtube/app/prefetch/Prefetch$Source;

    return-object v0
.end method
