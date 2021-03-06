.class public Lcom/google/android/youtube/app/honeycomb/phone/EditVideoActivity;
.super Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/bc;
.implements Lcom/google/android/youtube/core/async/l;


# instance fields
.field private A:Landroid/widget/Button;

.field private B:Lcom/google/android/youtube/core/model/Video;

.field private m:Lcom/google/android/youtube/core/async/UserAuthorizer;

.field private n:Landroid/content/res/Resources;

.field private o:Lcom/google/android/youtube/core/b/ae;

.field private p:Lcom/google/android/youtube/core/b/ag;

.field private q:Lcom/google/android/youtube/core/d;

.field private r:Lcom/google/android/youtube/core/model/UserAuth;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/TextView;

.field private u:Landroid/widget/ImageView;

.field private v:Landroid/widget/TextView;

.field private w:Landroid/widget/EditText;

.field private x:Landroid/widget/EditText;

.field private y:Lcom/google/android/youtube/app/ui/PrivacySpinner;

.field private z:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;-><init>()V

    .line 204
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/youtube/core/model/Video;)Landroid/content/Intent;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 67
    const-string v0, "video can\'t be empty"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/youtube/app/honeycomb/phone/EditVideoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 69
    const-string v1, "android.intent.action.EDIT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    const-string v1, "video"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 71
    return-object v0
.end method

.method static synthetic a(Lcom/google/android/youtube/app/honeycomb/phone/EditVideoActivity;)V
    .registers 14
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 42
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/EditVideoActivity;->w:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/EditVideoActivity;->x:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/EditVideoActivity;->z:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1}, Lcom/google/android/youtube/googlemobile/common/util/a/a;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2d

    const v0, 0x7f0b0159

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/content/Context;II)V

    :goto_2c
    return-void

    :cond_2d
    invoke-static {v2}, Lcom/google/android/youtube/googlemobile/common/util/a/a;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_34

    move-object v2, v0

    :cond_34
    invoke-static {v5}, Lcom/google/android/youtube/googlemobile/common/util/a/a;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3b

    move-object v5, v0

    :cond_3b
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/EditVideoActivity;->y:Lcom/google/android/youtube/app/ui/PrivacySpinner;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/PrivacySpinner;->a()Lcom/google/android/youtube/core/model/Video$Privacy;

    move-result-object v6

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/EditVideoActivity;->o:Lcom/google/android/youtube/core/b/ae;

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/EditVideoActivity;->B:Lcom/google/android/youtube/core/model/Video;

    iget-object v3, v3, Lcom/google/android/youtube/core/model/Video;->categoryTerm:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/youtube/app/honeycomb/phone/EditVideoActivity;->B:Lcom/google/android/youtube/core/model/Video;

    iget-object v4, v4, Lcom/google/android/youtube/core/model/Video;->categoryLabel:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/youtube/app/honeycomb/phone/EditVideoActivity;->B:Lcom/google/android/youtube/core/model/Video;

    iget-object v7, v7, Lcom/google/android/youtube/core/model/Video;->accessControl:Ljava/util/Map;

    iget-object v8, p0, Lcom/google/android/youtube/app/honeycomb/phone/EditVideoActivity;->B:Lcom/google/android/youtube/core/model/Video;

    iget-object v8, v8, Lcom/google/android/youtube/core/model/Video;->location:Ljava/lang/String;

    iget-object v9, p0, Lcom/google/android/youtube/app/honeycomb/phone/EditVideoActivity;->B:Lcom/google/android/youtube/core/model/Video;

    iget-object v9, v9, Lcom/google/android/youtube/core/model/Video;->where:Ljava/lang/String;

    iget-object v10, p0, Lcom/google/android/youtube/app/honeycomb/phone/EditVideoActivity;->B:Lcom/google/android/youtube/core/model/Video;

    iget-object v10, v10, Lcom/google/android/youtube/core/model/Video;->editUri:Landroid/net/Uri;

    iget-object v11, p0, Lcom/google/android/youtube/app/honeycomb/phone/EditVideoActivity;->r:Lcom/google/android/youtube/core/model/UserAuth;

    invoke-static {p0, p0}, Lcom/google/android/youtube/core/async/c;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/l;)Lcom/google/android/youtube/core/async/c;

    move-result-object v12

    invoke-interface/range {v0 .. v12}, Lcom/google/android/youtube/core/b/ae;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/youtube/core/model/Video$Privacy;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;Lcom/google/android/youtube/core/async/l;)V

    goto :goto_2c
