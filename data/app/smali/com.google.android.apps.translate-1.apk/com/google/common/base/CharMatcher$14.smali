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
.method constructor <init>(Lcom/google/common/base/CharMatcher;Ljava/lang/String;Lcom/google/common/base/CharMatcher;)V
    .registers 4
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 581
    iput-object p1, p0, Lcom/google/common/base/CharMatcher$14;->this$0:Lcom/google/common/base/CharMatcher;

    iput-object p3, p0, Lcom/google/common/base/CharMatcher$14;->val$original:Lcom/google/common/base/CharMatcher;

    invoke-direct {p0, p2}, Lcom/google/common/base/CharMatcher;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .registers 3
    .parameter "x0"

    .prologue
    .line 581
    check-cast p1, Ljava/lang/Character;

    .end local p1
    invoke-super {p0, p1}, Lcom/google/common/base/CharMatcher;->apply(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method

.method public countIn(Ljava/lang/CharSequence;)I
    .registers 4
    .parameter "sequence"

    .prologue
    .line 595
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget-object v1, p0, Lcom/google/common/base/CharMatcher$14;->val$original:Lcom/google/common/base/CharMatcher;

    invoke-virtual {v1, p1}, Lcom/google/common/base/CharMatcher;->countIn(Ljava/lang/CharSequence;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public matches(C)Z
    .registers 3
    .parameter "c"

    .prologue
    .line 583
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

.method public matchesAllOf(Ljava/lang/CharSequence;)Z
    .registers 3
    .parameter "sequence"

    .prologue
    .line 587
    iget-object v0, p0, Lcom/google/common/base/CharMatcher$14;->val$original:Lcom/google/common/base/CharMatcher;

    invoke-virtual {v0, p1}, Lcom/google/common/base/CharMatcher;->matchesNoneOf(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public matchesNoneOf(Ljava/lang/CharSequence;)Z
    .registers 3
    .parameter "sequence"

    .prologue
    .line 591
    iget-object v0, p0, Lcom/google/common/base/CharMatcher$14;->val$original:Lcom/google/common/base/CharMatcher;

    invoke-virtual {v0, p1}, Lcom/google/common/base/CharMatcher;->matchesAllOf(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public negate()Lcom/google/common/base/CharMatcher;
    .registers 2

    .prologue
    .line 599
    iget-object v0, p0, Lcom/google/common/base/CharMatcher$14;->val$original:Lcom/google/common/base/CharMatcher;

    return-object v0
.end method
