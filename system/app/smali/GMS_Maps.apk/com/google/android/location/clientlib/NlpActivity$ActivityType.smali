.class public final enum Lcom/google/android/location/clientlib/NlpActivity$ActivityType;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/google/android/location/clientlib/NlpActivity$ActivityType;

.field public static final enum b:Lcom/google/android/location/clientlib/NlpActivity$ActivityType;

.field public static final enum c:Lcom/google/android/location/clientlib/NlpActivity$ActivityType;

.field public static final enum d:Lcom/google/android/location/clientlib/NlpActivity$ActivityType;

.field public static final enum e:Lcom/google/android/location/clientlib/NlpActivity$ActivityType;

.field private static final synthetic f:[Lcom/google/android/location/clientlib/NlpActivity$ActivityType;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v0, Lcom/google/android/location/clientlib/NlpActivity$ActivityType;

    const-string v1, "IN_CAR"

    invoke-direct {v0, v1, v2}, Lcom/google/android/location/clientlib/NlpActivity$ActivityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/location/clientlib/NlpActivity$ActivityType;->a:Lcom/google/android/location/clientlib/NlpActivity$ActivityType;

    new-instance v0, Lcom/google/android/location/clientlib/NlpActivity$ActivityType;

    const-string v1, "ON_BICYCLE"

    invoke-direct {v0, v1, v3}, Lcom/google/android/location/clientlib/NlpActivity$ActivityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/location/clientlib/NlpActivity$ActivityType;->b:Lcom/google/android/location/clientlib/NlpActivity$ActivityType;

    new-instance v0, Lcom/google/android/location/clientlib/NlpActivity$ActivityType;

    const-string v1, "ON_FOOT"

    invoke-direct {v0, v1, v4}, Lcom/google/android/location/clientlib/NlpActivity$ActivityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/location/clientlib/NlpActivity$ActivityType;->c:Lcom/google/android/location/clientlib/NlpActivity$ActivityType;

    new-instance v0, Lcom/google/android/location/clientlib/NlpActivity$ActivityType;

    const-string v1, "STILL"

    invoke-direct {v0, v1, v5}, Lcom/google/android/location/clientlib/NlpActivity$ActivityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/location/clientlib/NlpActivity$ActivityType;->d:Lcom/google/android/location/clientlib/NlpActivity$ActivityType;

    new-instance v0, Lcom/google/android/location/clientlib/NlpActivity$ActivityType;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v6}, Lcom/google/android/location/clientlib/NlpActivity$ActivityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/location/clientlib/NlpActivity$ActivityType;->e:Lcom/google/android/location/clientlib/NlpActivity$ActivityType;

    .line 22
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/android/location/clientlib/NlpActivity$ActivityType;

    sget-object v1, Lcom/google/android/location/clientlib/NlpActivity$ActivityType;->a:Lcom/google/android/location/clientlib/NlpActivity$ActivityType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/location/clientlib/NlpActivity$ActivityType;->b:Lcom/google/android/location/clientlib/NlpActivity$ActivityType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/location/clientlib/NlpActivity$ActivityType;->c:Lcom/google/android/location/clientlib/NlpActivity$ActivityType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/location/clientlib/NlpActivity$ActivityType;->d:Lcom/google/android/location/clientlib/NlpActivity$ActivityType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/location/clientlib/NlpActivity$ActivityType;->e:Lcom/google/android/location/clientlib/NlpActivity$ActivityType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/location/clientlib/NlpActivity$ActivityType;->f:[Lcom/google/android/location/clientlib/NlpActivity$ActivityType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/location/clientlib/NlpActivity$ActivityType;
    .registers 2
    .parameter

    .prologue
    .line 22
    const-class v0, Lcom/google/android/location/clientlib/NlpActivity$ActivityType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/clientlib/NlpActivity$ActivityType;

    return-object v0
.end method

.method public static values()[Lcom/google/android/location/clientlib/NlpActivity$ActivityType;
    .registers 1

    .prologue
    .line 22
    sget-object v0, Lcom/google/android/location/clientlib/NlpActivity$ActivityType;->f:[Lcom/google/android/location/clientlib/NlpActivity$ActivityType;

    invoke-virtual {v0}, [Lcom/google/android/location/clientlib/NlpActivity$ActivityType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/location/clientlib/NlpActivity$ActivityType;

    return-object v0
.end method
