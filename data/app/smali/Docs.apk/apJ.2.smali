.class final LapJ;
.super LapG;
.source "Scoping.java"


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, v0}, LapG;-><init>(LapH;)V

    return-void
.end method


# virtual methods
.method public a()LanG;
    .registers 2

    .prologue
    .line 85
    sget-object v0, LanI;->a:LanG;

    return-object v0
.end method

.method public a(Laqd;)Ljava/lang/Object;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Laqd",
            "<TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 81
    sget-object v0, LanI;->a:LanG;

    invoke-interface {p1, v0}, Laqd;->a(LanG;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 89
    sget-object v0, LanI;->a:LanG;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
