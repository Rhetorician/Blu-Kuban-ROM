.class final enum Lcom/google/common/collect/n;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/google/common/collect/n;

.field public static final enum b:Lcom/google/common/collect/n;

.field public static final enum c:Lcom/google/common/collect/n;

.field public static final enum d:Lcom/google/common/collect/n;

.field private static final synthetic e:[Lcom/google/common/collect/n;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 70
    new-instance v0, Lcom/google/common/collect/n;

    const-string v1, "READY"

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/n;->a:Lcom/google/common/collect/n;

    .line 73
    new-instance v0, Lcom/google/common/collect/n;

    const-string v1, "NOT_READY"

    invoke-direct {v0, v1, v3}, Lcom/google/common/collect/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/n;->b:Lcom/google/common/collect/n;

    .line 76
    new-instance v0, Lcom/google/common/collect/n;

    const-string v1, "DONE"

    invoke-direct {v0, v1, v4}, Lcom/google/common/collect/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/n;->c:Lcom/google/common/collect/n;

    .line 79
    new-instance v0, Lcom/google/common/collect/n;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v5}, Lcom/google/common/collect/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/n;->d:Lcom/google/common/collect/n;

    .line 68
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/common/collect/n;

    sget-object v1, Lcom/google/common/collect/n;->a:Lcom/google/common/collect/n;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/collect/n;->b:Lcom/google/common/collect/n;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/common/collect/n;->c:Lcom/google/common/collect/n;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/common/collect/n;->d:Lcom/google/common/collect/n;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/common/collect/n;->e:[Lcom/google/common/collect/n;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/collect/n;
    .registers 2
    .parameter

    .prologue
    .line 68
    const-class v0, Lcom/google/common/collect/n;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/n;

    return-object v0
.end method

.method public static values()[Lcom/google/common/collect/n;
    .registers 1

    .prologue
    .line 68
    sget-object v0, Lcom/google/common/collect/n;->e:[Lcom/google/common/collect/n;

    invoke-virtual {v0}, [Lcom/google/common/collect/n;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/collect/n;

    return-object v0
.end method
