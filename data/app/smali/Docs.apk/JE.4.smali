.class public LJE;
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
        "LJQ;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "LJQ;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 122
    const/4 v0, 0x0

    sput-boolean v0, LJE;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 120
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
            "LJQ;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    sget-object v0, LJE;->a:LanD;

    if-nez v0, :cond_7

    .line 125
    invoke-static {}, LJE;->b()V

    .line 127
    :cond_7
    sget-object v0, LJE;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 154
    const-class v1, LJE;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, LJE;->a:Z

    .line 155
    const/4 v0, 0x0

    sput-object v0, LJE;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 156
    monitor-exit v1

    return-void

    .line 154
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
            "LJQ;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 146
    const-class v1, LJE;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LJE;->a:Z

    if-eqz v0, :cond_12

    .line 147
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_http_issuers_UserAgentStringGeneratorImpl has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 146
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 150
    :cond_12
    :try_start_12
    invoke-static {p0}, LJt;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, LJE;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 151
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 137
    const-class v1, LJE;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LJE;->a:Z

    if-eqz v0, :cond_12

    .line 138
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_http_issuers_UserAgentStringGeneratorImpl has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 137
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 141
    :cond_12
    :try_start_12
    const-class v0, LJQ;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, LJE;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, LJE;->a:LanD;

    .line 142
    const/4 v0, 0x1

    sput-boolean v0, LJE;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 143
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 131
    const-class v1, LJE;

    monitor-enter v1

    :try_start_3
    sget-object v0, LJE;->a:LanD;

    if-nez v0, :cond_e

    .line 132
    new-instance v0, LJE;

    invoke-direct {v0}, LJE;-><init>()V

    sput-object v0, LJE;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 134
    :cond_e
    monitor-exit v1

    return-void

    .line 131
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()LJQ;
    .registers 3

    .prologue
    .line 160
    new-instance v1, LJQ;

    invoke-static {}, LIZ;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LJt;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LIF;

    invoke-direct {v1, v0}, LJQ;-><init>(LIF;)V

    .line 167
    return-object v1
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 120
    invoke-virtual {p0}, LJE;->a()LJQ;

    move-result-object v0

    return-object v0
.end method
