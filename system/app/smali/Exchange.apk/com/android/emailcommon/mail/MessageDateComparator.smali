.class public Lcom/android/emailcommon/mail/MessageDateComparator;
.super Ljava/lang/Object;
.source "MessageDateComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/emailcommon/mail/Message;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/Message;)I
    .registers 6
    .parameter "o1"
    .parameter "o2"

    .prologue
    .line 24
    :try_start_0
    invoke-virtual {p1}, Lcom/android/emailcommon/mail/Message;->getSentDate()Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_8

    .line 25
    const/4 v1, 0x1

    .line 31
    :goto_7
    return v1

    .line 26
    :cond_8
    invoke-virtual {p2}, Lcom/android/emailcommon/mail/Message;->getSentDate()Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_10

    .line 27
    const/4 v1, -0x1

    goto :goto_7

    .line 29
    :cond_10
    invoke-virtual {p2}, Lcom/android/emailcommon/mail/Message;->getSentDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/emailcommon/mail/Message;->getSentDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1d

    move-result v1

    goto :goto_7

    .line 30
    :catch_1d
    move-exception v0

    .line 31
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_7
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    check-cast p1, Lcom/android/emailcommon/mail/Message;

    .end local p1
    check-cast p2, Lcom/android/emailcommon/mail/Message;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/emailcommon/mail/MessageDateComparator;->compare(Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/Message;)I

    move-result v0

    return v0
.end method
