.class final enum Lno;
.super Lnk;
.source "EntriesFilter.java"


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;ZLnq;ILjava/lang/String;LSR;)V
    .registers 19
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 127
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lnk;-><init>(Ljava/lang/String;ILjava/lang/String;ZLnq;ILjava/lang/String;LSR;Lnl;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/EnumSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet",
            "<",
            "LsO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    invoke-static {}, Lnk;->b()Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public a()LsO;
    .registers 2

    .prologue
    .line 133
    sget-object v0, LsO;->d:LsO;

    return-object v0
.end method