.end method

.method static synthetic b(Lcom/google/android/youtube/app/honeycomb/phone/EditVideoActivity;)Landroid/widget/ImageView;
    .registers 2
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/EditVideoActivity;->u:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 128
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/EditVideoActivity;->r:Lcom/google/android/youtube/core/model/UserAuth;

    .line 129
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/EditVideoActivity;->B:Lcom/google/android/youtube/core/model/Video;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video;->title:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/googlemobile/common/util/a/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 130
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/EditVideoActivity;->w:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/EditVideoActivity;->B:Lcom/google/android/youtube/core/model/Video;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/EditVideoActivity;->s:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/EditVideoActivity;->B:Lcom/google/android/youtube/core/model/Video;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    :cond_1f
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/EditVideoActivity;->B:Lcom/google/android/youtube/core/model/Video;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video;->description:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/googlemobile/common/util/a/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 134
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/EditVideoActivity;->x:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/EditVideoActivity;->B:Lcom/google/android/youtube/core/model/Video;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 136
    :cond_32
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/EditVideoActivity;->B:Lcom/google/android/youtube/core/model/Video;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video;->tags:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/googlemobile/common/util/a/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_45

    .line 137
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/EditVideoActivity;->z:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/EditVideoActivity;->B:Lcom/google/android/youtube/core/model/Video;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video;->tags:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 139
    :cond_45
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/EditVideoActivity;->B:Lcom/google/android/youtube/core/model/Video;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video;->privacy:Lcom/google/android/youtube/core/model/Video$Privacy;

    if-eqz v0, :cond_54

    .line 140
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/EditVideoActivity;->y:Lcom/google/android/youtube/app/ui/PrivacySpinner;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/EditVideoActivity;->B:Lcom/google/android/youtube/core/model/Video;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video;->privacy:Lcom/google/android/youtube/core/model/Video$Privacy;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/PrivacySpinner;->setPrivacy(Lcom/google/android/youtube/core/model/Video$Privacy;)V

    .line 142
    :cond_54
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/EditVideoActivity;->t:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/EditVideoActivity;->n:Landroid/content/res/Resources;

    const v2, 0x7f0b01bb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/EditVideoActivity;->B:Lcom/google/android/youtube/core/model/Video;

    iget-object v3, v3, Lcom/google/android/youtube/core/model/Video;->ownerDisplayName:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/EditVideoActivity;->v:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/EditVideoActivity;->B:Lcom/google/android/youtube/core/model/Video;

    iget v1, v1, Lcom/google/android/youtube/core/model/Video;->duration:I

    invoke-static {v1}, Lcom/google/android/youtube/core/utils/Util;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/EditVideoActivity;->v:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/EditVideoActivity;->B:Lcom/google/android/youtube/core/model/Video;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video;->thumbnailUri:Landroid/net/Uri;

    if-eqz v0, :cond_9a

    .line 148
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/EditVideoActivity;->p:Lcom/google/android/youtube/core/b/ag;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/EditVideoActivity;->B:Lcom/google/android/youtube/core/model/Video;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video;->thumbnailUri:Landroid/net/Uri;

    new-instance v2, Lcom/google/android/youtube/app/honeycomb/phone/r;

    invoke-direct {v2, p0, v4}, Lcom/google/android/youtube/app/honeycomb/phone/r;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/EditVideoActivity;B)V

    invoke-static {p0, v2}, Lcom/google/android/youtube/core/async/c;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/l;)Lcom/google/android/youtube/core/async/c;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/b/ag;->a(Landroid/net/Uri;Lcom/google/android/youtube/core/async/l;)V

    .line 153
    :goto_99
    return-void

    .line 151
    :cond_9a
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/EditVideoActivity;->u:Landroid/widget/ImageView;

    const v1, 0x7f0200d0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_99
.end method

