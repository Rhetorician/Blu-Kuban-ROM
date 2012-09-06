.class public Lcom/google/android/videochat/VideoSpecification;
.super Ljava/lang/Object;
.source "VideoSpecification.java"


# static fields
.field private static sAllSpecificationsSet:Z

.field private static sIncomingVideo:Lcom/google/android/videochat/VideoSpecification;

.field private static final sLock:Ljava/lang/Object;

.field private static sOutgoingVideoNoEffects:Lcom/google/android/videochat/VideoSpecification;

.field private static sOutgoingVideoWithEffects:Lcom/google/android/videochat/VideoSpecification;


# instance fields
.field private final mFrameRate:I

.field private final mSize:Lcom/google/android/videochat/Size;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/videochat/VideoSpecification;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/videochat/Size;I)V
    .registers 3
    .parameter "s"
    .parameter "framerate"

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/google/android/videochat/VideoSpecification;->mSize:Lcom/google/android/videochat/Size;

    .line 29
    iput p2, p0, Lcom/google/android/videochat/VideoSpecification;->mFrameRate:I

    .line 30
    return-void
.end method

.method private static checkIfAllSpecified()V
    .registers 1

    .prologue
    .line 109
    sget-object v0, Lcom/google/android/videochat/VideoSpecification;->sIncomingVideo:Lcom/google/android/videochat/VideoSpecification;

    if-eqz v0, :cond_14

    sget-object v0, Lcom/google/android/videochat/VideoSpecification;->sOutgoingVideoNoEffects:Lcom/google/android/videochat/VideoSpecification;

    if-eqz v0, :cond_14

    sget-object v0, Lcom/google/android/videochat/VideoSpecification;->sOutgoingVideoWithEffects:Lcom/google/android/videochat/VideoSpecification;

    if-eqz v0, :cond_14

    .line 112
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/videochat/VideoSpecification;->sAllSpecificationsSet:Z

    .line 113
    sget-object v0, Lcom/google/android/videochat/VideoSpecification;->sLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 115
    :cond_14
    return-void
.end method

