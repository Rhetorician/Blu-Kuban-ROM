.class public Lcom/google/android/finsky/analytics/StubAnalytics;
.super Ljava/lang/Object;
.source "StubAnalytics.java"

# interfaces
.implements Lcom/google/android/finsky/analytics/Analytics;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public logListViewOnPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "referrerBrowseUrl"
    .parameter "referrerListCookie"
    .parameter "detailsUrl"
    .parameter "listCookie"

    .prologue
    .line 17
    return-void
.end method

.method public logPageView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "referrerUrl"
    .parameter "referrerListCookie"
    .parameter "currentPageUrl"

    .prologue
    .line 12
    return-void
.end method

.method public logTagAndPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "tag"
    .parameter "packageName"
    .parameter "error"

    .prologue
    .line 21
    return-void
.end method

.method public reset()V
    .registers 1

    .prologue
    .line 25
    return-void
.end method