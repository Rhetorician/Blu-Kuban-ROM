.class public Lcom/google/android/youtube/app/ui/dh;
.super Lcom/google/android/youtube/app/ui/ec;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/bc;
.implements Lcom/google/android/youtube/core/transfer/i;


# instance fields
.field private final a:Lcom/google/android/youtube/app/adapter/br;

.field private final b:Lcom/google/android/youtube/core/async/UserAuthorizer;

.field private final k:Lcom/google/android/youtube/core/b/ae;

.field private l:Lcom/google/android/youtube/core/utils/v;

.field private m:Lcom/google/android/youtube/core/model/UserAuth;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/app/a;Lcom/google/android/youtube/core/ui/g;Lcom/google/android/youtube/app/adapter/br;Lcom/google/android/youtube/core/async/ar;Lcom/google/android/youtube/core/b/ae;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/core/b/ai;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;Lcom/google/android/youtube/core/b/aj;Lcom/google/android/youtube/core/d;)V
    .registers 29
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
    .parameter
    .parameter

    .prologue
    .line 75
    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    invoke-direct/range {v1 .. v14}, Lcom/google/android/youtube/app/ui/ec;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/app/a;Lcom/google/android/youtube/core/ui/g;Lcom/google/android/youtube/app/adapter/bt;Lcom/google/android/youtube/core/async/ar;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/core/b/ai;ZZLcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;Lcom/google/android/youtube/core/b/aj;Lcom/google/android/youtube/core/d;)V

    .line 89
    const-string v1, "gDataClient may not be null"

    move-object/from16 v0, p7

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/b/ae;

    iput-object v1, p0, Lcom/google/android/youtube/app/ui/dh;->k:Lcom/google/android/youtube/core/b/ae;

    .line 91
    const-string v1, "adapter may not be null"

    move-object/from16 v0, p5

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/app/adapter/br;

    iput-object v1, p0, Lcom/google/android/youtube/app/ui/dh;->a:Lcom/google/android/youtube/app/adapter/br;

    .line 92
    const-string v1, "userAuthorizer may not be null"

    move-object/from16 v0, p2

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/async/UserAuthorizer;

    iput-object v1, p0, Lcom/google/android/youtube/app/ui/dh;->b:Lcom/google/android/youtube/core/async/UserAuthorizer;

    .line 94
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/ui/dh;)Lcom/google/android/youtube/app/adapter/br;
    .registers 2
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dh;->a:Lcom/google/android/youtube/app/adapter/br;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/youtube/app/ui/dh;Lcom/google/android/youtube/core/model/Video;Lcom/google/android/youtube/core/transfer/Transfer;)Lcom/google/android/youtube/core/model/Video;
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    iget-object v0, p2, Lcom/google/android/youtube/core/transfer/Transfer;->g:Lcom/google/android/youtube/core/transfer/d;

    const-string v1, "upload_file_duration"

    iget v2, p1, Lcom/google/android/youtube/core/model/Video;->duration:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/youtube/core/transfer/d;->b(Ljava/lang/String;J)J

    move-result-wide v0

    long-to-int v0, v0

    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x1388

    sub-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/Video;->buildUpon()Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/youtube/core/model/Video$Builder;->duration(I)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->uploadedDate(Ljava/util/Date;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/Video$Builder;->build()Lcom/google/android/youtube/core/model/Video;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/youtube/app/ui/dh;Landroid/net/Uri;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/app/ui/dh;->a(Landroid/net/Uri;)V

    return-void
.end method

.method private g(Lcom/google/android/youtube/core/transfer/Transfer;)V
    .registers 4
    .parameter

    .prologue
    .line 196
    iget-object v0, p1, Lcom/google/android/youtube/core/transfer/Transfer;->c:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    sget-object v1, Lcom/google/android/youtube/core/transfer/Transfer$Status;->COMPLETED:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    if-eq v0, v1, :cond_1d

    .line 197
    iget-object v0, p1, Lcom/google/android/youtube/core/transfer/Transfer;->g:Lcom/google/android/youtube/core/transfer/d;

    const-string v1, "authAccount"

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/transfer/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 198
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/dh;->m:Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/UserAuth;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 199
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dh;->a:Lcom/google/android/youtube/app/adapter/br;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/app/adapter/br;->a(Lcom/google/android/youtube/core/transfer/Transfer;)V

    .line 202
    :cond_1d
    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/android/youtube/core/model/Video;)Landroid/net/Uri;
    .registers 3
    .parameter

    .prologue
    .line 98
    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    iget-object v0, p1, Lcom/google/android/youtube/core/model/Video;->thumbnailUri:Landroid/net/Uri;

    goto :goto_3
