.class public final Lcom/sec/android/app/snsaccountfb/util/SnsAccountFbUtil;
.super Ljava/lang/Object;
.source "SnsAccountFbUtil.java"


# static fields
.field private static mbIsLoggable:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 42
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/snsaccountfb/util/SnsAccountFbUtil;->mbIsLoggable:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isLoggable()Z
    .registers 1

    .prologue
    .line 127
    sget-boolean v0, Lcom/sec/android/app/snsaccountfb/util/SnsAccountFbUtil;->mbIsLoggable:Z

    return v0
.end method

.method public static setDebugMode(Z)V
    .registers 4
    .parameter "mode"

    .prologue
    .line 122
    sput-boolean p0, Lcom/sec/android/app/snsaccountfb/util/SnsAccountFbUtil;->mbIsLoggable:Z

    .line 123
    const-string v0, "SnsAccountFb"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mbIsLoggable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/sec/android/app/snsaccountfb/util/SnsAccountFbUtil;->mbIsLoggable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    return-void
.end method