.method public final a(Ljava/lang/Exception;)V
    .registers 2
    .parameter

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/EditVideoActivity;->finish()V

    .line 157
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 42
    const-string v0, "Error updating video metadata"

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/EditVideoActivity;->q:Lcom/google/android/youtube/core/d;

    invoke-virtual {v0, p2}, Lcom/google/android/youtube/core/d;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 42
    const v0, 0x7f0b0158

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/content/Context;II)V

    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/EditVideoActivity;->finish()V

    return-void
.end method

.method protected final e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 218
    const-string v0, "yt_upload"

    return-object v0
.end method

.method public final e_()V
    .registers 1

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/EditVideoActivity;->finish()V

    .line 161
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 76
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    const v0, 0x7f040094

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/EditVideoActivity;->setContentView(I)V

    .line 78
    const v0, 0x7f0b0156

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/EditVideoActivity;->e(I)V

    .line 80
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/EditVideoActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/YouTubeApplication;

    .line 81
    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->j()Lcom/google/android/youtube/core/b/ae;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/EditVideoActivity;->o:Lcom/google/android/youtube/core/b/ae;

    .line 82
    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->N()Lcom/google/android/youtube/core/d;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/EditVideoActivity;->q:Lcom/google/android/youtube/core/d;

    .line 83
    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/EditVideoActivity;->n:Landroid/content/res/Resources;

    .line 85
    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->Q()Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/EditVideoActivity;->m:Lcom/google/android/youtube/core/async/UserAuthorizer;

    .line 86
    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->p()Lcom/google/android/youtube/core/b/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/EditVideoActivity;->p:Lcom/google/android/youtube/core/b/ag;

    .line 88
    const v0, 0x7f080024

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/EditVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/EditVideoActivity;->s:Landroid/widget/TextView;

    .line 89
    const v0, 0x7f080023

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/EditVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/EditVideoActivity;->u:Landroid/widget/ImageView;

    .line 90
    const v0, 0x7f080030

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/EditVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/EditVideoActivity;->t:Landroid/widget/TextView;

    .line 91
    const v0, 0x7f08005c

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/EditVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/EditVideoActivity;->v:Landroid/widget/TextView;

    .line 93
    const v0, 0x7f080121

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/EditVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/EditVideoActivity;->w:Landroid/widget/EditText;

    .line 94
    const v0, 0x7f080122

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/EditVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/EditVideoActivity;->x:Landroid/widget/EditText;

    .line 95
    const v0, 0x7f08006a

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/EditVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/ui/PrivacySpinner;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/EditVideoActivity;->y:Lcom/google/android/youtube/app/ui/PrivacySpinner;

    .line 96
    const v0, 0x7f080123

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/EditVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/EditVideoActivity;->z:Landroid/widget/EditText;

    .line 98
    const v0, 0x7f0800ee

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/EditVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/EditVideoActivity;->A:Landroid/widget/Button;

    .line 99
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/EditVideoActivity;->A:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 100
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/EditVideoActivity;->A:Landroid/widget/Button;

    const v1, 0x104000a

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 101
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/EditVideoActivity;->A:Landroid/widget/Button;

    new-instance v1, Lcom/google/android/youtube/app/honeycomb/phone/q;

    invoke-direct {v1, p0}, Lcom/google/android/youtube/app/honeycomb/phone/q;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/EditVideoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    return-void
.end method

.method protected onStart()V
    .registers 4

    .prologue
    .line 110
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onStart()V

    .line 111
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/EditVideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 112
    const-string v1, "android.intent.action.EDIT"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unsupported action "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/EditVideoActivity;->finish()V

    .line 125
    :goto_2c
    return-void

    .line 118
    :cond_2d
    const-string v1, "video"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Video;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/EditVideoActivity;->B:Lcom/google/android/youtube/core/model/Video;

    .line 119
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/EditVideoActivity;->B:Lcom/google/android/youtube/core/model/Video;

    if-nez v0, :cond_44

    .line 120
    const-string v0, "video not found"

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/EditVideoActivity;->finish()V

    goto :goto_2c

    .line 124
    :cond_44
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/EditVideoActivity;->m:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-virtual {v0, p0, p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/bc;)V

    goto :goto_2c
.end method
