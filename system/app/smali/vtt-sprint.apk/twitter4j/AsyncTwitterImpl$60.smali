.class Ltwitter4j/AsyncTwitterImpl$60;
.super Ltwitter4j/AsyncTwitterImpl$AsyncTask;
.source "AsyncTwitterImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltwitter4j/AsyncTwitterImpl;->getUserListStatuses(Ljava/lang/String;ILtwitter4j/Paging;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final this$0:Ltwitter4j/AsyncTwitterImpl;

.field private final val$id:I

.field private final val$listOwnerScreenName:Ljava/lang/String;

.field private final val$paging:Ltwitter4j/Paging;


# direct methods
.method constructor <init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ljava/lang/String;ILtwitter4j/Paging;)V
    .registers 7
    .parameter
    .parameter "x0"
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1106
    .local p3, x1:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/TwitterListener;>;"
    iput-object p1, p0, Ltwitter4j/AsyncTwitterImpl$60;->this$0:Ltwitter4j/AsyncTwitterImpl;

    iput-object p4, p0, Ltwitter4j/AsyncTwitterImpl$60;->val$listOwnerScreenName:Ljava/lang/String;

    iput p5, p0, Ltwitter4j/AsyncTwitterImpl$60;->val$id:I

    iput-object p6, p0, Ltwitter4j/AsyncTwitterImpl$60;->val$paging:Ltwitter4j/Paging;

    invoke-direct {p0, p1, p2, p3}, Ltwitter4j/AsyncTwitterImpl$AsyncTask;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/util/List;)V
    .registers 9
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
    .line 1108
    .local p1, listeners:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/TwitterListener;>;"
    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl$60;->this$0:Ltwitter4j/AsyncTwitterImpl;

    invoke-static {v3}, Ltwitter4j/AsyncTwitterImpl;->access$000(Ltwitter4j/AsyncTwitterImpl;)Ltwitter4j/Twitter;

    move-result-object v3

    iget-object v4, p0, Ltwitter4j/AsyncTwitterImpl$60;->val$listOwnerScreenName:Ljava/lang/String;

    iget v5, p0, Ltwitter4j/AsyncTwitterImpl$60;->val$id:I

    iget-object v6, p0, Ltwitter4j/AsyncTwitterImpl$60;->val$paging:Ltwitter4j/Paging;

    invoke-interface {v3, v4, v5, v6}, Ltwitter4j/Twitter;->getUserListStatuses(Ljava/lang/String;ILtwitter4j/Paging;)Ltwitter4j/ResponseList;

    move-result-object v2

    .line 1109
    .local v2, statuses:Ltwitter4j/ResponseList;,"Ltwitter4j/ResponseList<Ltwitter4j/Status;>;"
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

    .line 1111
    .local v1, listener:Ltwitter4j/TwitterListener;
    :try_start_20
    invoke-interface {v1, v2}, Ltwitter4j/TwitterListener;->gotUserListStatuses(Ltwitter4j/ResponseList;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_23} :catch_24

    goto :goto_14

    .line 1112
    :catch_24
    move-exception v3

    goto :goto_14

    .line 1115
    .end local v1           #listener:Ltwitter4j/TwitterListener;
    :cond_26
    return-void
.end method
