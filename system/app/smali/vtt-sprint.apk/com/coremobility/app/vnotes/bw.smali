.class public final Lcom/coremobility/app/vnotes/bw;
.super Lcom/coremobility/app/vnotes/ce;


# static fields
.field private static e:Ljava/util/Vector;

.field private static f:I

.field private static g:Lcom/coremobility/app/vnotes/bw;


# instance fields
.field private a:Lcom/coremobility/app/vnotes/cd;

.field private b:Ltwitter4j/AsyncTwitter;

.field private c:Ltwitter4j/auth/RequestToken;

.field private d:Lcom/a/a/e;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    sput-object v1, Lcom/coremobility/app/vnotes/bw;->e:Ljava/util/Vector;

    const/4 v0, 0x0

    sput v0, Lcom/coremobility/app/vnotes/bw;->f:I

    sput-object v1, Lcom/coremobility/app/vnotes/bw;->g:Lcom/coremobility/app/vnotes/bw;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/ce;-><init>()V

    iput-object v0, p0, Lcom/coremobility/app/vnotes/bw;->a:Lcom/coremobility/app/vnotes/cd;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/bw;->b:Ltwitter4j/AsyncTwitter;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/bw;->c:Ltwitter4j/auth/RequestToken;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/bw;->d:Lcom/a/a/e;

    return-void
.end method

.method static synthetic a(Lcom/coremobility/app/vnotes/bw;)Lcom/a/a/e;
    .registers 2

    iget-object v0, p0, Lcom/coremobility/app/vnotes/bw;->d:Lcom/a/a/e;

    return-object v0
.end method

.method public static a()Lcom/coremobility/app/vnotes/bw;
    .registers 1

    sget-object v0, Lcom/coremobility/app/vnotes/bw;->g:Lcom/coremobility/app/vnotes/bw;

    if-nez v0, :cond_b

    new-instance v0, Lcom/coremobility/app/vnotes/bw;

    invoke-direct {v0}, Lcom/coremobility/app/vnotes/bw;-><init>()V

    sput-object v0, Lcom/coremobility/app/vnotes/bw;->g:Lcom/coremobility/app/vnotes/bw;

    :cond_b
    sget-object v0, Lcom/coremobility/app/vnotes/bw;->g:Lcom/coremobility/app/vnotes/bw;

    return-object v0
.end method

.method public static a(I)V
    .registers 1

    sput p0, Lcom/coremobility/app/vnotes/bw;->f:I

    return-void
.end method

.method public static a(ILcom/coremobility/app/vnotes/cb;)V
    .registers 5

    sget-object v0, Lcom/coremobility/app/vnotes/bw;->e:Ljava/util/Vector;

    if-eqz v0, :cond_35

    sget-object v0, Lcom/coremobility/app/vnotes/bw;->e:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_c
    if-ge v1, v2, :cond_35

    sget-object v0, Lcom/coremobility/app/vnotes/bw;->e:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/cc;

    if-eqz v0, :cond_25

    if-eqz p1, :cond_29

    sget-object v0, Lcom/coremobility/app/vnotes/bw;->e:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/cc;

    invoke-interface {v0, p0, p1}, Lcom/coremobility/app/vnotes/cc;->a(ILcom/coremobility/app/vnotes/cb;)V

    :cond_25
    :goto_25
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_c

    :cond_29
    sget-object v0, Lcom/coremobility/app/vnotes/bw;->e:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/cc;

    invoke-interface {v0, p0}, Lcom/coremobility/app/vnotes/cc;->b_(I)V

    goto :goto_25

    :cond_35
    return-void
.end method

