.class public Lcom/sec/android/socialhub/SocialHubQueryBuilder$MsgNormalQuery;
.super Lcom/sec/android/socialhub/SocialHubQueryBuilder$MsgBaseQeury;
.source "SocialHubQueryBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/SocialHubQueryBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MsgNormalQuery"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 361
    invoke-direct {p0, p1}, Lcom/sec/android/socialhub/SocialHubQueryBuilder$MsgBaseQeury;-><init>(Landroid/content/Context;)V

    .line 362
    return-void
.end method


# virtual methods
.method public getQuery(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .parameter "account"

    .prologue
    .line 367
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/SocialHubQueryBuilder$MsgBaseQeury;->getQuery(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method