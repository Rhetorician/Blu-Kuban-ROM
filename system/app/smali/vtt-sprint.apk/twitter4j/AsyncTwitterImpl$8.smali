.class Ltwitter4j/AsyncTwitterImpl$8;
.super Ltwitter4j/AsyncTwitterImpl$AsyncTask;
.source "AsyncTwitterImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltwitter4j/AsyncTwitterImpl;->getWeeklyTrends(Ljava/util/Date;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final this$0:Ltwitter4j/AsyncTwitterImpl;

.field private final val$date:Ljava/util/Date;

.field private final val$excludeHashTags:Z


# direct methods
.method constructor <init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ljava/util/Date;Z)V
    .registers 6
    .parameter
    .parameter "x0"
    .parameter
    .parameter
    .parameter

    .prologue
    .line 199
    .local p3, x1:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/TwitterListener;>;"
    iput-object p1, p0, Ltwitter4j/AsyncTwitterImpl$8;->this$0:Ltwitter4j/AsyncTwitterImpl;

    iput-object p4, p0, Ltwitter4j/AsyncTwitterImpl$8;->val$date:Ljava/util/Date;

    iput-boolean p5, p0, Ltwitter4j/AsyncTwitterImpl$8;->val$excludeHashTags:Z

    invoke-direct {p0, p1, p2, p3}, Ltwitter4j/AsyncTwitterImpl$AsyncTask;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/util/List;)V
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/TwitterListener;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 202
    .local p1, listeners:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/TwitterListener;>;"
    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl$8;->this$0:Ltwitter4j/AsyncTwitterImpl;

    invoke-static {v3}, Ltwitter4j/AsyncTwitterImpl;->access$000(Ltwitter4j/AsyncTwitterImpl;)Ltwitter4j/Twitter;

    move-result-object v3

    iget-object v4, p0, Ltwitter4j/AsyncTwitterImpl$8;->val$date:Ljava/util/Date;

    iget-boolean v5, p0, Ltwitter4j/AsyncTwitterImpl$8;->val$excludeHashTags:Z

    invoke-interface {v3, v4, v5}, Ltwitter4j/Twitter;->getWeeklyTrends(Ljava/util/Date;Z)Ljava/util/List;

    move-result-object v2

    .line 203
    .local v2, trendsList:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/Trends;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltwitter4j/TwitterListener;

    .line 205
    .local v1, listener:Ltwitter4j/TwitterListener;
    :try_start_1e
    invoke-interface {v1, v2}, Ltwitter4j/TwitterListener;->gotWeeklyTrends(Ljava/util/List;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_21} :catch_22

    goto :goto_12

    .line 206
    :catch_22
    move-exception v3

    goto :goto_12

    .line 209
    .end local v1           #listener:Ltwitter4j/TwitterListener;
    :cond_24
    return-void
.end method