.class public LTd;
.super Ljava/lang/Object;
.source "GellyInjectorStore.java"

# interfaces
.implements LanD;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LanD",
        "<",
        "LTs;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "LTs;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 120
    const/4 v0, 0x0

    sput-boolean v0, LTd;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()LanD;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LanD",
            "<",
            "LTs;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    sget-object v0, LTd;->a:LanD;

    if-nez v0, :cond_7

    .line 123
    invoke-static {}, LTd;->b()V

    .line 125
    :cond_7
    sget-object v0, LTd;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 152
    const-class v1, LTd;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, LTd;->a:Z

    .line 153
    const/4 v0, 0x0

    sput-object v0, LTd;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 154
    monitor-exit v1

    return-void

    .line 152
    :catchall_b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(LanD;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LanD",
            "<",
            "LTs;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 144
    const-class v1, LTd;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LTd;->a:Z

    if-eqz v0, :cond_12

    .line 145
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_sync_more_SyncMoreFactoryImpl has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 144
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 148
    :cond_12
    :try_start_12
    invoke-static {p0}, LSU;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, LTd;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 149
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 135
    const-class v1, LTd;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LTd;->a:Z

    if-eqz v0, :cond_12

    .line 136
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_sync_more_SyncMoreFactoryImpl has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 135
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 139
    :cond_12
    :try_start_12
    const-class v0, LTs;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, LTd;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, LTd;->a:LanD;

    .line 140
    const/4 v0, 0x1

    sput-boolean v0, LTd;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 141
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 129
    const-class v1, LTd;

    monitor-enter v1

    :try_start_3
    sget-object v0, LTd;->a:LanD;

    if-nez v0, :cond_e

    .line 130
    new-instance v0, LTd;

    invoke-direct {v0}, LTd;-><init>()V

    sput-object v0, LTd;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 132
    :cond_e
    monitor-exit v1

    return-void

    .line 129
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()LTs;
    .registers 8

    .prologue
    .line 158
    new-instance v0, LTs;

    invoke-static {}, LTa;->a()LanD;

    move-result-object v1

    invoke-interface {v1}, LanD;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, LSU;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LSS;

    invoke-static {}, LUZ;->a()LanD;

    move-result-object v2

    invoke-interface {v2}, LanD;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, LSU;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LVp;

    invoke-static {}, Llr;->a()LanD;

    move-result-object v3

    invoke-interface {v3}, LanD;->a()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, LSU;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Llu;

    invoke-static {}, LUL;->a()LanD;

    move-result-object v4

    invoke-interface {v4}, LanD;->a()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, LSU;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LTF;

    invoke-static {}, LUS;->a()LanD;

    move-result-object v5

    invoke-interface {v5}, LanD;->a()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, LSU;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LTT;

    invoke-static {}, Llp;->a()LanD;

    move-result-object v6

    invoke-interface {v6}, LanD;->a()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, LSU;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lle;

    invoke-direct/range {v0 .. v6}, LTs;-><init>(LSS;LVp;Llu;LTF;LTT;Lle;)V

    .line 190
    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 118
    invoke-virtual {p0}, LTd;->a()LTs;

    move-result-object v0

    return-object v0
.end method