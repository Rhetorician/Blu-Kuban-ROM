.class Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_8859_2_hu;
.super Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_8859_2;
.source "CharsetRecog_sbcs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/common/util/text/CharsetRecog_sbcs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CharsetRecog_8859_2_hu"
.end annotation


# static fields
.field private static ngrams:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 488
    const/16 v0, 0x40

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_8859_2_hu;->ngrams:[I

    .line 486
    return-void

    .line 488
    :array_a
    .array-data 0x4
        0x20t 0x61t 0x20t 0x0t
        0x7at 0x61t 0x20t 0x0t
        0x65t 0x62t 0x20t 0x0t
        0x67t 0x65t 0x20t 0x0t
        0x6ct 0x65t 0x20t 0x0t
        0x65t 0x66t 0x20t 0x0t
        0x61t 0x68t 0x20t 0x0t
        0x6ft 0x68t 0x20t 0x0t
        0x73t 0x69t 0x20t 0x0t
        0x65t 0x6bt 0x20t 0x0t
        0x69t 0x6bt 0x20t 0x0t
        0xf6t 0x6bt 0x20t 0x0t
        0x65t 0x6ct 0x20t 0x0t
        0x61t 0x6dt 0x20t 0x0t
        0x65t 0x6dt 0x20t 0x0t
        0x69t 0x6dt 0x20t 0x0t
        0x65t 0x6et 0x20t 0x0t
        0x7at 0x73t 0x20t 0x0t
        0x65t 0x74t 0x20t 0x0t
        0x73t 0xe9t 0x20t 0x0t
        0x61t 0x20t 0x61t 0x0t
        0x6bt 0x20t 0x61t 0x0t
        0x6dt 0x20t 0x61t 0x0t
        0x73t 0x20t 0x61t 0x0t
        0x20t 0x6bt 0x61t 0x0t
        0x20t 0x6et 0x61t 0x0t
        0x20t 0x7at 0x61t 0x0t
        0x6et 0x61t 0x62t 0x0t
        0x6et 0x65t 0x62t 0x0t
        0x79t 0x67t 0x65t 0x0t
        0x20t 0x6bt 0x65t 0x0t
        0x20t 0x6ct 0x65t 0x0t
        0x65t 0x6ct 0x65t 0x0t
        0x20t 0x6dt 0x65t 0x0t
        0x20t 0x6et 0x65t 0x0t
        0x65t 0x72t 0x65t 0x0t
        0x20t 0x74t 0x65t 0x0t
        0x65t 0x74t 0x65t 0x0t
        0x74t 0x74t 0x65t 0x0t
        0x20t 0x79t 0x67t 0x0t
        0x67t 0x6ft 0x68t 0x0t
        0x74t 0x6et 0x69t 0x0t
        0x20t 0x73t 0x69t 0x0t
        0x61t 0x20t 0x6bt 0x0t
        0x7at 0xf6t 0x6bt 0x0t
        0x67t 0x65t 0x6dt 0x0t
        0x6et 0x69t 0x6dt 0x0t
        0x61t 0x20t 0x6et 0x0t
        0x6bt 0x61t 0x6et 0x0t
        0x6bt 0x65t 0x6et 0x0t
        0x6dt 0x65t 0x6et 0x0t
        0x20t 0x74t 0x6et 0x0t
        0x79t 0x67t 0x6ft 0x0t
        0x61t 0x20t 0x73t 0x0t
        0x65t 0x7at 0x73t 0x0t
        0x74t 0x7at 0x73t 0x0t
        0xe1t 0x7at 0x73t 0x0t
        0x67t 0xe9t 0x73t 0x0t
        0x61t 0x20t 0x74t 0x0t
        0x20t 0x74t 0x74t 0x0t
        0x73t 0xe1t 0x74t 0x0t
        0x72t 0x65t 0x7at 0x0t
        0x20t 0x6et 0xe1t 0x0t
        0x20t 0x73t 0xe9t 0x0t
    .end array-data
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 486
    invoke-direct {p0}, Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_8859_2;-><init>()V

    return-void
.end method


# virtual methods
.method public getLanguage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 497
    const-string v0, "hu"

    return-object v0
.end method

.method public match(Lcom/infraware/common/util/text/CharsetDetector;)I
    .registers 4
    .parameter "det"

    .prologue
    .line 502
    sget-object v0, Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_8859_2_hu;->ngrams:[I

    sget-object v1, Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_8859_2_hu;->byteMap:[B

    invoke-virtual {p0, p1, v0, v1}, Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_8859_2_hu;->match(Lcom/infraware/common/util/text/CharsetDetector;[I[B)I

    move-result v0

    return v0
.end method