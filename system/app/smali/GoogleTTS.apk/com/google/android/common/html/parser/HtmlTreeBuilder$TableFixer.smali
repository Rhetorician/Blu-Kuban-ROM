.class Lcom/google/android/common/html/parser/HtmlTreeBuilder$TableFixer;
.super Ljava/lang/Object;
.source "HtmlTreeBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/common/html/parser/HtmlTreeBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TableFixer"
.end annotation


# instance fields
.field private state:I

.field private tables:I

.field final synthetic this$0:Lcom/google/android/common/html/parser/HtmlTreeBuilder;


# direct methods
.method constructor <init>(Lcom/google/android/common/html/parser/HtmlTreeBuilder;)V
    .registers 3
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/google/android/common/html/parser/HtmlTreeBuilder$TableFixer;->this$0:Lcom/google/android/common/html/parser/HtmlTreeBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/common/html/parser/HtmlTreeBuilder$TableFixer;->tables:I

    return-void
.end method

.method private ensureCellState()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 270
    iget v1, p0, Lcom/google/android/common/html/parser/HtmlTreeBuilder$TableFixer;->state:I

    if-eq v1, v3, :cond_1e

    .line 271
    iget-object v1, p0, Lcom/google/android/common/html/parser/HtmlTreeBuilder$TableFixer;->this$0:Lcom/google/android/common/html/parser/HtmlTreeBuilder;

    sget-object v2, Lcom/google/android/common/html/parser/HTML4;->TD_ELEMENT:Lcom/google/android/common/html/parser/HTML$Element;

    #calls: Lcom/google/android/common/html/parser/HtmlTreeBuilder;->push(Lcom/google/android/common/html/parser/HTML$Element;)V
    invoke-static {v1, v2}, Lcom/google/android/common/html/parser/HtmlTreeBuilder;->access$000(Lcom/google/android/common/html/parser/HtmlTreeBuilder;Lcom/google/android/common/html/parser/HTML$Element;)V

    .line 273
    sget-object v1, Lcom/google/android/common/html/parser/HTML4;->TD_ELEMENT:Lcom/google/android/common/html/parser/HTML$Element;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/common/html/parser/HtmlDocument;->createTag(Lcom/google/android/common/html/parser/HTML$Element;Ljava/util/List;)Lcom/google/android/common/html/parser/HtmlDocument$Tag;

    move-result-object v0

    .line 274
    .local v0, tdTag:Lcom/google/android/common/html/parser/HtmlDocument$Tag;
    iget-object v1, p0, Lcom/google/android/common/html/parser/HtmlTreeBuilder$TableFixer;->this$0:Lcom/google/android/common/html/parser/HtmlTreeBuilder;

    #getter for: Lcom/google/android/common/html/parser/HtmlTreeBuilder;->tree:Lcom/google/android/common/html/parser/HtmlTree;
    invoke-static {v1}, Lcom/google/android/common/html/parser/HtmlTreeBuilder;->access$100(Lcom/google/android/common/html/parser/HtmlTreeBuilder;)Lcom/google/android/common/html/parser/HtmlTree;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/common/html/parser/HtmlTree;->addStartTag(Lcom/google/android/common/html/parser/HtmlDocument$Tag;)V

    .line 276
    iput v3, p0, Lcom/google/android/common/html/parser/HtmlTreeBuilder$TableFixer;->state:I

    .line 278
    .end local v0           #tdTag:Lcom/google/android/common/html/parser/HtmlDocument$Tag;
    :cond_1e
    return-void
.end method

.method private ensureTableState()V
    .registers 4

    .prologue
    .line 257
    iget v1, p0, Lcom/google/android/common/html/parser/HtmlTreeBuilder$TableFixer;->tables:I

    if-nez v1, :cond_21

    .line 258
    iget-object v1, p0, Lcom/google/android/common/html/parser/HtmlTreeBuilder$TableFixer;->this$0:Lcom/google/android/common/html/parser/HtmlTreeBuilder;

    sget-object v2, Lcom/google/android/common/html/parser/HTML4;->TABLE_ELEMENT:Lcom/google/android/common/html/parser/HTML$Element;

    #calls: Lcom/google/android/common/html/parser/HtmlTreeBuilder;->push(Lcom/google/android/common/html/parser/HTML$Element;)V
    invoke-static {v1, v2}, Lcom/google/android/common/html/parser/HtmlTreeBuilder;->access$000(Lcom/google/android/common/html/parser/HtmlTreeBuilder;Lcom/google/android/common/html/parser/HTML$Element;)V

    .line 260
    sget-object v1, Lcom/google/android/common/html/parser/HTML4;->TABLE_ELEMENT:Lcom/google/android/common/html/parser/HTML$Element;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/common/html/parser/HtmlDocument;->createTag(Lcom/google/android/common/html/parser/HTML$Element;Ljava/util/List;)Lcom/google/android/common/html/parser/HtmlDocument$Tag;

    move-result-object v0

    .line 262
    .local v0, tableTag:Lcom/google/android/common/html/parser/HtmlDocument$Tag;
    iget-object v1, p0, Lcom/google/android/common/html/parser/HtmlTreeBuilder$TableFixer;->this$0:Lcom/google/android/common/html/parser/HtmlTreeBuilder;

    #getter for: Lcom/google/android/common/html/parser/HtmlTreeBuilder;->tree:Lcom/google/android/common/html/parser/HtmlTree;
    invoke-static {v1}, Lcom/google/android/common/html/parser/HtmlTreeBuilder;->access$100(Lcom/google/android/common/html/parser/HtmlTreeBuilder;)Lcom/google/android/common/html/parser/HtmlTree;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/common/html/parser/HtmlTree;->addStartTag(Lcom/google/android/common/html/parser/HtmlDocument$Tag;)V

    .line 264
    iget v1, p0, Lcom/google/android/common/html/parser/HtmlTreeBuilder$TableFixer;->tables:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/common/html/parser/HtmlTreeBuilder$TableFixer;->tables:I

    .line 266
    .end local v0           #tableTag:Lcom/google/android/common/html/parser/HtmlDocument$Tag;
    :cond_21
    return-void
