.class public final enum LF/j;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:LF/j;

.field public static final enum b:LF/j;

.field public static final enum c:LF/j;

.field public static final enum d:LF/j;

.field private static final synthetic e:[LF/j;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, LF/j;

    const-string v1, "OFF_ROUTE"

    invoke-direct {v0, v1, v2}, LF/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, LF/j;->a:LF/j;

    new-instance v0, LF/j;

    const-string v1, "NEEDS_MORE_FIXES"

    invoke-direct {v0, v1, v3}, LF/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, LF/j;->b:LF/j;

    new-instance v0, LF/j;

    const-string v1, "ALMOST_SURE"

    invoke-direct {v0, v1, v4}, LF/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, LF/j;->c:LF/j;

    new-instance v0, LF/j;

    const-string v1, "CERTAIN"

    invoke-direct {v0, v1, v5}, LF/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, LF/j;->d:LF/j;

    const/4 v0, 0x4

    new-array v0, v0, [LF/j;

    sget-object v1, LF/j;->a:LF/j;

    aput-object v1, v0, v2

    sget-object v1, LF/j;->b:LF/j;

    aput-object v1, v0, v3

    sget-object v1, LF/j;->c:LF/j;

    aput-object v1, v0, v4

    sget-object v1, LF/j;->d:LF/j;

    aput-object v1, v0, v5

    sput-object v0, LF/j;->e:[LF/j;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LF/j;
    .registers 2

    const-class v0, LF/j;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LF/j;

    return-object v0
.end method

.method public static values()[LF/j;
    .registers 1

    sget-object v0, LF/j;->e:[LF/j;

    invoke-virtual {v0}, [LF/j;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LF/j;

    return-object v0
.end method