.end method

.method protected final a()V
    .registers 2

    .prologue
    .line 109
    invoke-super {p0}, Lcom/google/android/youtube/app/ui/ec;->a()V

    .line 110
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dh;->b:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Lcom/google/android/youtube/core/async/bc;)V

    .line 111
    return-void
.end method

.method protected a(Landroid/view/View;Lcom/google/android/youtube/core/model/Video;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 131
    if-eqz p2, :cond_5

    .line 132
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/youtube/app/ui/ec;->a(Landroid/view/View;Lcom/google/android/youtube/core/model/Video;I)V

    .line 134
    :cond_5
    return-void
.end method

.method protected final a(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/util/List;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 103
    invoke-super {p0, p1, p2}, Lcom/google/android/youtube/app/ui/ec;->a(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/util/List;)V

    .line 104
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dh;->b:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Lcom/google/android/youtube/core/async/bc;)V

    .line 105
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 3
    .parameter

    .prologue
    .line 205
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/dh;->m:Lcom/google/android/youtube/core/model/UserAuth;

    .line 206
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dh;->l:Lcom/google/android/youtube/core/utils/v;

    if-nez v0, :cond_12

    .line 207
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dh;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/android/youtube/core/transfer/UploadService;->a(Landroid/content/Context;Lcom/google/android/youtube/core/transfer/i;)Lcom/google/android/youtube/core/utils/v;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/dh;->l:Lcom/google/android/youtube/core/utils/v;

    .line 209
    :cond_12
    return-void
.end method

.method public a(Lcom/google/android/youtube/core/transfer/Transfer;)V
    .registers 6
    .parameter

    .prologue
    .line 163
    iget-object v0, p1, Lcom/google/android/youtube/core/transfer/Transfer;->c:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    sget-object v1, Lcom/google/android/youtube/core/transfer/Transfer$Status;->COMPLETED:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    if-ne v0, v1, :cond_23

    .line 164
    iget-object v0, p1, Lcom/google/android/youtube/core/transfer/Transfer;->h:Lcom/google/android/youtube/core/transfer/d;

    const-string v1, "video_id"

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/transfer/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 165
    if-eqz v0, :cond_24

    .line 166
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/dh;->c:Landroid/app/Activity;

    new-instance v2, Lcom/google/android/youtube/app/ui/di;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Lcom/google/android/youtube/app/ui/di;-><init>(Lcom/google/android/youtube/app/ui/dh;Lcom/google/android/youtube/core/transfer/Transfer;B)V

    invoke-static {v1, v2}, Lcom/google/android/youtube/core/async/c;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/l;)Lcom/google/android/youtube/core/async/c;

    move-result-object v1

    .line 168
    iget-object v2, p0, Lcom/google/android/youtube/app/ui/dh;->k:Lcom/google/android/youtube/core/b/ae;

    iget-object v3, p0, Lcom/google/android/youtube/app/ui/dh;->m:Lcom/google/android/youtube/core/model/UserAuth;

    invoke-interface {v2, v0, v3, v1}, Lcom/google/android/youtube/core/b/ae;->c(Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;Lcom/google/android/youtube/core/async/l;)V

    .line 173
    :cond_23
    :goto_23
    return-void

    .line 170
    :cond_24
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/ui/dh;->g(Lcom/google/android/youtube/core/transfer/Transfer;)V

    goto :goto_23
.end method

.method public final a(Ljava/lang/Exception;)V
    .registers 3
    .parameter

    .prologue
    .line 212
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/dh;->m:Lcom/google/android/youtube/core/model/UserAuth;

    .line 213
    return-void
