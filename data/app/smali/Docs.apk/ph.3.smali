.class public Lph;
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
        "LpL;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "LpL;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 173
    const/4 v0, 0x0

    sput-boolean v0, Lph;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 171
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
            "LpL;",
            ">;"
        }
    .end annotation

    .prologue
    .line 175
    sget-object v0, Lph;->a:LanD;

    if-nez v0, :cond_7

    .line 176
    invoke-static {}, Lph;->b()V

    .line 178
    :cond_7
    sget-object v0, Lph;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 205
    const-class v1, Lph;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, Lph;->a:Z

    .line 206
    const/4 v0, 0x0

    sput-object v0, Lph;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 207
    monitor-exit v1

    return-void

    .line 205
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
            "LpL;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 197
    const-class v1, Lph;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lph;->a:Z

    if-eqz v0, :cond_12

    .line 198
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_doclist_dialogs_TermsOfServiceDialogFragment_TosAcceptListener has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 197
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 201
    :cond_12
    :try_start_12
    invoke-static {p0}, LoC;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, Lph;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 202
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 188
    const-class v1, Lph;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lph;->a:Z

    if-eqz v0, :cond_12

    .line 189
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_doclist_dialogs_TermsOfServiceDialogFragment_TosAcceptListener has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 188
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 192
    :cond_12
    :try_start_12
    const-class v0, LpL;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, Lph;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, Lph;->a:LanD;

    .line 193
    const/4 v0, 0x1

    sput-boolean v0, Lph;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 194
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 182
    const-class v1, Lph;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lph;->a:LanD;

    if-nez v0, :cond_e

    .line 183
    new-instance v0, Lph;

    invoke-direct {v0}, Lph;-><init>()V

    sput-object v0, Lph;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 185
    :cond_e
    monitor-exit v1

    return-void

    .line 182
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 171
    invoke-virtual {p0}, Lph;->a()LpL;

    move-result-object v0

    return-object v0
.end method

.method public a()LpL;
    .registers 3

    .prologue
    .line 211
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Provider instance not initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