.method public static getFromString(Ljava/lang/String;)Lcom/google/android/videochat/VideoSpecification;
    .registers 10
    .parameter "s"

    .prologue
    const/4 v5, 0x0

    .line 140
    if-nez p0, :cond_4

    .line 160
    :goto_3
    return-object v5

    .line 143
    :cond_4
    const-string v6, "x"

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 144
    .local v3, parts:[Ljava/lang/String;
    array-length v6, v3

    const/4 v7, 0x3

    if-eq v6, v7, :cond_27

    .line 146
    const-string v6, "vclib"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "VideoSpecification can\'t parse "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/google/android/videochat/util/LogUtil;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 153
    :cond_27
    const/4 v6, 0x0

    :try_start_28
    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 154
    .local v4, width:I
    const/4 v6, 0x1

    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 155
    .local v2, height:I
    const/4 v6, 0x2

    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3b
    .catch Ljava/lang/NumberFormatException; {:try_start_28 .. :try_end_3b} :catch_47

    move-result v1

    .line 160
    .local v1, fps:I
    new-instance v5, Lcom/google/android/videochat/VideoSpecification;

    new-instance v6, Lcom/google/android/videochat/Size;

    invoke-direct {v6, v4, v2}, Lcom/google/android/videochat/Size;-><init>(II)V

    invoke-direct {v5, v6, v1}, Lcom/google/android/videochat/VideoSpecification;-><init>(Lcom/google/android/videochat/Size;I)V

    goto :goto_3

    .line 156
    .end local v1           #fps:I
    .end local v2           #height:I
    .end local v4           #width:I
    :catch_47
    move-exception v0

    .line 157
    .local v0, ex:Ljava/lang/NumberFormatException;
    const-string v6, "vclib"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "VideoSpecification can\'t parse "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/google/android/videochat/util/LogUtil;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public static getIncomingVideoSpec()Lcom/google/android/videochat/VideoSpecification;
    .registers 1

    .prologue
    .line 51
    invoke-static {}, Lcom/google/android/videochat/VideoSpecification;->waitForVideoSpecs()V

    .line 52
    sget-object v0, Lcom/google/android/videochat/VideoSpecification;->sIncomingVideo:Lcom/google/android/videochat/VideoSpecification;

    return-object v0
.end method

.method public static getOutgoingVideoNoEffectsSpec()Lcom/google/android/videochat/VideoSpecification;
    .registers 1

    .prologue
    .line 60
    invoke-static {}, Lcom/google/android/videochat/VideoSpecification;->waitForVideoSpecs()V

    .line 61
    sget-object v0, Lcom/google/android/videochat/VideoSpecification;->sOutgoingVideoNoEffects:Lcom/google/android/videochat/VideoSpecification;

    return-object v0
.end method

.method public static getOutgoingVideoWithEffectsSpec()Lcom/google/android/videochat/VideoSpecification;
    .registers 1

    .prologue
    .line 69
    invoke-static {}, Lcom/google/android/videochat/VideoSpecification;->waitForVideoSpecs()V

    .line 70
    sget-object v0, Lcom/google/android/videochat/VideoSpecification;->sOutgoingVideoWithEffects:Lcom/google/android/videochat/VideoSpecification;

    return-object v0
.end method

.method public static setMaxIncoming(Lcom/google/android/videochat/VideoSpecification;)V
    .registers 3
    .parameter "spec"

    .prologue
    .line 77
    sget-object v1, Lcom/google/android/videochat/VideoSpecification;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 78
    :try_start_3
    sput-object p0, Lcom/google/android/videochat/VideoSpecification;->sIncomingVideo:Lcom/google/android/videochat/VideoSpecification;

    .line 79
    invoke-static {}, Lcom/google/android/videochat/VideoSpecification;->checkIfAllSpecified()V

    .line 80
    monitor-exit v1

    .line 81
    return-void

    .line 80
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public static setMaxOutgoingNoEffects(Lcom/google/android/videochat/VideoSpecification;)V
    .registers 3
    .parameter "spec"

    .prologue
    .line 87
    sget-object v1, Lcom/google/android/videochat/VideoSpecification;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 88
    :try_start_3
    sput-object p0, Lcom/google/android/videochat/VideoSpecification;->sOutgoingVideoNoEffects:Lcom/google/android/videochat/VideoSpecification;

    .line 89
    invoke-static {}, Lcom/google/android/videochat/VideoSpecification;->checkIfAllSpecified()V

    .line 90
    monitor-exit v1

    .line 91
    return-void

    .line 90
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public static setMaxOutgoingWithEffects(Lcom/google/android/videochat/VideoSpecification;)V
    .registers 3
    .parameter "spec"

    .prologue
    .line 97
    sget-object v1, Lcom/google/android/videochat/VideoSpecification;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 98
    :try_start_3
    sput-object p0, Lcom/google/android/videochat/VideoSpecification;->sOutgoingVideoWithEffects:Lcom/google/android/videochat/VideoSpecification;

    .line 99
    invoke-static {}, Lcom/google/android/videochat/VideoSpecification;->checkIfAllSpecified()V

    .line 100
    monitor-exit v1

    .line 101
    return-void

    .line 100
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method private static waitForVideoSpecs()V
    .registers 3

    .prologue
    .line 121
    sget-object v2, Lcom/google/android/videochat/VideoSpecification;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 122
    :try_start_3
    sget-boolean v1, Lcom/google/android/videochat/VideoSpecification;->sAllSpecificationsSet:Z

    if-eqz v1, :cond_9

    .line 123
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_10

    .line 132
    :goto_8
    return-void

    .line 126
    :cond_9
    :try_start_9
    sget-object v1, Lcom/google/android/videochat/VideoSpecification;->sLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_10
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_e} :catch_13

    .line 131
    :try_start_e
    monitor-exit v2

    goto :goto_8

    .local v0, e:Ljava/lang/InterruptedException;
    :catchall_10
    move-exception v1

    monitor-exit v2
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_10

    throw v1

    .line 127
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_13
    move-exception v0

    .line 129
    .restart local v0       #e:Ljava/lang/InterruptedException;
    :try_start_14
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_10
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 34
    move-object v0, p1

    check-cast v0, Lcom/google/android/videochat/VideoSpecification;

    .line 35
    .local v0, other:Lcom/google/android/videochat/VideoSpecification;
    if-eqz v0, :cond_13

    .line 36
    iget-object v2, p0, Lcom/google/android/videochat/VideoSpecification;->mSize:Lcom/google/android/videochat/Size;

    iget-object v3, v0, Lcom/google/android/videochat/VideoSpecification;->mSize:Lcom/google/android/videochat/Size;

    if-ne v2, v3, :cond_13

    iget v2, p0, Lcom/google/android/videochat/VideoSpecification;->mFrameRate:I

    iget v3, v0, Lcom/google/android/videochat/VideoSpecification;->mFrameRate:I

    if-ne v2, v3, :cond_13

    const/4 v1, 0x1

    .line 38
    :cond_13
    return v1
.end method

.method public getFrameRate()I
    .registers 2

    .prologue
    .line 168
    iget v0, p0, Lcom/google/android/videochat/VideoSpecification;->mFrameRate:I

    return v0
.end method

.method public getSize()Lcom/google/android/videochat/Size;
    .registers 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/android/videochat/VideoSpecification;->mSize:Lcom/google/android/videochat/Size;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/videochat/VideoSpecification;->mSize:Lcom/google/android/videochat/Size;

    invoke-virtual {v0}, Lcom/google/android/videochat/Size;->hashCode()I

    move-result v0

    mul-int/lit16 v0, v0, 0x115

    iget v1, p0, Lcom/google/android/videochat/VideoSpecification;->mFrameRate:I

    add-int/2addr v0, v1

    return v0
.end method
