.class public Lcom/google/android/talk/videochat/TalkOngoingNotificationFactory;
.super Ljava/lang/Object;
.source "TalkOngoingNotificationFactory.java"

# interfaces
.implements Lcom/google/android/videochat/OngoingNotificationFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/videochat/TalkOngoingNotificationFactory$ReturnOngoingNotificationTask;
    }
.end annotation


# static fields
.field private static volatile sInstance:Lcom/google/android/videochat/OngoingNotificationFactory;

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/talk/videochat/TalkOngoingNotificationFactory;->sInstance:Lcom/google/android/videochat/OngoingNotificationFactory;

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/talk/videochat/TalkOngoingNotificationFactory;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "c"

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/google/android/talk/videochat/TalkOngoingNotificationFactory;->mContext:Landroid/content/Context;

    .line 28
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/talk/videochat/TalkOngoingNotificationFactory;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/android/talk/videochat/TalkOngoingNotificationFactory;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/google/android/videochat/OngoingNotificationFactory;
    .registers 4
    .parameter "c"

    .prologue
    .line 31
    sget-object v0, Lcom/google/android/talk/videochat/TalkOngoingNotificationFactory;->sInstance:Lcom/google/android/videochat/OngoingNotificationFactory;

    if-nez v0, :cond_17

    .line 32
    sget-object v1, Lcom/google/android/talk/videochat/TalkOngoingNotificationFactory;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 33
    :try_start_7
    sget-object v0, Lcom/google/android/talk/videochat/TalkOngoingNotificationFactory;->sInstance:Lcom/google/android/videochat/OngoingNotificationFactory;

    if-nez v0, :cond_16

    .line 34
    new-instance v0, Lcom/google/android/talk/videochat/TalkOngoingNotificationFactory;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/talk/videochat/TalkOngoingNotificationFactory;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/talk/videochat/TalkOngoingNotificationFactory;->sInstance:Lcom/google/android/videochat/OngoingNotificationFactory;

    .line 36
    :cond_16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_1a

    .line 39
    :cond_17
    sget-object v0, Lcom/google/android/talk/videochat/TalkOngoingNotificationFactory;->sInstance:Lcom/google/android/videochat/OngoingNotificationFactory;

    return-object v0

    .line 36
    :catchall_1a
    move-exception v0

    :try_start_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v0
.end method


# virtual methods
.method public requestOngoingNotification(Lcom/google/android/videochat/OngoingNotificationFactory$OngoingNotificationReadyCallback;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 8
    .parameter "callback"
    .parameter "remoteBareJid"
    .parameter "localBareJid"
    .parameter "video"

    .prologue
    .line 45
    new-instance v0, Lcom/google/android/talk/videochat/TalkOngoingNotificationFactory$ReturnOngoingNotificationTask;

    invoke-direct {v0, p0, p1, p2, p4}, Lcom/google/android/talk/videochat/TalkOngoingNotificationFactory$ReturnOngoingNotificationTask;-><init>(Lcom/google/android/talk/videochat/TalkOngoingNotificationFactory;Lcom/google/android/videochat/OngoingNotificationFactory$OngoingNotificationReadyCallback;Ljava/lang/String;Z)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/talk/videochat/TalkOngoingNotificationFactory$ReturnOngoingNotificationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 46
    return-void
.end method
