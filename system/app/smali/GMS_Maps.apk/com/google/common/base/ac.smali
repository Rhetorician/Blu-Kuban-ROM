.class synthetic Lcom/google/common/base/ac;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 474
    invoke-static {}, Lcom/google/common/base/ae;->values()[Lcom/google/common/base/ae;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/common/base/ac;->a:[I

    :try_start_9
    sget-object v0, Lcom/google/common/base/ac;->a:[I

    sget-object v1, Lcom/google/common/base/ae;->c:Lcom/google/common/base/ae;

    invoke-virtual {v1}, Lcom/google/common/base/ae;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_22

    :goto_14
    :try_start_14
    sget-object v0, Lcom/google/common/base/ac;->a:[I

    sget-object v1, Lcom/google/common/base/ae;->a:Lcom/google/common/base/ae;

    invoke-virtual {v1}, Lcom/google/common/base/ae;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_20

    :goto_1f
    return-void

    :catch_20
    move-exception v0

    goto :goto_1f

    :catch_22
    move-exception v0

    goto :goto_14
.end method