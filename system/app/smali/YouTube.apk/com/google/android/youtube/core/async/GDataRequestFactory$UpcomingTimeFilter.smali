.class public final enum Lcom/google/android/youtube/core/async/GDataRequestFactory$UpcomingTimeFilter;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/youtube/core/async/GDataRequestFactory$UpcomingTimeFilter;

.field public static final enum NEXT_24_HOURS:Lcom/google/android/youtube/core/async/GDataRequestFactory$UpcomingTimeFilter;

.field public static final enum NEXT_7_DAYS:Lcom/google/android/youtube/core/async/GDataRequestFactory$UpcomingTimeFilter;


# instance fields
.field public final filterTerm:Ljava/lang/String;

.field public final stringId:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 168
    new-instance v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$UpcomingTimeFilter;

    const-string v1, "NEXT_24_HOURS"

    const-string v2, "today"

    const v3, 0x7f0a001f

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/google/android/youtube/core/async/GDataRequestFactory$UpcomingTimeFilter;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$UpcomingTimeFilter;->NEXT_24_HOURS:Lcom/google/android/youtube/core/async/GDataRequestFactory$UpcomingTimeFilter;

    .line 169
    new-instance v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$UpcomingTimeFilter;

    const-string v1, "NEXT_7_DAYS"

    const-string v2, "this_week"

    const v3, 0x7f0a0020

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/google/android/youtube/core/async/GDataRequestFactory$UpcomingTimeFilter;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$UpcomingTimeFilter;->NEXT_7_DAYS:Lcom/google/android/youtube/core/async/GDataRequestFactory$UpcomingTimeFilter;

    .line 163
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/youtube/core/async/GDataRequestFactory$UpcomingTimeFilter;

    sget-object v1, Lcom/google/android/youtube/core/async/GDataRequestFactory$UpcomingTimeFilter;->NEXT_24_HOURS:Lcom/google/android/youtube/core/async/GDataRequestFactory$UpcomingTimeFilter;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/youtube/core/async/GDataRequestFactory$UpcomingTimeFilter;->NEXT_7_DAYS:Lcom/google/android/youtube/core/async/GDataRequestFactory$UpcomingTimeFilter;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$UpcomingTimeFilter;->$VALUES:[Lcom/google/android/youtube/core/async/GDataRequestFactory$UpcomingTimeFilter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 174
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 175
    iput-object p3, p0, Lcom/google/android/youtube/core/async/GDataRequestFactory$UpcomingTimeFilter;->filterTerm:Ljava/lang/String;

    .line 176
    iput p4, p0, Lcom/google/android/youtube/core/async/GDataRequestFactory$UpcomingTimeFilter;->stringId:I

    .line 177
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/youtube/core/async/GDataRequestFactory$UpcomingTimeFilter;
    .registers 2
    .parameter

    .prologue
    .line 163
    const-class v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$UpcomingTimeFilter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$UpcomingTimeFilter;

    return-object v0
.end method

.method public static values()[Lcom/google/android/youtube/core/async/GDataRequestFactory$UpcomingTimeFilter;
    .registers 1

    .prologue
    .line 163
    sget-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$UpcomingTimeFilter;->$VALUES:[Lcom/google/android/youtube/core/async/GDataRequestFactory$UpcomingTimeFilter;

    invoke-virtual {v0}, [Lcom/google/android/youtube/core/async/GDataRequestFactory$UpcomingTimeFilter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/youtube/core/async/GDataRequestFactory$UpcomingTimeFilter;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/google/android/youtube/core/async/GDataRequestFactory$UpcomingTimeFilter;->filterTerm:Ljava/lang/String;

    return-object v0
.end method