.method public static a(Lcom/a/a/h;)V
    .registers 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v4, Lcom/coremobility/app/vnotes/cb;

    invoke-direct {v4}, Lcom/coremobility/app/vnotes/cb;-><init>()V

    invoke-virtual {p0}, Lcom/a/a/h;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/coremobility/app/vnotes/cb;->b:Ljava/lang/String;

    iget-object v0, v4, Lcom/coremobility/app/vnotes/cb;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/coremobility/j/r;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_76

    const-string v3, "506"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_76

    move v0, v1

    :goto_1e
    iget-object v3, v4, Lcom/coremobility/app/vnotes/cb;->b:Ljava/lang/String;

    invoke-static {v3}, Lcom/coremobility/j/r;->a(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_74

    const-string v5, "validating access token"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_74

    move v3, v1

    :goto_2f
    iget-object v5, v4, Lcom/coremobility/app/vnotes/cb;->b:Ljava/lang/String;

    invoke-static {v5}, Lcom/coremobility/j/r;->a(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_40

    const-string v6, "341"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_40

    move v2, v1

    :cond_40
    if-eqz v0, :cond_5e

    const/16 v0, 0x1fa

    iput v0, v4, Lcom/coremobility/app/vnotes/cb;->a:I

    :goto_46
    sget-object v0, Lcom/coremobility/app/vnotes/bw;->e:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_73

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/cc;

    const/16 v2, 0x66

    invoke-interface {v0, v2, v4}, Lcom/coremobility/app/vnotes/cc;->a(ILcom/coremobility/app/vnotes/cb;)V

    goto :goto_4c

    :cond_5e
    if-eqz v3, :cond_65

    const/16 v0, 0x191

    iput v0, v4, Lcom/coremobility/app/vnotes/cb;->a:I

    goto :goto_46

    :cond_65
    if-eqz v2, :cond_6c

    const/16 v0, 0x155

    iput v0, v4, Lcom/coremobility/app/vnotes/cb;->a:I

    goto :goto_46

    :cond_6c
    invoke-virtual {p0}, Lcom/a/a/h;->a()I

    move-result v0

    iput v0, v4, Lcom/coremobility/app/vnotes/cb;->a:I

    goto :goto_46

    :cond_73
    return-void

    :cond_74
    move v3, v2

    goto :goto_2f

    :cond_76
    move v0, v2

    goto :goto_1e
.end method

.method public static a(Lcom/coremobility/app/vnotes/cc;)V
    .registers 2

    sget-object v0, Lcom/coremobility/app/vnotes/bw;->e:Ljava/util/Vector;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/coremobility/app/vnotes/bw;->e:Ljava/util/Vector;

    :cond_b
    sget-object v0, Lcom/coremobility/app/vnotes/bw;->e:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static b(Landroid/content/Context;)V
    .registers 3

    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->hasCookies()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeExpiredCookie()V

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeSessionCookie()V

    :cond_16
    return-void
.end method

.method public static b(Lcom/coremobility/app/vnotes/cc;)V
    .registers 2

    sget-object v0, Lcom/coremobility/app/vnotes/bw;->e:Ljava/util/Vector;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/coremobility/app/vnotes/bw;->e:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    :cond_9
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .registers 5

    new-instance v1, Lcom/coremobility/app/vnotes/cb;

    invoke-direct {v1}, Lcom/coremobility/app/vnotes/cb;-><init>()V

    iput-object p0, v1, Lcom/coremobility/app/vnotes/cb;->b:Ljava/lang/String;

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->ac()Z

    move-result v0

    if-eqz v0, :cond_29

    const/16 v0, 0x198

    :goto_f
    iput v0, v1, Lcom/coremobility/app/vnotes/cb;->a:I

    sget-object v0, Lcom/coremobility/app/vnotes/bw;->e:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/cc;

    const/16 v3, 0x66

    invoke-interface {v0, v3, v1}, Lcom/coremobility/app/vnotes/cc;->a(ILcom/coremobility/app/vnotes/cb;)V

    goto :goto_17

    :cond_29
    const/4 v0, -0x1

    goto :goto_f

    :cond_2b
    return-void
.end method

.method public static g()V
    .registers 2

    sget-object v0, Lcom/coremobility/app/vnotes/bw;->e:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/cc;

    invoke-interface {v0}, Lcom/coremobility/app/vnotes/cc;->a_()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method private static h()Ltwitter4j/conf/Configuration;
    .registers 2

    new-instance v0, Ltwitter4j/conf/ConfigurationBuilder;

    invoke-direct {v0}, Ltwitter4j/conf/ConfigurationBuilder;-><init>()V

    const-string v1, "dXuMGFxzWQaGdypW8txzg"

    invoke-virtual {v0, v1}, Ltwitter4j/conf/ConfigurationBuilder;->setOAuthConsumerKey(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;

    const-string v1, "o2O9NtUSwQjAu5dC2Ke6Ln1tuhFhHUTNcEM1JYoYlc"

    invoke-virtual {v0, v1}, Ltwitter4j/conf/ConfigurationBuilder;->setOAuthConsumerSecret(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;

    invoke-virtual {v0}, Ltwitter4j/conf/ConfigurationBuilder;->build()Ltwitter4j/conf/Configuration;

    move-result-object v0

    return-object v0
.end method

.method private i()V
    .registers 4

    iget-object v0, p0, Lcom/coremobility/app/vnotes/bw;->d:Lcom/a/a/e;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/coremobility/app/vnotes/bw;->d:Lcom/a/a/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/a/a/e;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/bw;->d:Lcom/a/a/e;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/a/a/e;->a(J)V

    new-instance v0, Lcom/a/a/e;

    const-string v1, "109209915831375"

    invoke-direct {v0, v1}, Lcom/a/a/e;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/coremobility/app/vnotes/bw;->d:Lcom/a/a/e;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/bw;->d:Lcom/a/a/e;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/cf;->a(Lcom/a/a/e;)V

    :cond_1f
    return-void
.end method

.method private static j()Lcom/coremobility/app/vnotes/cb;
    .registers 2

    new-instance v1, Lcom/coremobility/app/vnotes/cb;

    invoke-direct {v1}, Lcom/coremobility/app/vnotes/cb;-><init>()V

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->ac()Z

    move-result v0

    if-nez v0, :cond_10

    const/16 v0, 0x3e8

    :goto_d
    iput v0, v1, Lcom/coremobility/app/vnotes/cb;->a:I

    return-object v1

    :cond_10
    const/4 v0, 0x0

    goto :goto_d
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)V
    .registers 7

    const/16 v4, 0xf

    iget-object v0, p0, Lcom/coremobility/app/vnotes/bw;->b:Ltwitter4j/AsyncTwitter;

    if-eqz v0, :cond_49

    :try_start_6
    iget-object v0, p0, Lcom/coremobility/app/vnotes/bw;->b:Ltwitter4j/AsyncTwitter;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ltwitter4j/AsyncTwitter;->setOAuthAccessToken(Ltwitter4j/auth/AccessToken;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/bw;->b:Ltwitter4j/AsyncTwitter;

    const-string v1, "voicemail://tweet"

    invoke-interface {v0, v1}, Ltwitter4j/AsyncTwitter;->getOAuthRequestToken(Ljava/lang/String;)Ltwitter4j/auth/RequestToken;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/app/vnotes/bw;->c:Ltwitter4j/auth/RequestToken;

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/coremobility/app/vnotes/SM_TwitterLogin;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x2400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "auth_url"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/coremobility/app/vnotes/bw;->c:Ltwitter4j/auth/RequestToken;

    invoke-virtual {v3}, Ltwitter4j/auth/RequestToken;->getAuthenticationURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&force_login=true"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0xf

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_49
    .catch Ltwitter4j/TwitterException; {:try_start_6 .. :try_end_49} :catch_4a

    :cond_49
    :goto_49
    return-void

    :catch_4a
    move-exception v0

    const/4 v1, 0x6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OAuthCommunicationException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ltwitter4j/TwitterException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->ac()Z

    move-result v1

    if-eqz v1, :cond_7e

    invoke-virtual {v0}, Ltwitter4j/TwitterException;->getStatusCode()I

    move-result v0

    const/16 v1, 0x191

    if-eq v0, v1, :cond_7a

    const/4 v1, -0x1

    if-ne v0, v1, :cond_49

    :cond_7a
    invoke-virtual {p0, p1, v4}, Lcom/coremobility/app/vnotes/bw;->b(Landroid/app/Activity;I)V

    goto :goto_49

    :cond_7e
    invoke-static {}, Lcom/coremobility/app/vnotes/bw;->j()Lcom/coremobility/app/vnotes/cb;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/bw;->a(Lcom/coremobility/app/vnotes/cb;)V

    goto :goto_49
.end method

.method public final a(Landroid/app/Activity;I)V
    .registers 7

    iget-object v0, p0, Lcom/coremobility/app/vnotes/bw;->b:Ltwitter4j/AsyncTwitter;

    if-eqz v0, :cond_2c

    :try_start_4
    iget-object v0, p0, Lcom/coremobility/app/vnotes/bw;->b:Ltwitter4j/AsyncTwitter;

    const-string v1, "voicemail://tweet"

    invoke-interface {v0, v1}, Ltwitter4j/AsyncTwitter;->getOAuthRequestToken(Ljava/lang/String;)Ltwitter4j/auth/RequestToken;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/app/vnotes/bw;->c:Ltwitter4j/auth/RequestToken;

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/coremobility/app/vnotes/SM_TwitterLogin;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x2400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "auth_url"

    iget-object v2, p0, Lcom/coremobility/app/vnotes/bw;->c:Ltwitter4j/auth/RequestToken;

    invoke-virtual {v2}, Ltwitter4j/auth/RequestToken;->getAuthenticationURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_2c
    .catch Ltwitter4j/TwitterException; {:try_start_4 .. :try_end_2c} :catch_2d

    :cond_2c
    :goto_2c
    return-void

    :catch_2d
    move-exception v0

    const/4 v1, 0x6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OAuthCommunicationException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ltwitter4j/TwitterException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->ac()Z

    move-result v1

    if-eqz v1, :cond_61

    invoke-virtual {v0}, Ltwitter4j/TwitterException;->getStatusCode()I

    move-result v0

    const/16 v1, 0x191

    if-eq v0, v1, :cond_5d

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2c

    :cond_5d
    invoke-virtual {p0, p1, p2}, Lcom/coremobility/app/vnotes/bw;->b(Landroid/app/Activity;I)V

    goto :goto_2c

    :cond_61
    invoke-static {}, Lcom/coremobility/app/vnotes/bw;->j()Lcom/coremobility/app/vnotes/cb;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/bw;->a(Lcom/coremobility/app/vnotes/cb;)V

    goto :goto_2c
.end method

.method public final a(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 8

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/bw;->e()Z

    move-result v0

    if-nez v0, :cond_d

    const/16 v0, 0xf

    invoke-virtual {p0, p1, v0}, Lcom/coremobility/app/vnotes/bw;->a(Landroid/app/Activity;I)V

    :cond_c
    :goto_c
    return-void

    :cond_d
    iget-object v0, p0, Lcom/coremobility/app/vnotes/bw;->a:Lcom/coremobility/app/vnotes/cd;

    if-eqz v0, :cond_c

    :try_start_11
    new-instance v0, Ltwitter4j/auth/AccessToken;

    iget-object v1, p0, Lcom/coremobility/app/vnotes/bw;->a:Lcom/coremobility/app/vnotes/cd;

    iget-object v1, v1, Lcom/coremobility/app/vnotes/cd;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/coremobility/app/vnotes/bw;->a:Lcom/coremobility/app/vnotes/cd;

    iget-object v2, v2, Lcom/coremobility/app/vnotes/cd;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ltwitter4j/auth/AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ltwitter4j/AsyncTwitterFactory;

    invoke-direct {v1}, Ltwitter4j/AsyncTwitterFactory;-><init>()V

    invoke-virtual {v1}, Ltwitter4j/AsyncTwitterFactory;->getInstance()Ltwitter4j/AsyncTwitter;

    move-result-object v1

    invoke-interface {v1, p0}, Ltwitter4j/AsyncTwitter;->addListener(Ltwitter4j/TwitterListener;)V

    const-string v2, "dXuMGFxzWQaGdypW8txzg"

    const-string v3, "o2O9NtUSwQjAu5dC2Ke6Ln1tuhFhHUTNcEM1JYoYlc"

    invoke-interface {v1, v2, v3}, Ltwitter4j/AsyncTwitter;->setOAuthConsumer(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ltwitter4j/AsyncTwitter;->setOAuthAccessToken(Ltwitter4j/auth/AccessToken;)V

    const-string v0, "^\\s+"

    const-string v2, ""

    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\n"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x8c

    if-le v2, v3, :cond_53

    const/4 v2, 0x0

    const/16 v3, 0x8b

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_53
    invoke-interface {v1, v0}, Ltwitter4j/AsyncTwitter;->updateStatus(Ljava/lang/String;)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_56} :catch_57

    goto :goto_c

    :catch_57
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in sending twitter status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_c
.end method

.method public final a(Landroid/content/Context;)V
    .registers 4

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->J()V

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->I()Lcom/coremobility/app/vnotes/cd;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/app/vnotes/bw;->a:Lcom/coremobility/app/vnotes/cd;

    new-instance v0, Ltwitter4j/AsyncTwitterFactory;

    invoke-static {}, Lcom/coremobility/app/vnotes/bw;->h()Ltwitter4j/conf/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Ltwitter4j/AsyncTwitterFactory;-><init>(Ltwitter4j/conf/Configuration;)V

    invoke-virtual {v0}, Ltwitter4j/AsyncTwitterFactory;->getInstance()Ltwitter4j/AsyncTwitter;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/app/vnotes/bw;->b:Ltwitter4j/AsyncTwitter;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/bw;->b:Ltwitter4j/AsyncTwitter;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ltwitter4j/AsyncTwitter;->setOAuthAccessToken(Ltwitter4j/auth/AccessToken;)V

    invoke-static {p1}, Lcom/coremobility/app/vnotes/bw;->b(Landroid/content/Context;)V

    return-void
.end method

.method public final a(Lcom/coremobility/app/vnotes/cb;)V
    .registers 5

    const/4 v0, 0x6

    const-string v1, " onTwitterError "

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x67

    invoke-static {v0, p1}, Lcom/coremobility/app/vnotes/bw;->a(ILcom/coremobility/app/vnotes/cb;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 7

    const/4 v4, 0x6

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/coremobility/j/r;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/coremobility/app/vnotes/bw;->b:Ltwitter4j/AsyncTwitter;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/coremobility/app/vnotes/bw;->c:Ltwitter4j/auth/RequestToken;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/coremobility/app/vnotes/bw;->a:Lcom/coremobility/app/vnotes/cd;

    if-nez v0, :cond_1c

    :cond_14
    const-string v0, " twitterVerifier is empty "

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_1b
    return-void

    :cond_1c
    :try_start_1c
    iget-object v0, p0, Lcom/coremobility/app/vnotes/bw;->b:Ltwitter4j/AsyncTwitter;

    iget-object v1, p0, Lcom/coremobility/app/vnotes/bw;->c:Ltwitter4j/auth/RequestToken;

    invoke-interface {v0, v1, p1}, Ltwitter4j/AsyncTwitter;->getOAuthAccessToken(Ltwitter4j/auth/RequestToken;Ljava/lang/String;)Ltwitter4j/auth/AccessToken;

    move-result-object v0

    iget-object v1, p0, Lcom/coremobility/app/vnotes/bw;->a:Lcom/coremobility/app/vnotes/cd;

    invoke-virtual {v0}, Ltwitter4j/auth/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/coremobility/app/vnotes/cd;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/coremobility/app/vnotes/bw;->a:Lcom/coremobility/app/vnotes/cd;

    invoke-virtual {v0}, Ltwitter4j/auth/AccessToken;->getTokenSecret()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/coremobility/app/vnotes/cd;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/coremobility/app/vnotes/bw;->a:Lcom/coremobility/app/vnotes/cd;

    invoke-virtual {v0}, Ltwitter4j/auth/AccessToken;->getScreenName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/coremobility/app/vnotes/cd;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/bw;->a:Lcom/coremobility/app/vnotes/cd;

    iget-object v0, v0, Lcom/coremobility/app/vnotes/cd;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/coremobility/app/vnotes/bw;->a:Lcom/coremobility/app/vnotes/cd;

    iget-object v1, v1, Lcom/coremobility/app/vnotes/cd;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/coremobility/app/vnotes/bw;->a:Lcom/coremobility/app/vnotes/cd;

    iget-object v2, v2, Lcom/coremobility/app/vnotes/cd;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/coremobility/app/vnotes/cf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x6

    const-string v1, " Access Token/secret persisted to Preference for user "

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_54} :catch_55

    goto :goto_1b

    :catch_55
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in updateTwitterAccessTokens"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1b
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    invoke-static {p1}, Lcom/coremobility/j/r;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    invoke-static {p2}, Lcom/coremobility/j/r;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    invoke-static {p3}, Lcom/coremobility/j/r;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/coremobility/app/vnotes/bw;->d:Lcom/a/a/e;

    if-nez v0, :cond_20

    :cond_16
    const/4 v0, 0x6

    const-string v1, " FacebookAccessTokens Tokens are empty "

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_1f
    return-void

    :cond_20
    iget-object v0, p0, Lcom/coremobility/app/vnotes/bw;->d:Lcom/a/a/e;

    invoke-static {v0, p1, p2}, Lcom/coremobility/app/vnotes/cf;->a(Lcom/a/a/e;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f
.end method

.method public final b()V
    .registers 9

    :try_start_0
    new-instance v0, Ltwitter4j/AsyncTwitterFactory;

    invoke-static {}, Lcom/coremobility/app/vnotes/bw;->h()Ltwitter4j/conf/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Ltwitter4j/AsyncTwitterFactory;-><init>(Ltwitter4j/conf/Configuration;)V

    invoke-virtual {v0}, Ltwitter4j/AsyncTwitterFactory;->getInstance()Ltwitter4j/AsyncTwitter;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/app/vnotes/bw;->b:Ltwitter4j/AsyncTwitter;

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->I()Lcom/coremobility/app/vnotes/cd;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/app/vnotes/bw;->a:Lcom/coremobility/app/vnotes/cd;

    new-instance v0, Lcom/a/a/e;

    const-string v1, "109209915831375"

    invoke-direct {v0, v1}, Lcom/a/a/e;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/coremobility/app/vnotes/bw;->d:Lcom/a/a/e;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/bw;->d:Lcom/a/a/e;

    if-eqz v0, :cond_60

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->Q()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Lcom/a/a/e;

    const-string v2, "109209915831375"

    invoke-direct {v1, v2}, Lcom/a/a/e;-><init>(Ljava/lang/String;)V

    const-string v2, "preference_facebook_token"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "preference_facebook_expires_in"

    const-wide/16 v4, 0x0

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    const-string v5, "preference_facebook_uid"

    const/4 v6, 0x0

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "preference_facebook_name"

    const/4 v7, 0x0

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2}, Lcom/a/a/e;->a(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Lcom/a/a/e;->a(J)V

    invoke-virtual {v1}, Lcom/a/a/e;->a()Z

    move-result v2

    if-eqz v2, :cond_60

    if-eqz v5, :cond_60

    if-eqz v0, :cond_60

    iput-object v1, p0, Lcom/coremobility/app/vnotes/bw;->d:Lcom/a/a/e;

    :cond_60
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/coremobility/app/vnotes/bw;->e:Ljava/util/Vector;
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_67} :catch_68

    :goto_67
    return-void

    :catch_68
    move-exception v0

    const/4 v1, 0x6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initialize failed to load Consumer and Provider "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_67
.end method

.method public final b(Landroid/app/Activity;)V
    .registers 2

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/bw;->i()V

    invoke-virtual {p0, p1}, Lcom/coremobility/app/vnotes/bw;->d(Landroid/app/Activity;)V

    return-void
.end method

.method public final b(Landroid/app/Activity;I)V
    .registers 6

    iget-object v0, p0, Lcom/coremobility/app/vnotes/bw;->b:Ltwitter4j/AsyncTwitter;

    if-eqz v0, :cond_17

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->J()V

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->I()Lcom/coremobility/app/vnotes/cd;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/app/vnotes/bw;->a:Lcom/coremobility/app/vnotes/cd;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/bw;->b:Ltwitter4j/AsyncTwitter;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ltwitter4j/AsyncTwitter;->setOAuthAccessToken(Ltwitter4j/auth/AccessToken;)V

    invoke-virtual {p0, p1, p2}, Lcom/coremobility/app/vnotes/bw;->a(Landroid/app/Activity;I)V

    :goto_16
    return-void

    :cond_17
    const/4 v0, 0x6

    const-string v1, "something wrong"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_16
.end method

.method public final b(Landroid/app/Activity;Ljava/lang/String;)Z
    .registers 8

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/coremobility/app/vnotes/bw;->d:Lcom/a/a/e;

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/coremobility/app/vnotes/bw;->d:Lcom/a/a/e;

    invoke-virtual {v1}, Lcom/a/a/e;->a()Z

    move-result v1

    if-nez v1, :cond_11

    invoke-virtual {p0, p1}, Lcom/coremobility/app/vnotes/bw;->d(Landroid/app/Activity;)V

    :goto_10
    return v0

    :cond_11
    new-instance v0, Lcom/a/a/a;

    iget-object v1, p0, Lcom/coremobility/app/vnotes/bw;->d:Lcom/a/a/e;

    invoke-direct {v0, v1}, Lcom/a/a/a;-><init>(Lcom/a/a/e;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "message"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "me/feed"

    const-string v3, "POST"

    new-instance v4, Lcom/coremobility/app/vnotes/bx;

    invoke-direct {v4, p0}, Lcom/coremobility/app/vnotes/bx;-><init>(Lcom/coremobility/app/vnotes/bw;)V

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/a/a/a;->a(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/a/a/c;)V

    const/4 v0, 0x1

    goto :goto_10

    :cond_30
    const/4 v1, 0x6

    const-string v2, "Some thing went wrong: init failed"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_10
.end method

.method public final c()V
    .registers 3

    const/4 v1, 0x0

    sget-object v0, Lcom/coremobility/app/vnotes/bw;->e:Ljava/util/Vector;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/coremobility/app/vnotes/bw;->e:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    sput-object v1, Lcom/coremobility/app/vnotes/bw;->e:Ljava/util/Vector;

    :cond_c
    iget-object v0, p0, Lcom/coremobility/app/vnotes/bw;->a:Lcom/coremobility/app/vnotes/cd;

    if-eqz v0, :cond_12

    iput-object v1, p0, Lcom/coremobility/app/vnotes/bw;->a:Lcom/coremobility/app/vnotes/cd;

    :cond_12
    return-void
.end method

.method public final c(Landroid/app/Activity;)V
    .registers 2

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/bw;->i()V

    invoke-static {p1}, Lcom/coremobility/app/vnotes/bw;->b(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/coremobility/app/vnotes/bw;->d(Landroid/app/Activity;)V

    return-void
.end method

.method public final d()Lcom/a/a/e;
    .registers 2

    iget-object v0, p0, Lcom/coremobility/app/vnotes/bw;->d:Lcom/a/a/e;

    return-object v0
.end method

.method public final d(Landroid/app/Activity;)V
    .registers 5

    iget-object v0, p0, Lcom/coremobility/app/vnotes/bw;->d:Lcom/a/a/e;

    if-eqz v0, :cond_20

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "offline_access"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "read_stream"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "publish_stream"

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/coremobility/app/vnotes/bw;->d:Lcom/a/a/e;

    new-instance v2, Lcom/coremobility/app/vnotes/bz;

    invoke-direct {v2, p0}, Lcom/coremobility/app/vnotes/bz;-><init>(Lcom/coremobility/app/vnotes/bw;)V

    invoke-virtual {v1, p1, v0, v2}, Lcom/a/a/e;->a(Landroid/app/Activity;[Ljava/lang/String;Lcom/a/a/g;)V

    :cond_20
    return-void
.end method

.method public final e()Z
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/coremobility/app/vnotes/bw;->a:Lcom/coremobility/app/vnotes/cd;

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/coremobility/app/vnotes/bw;->a:Lcom/coremobility/app/vnotes/cd;

    iget-object v1, v1, Lcom/coremobility/app/vnotes/cd;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/coremobility/app/vnotes/bw;->a:Lcom/coremobility/app/vnotes/cd;

    iget-object v2, v2, Lcom/coremobility/app/vnotes/cd;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/coremobility/j/r;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-static {v2}, Lcom/coremobility/j/r;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    :cond_19
    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x1

    goto :goto_19
.end method

.method public final f()V
    .registers 4

    const/4 v0, 0x6

    const-string v1, " updatedTwitter StatusDone "

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/coremobility/app/vnotes/bw;->a(ILcom/coremobility/app/vnotes/cb;)V

    return-void
.end method
