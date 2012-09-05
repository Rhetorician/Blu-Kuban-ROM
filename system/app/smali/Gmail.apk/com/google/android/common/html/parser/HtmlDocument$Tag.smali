.class public Lcom/google/android/common/html/parser/HtmlDocument$Tag;
.super Lcom/google/android/common/html/parser/HtmlDocument$Node;
.source "HtmlDocument.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/common/html/parser/HtmlDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Tag"
.end annotation


# instance fields
.field private attributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/common/html/parser/HtmlDocument$TagAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private final element:Lcom/google/android/common/html/parser/HTML$Element;

.field private final isSelfTerminating:Z

.field private final originalHtmlAfterAttributes:Ljava/lang/String;

.field private final originalHtmlBeforeAttributes:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/android/common/html/parser/HTML$Element;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "element"
    .parameter
    .parameter "isSelfTerminating"
    .parameter "originalHtmlBeforeAttributes"
    .parameter "originalHtmlAfterAttributes"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/common/html/parser/HTML$Element;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/common/html/parser/HtmlDocument$TagAttribute;",
            ">;Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 523
    .local p2, attributes:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/common/html/parser/HtmlDocument$TagAttribute;>;"
    invoke-direct {p0}, Lcom/google/android/common/html/parser/HtmlDocument$Node;-><init>()V

    .line 524
    if-eqz p1, :cond_14

    const/4 v0, 0x1

    :goto_6
    invoke-static {v0}, Lcom/google/android/common/base/X;->assertTrue(Z)V

    .line 525
    iput-object p1, p0, Lcom/google/android/common/html/parser/HtmlDocument$Tag;->element:Lcom/google/android/common/html/parser/HTML$Element;

    .line 526
    iput-object p2, p0, Lcom/google/android/common/html/parser/HtmlDocument$Tag;->attributes:Ljava/util/List;

    .line 527
    iput-boolean p3, p0, Lcom/google/android/common/html/parser/HtmlDocument$Tag;->isSelfTerminating:Z

    .line 528
    iput-object p4, p0, Lcom/google/android/common/html/parser/HtmlDocument$Tag;->originalHtmlBeforeAttributes:Ljava/lang/String;

    .line 529
    iput-object p5, p0, Lcom/google/android/common/html/parser/HtmlDocument$Tag;->originalHtmlAfterAttributes:Ljava/lang/String;

    .line 530
    return-void

    .line 524
    :cond_14
    const/4 v0, 0x0

    goto :goto_6
.end method

.method synthetic constructor <init>(Lcom/google/android/common/html/parser/HTML$Element;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;Lcom/google/android/common/html/parser/HtmlDocument$1;)V
    .registers 7
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 489
    invoke-direct/range {p0 .. p5}, Lcom/google/android/common/html/parser/HtmlDocument$Tag;-><init>(Lcom/google/android/common/html/parser/HTML$Element;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public accept(Lcom/google/android/common/html/parser/HtmlDocument$Visitor;)V
    .registers 2
    .parameter "visitor"

    .prologue
    .line 608
    invoke-interface {p1, p0}, Lcom/google/android/common/html/parser/HtmlDocument$Visitor;->visitTag(Lcom/google/android/common/html/parser/HtmlDocument$Tag;)V

    .line 609
    return-void
.end method

.method public getAttributes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/common/html/parser/HtmlDocument$TagAttribute;",
            ">;"
        }
    .end annotation

    .prologue
    .line 559
    iget-object v0, p0, Lcom/google/android/common/html/parser/HtmlDocument$Tag;->attributes:Ljava/util/List;

    return-object v0
.end method

.method public getAttributes(Lcom/google/android/common/html/parser/HTML$Attribute;)Ljava/util/List;
    .registers 6
    .parameter "attr"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/common/html/parser/HTML$Attribute;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/common/html/parser/HtmlDocument$TagAttribute;",
            ">;"
        }
    .end annotation

    .prologue
    .line 579
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 580
    .local v2, result:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/common/html/parser/HtmlDocument$TagAttribute;>;"
    iget-object v3, p0, Lcom/google/android/common/html/parser/HtmlDocument$Tag;->attributes:Ljava/util/List;

    if-eqz v3, :cond_28

    .line 581
    iget-object v3, p0, Lcom/google/android/common/html/parser/HtmlDocument$Tag;->attributes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_e
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/common/html/parser/HtmlDocument$TagAttribute;

    .line 582
    .local v0, attribute:Lcom/google/android/common/html/parser/HtmlDocument$TagAttribute;
    invoke-virtual {v0}, Lcom/google/android/common/html/parser/HtmlDocument$TagAttribute;->getAttribute()Lcom/google/android/common/html/parser/HTML$Attribute;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/android/common/html/parser/HTML$Attribute;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 583
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 587
    .end local v0           #attribute:Lcom/google/android/common/html/parser/HtmlDocument$TagAttribute;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_28
    return-object v2
.end method

.method public getElement()Lcom/google/android/common/html/parser/HTML$Element;
    .registers 2

    .prologue
    .line 539
    iget-object v0, p0, Lcom/google/android/common/html/parser/HtmlDocument$Tag;->element:Lcom/google/android/common/html/parser/HTML$Element;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 534
    iget-object v0, p0, Lcom/google/android/common/html/parser/HtmlDocument$Tag;->element:Lcom/google/android/common/html/parser/HTML$Element;

    invoke-virtual {v0}, Lcom/google/android/common/html/parser/HTML$Element;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalHtmlAfterAttributes()Ljava/lang/String;
    .registers 2

    .prologue
    .line 676
    iget-object v0, p0, Lcom/google/android/common/html/parser/HtmlDocument$Tag;->originalHtmlAfterAttributes:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalHtmlBeforeAttributes()Ljava/lang/String;
    .registers 2

    .prologue
    .line 672
    iget-object v0, p0, Lcom/google/android/common/html/parser/HtmlDocument$Tag;->originalHtmlBeforeAttributes:Ljava/lang/String;

    return-object v0
.end method

.method public isSelfTerminating()Z
    .registers 2

    .prologue
    .line 668
    iget-boolean v0, p0, Lcom/google/android/common/html/parser/HtmlDocument$Tag;->isSelfTerminating:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 593
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 594
    .local v2, sb:Ljava/lang/StringBuilder;
    const-string v3, "Start Tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    iget-object v3, p0, Lcom/google/android/common/html/parser/HtmlDocument$Tag;->element:Lcom/google/android/common/html/parser/HTML$Element;

    invoke-virtual {v3}, Lcom/google/android/common/html/parser/HTML$Element;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    iget-object v3, p0, Lcom/google/android/common/html/parser/HtmlDocument$Tag;->attributes:Ljava/util/List;

    if-eqz v3, :cond_36

    .line 597
    iget-object v3, p0, Lcom/google/android/common/html/parser/HtmlDocument$Tag;->attributes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/common/html/parser/HtmlDocument$TagAttribute;

    .line 598
    .local v0, attr:Lcom/google/android/common/html/parser/HtmlDocument$TagAttribute;
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 599
    invoke-virtual {v0}, Lcom/google/android/common/html/parser/HtmlDocument$TagAttribute;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1d

    .line 602
    .end local v0           #attr:Lcom/google/android/common/html/parser/HtmlDocument$TagAttribute;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
