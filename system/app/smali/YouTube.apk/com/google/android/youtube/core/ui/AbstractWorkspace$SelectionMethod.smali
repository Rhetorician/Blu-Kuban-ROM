.class public final enum Lcom/google/android/youtube/core/ui/AbstractWorkspace$SelectionMethod;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/youtube/core/ui/AbstractWorkspace$SelectionMethod;

.field public static final enum FLING:Lcom/google/android/youtube/core/ui/AbstractWorkspace$SelectionMethod;

.field public static final enum TAP:Lcom/google/android/youtube/core/ui/AbstractWorkspace$SelectionMethod;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 81
    new-instance v0, Lcom/google/android/youtube/core/ui/AbstractWorkspace$SelectionMethod;

    const-string v1, "FLING"

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/ui/AbstractWorkspace$SelectionMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/ui/AbstractWorkspace$SelectionMethod;->FLING:Lcom/google/android/youtube/core/ui/AbstractWorkspace$SelectionMethod;

    .line 82
    new-instance v0, Lcom/google/android/youtube/core/ui/AbstractWorkspace$SelectionMethod;

    const-string v1, "TAP"

    invoke-direct {v0, v1, v3}, Lcom/google/android/youtube/core/ui/AbstractWorkspace$SelectionMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/ui/AbstractWorkspace$SelectionMethod;->TAP:Lcom/google/android/youtube/core/ui/AbstractWorkspace$SelectionMethod;

    .line 80
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/youtube/core/ui/AbstractWorkspace$SelectionMethod;

    sget-object v1, Lcom/google/android/youtube/core/ui/AbstractWorkspace$SelectionMethod;->FLING:Lcom/google/android/youtube/core/ui/AbstractWorkspace$SelectionMethod;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/youtube/core/ui/AbstractWorkspace$SelectionMethod;->TAP:Lcom/google/android/youtube/core/ui/AbstractWorkspace$SelectionMethod;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/youtube/core/ui/AbstractWorkspace$SelectionMethod;->$VALUES:[Lcom/google/android/youtube/core/ui/AbstractWorkspace$SelectionMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/youtube/core/ui/AbstractWorkspace$SelectionMethod;
    .registers 2
    .parameter

    .prologue
    .line 80
    const-class v0, Lcom/google/android/youtube/core/ui/AbstractWorkspace$SelectionMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/ui/AbstractWorkspace$SelectionMethod;

    return-object v0
.end method

.method public static values()[Lcom/google/android/youtube/core/ui/AbstractWorkspace$SelectionMethod;
    .registers 1

    .prologue
    .line 80
    sget-object v0, Lcom/google/android/youtube/core/ui/AbstractWorkspace$SelectionMethod;->$VALUES:[Lcom/google/android/youtube/core/ui/AbstractWorkspace$SelectionMethod;

    invoke-virtual {v0}, [Lcom/google/android/youtube/core/ui/AbstractWorkspace$SelectionMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/youtube/core/ui/AbstractWorkspace$SelectionMethod;

    return-object v0
.end method