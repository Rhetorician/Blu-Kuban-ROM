.class public Ltwitter4j/auth/NullAuthorization;
.super Ljava/lang/Object;
.source "NullAuthorization.java"

# interfaces
.implements Ltwitter4j/auth/Authorization;
.implements Ljava/io/Serializable;


# static fields
.field private static SINGLETON:Ltwitter4j/auth/NullAuthorization; = null

.field private static final serialVersionUID:J = -0x7967c14d4d386d18L


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    new-instance v0, Ltwitter4j/auth/NullAuthorization;

    invoke-direct {v0}, Ltwitter4j/auth/NullAuthorization;-><init>()V

    sput-object v0, Ltwitter4j/auth/NullAuthorization;->SINGLETON:Ltwitter4j/auth/NullAuthorization;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static getInstance()Ltwitter4j/auth/NullAuthorization;
    .registers 1

    .prologue
    .line 37
    sget-object v0, Ltwitter4j/auth/NullAuthorization;->SINGLETON:Ltwitter4j/auth/NullAuthorization;

    return-object v0
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 59
    sget-object v0, Ltwitter4j/auth/NullAuthorization;->SINGLETON:Ltwitter4j/auth/NullAuthorization;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter "o"

    .prologue
    .line 50
    sget-object v0, Ltwitter4j/auth/NullAuthorization;->SINGLETON:Ltwitter4j/auth/NullAuthorization;

    if-ne v0, p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public getAuthorizationHeader(Ltwitter4j/internal/http/HttpRequest;)Ljava/lang/String;
    .registers 3
    .parameter "req"

    .prologue
    .line 41
    const/4 v0, 0x0

    return-object v0
.end method

.method public isEnabled()Z
    .registers 2

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 55
    const-string v0, "NullAuthentication{SINGLETON}"

    return-object v0
.end method