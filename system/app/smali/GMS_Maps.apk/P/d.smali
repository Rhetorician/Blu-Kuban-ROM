.class public LP/d;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:LP/d;


# instance fields
.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:[Ljava/lang/String;

.field private h:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "/strings.dat"

    sput-object v0, LP/d;->a:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, LP/d;->b:LP/d;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LP/d;->g:[Ljava/lang/String;

    iput-object v0, p0, LP/d;->h:[Ljava/lang/String;

    invoke-static {p1}, LP/d;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LP/d;->c(Ljava/lang/String;)V

    invoke-static {}, LP/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LP/d;->d(Ljava/lang/String;)V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    .registers 5

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x4

    :goto_7
    return v0

    :cond_8
    invoke-virtual {p0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x3

    goto :goto_7

    :cond_10
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x2

    goto :goto_7

    :cond_18
    if-eqz p3, :cond_1c

    const/4 v0, 0x1

    goto :goto_7

    :cond_1c
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static a(Ljava/lang/String;)LP/d;
    .registers 2

    new-instance v0, LP/d;

    invoke-direct {v0, p0}, LP/d;-><init>(Ljava/lang/String;)V

    sput-object v0, LP/d;->b:LP/d;

    sget-object v0, LP/d;->b:LP/d;

    return-object v0
.end method

.method public static a()Ljava/lang/String;
    .registers 1

    const-string v0, "en"

    invoke-static {v0}, Lcom/google/gmm/debug/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    const/4 v1, 0x0

    invoke-static {p0}, LP/d;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, LP/d;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v0, -0x1

    move v2, v0

    move v3, v1

    move v0, v1

    :goto_d
    array-length v4, p1

    if-ge v0, v4, :cond_22

    aget-object v7, p1, v0

    if-nez v0, :cond_20

    const/4 v4, 0x1

    :goto_15
    invoke-static {v5, v6, v7, v4}, LP/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v4

    if-le v4, v2, :cond_1d

    move v2, v4

    move v3, v0

    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_20
    move v4, v1

    goto :goto_15

    :cond_22
    aget-object v0, p1, v3

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/16 v2, 0x5f

    const/4 v6, 0x1

    const/4 v5, 0x2

    const/4 v4, 0x0

    const-string v0, "en"

    if-eqz p0, :cond_52

    const/16 v1, 0x2d

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Laa/a;->a(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v1

    aget-object v2, v1, v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v2, v5, :cond_24

    aget-object v2, v1, v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_52

    :cond_24
    aget-object v0, v1, v4

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    array-length v2, v1

    if-lt v2, v5, :cond_52

    aget-object v2, v1, v6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v5, :cond_52

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v1, v6

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_52
    return-object v0
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p0}, LP/d;->i(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_7

    :goto_6
    return-object p0

    :cond_7
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_6
.end method

.method public static f(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v1, 0x0

    invoke-static {p0}, LP/d;->i(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_8

    :goto_7
    return-object v1

    :cond_8
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LP/d;->i(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_19

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_19
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_21

    :goto_1f
    move-object v1, v0

    goto :goto_7

    :cond_21
    move-object v0, v1

    goto :goto_1f
.end method

.method private static g(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_5

    const-string p0, "en"

    :cond_4
    :goto_4
    return-object p0

    :cond_5
    const-string v0, "en_AU"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    const-string v0, "en_NZ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_15
    const-string p0, "en_GB"

    goto :goto_4

    :cond_18
    const-string v0, "nb"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "no"

    goto :goto_4
.end method

.method private static h(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-static {p0}, LP/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "microedition.locale"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LP/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "en"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_24

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    :cond_23
    move-object v0, v1

    :cond_24
    return-object v0
.end method

.method private static i(Ljava/lang/String;)I
    .registers 3

    const/16 v0, 0x5f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/16 v1, 0x2d

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v0, :cond_10

    move v0, v1

    :cond_f
    :goto_f
    return v0

    :cond_10
    if-ltz v1, :cond_f

    if-lt v0, v1, :cond_f

    move v0, v1

    goto :goto_f
.end method


# virtual methods
.method public c(Ljava/lang/String;)V
    .registers 5

    invoke-static {p1}, LP/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LP/d;->c:Ljava/lang/String;

    iget-object v0, p0, LP/d;->c:Ljava/lang/String;

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_15

    iget-object v0, p0, LP/d;->c:Ljava/lang/String;

    :goto_12
    iput-object v0, p0, LP/d;->d:Ljava/lang/String;

    return-void

    :cond_15
    iget-object v1, p0, LP/d;->c:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_12
.end method

.method public d(Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_11

    invoke-static {p1}, LP/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_6
    iput-object v0, p0, LP/d;->e:Ljava/lang/String;

    iget-object v0, p0, LP/d;->e:Ljava/lang/String;

    invoke-static {v0}, LP/d;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LP/d;->f:Ljava/lang/String;

    return-void

    :cond_11
    iget-object v0, p0, LP/d;->c:Ljava/lang/String;

    goto :goto_6
.end method