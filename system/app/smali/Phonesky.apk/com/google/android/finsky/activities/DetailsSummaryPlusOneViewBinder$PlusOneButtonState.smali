.class final enum Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder$PlusOneButtonState;
.super Ljava/lang/Enum;
.source "DetailsSummaryPlusOneViewBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "PlusOneButtonState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder$PlusOneButtonState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder$PlusOneButtonState;

.field public static final enum Error:Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder$PlusOneButtonState;

.field public static final enum Off:Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder$PlusOneButtonState;

.field public static final enum On:Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder$PlusOneButtonState;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 74
    new-instance v0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder$PlusOneButtonState;

    const-string v1, "On"

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder$PlusOneButtonState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder$PlusOneButtonState;->On:Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder$PlusOneButtonState;

    .line 75
    new-instance v0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder$PlusOneButtonState;

    const-string v1, "Off"

    invoke-direct {v0, v1, v3}, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder$PlusOneButtonState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder$PlusOneButtonState;->Off:Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder$PlusOneButtonState;

    .line 76
    new-instance v0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder$PlusOneButtonState;

    const-string v1, "Error"

    invoke-direct {v0, v1, v4}, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder$PlusOneButtonState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder$PlusOneButtonState;->Error:Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder$PlusOneButtonState;

    .line 73
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder$PlusOneButtonState;

    sget-object v1, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder$PlusOneButtonState;->On:Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder$PlusOneButtonState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder$PlusOneButtonState;->Off:Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder$PlusOneButtonState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder$PlusOneButtonState;->Error:Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder$PlusOneButtonState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder$PlusOneButtonState;->$VALUES:[Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder$PlusOneButtonState;

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
    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder$PlusOneButtonState;
    .registers 2
    .parameter

    .prologue
    .line 73
    const-class v0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder$PlusOneButtonState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder$PlusOneButtonState;

    return-object v0
.end method

.method public static values()[Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder$PlusOneButtonState;
    .registers 1

    .prologue
    .line 73
    sget-object v0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder$PlusOneButtonState;->$VALUES:[Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder$PlusOneButtonState;

    invoke-virtual {v0}, [Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder$PlusOneButtonState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder$PlusOneButtonState;

    return-object v0
.end method
