.class Ltwitter4j/AsyncTwitterImpl$38;
.super Ltwitter4j/AsyncTwitterImpl$AsyncTask;
.source "AsyncTwitterImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltwitter4j/AsyncTwitterImpl;->showUser(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final this$0:Ltwitter4j/AsyncTwitterImpl;

.field private final val$screenName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter "x0"
    .parameter
    .parameter

    .prologue
    .line 730
    .local p3, x1:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/TwitterListener;>;"
    iput-object p1, p0, Ltwitter4j/AsyncTwitterImpl$38;->this$0:Ltwitter4j/AsyncTwitterImpl;

    iput-object p4, p0, Ltwitter4j/AsyncTwitterImpl$38;->val$screenName:Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3}, Ltwitter4j/AsyncTwitterImpl$AsyncTask;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/util/List;)V
    .registers 7
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
    .line 732
    .local p1, listeners:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/TwitterListener;>;"
    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl$38;->this$0:Ltwitter4j/AsyncTwitterImpl;

    invoke-static {v3}, Ltwitter4j/AsyncTwitterImpl;->access$000(Ltwitter4j/AsyncTwitterImpl;)Ltwitter4j/Twitter;

    move-result-object v3

    iget-object v4, p0, Ltwitter4j/AsyncTwitterImpl$38;->val$screenName:Ljava/lang/String;

    invoke-interface {v3, v4}, Ltwitter4j/Twitter;->showUser(Ljava/lang/String;)Ltwitter4j/User;

    move-result-object v2

    .line 733
    .local v2, user:Ltwitter4j/User;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltwitter4j/TwitterListener;

    .line 735
    .local v1, listener:Ltwitter4j/TwitterListener;
    :try_start_1c
    invoke-interface {v1, v2}, Ltwitter4j/TwitterListener;->gotUserDetail(Ltwitter4j/User;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1f} :catch_20

    goto :goto_10

    .line 736
    :catch_20
    move-exception v3

    goto :goto_10

    .line 739
    .end local v1           #listener:Ltwitter4j/TwitterListener;
    :cond_22
    return-void
.end method