.class final Lcom/google/android/youtube/app/honeycomb/tablet/e;
.super Lcom/google/android/youtube/app/honeycomb/ui/d;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/honeycomb/tablet/a;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/honeycomb/tablet/a;Landroid/app/Activity;Lcom/google/android/youtube/app/a;Lcom/google/android/youtube/core/ui/g;Lcom/google/android/youtube/app/honeycomb/ui/b;Lcom/google/android/youtube/core/b/ae;Lcom/google/android/youtube/core/d;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;Lcom/google/android/youtube/core/b/aj;)V
    .registers 23
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/e;->a:Lcom/google/android/youtube/app/honeycomb/tablet/a;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    invoke-direct/range {v0 .. v10}, Lcom/google/android/youtube/app/honeycomb/ui/d;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/app/a;Lcom/google/android/youtube/core/ui/g;Lcom/google/android/youtube/app/honeycomb/ui/b;Lcom/google/android/youtube/core/b/ae;Lcom/google/android/youtube/core/d;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;Lcom/google/android/youtube/core/b/aj;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/model/LiveEvent;)Z
    .registers 3
    .parameter

    .prologue
    .line 181
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/e;->a:Lcom/google/android/youtube/app/honeycomb/tablet/a;

    invoke-static {v0, p1}, Lcom/google/android/youtube/app/honeycomb/tablet/a;->a(Lcom/google/android/youtube/app/honeycomb/tablet/a;Lcom/google/android/youtube/core/model/LiveEvent;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 177
    check-cast p1, Lcom/google/android/youtube/core/model/LiveEvent;

    invoke-virtual {p0, p1}, Lcom/google/android/youtube/app/honeycomb/tablet/e;->a(Lcom/google/android/youtube/core/model/LiveEvent;)Z

    move-result v0

    return v0
.end method