.end method

.method protected final synthetic b(Ljava/lang/Object;)Landroid/net/Uri;
    .registers 3
    .parameter

    .prologue
    .line 52
    check-cast p1, Lcom/google/android/youtube/core/model/Video;

    invoke-virtual {p0, p1}, Lcom/google/android/youtube/app/ui/dh;->a(Lcom/google/android/youtube/core/model/Video;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/google/android/youtube/core/transfer/Transfer;)V
    .registers 3
    .parameter

    .prologue
    .line 137
    invoke-virtual {p1}, Lcom/google/android/youtube/core/transfer/Transfer;->a()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 138
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dh;->a:Lcom/google/android/youtube/app/adapter/br;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/app/adapter/br;->a(Lcom/google/android/youtube/core/transfer/Transfer;)V

    .line 140
    :cond_b
    return-void
.end method

.method public final c()V
    .registers 3

    .prologue
    .line 115
    invoke-super {p0}, Lcom/google/android/youtube/app/ui/ec;->c()V

    .line 116
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dh;->l:Lcom/google/android/youtube/core/utils/v;

    if-eqz v0, :cond_15

    .line 117
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dh;->l:Lcom/google/android/youtube/core/utils/v;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/dh;->c:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/utils/v;->b(Landroid/content/Context;)V

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/dh;->l:Lcom/google/android/youtube/core/utils/v;

    .line 120
    :cond_15
    return-void
.end method

.method public final c(Lcom/google/android/youtube/core/transfer/Transfer;)V
    .registers 2
    .parameter

    .prologue
    .line 159
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/ui/dh;->g(Lcom/google/android/youtube/core/transfer/Transfer;)V

    .line 160
    return-void
.end method

.method public final d(Lcom/google/android/youtube/core/transfer/Transfer;)V
    .registers 5
    .parameter

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dh;->a:Lcom/google/android/youtube/app/adapter/br;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/app/adapter/br;->b(Lcom/google/android/youtube/core/transfer/Transfer;)V

    .line 144
    iget-object v0, p1, Lcom/google/android/youtube/core/transfer/Transfer;->c:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    sget-object v1, Lcom/google/android/youtube/core/transfer/Transfer$Status;->COMPLETED:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    if-eq v0, v1, :cond_14

    .line 145
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dh;->c:Landroid/app/Activity;

    const v1, 0x7f0b01dd

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/content/Context;II)V

    .line 147
    :cond_14
    return-void
.end method

.method public final e(Lcom/google/android/youtube/core/transfer/Transfer;)V
    .registers 2
    .parameter

    .prologue
    .line 177
    return-void
.end method

.method public final e_()V
    .registers 2

    .prologue
    .line 216
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/dh;->m:Lcom/google/android/youtube/core/model/UserAuth;

    .line 217
    return-void
.end method

.method public final f(Lcom/google/android/youtube/core/transfer/Transfer;)V
    .registers 4
    .parameter

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dh;->l:Lcom/google/android/youtube/core/utils/v;

    if-eqz v0, :cond_11

    .line 124
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dh;->l:Lcom/google/android/youtube/core/utils/v;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/utils/v;->a()Landroid/os/Binder;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/transfer/l;

    iget-object v1, p1, Lcom/google/android/youtube/core/transfer/Transfer;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/transfer/l;->a(Ljava/lang/String;)V

    .line 126
    :cond_11
    return-void
.end method

.method public final f_()V
    .registers 3

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dh;->l:Lcom/google/android/youtube/core/utils/v;

    if-eqz v0, :cond_28

    .line 151
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dh;->l:Lcom/google/android/youtube/core/utils/v;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/utils/v;->a()Landroid/os/Binder;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/transfer/l;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/transfer/l;->a()Ljava/util/Map;

    move-result-object v0

    .line 152
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/transfer/Transfer;

    .line 153
    invoke-direct {p0, v0}, Lcom/google/android/youtube/app/ui/dh;->g(Lcom/google/android/youtube/core/transfer/Transfer;)V

    goto :goto_18

    .line 156
    :cond_28
    return-void
.end method
