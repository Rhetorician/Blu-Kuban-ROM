.class Lcom/google/common/base/CharMatcher$14;
.super Lcom/google/common/base/CharMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/base/CharMatcher;->negate()Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/base/CharMatcher;

.field final synthetic val$original:Lcom/google/common/base/CharMatcher;


# direct methods
.method constructor <init>(Lcom/google/common/base/CharMatcher;Lcom/google/common/base/CharMatcher;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 531
    iput-object p1, p0, Lcom/google/common/base/CharMatcher$14;->this$0:Lcom/google/common/base/CharMatcher;

    iput-object p2, p0, Lcom/google/common/base/CharMatcher$14;->val$original:Lcom/google/common/base/CharMatcher;

    invoke-direct {p0}, Lcom/google/common/base/CharMatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public matches(C)Z
    .registers 3
    .parameter "c"

    .prologue
    .line 533
    iget-object v0, p0, Lcom/google/common/base/CharMatcher$14;->val$original:Lcom/google/common/base/CharMatcher;

    invoke-virtual {v0, p1}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public negate()Lcom/google/common/base/CharMatcher;
    .registers 2

    .prologue
    .line 546
    iget-object v0, p0, Lcom/google/common/base/CharMatcher$14;->val$original:Lcom/google/common/base/CharMatcher;

    return-object v0
.end method
