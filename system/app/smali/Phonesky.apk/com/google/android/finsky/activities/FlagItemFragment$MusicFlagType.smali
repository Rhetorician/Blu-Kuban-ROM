.class public Lcom/google/android/finsky/activities/FlagItemFragment$MusicFlagType;
.super Lcom/google/android/finsky/activities/FlagItemFragment$FlagType;
.source "FlagItemFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/activities/FlagItemFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MusicFlagType"
.end annotation


# instance fields
.field private final mContentFlagType:I


# direct methods
.method private constructor <init>(III)V
    .registers 4
    .parameter "contentFlagType"
    .parameter "stringId"
    .parameter "textEntryStringId"

    .prologue
    .line 455
    invoke-direct {p0, p2, p3}, Lcom/google/android/finsky/activities/FlagItemFragment$FlagType;-><init>(II)V

    .line 456
    iput p1, p0, Lcom/google/android/finsky/activities/FlagItemFragment$MusicFlagType;->mContentFlagType:I

    .line 457
    return-void
.end method

.method public static getMusicFlags()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/activities/FlagItemFragment$FlagType;",
            ">;"
        }
    .end annotation

    .prologue
    const v4, 0x7f0701c1

    .line 434
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 435
    .local v0, output:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/activities/FlagItemFragment$FlagType;>;"
    new-instance v1, Lcom/google/android/finsky/activities/FlagItemFragment$MusicFlagType;

    const/4 v2, 0x5

    const v3, 0x7f0701c0

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/finsky/activities/FlagItemFragment$MusicFlagType;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 437
    new-instance v1, Lcom/google/android/finsky/activities/FlagItemFragment$MusicFlagType;

    const/4 v2, 0x1

    const v3, 0x7f0701b7

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/finsky/activities/FlagItemFragment$MusicFlagType;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 439
    new-instance v1, Lcom/google/android/finsky/activities/FlagItemFragment$MusicFlagType;

    const/4 v2, 0x4

    const v3, 0x7f0701b9

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/finsky/activities/FlagItemFragment$MusicFlagType;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 441
    new-instance v1, Lcom/google/android/finsky/activities/FlagItemFragment$MusicFlagType;

    const/4 v2, 0x6

    const v3, 0x7f0701bf

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/finsky/activities/FlagItemFragment$MusicFlagType;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 443
    new-instance v1, Lcom/google/android/finsky/activities/FlagItemFragment$MusicFlagType;

    const/4 v2, 0x2

    const v3, 0x7f0701be

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/finsky/activities/FlagItemFragment$MusicFlagType;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 445
    new-instance v1, Lcom/google/android/finsky/activities/FlagItemFragment$MusicFlagType;

    const/16 v2, 0x8

    const v3, 0x7f0701bc

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/finsky/activities/FlagItemFragment$MusicFlagType;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 447
    return-object v0
.end method


# virtual methods
.method public postFlag(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)V
    .registers 10
    .parameter "context"
    .parameter "doc"
    .parameter "flagMessage"

    .prologue
    .line 461
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v0

    .line 462
    .local v0, dfeApi:Lcom/google/android/finsky/api/DfeApi;
    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/finsky/activities/FlagItemFragment$MusicFlagType;->mContentFlagType:I

    new-instance v4, Lcom/google/android/finsky/activities/FlagItemFragment$MusicFlagType$1;

    invoke-direct {v4, p0, p1}, Lcom/google/android/finsky/activities/FlagItemFragment$MusicFlagType$1;-><init>(Lcom/google/android/finsky/activities/FlagItemFragment$MusicFlagType;Landroid/content/Context;)V

    new-instance v5, Lcom/google/android/finsky/activities/FlagItemFragment$MusicFlagType$2;

    invoke-direct {v5, p0}, Lcom/google/android/finsky/activities/FlagItemFragment$MusicFlagType$2;-><init>(Lcom/google/android/finsky/activities/FlagItemFragment$MusicFlagType;)V

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeApi;->flagContent(Ljava/lang/String;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    .line 473
    return-void
.end method