.end method


# virtual methods
.method finish()V
    .registers 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 251
    iget v0, p0, Lcom/google/android/common/html/parser/HtmlTreeBuilder$TableFixer;->tables:I

    if-nez v0, :cond_12

    move v0, v1

    :goto_7
    invoke-static {v0}, Lcom/google/android/common/base/X;->assertTrue(Z)V

    .line 252
    iget v0, p0, Lcom/google/android/common/html/parser/HtmlTreeBuilder$TableFixer;->state:I

    if-nez v0, :cond_14

    :goto_e
    invoke-static {v1}, Lcom/google/android/common/base/X;->assertTrue(Z)V

    .line 253
    return-void

    :cond_12
    move v0, v2

    .line 251
    goto :goto_7

    :cond_14
    move v1, v2

    .line 252
    goto :goto_e
.end method

.method seeEndTag(Lcom/google/android/common/html/parser/HtmlDocument$EndTag;)V
    .registers 6
    .parameter "endTag"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 219
    invoke-virtual {p1}, Lcom/google/android/common/html/parser/HtmlDocument$EndTag;->getElement()Lcom/google/android/common/html/parser/HTML$Element;

    move-result-object v0

    .line 221
    .local v0, element:Lcom/google/android/common/html/parser/HTML$Element;
    iget v1, p0, Lcom/google/android/common/html/parser/HtmlTreeBuilder$TableFixer;->tables:I

    if-lez v1, :cond_2a

    invoke-virtual {v0}, Lcom/google/android/common/html/parser/HTML$Element;->getType()I

    move-result v1

    if-ne v1, v2, :cond_2a

    .line 223
    sget-object v1, Lcom/google/android/common/html/parser/HTML4;->TD_ELEMENT:Lcom/google/android/common/html/parser/HTML$Element;

    invoke-virtual {v1, v0}, Lcom/google/android/common/html/parser/HTML$Element;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    sget-object v1, Lcom/google/android/common/html/parser/HTML4;->TR_ELEMENT:Lcom/google/android/common/html/parser/HTML$Element;

    invoke-virtual {v1, v0}, Lcom/google/android/common/html/parser/HTML$Element;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    sget-object v1, Lcom/google/android/common/html/parser/HTML4;->TH_ELEMENT:Lcom/google/android/common/html/parser/HTML$Element;

    invoke-virtual {v1, v0}, Lcom/google/android/common/html/parser/HTML$Element;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 227
    :cond_28
    iput v3, p0, Lcom/google/android/common/html/parser/HtmlTreeBuilder$TableFixer;->state:I

    .line 238
    :cond_2a
    :goto_2a
    return-void

    .line 229
    :cond_2b
    sget-object v1, Lcom/google/android/common/html/parser/HTML4;->CAPTION_ELEMENT:Lcom/google/android/common/html/parser/HTML$Element;

    invoke-virtual {v1, v0}, Lcom/google/android/common/html/parser/HTML$Element;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 230
    iput v3, p0, Lcom/google/android/common/html/parser/HtmlTreeBuilder$TableFixer;->state:I

    goto :goto_2a

    .line 232
    :cond_36
    sget-object v1, Lcom/google/android/common/html/parser/HTML4;->TABLE_ELEMENT:Lcom/google/android/common/html/parser/HTML$Element;

    invoke-virtual {v1, v0}, Lcom/google/android/common/html/parser/HTML$Element;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 233
    iget v1, p0, Lcom/google/android/common/html/parser/HtmlTreeBuilder$TableFixer;->tables:I

    if-lez v1, :cond_53

    move v1, v2

    :goto_43
    invoke-static {v1}, Lcom/google/android/common/base/X;->assertTrue(Z)V

    .line 234
    iget v1, p0, Lcom/google/android/common/html/parser/HtmlTreeBuilder$TableFixer;->tables:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/common/html/parser/HtmlTreeBuilder$TableFixer;->tables:I

    .line 235
    iget v1, p0, Lcom/google/android/common/html/parser/HtmlTreeBuilder$TableFixer;->tables:I

    if-lez v1, :cond_55

    :goto_50
    iput v2, p0, Lcom/google/android/common/html/parser/HtmlTreeBuilder$TableFixer;->state:I

    goto :goto_2a

    :cond_53
    move v1, v3

    .line 233
    goto :goto_43

    :cond_55
    move v2, v3

    .line 235
    goto :goto_50
