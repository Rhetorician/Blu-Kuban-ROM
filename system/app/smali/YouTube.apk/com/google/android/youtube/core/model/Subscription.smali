.class public final Lcom/google/android/youtube/core/model/Subscription;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/Optional;
.implements Ljava/io/Serializable;


# instance fields
.field public final channelUri:Landroid/net/Uri;

.field public final editUri:Landroid/net/Uri;

.field public final title:Ljava/lang/String;

.field public final type:Lcom/google/android/youtube/core/model/Subscription$Type;

.field public final uri:Landroid/net/Uri;

.field public final username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/youtube/core/model/Subscription$Type;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-static {p4}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Subscription;->editUri:Landroid/net/Uri;

    .line 56
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Subscription;->title:Ljava/lang/String;

    .line 57
    invoke-static {p2}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Subscription$Type;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Subscription;->type:Lcom/google/android/youtube/core/model/Subscription$Type;

    .line 58
    invoke-static {p3}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Subscription;->uri:Landroid/net/Uri;

    .line 59
    invoke-static {p5}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Subscription;->username:Ljava/lang/String;

    .line 60
    invoke-static {p6}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Subscription;->channelUri:Landroid/net/Uri;

    .line 61
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .parameter

    .prologue
    .line 82
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "builder required"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Subscription;->buildUpon()Lcom/google/android/youtube/core/model/Subscription$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final buildUpon()Lcom/google/android/youtube/core/model/Subscription$Builder;
    .registers 3

    .prologue
    .line 68
    new-instance v0, Lcom/google/android/youtube/core/model/Subscription$Builder;

    invoke-direct {v0}, Lcom/google/android/youtube/core/model/Subscription$Builder;-><init>()V

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Subscription;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Subscription$Builder;->title(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Subscription$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Subscription;->type:Lcom/google/android/youtube/core/model/Subscription$Type;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Subscription$Builder;->type(Lcom/google/android/youtube/core/model/Subscription$Type;)Lcom/google/android/youtube/core/model/Subscription$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Subscription;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Subscription$Builder;->uri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Subscription$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Subscription;->editUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Subscription$Builder;->editUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Subscription$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Subscription;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Subscription$Builder;->username(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Subscription$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Subscription;->channelUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Subscription$Builder;->channelUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Subscription$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final get()Lcom/google/android/youtube/core/model/Subscription;
    .registers 1

    .prologue
    .line 64
    return-object p0
.end method

.method public final bridge synthetic get()Ljava/io/Serializable;
    .registers 2

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Subscription;->get()Lcom/google/android/youtube/core/model/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public final isUserRelated()Z
    .registers 3

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Subscription;->type:Lcom/google/android/youtube/core/model/Subscription$Type;

    sget-object v1, Lcom/google/android/youtube/core/model/Subscription$Type;->CHANNEL:Lcom/google/android/youtube/core/model/Subscription$Type;

    if-eq v0, v1, :cond_12

    iget-object v0, p0, Lcom/google/android/youtube/core/model/Subscription;->type:Lcom/google/android/youtube/core/model/Subscription$Type;

    sget-object v1, Lcom/google/android/youtube/core/model/Subscription$Type;->FAVORITES:Lcom/google/android/youtube/core/model/Subscription$Type;

    if-eq v0, v1, :cond_12

    iget-object v0, p0, Lcom/google/android/youtube/core/model/Subscription;->type:Lcom/google/android/youtube/core/model/Subscription$Type;

    sget-object v1, Lcom/google/android/youtube/core/model/Subscription$Type;->USER:Lcom/google/android/youtube/core/model/Subscription$Type;

    if-ne v0, v1, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Subscription;->title:Ljava/lang/String;

    return-object v0
.end method
