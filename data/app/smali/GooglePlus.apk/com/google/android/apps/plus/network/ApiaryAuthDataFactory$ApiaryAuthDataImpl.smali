.class Lcom/google/android/apps/plus/network/ApiaryAuthDataFactory$ApiaryAuthDataImpl;
.super Ljava/lang/Object;
.source "ApiaryAuthDataFactory.java"

# interfaces
.implements Lcom/google/android/apps/plus/network/ApiaryAuthDataFactory$ApiaryAuthData;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/network/ApiaryAuthDataFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ApiaryAuthDataImpl"
.end annotation


# instance fields
.field private final mScope:Ljava/lang/String;

.field private final mTokenTimes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mTokens:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "scope"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/network/ApiaryAuthDataFactory$ApiaryAuthDataImpl;->mTokenTimes:Ljava/util/Map;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/network/ApiaryAuthDataFactory$ApiaryAuthDataImpl;->mTokens:Ljava/util/Map;

    .line 42
    iput-object p1, p0, Lcom/google/android/apps/plus/network/ApiaryAuthDataFactory$ApiaryAuthDataImpl;->mScope:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method public getAuthTime(Ljava/lang/String;)Ljava/lang/Long;
    .registers 3
    .parameter "authToken"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/apps/plus/network/ApiaryAuthDataFactory$ApiaryAuthDataImpl;->mTokenTimes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method public getAuthToken(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .parameter "context"
    .parameter "accountName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/AuthenticatorException;,
            Landroid/accounts/OperationCanceledException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    monitor-enter p0

    .line 55
    :try_start_1
    iget-object v3, p0, Lcom/google/android/apps/plus/network/ApiaryAuthDataFactory$ApiaryAuthDataImpl;->mTokens:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 56
    .local v1, authToken:Ljava/lang/String;
    if-eqz v1, :cond_33

    .line 57
    iget-object v3, p0, Lcom/google/android/apps/plus/network/ApiaryAuthDataFactory$ApiaryAuthDataImpl;->mTokenTimes:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 58
    .local v0, authTime:Ljava/lang/Long;
    if-eqz v0, :cond_25

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/32 v5, 0x36ee80

    cmp-long v3, v3, v5

    if-lez v3, :cond_33

    .line 61
    :cond_25
    iget-object v3, p0, Lcom/google/android/apps/plus/network/ApiaryAuthDataFactory$ApiaryAuthDataImpl;->mTokens:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v3, p0, Lcom/google/android/apps/plus/network/ApiaryAuthDataFactory$ApiaryAuthDataImpl;->mTokenTimes:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    invoke-static {p1, v1}, Lcom/google/android/apps/plus/util/AccountsUtil;->invalidateAuthToken(Landroid/content/Context;Ljava/lang/String;)V

    .line 64
    const/4 v1, 0x0

    .line 67
    .end local v0           #authTime:Ljava/lang/Long;
    :cond_33
    monitor-exit p0
    :try_end_34
    .catchall {:try_start_1 .. :try_end_34} :catchall_62

    .line 69
    if-nez v1, :cond_61

    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 72
    .restart local v0       #authTime:Ljava/lang/Long;
    iget-object v3, p0, Lcom/google/android/apps/plus/network/ApiaryAuthDataFactory$ApiaryAuthDataImpl;->mScope:Ljava/lang/String;

    invoke-static {p1, p2, v3}, Lcom/google/android/apps/plus/util/AccountsUtil;->getAuthToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 73
    if-eqz v1, :cond_61

    .line 74
    monitor-enter p0

    .line 76
    :try_start_47
    iget-object v3, p0, Lcom/google/android/apps/plus/network/ApiaryAuthDataFactory$ApiaryAuthDataImpl;->mTokens:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 77
    .local v2, otherToken:Ljava/lang/String;
    if-eqz v2, :cond_56

    .line 78
    iget-object v3, p0, Lcom/google/android/apps/plus/network/ApiaryAuthDataFactory$ApiaryAuthDataImpl;->mTokenTimes:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    :cond_56
    iget-object v3, p0, Lcom/google/android/apps/plus/network/ApiaryAuthDataFactory$ApiaryAuthDataImpl;->mTokens:Ljava/util/Map;

    invoke-interface {v3, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v3, p0, Lcom/google/android/apps/plus/network/ApiaryAuthDataFactory$ApiaryAuthDataImpl;->mTokenTimes:Ljava/util/Map;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    monitor-exit p0
    :try_end_61
    .catchall {:try_start_47 .. :try_end_61} :catchall_65

    .line 87
    .end local v0           #authTime:Ljava/lang/Long;
    .end local v2           #otherToken:Ljava/lang/String;
    :cond_61
    return-object v1

    .line 67
    .end local v1           #authToken:Ljava/lang/String;
    :catchall_62
    move-exception v3

    :try_start_63
    monitor-exit p0
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_62

    throw v3

    .line 83
    .restart local v0       #authTime:Ljava/lang/Long;
    .restart local v1       #authToken:Ljava/lang/String;
    :catchall_65
    move-exception v3

    :try_start_66
    monitor-exit p0
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_65

    throw v3
.end method

.method public invalidateAuthToken(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .parameter "context"
    .parameter "accountName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;,
            Landroid/accounts/AuthenticatorException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    monitor-enter p0

    .line 95
    :try_start_1
    iget-object v1, p0, Lcom/google/android/apps/plus/network/ApiaryAuthDataFactory$ApiaryAuthDataImpl;->mTokens:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 96
    .local v0, authToken:Ljava/lang/String;
    if-eqz v0, :cond_13

    .line 97
    iget-object v1, p0, Lcom/google/android/apps/plus/network/ApiaryAuthDataFactory$ApiaryAuthDataImpl;->mTokenTimes:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    invoke-static {p1, v0}, Lcom/google/android/apps/plus/util/AccountsUtil;->invalidateAuthToken(Landroid/content/Context;Ljava/lang/String;)V

    .line 100
    :cond_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_20

    .line 103
    if-nez v0, :cond_1f

    .line 104
    iget-object v1, p0, Lcom/google/android/apps/plus/network/ApiaryAuthDataFactory$ApiaryAuthDataImpl;->mScope:Ljava/lang/String;

    invoke-static {p1, p2, v1}, Lcom/google/android/apps/plus/util/AccountsUtil;->getAuthToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    invoke-static {p1, v0}, Lcom/google/android/apps/plus/util/AccountsUtil;->invalidateAuthToken(Landroid/content/Context;Ljava/lang/String;)V

    .line 107
    :cond_1f
    return-void

    .line 100
    .end local v0           #authToken:Ljava/lang/String;
    :catchall_20
    move-exception v1

    :try_start_21
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v1
.end method
