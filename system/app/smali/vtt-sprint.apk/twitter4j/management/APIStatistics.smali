.class public Ltwitter4j/management/APIStatistics;
.super Ljava/lang/Object;
.source "APIStatistics.java"

# interfaces
.implements Ltwitter4j/management/APIStatisticsMBean;


# instance fields
.field private final API_STATS_CALCULATOR:Ltwitter4j/management/InvocationStatisticsCalculator;

.field private final HISTORY_SIZE:I

.field private final METHOD_STATS_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ltwitter4j/management/InvocationStatisticsCalculator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .registers 4
    .parameter "historySize"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ltwitter4j/management/InvocationStatisticsCalculator;

    const-string v1, "API"

    invoke-direct {v0, v1, p1}, Ltwitter4j/management/InvocationStatisticsCalculator;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Ltwitter4j/management/APIStatistics;->API_STATS_CALCULATOR:Ltwitter4j/management/InvocationStatisticsCalculator;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Ltwitter4j/management/APIStatistics;->METHOD_STATS_MAP:Ljava/util/Map;

    .line 38
    iput p1, p0, Ltwitter4j/management/APIStatistics;->HISTORY_SIZE:I

    .line 39
    return-void
.end method

.method private declared-synchronized getMethodStatistics(Ljava/lang/String;)Ltwitter4j/management/InvocationStatisticsCalculator;
    .registers 4
    .parameter "method"

    .prologue
    .line 53
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Ltwitter4j/management/APIStatistics;->METHOD_STATS_MAP:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltwitter4j/management/InvocationStatisticsCalculator;

    .line 55
    .local v0, methodStats:Ltwitter4j/management/InvocationStatisticsCalculator;
    if-nez v0, :cond_17

    .line 56
    new-instance v0, Ltwitter4j/management/InvocationStatisticsCalculator;

    .end local v0           #methodStats:Ltwitter4j/management/InvocationStatisticsCalculator;
    iget v1, p0, Ltwitter4j/management/APIStatistics;->HISTORY_SIZE:I

    invoke-direct {v0, p1, v1}, Ltwitter4j/management/InvocationStatisticsCalculator;-><init>(Ljava/lang/String;I)V

    .line 57
    .restart local v0       #methodStats:Ltwitter4j/management/InvocationStatisticsCalculator;
    iget-object v1, p0, Ltwitter4j/management/APIStatistics;->METHOD_STATS_MAP:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    .line 59
    :cond_17
    monitor-exit p0

    return-object v0

    .line 53
    .end local v0           #methodStats:Ltwitter4j/management/InvocationStatisticsCalculator;
    :catchall_19
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public getAverageTime()J
    .registers 3

    .prologue
    .line 94
    iget-object v0, p0, Ltwitter4j/management/APIStatistics;->API_STATS_CALCULATOR:Ltwitter4j/management/InvocationStatisticsCalculator;

    invoke-virtual {v0}, Ltwitter4j/management/InvocationStatisticsCalculator;->getAverageTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCallCount()J
    .registers 3

    .prologue
    .line 82
    iget-object v0, p0, Ltwitter4j/management/APIStatistics;->API_STATS_CALCULATOR:Ltwitter4j/management/InvocationStatisticsCalculator;

    invoke-virtual {v0}, Ltwitter4j/management/InvocationStatisticsCalculator;->getCallCount()J

    move-result-wide v0

    return-wide v0
.end method

.method public getErrorCount()J
    .registers 3

    .prologue
    .line 86
    iget-object v0, p0, Ltwitter4j/management/APIStatistics;->API_STATS_CALCULATOR:Ltwitter4j/management/InvocationStatisticsCalculator;

    invoke-virtual {v0}, Ltwitter4j/management/InvocationStatisticsCalculator;->getErrorCount()J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized getInvocationStatistics()Ljava/lang/Iterable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<+",
            "Ltwitter4j/management/InvocationStatistics;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ltwitter4j/management/APIStatistics;->METHOD_STATS_MAP:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMethodLevelSummariesAsString()Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    monitor-enter p0

    :try_start_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 101
    .local v3, summariesMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, p0, Ltwitter4j/management/APIStatistics;->METHOD_STATS_MAP:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 102
    .local v0, allMethodStats:Ljava/util/Collection;,"Ljava/util/Collection<Ltwitter4j/management/InvocationStatisticsCalculator;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltwitter4j/management/InvocationStatisticsCalculator;

    .line 103
    .local v2, methodStats:Ltwitter4j/management/InvocationStatisticsCalculator;
    invoke-virtual {v2}, Ltwitter4j/management/InvocationStatisticsCalculator;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ltwitter4j/management/InvocationStatisticsCalculator;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_28

    goto :goto_10

    .line 99
    .end local v0           #allMethodStats:Ljava/util/Collection;,"Ljava/util/Collection<Ltwitter4j/management/InvocationStatisticsCalculator;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #methodStats:Ltwitter4j/management/InvocationStatisticsCalculator;
    .end local v3           #summariesMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_28
    move-exception v4

    monitor-exit p0

    throw v4

    .line 106
    .restart local v0       #allMethodStats:Ljava/util/Collection;,"Ljava/util/Collection<Ltwitter4j/management/InvocationStatisticsCalculator;>;"
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v3       #summariesMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2b
    monitor-exit p0

    return-object v3
.end method

.method public declared-synchronized getMethodLevelSummary(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "methodName"

    .prologue
    .line 110
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ltwitter4j/management/APIStatistics;->METHOD_STATS_MAP:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltwitter4j/management/InvocationStatisticsCalculator;

    invoke-virtual {v0}, Ltwitter4j/management/InvocationStatisticsCalculator;->toString()Ljava/lang/String;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_f

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Ltwitter4j/management/APIStatistics;->API_STATS_CALCULATOR:Ltwitter4j/management/InvocationStatisticsCalculator;

    invoke-virtual {v0}, Ltwitter4j/management/InvocationStatisticsCalculator;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTotalTime()J
    .registers 3

    .prologue
    .line 90
    iget-object v0, p0, Ltwitter4j/management/APIStatistics;->API_STATS_CALCULATOR:Ltwitter4j/management/InvocationStatisticsCalculator;

    invoke-virtual {v0}, Ltwitter4j/management/InvocationStatisticsCalculator;->getTotalTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized methodCalled(Ljava/lang/String;JZ)V
    .registers 6
    .parameter "method"
    .parameter "time"
    .parameter "success"

    .prologue
    .line 46
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Ltwitter4j/management/APIStatistics;->getMethodStatistics(Ljava/lang/String;)Ltwitter4j/management/InvocationStatisticsCalculator;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Ltwitter4j/management/InvocationStatisticsCalculator;->increment(JZ)V

    .line 49
    iget-object v0, p0, Ltwitter4j/management/APIStatistics;->API_STATS_CALCULATOR:Ltwitter4j/management/InvocationStatisticsCalculator;

    invoke-virtual {v0, p2, p3, p4}, Ltwitter4j/management/InvocationStatisticsCalculator;->increment(JZ)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 50
    monitor-exit p0

    return-void

    .line 46
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reset()V
    .registers 2

    .prologue
    .line 67
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ltwitter4j/management/APIStatistics;->API_STATS_CALCULATOR:Ltwitter4j/management/InvocationStatisticsCalculator;

    invoke-virtual {v0}, Ltwitter4j/management/InvocationStatisticsCalculator;->reset()V

    .line 68
    iget-object v0, p0, Ltwitter4j/management/APIStatistics;->METHOD_STATS_MAP:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 69
    monitor-exit p0

    return-void

    .line 67
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method