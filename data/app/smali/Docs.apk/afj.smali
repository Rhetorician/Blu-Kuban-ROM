.class final enum Lafj;
.super Ljava/lang/Enum;
.source "AbstractIterator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lafj;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lafj;

.field private static final synthetic a:[Lafj;

.field public static final enum b:Lafj;

.field public static final enum c:Lafj;

.field public static final enum d:Lafj;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 37
    new-instance v0, Lafj;

    const-string v1, "READY"

    invoke-direct {v0, v1, v2}, Lafj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lafj;->a:Lafj;

    new-instance v0, Lafj;

    const-string v1, "NOT_READY"

    invoke-direct {v0, v1, v3}, Lafj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lafj;->b:Lafj;

    new-instance v0, Lafj;

    const-string v1, "DONE"

    invoke-direct {v0, v1, v4}, Lafj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lafj;->c:Lafj;

    new-instance v0, Lafj;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v5}, Lafj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lafj;->d:Lafj;

    .line 36
    const/4 v0, 0x4

    new-array v0, v0, [Lafj;

    sget-object v1, Lafj;->a:Lafj;

    aput-object v1, v0, v2

    sget-object v1, Lafj;->b:Lafj;

    aput-object v1, v0, v3

    sget-object v1, Lafj;->c:Lafj;

    aput-object v1, v0, v4

    sget-object v1, Lafj;->d:Lafj;

    aput-object v1, v0, v5

    sput-object v0, Lafj;->a:[Lafj;

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
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lafj;
    .registers 2
    .parameter

    .prologue
    .line 36
    const-class v0, Lafj;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lafj;

    return-object v0
.end method

.method public static values()[Lafj;
    .registers 1

    .prologue
    .line 36
    sget-object v0, Lafj;->a:[Lafj;

    invoke-virtual {v0}, [Lafj;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lafj;

    return-object v0
.end method
