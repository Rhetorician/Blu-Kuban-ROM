.class public final enum Lcom/google/android/youtube/app/ui/Slider$CollapseStrategy;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/youtube/app/ui/Slider$CollapseStrategy;

.field public static final enum DISPLACE:Lcom/google/android/youtube/app/ui/Slider$CollapseStrategy;

.field public static final enum OCCLUDE:Lcom/google/android/youtube/app/ui/Slider$CollapseStrategy;

.field public static final enum RESIZE:Lcom/google/android/youtube/app/ui/Slider$CollapseStrategy;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 41
    new-instance v0, Lcom/google/android/youtube/app/ui/Slider$CollapseStrategy;

    const-string v1, "DISPLACE"

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/app/ui/Slider$CollapseStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/app/ui/Slider$CollapseStrategy;->DISPLACE:Lcom/google/android/youtube/app/ui/Slider$CollapseStrategy;

    new-instance v0, Lcom/google/android/youtube/app/ui/Slider$CollapseStrategy;

    const-string v1, "RESIZE"

    invoke-direct {v0, v1, v3}, Lcom/google/android/youtube/app/ui/Slider$CollapseStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/app/ui/Slider$CollapseStrategy;->RESIZE:Lcom/google/android/youtube/app/ui/Slider$CollapseStrategy;

    new-instance v0, Lcom/google/android/youtube/app/ui/Slider$CollapseStrategy;

    const-string v1, "OCCLUDE"

    invoke-direct {v0, v1, v4}, Lcom/google/android/youtube/app/ui/Slider$CollapseStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/app/ui/Slider$CollapseStrategy;->OCCLUDE:Lcom/google/android/youtube/app/ui/Slider$CollapseStrategy;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/youtube/app/ui/Slider$CollapseStrategy;

    sget-object v1, Lcom/google/android/youtube/app/ui/Slider$CollapseStrategy;->DISPLACE:Lcom/google/android/youtube/app/ui/Slider$CollapseStrategy;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/youtube/app/ui/Slider$CollapseStrategy;->RESIZE:Lcom/google/android/youtube/app/ui/Slider$CollapseStrategy;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/youtube/app/ui/Slider$CollapseStrategy;->OCCLUDE:Lcom/google/android/youtube/app/ui/Slider$CollapseStrategy;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/youtube/app/ui/Slider$CollapseStrategy;->$VALUES:[Lcom/google/android/youtube/app/ui/Slider$CollapseStrategy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/youtube/app/ui/Slider$CollapseStrategy;
    .registers 2
    .parameter

    .prologue
    .line 41
    const-class v0, Lcom/google/android/youtube/app/ui/Slider$CollapseStrategy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/ui/Slider$CollapseStrategy;

    return-object v0
.end method

.method public static values()[Lcom/google/android/youtube/app/ui/Slider$CollapseStrategy;
    .registers 1

    .prologue
    .line 41
    sget-object v0, Lcom/google/android/youtube/app/ui/Slider$CollapseStrategy;->$VALUES:[Lcom/google/android/youtube/app/ui/Slider$CollapseStrategy;

    invoke-virtual {v0}, [Lcom/google/android/youtube/app/ui/Slider$CollapseStrategy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/youtube/app/ui/Slider$CollapseStrategy;

    return-object v0
.end method
