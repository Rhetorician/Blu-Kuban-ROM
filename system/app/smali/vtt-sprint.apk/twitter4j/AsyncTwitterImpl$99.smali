.class Ltwitter4j/AsyncTwitterImpl$99;
.super Ltwitter4j/AsyncTwitterImpl$AsyncTask;
.source "AsyncTwitterImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltwitter4j/AsyncTwitterImpl;->updateFriendship(JZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final this$0:Ltwitter4j/AsyncTwitterImpl;

.field private final val$enableDeviceNotification:Z

.field private final val$retweet:Z

.field private final val$userId:J


# direct methods
.method constructor <init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;JZZ)V
    .registers 8
    .parameter
    .parameter "x0"
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1780
    .local p3, x1:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/TwitterListener;>;"
    iput-object p1, p0, Ltwitter4j/AsyncTwitterImpl$99;->this$0:Ltwitter4j/AsyncTwitterImpl;

    iput-wide p4, p0, Ltwitter4j/AsyncTwitterImpl$99;->val$userId:J

    iput-boolean p6, p0, Ltwitter4j/AsyncTwitterImpl$99;->val$enableDeviceNotification:Z

    iput-boolean p7, p0, Ltwitter4j/AsyncTwitterImpl$99;->val$retweet:Z

    invoke-direct {p0, p1, p2, p3}, Ltwitter4j/AsyncTwitterImpl$AsyncTask;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/util/List;)V
    .registers 10
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
    .line 1782
    .local p1, listeners:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/TwitterListener;>;"
    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl$99;->this$0:Ltwitter4j/AsyncTwitterImpl;

    invoke-static {v3}, Ltwitter4j/AsyncTwitterImpl;->access$000(Ltwitter4j/AsyncTwitterImpl;)Ltwitter4j/Twitter;

    move-result-object v3

    iget-wide v4, p0, Ltwitter4j/AsyncTwitterImpl$99;->val$userId:J

    iget-boolean v6, p0, Ltwitter4j/AsyncTwitterImpl$99;->val$enableDeviceNotification:Z

    iget-boolean v7, p0, Ltwitter4j/AsyncTwitterImpl$99;->val$retweet:Z

    invoke-interface {v3, v4, v5, v6, v7}, Ltwitter4j/Twitter;->updateFriendship(JZZ)Ltwitter4j/Relationship;

    move-result-object v2

    .line 1784
    .local v2, relationship:Ltwitter4j/Relationship;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltwitter4j/TwitterListener;

    .line 1786
    .local v1, listener:Ltwitter4j/TwitterListener;
    :try_start_20
    invoke-interface {v1, v2}, Ltwitter4j/TwitterListener;->updatedFriendship(Ltwitter4j/Relationship;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_23} :catch_24

    goto :goto_14

    .line 1787
    :catch_24
    move-exception v3

    goto :goto_14

    .line 1790
    .end local v1           #listener:Ltwitter4j/TwitterListener;
    :cond_26
    return-void
.end method
