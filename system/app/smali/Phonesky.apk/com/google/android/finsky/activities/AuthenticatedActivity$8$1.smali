.class Lcom/google/android/finsky/activities/AuthenticatedActivity$8$1;
.super Ljava/lang/Object;
.source "AuthenticatedActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/AuthenticatedActivity$8;->onResponse(Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/finsky/activities/AuthenticatedActivity$8;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/AuthenticatedActivity$8;)V
    .registers 2
    .parameter

    .prologue
    .line 799
    iput-object p1, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity$8$1;->this$1:Lcom/google/android/finsky/activities/AuthenticatedActivity$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 802
    const-string v0, "Exiting process due to toc change"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 803
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 804
    return-void
.end method