.end method

.method seeTag(Lcom/google/android/common/html/parser/HtmlDocument$Tag;)V
    .registers 5
    .parameter "tag"

    .prologue
    const/4 v2, 0x1

    .line 183
    invoke-virtual {p1}, Lcom/google/android/common/html/parser/HtmlDocument$Tag;->getElement()Lcom/google/android/common/html/parser/HTML$Element;

    move-result-object v0

    .line 184
    .local v0, element:Lcom/google/android/common/html/parser/HTML$Element;
    invoke-virtual {v0}, Lcom/google/android/common/html/parser/HTML$Element;->getType()I

    move-result v1

    if-ne v1, v2, :cond_46

    .line 186
    sget-object v1, Lcom/google/android/common/html/parser/HTML4;->TABLE_ELEMENT:Lcom/google/android/common/html/parser/HTML$Element;

    invoke-virtual {v1, v0}, Lcom/google/android/common/html/parser/HTML$Element;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 187
    iget v1, p0, Lcom/google/android/common/html/parser/HtmlTreeBuilder$TableFixer;->tables:I

    if-lez v1, :cond_1a

    .line 188
    invoke-direct {p0}, Lcom/google/android/common/html/parser/HtmlTreeBuilder$TableFixer;->ensureCellState()V

    .line 190
    :cond_1a
    iget v1, p0, Lcom/google/android/common/html/parser/HtmlTreeBuilder$TableFixer;->tables:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/common/html/parser/HtmlTreeBuilder$TableFixer;->tables:I

    .line 191
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/common/html/parser/HtmlTreeBuilder$TableFixer;->state:I

    .line 216
    :cond_23
    :goto_23
    return-void

    .line 195
    :cond_24
    invoke-direct {p0}, Lcom/google/android/common/html/parser/HtmlTreeBuilder$TableFixer;->ensureTableState()V

    .line 198
    sget-object v1, Lcom/google/android/common/html/parser/HTML4;->TD_ELEMENT:Lcom/google/android/common/html/parser/HTML$Element;

    invoke-virtual {v1, v0}, Lcom/google/android/common/html/parser/HTML$Element;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_37

    sget-object v1, Lcom/google/android/common/html/parser/HTML4;->TH_ELEMENT:Lcom/google/android/common/html/parser/HTML$Element;

    invoke-virtual {v1, v0}, Lcom/google/android/common/html/parser/HTML$Element;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 200
    :cond_37
    iput v2, p0, Lcom/google/android/common/html/parser/HtmlTreeBuilder$TableFixer;->state:I

    goto :goto_23

    .line 202
    :cond_3a
    sget-object v1, Lcom/google/android/common/html/parser/HTML4;->CAPTION_ELEMENT:Lcom/google/android/common/html/parser/HTML$Element;

    invoke-virtual {v1, v0}, Lcom/google/android/common/html/parser/HTML$Element;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 203
    const/4 v1, 0x2

    iput v1, p0, Lcom/google/android/common/html/parser/HtmlTreeBuilder$TableFixer;->state:I

    goto :goto_23

    .line 207
    :cond_46
    iget v1, p0, Lcom/google/android/common/html/parser/HtmlTreeBuilder$TableFixer;->tables:I

    if-lez v1, :cond_23

    .line 211
    sget-object v1, Lcom/google/android/common/html/parser/HTML4;->FORM_ELEMENT:Lcom/google/android/common/html/parser/HTML$Element;

    invoke-virtual {v1, v0}, Lcom/google/android/common/html/parser/HTML$Element;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 212
    invoke-direct {p0}, Lcom/google/android/common/html/parser/HtmlTreeBuilder$TableFixer;->ensureCellState()V

    goto :goto_23
.end method

.method seeText(Lcom/google/android/common/html/parser/HtmlDocument$Text;)V
    .registers 3
    .parameter "textNode"

    .prologue
    .line 243
    iget v0, p0, Lcom/google/android/common/html/parser/HtmlTreeBuilder$TableFixer;->tables:I

    if-lez v0, :cond_11

    iget v0, p0, Lcom/google/android/common/html/parser/HtmlTreeBuilder$TableFixer;->state:I

    if-nez v0, :cond_11

    invoke-virtual {p1}, Lcom/google/android/common/html/parser/HtmlDocument$Text;->isWhitespace()Z

    move-result v0

    if-nez v0, :cond_11

    .line 246
    invoke-direct {p0}, Lcom/google/android/common/html/parser/HtmlTreeBuilder$TableFixer;->ensureCellState()V

    .line 248
    :cond_11
    return-void
.end method
