.class Lorg/simpleframework/xml/util/WeakCache$SegmentList;
.super Ljava/lang/Object;
.source "WeakCache.java"


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/simpleframework/xml/util/WeakCache",
            "<TK;TV;>.Segment;>;"
        }
    .end annotation
.end field

.field private size:I

.field final synthetic this$0:Lorg/simpleframework/xml/util/WeakCache;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/util/WeakCache;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lorg/simpleframework/xml/util/WeakCache$SegmentList;->this$0:Lorg/simpleframework/xml/util/WeakCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/util/WeakCache$SegmentList;->list:Ljava/util/List;

    .line 158
    iput p2, p0, Lorg/simpleframework/xml/util/WeakCache$SegmentList;->size:I

    .line 159
    invoke-direct {p0, p2}, Lorg/simpleframework/xml/util/WeakCache$SegmentList;->create(I)V

    .line 160
    return-void
.end method

.method private create(I)V
    .registers 7
    .parameter

    .prologue
    .line 189
    :goto_0
    add-int/lit8 v0, p1, -0x1

    if-lez p1, :cond_13

    .line 192
    iget-object v1, p0, Lorg/simpleframework/xml/util/WeakCache$SegmentList;->list:Ljava/util/List;

    new-instance v2, Lorg/simpleframework/xml/util/WeakCache$Segment;

    iget-object v3, p0, Lorg/simpleframework/xml/util/WeakCache$SegmentList;->this$0:Lorg/simpleframework/xml/util/WeakCache;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lorg/simpleframework/xml/util/WeakCache$Segment;-><init>(Lorg/simpleframework/xml/util/WeakCache;Lorg/simpleframework/xml/util/WeakCache$1;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move p1, v0

    goto :goto_0

    .line 194
    :cond_13
    return-void
.end method

.method private segment(Ljava/lang/Object;)I
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    .prologue
    .line 206
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget v1, p0, Lorg/simpleframework/xml/util/WeakCache$SegmentList;->size:I

    rem-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Lorg/simpleframework/xml/util/WeakCache$Segment;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lorg/simpleframework/xml/util/WeakCache",
            "<TK;TV;>.Segment;"
        }
    .end annotation

    .prologue
    .line 173
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/util/WeakCache$SegmentList;->segment(Ljava/lang/Object;)I

    move-result v0

    .line 175
    iget v1, p0, Lorg/simpleframework/xml/util/WeakCache$SegmentList;->size:I

    if-ge v0, v1, :cond_11

    .line 176
    iget-object v1, p0, Lorg/simpleframework/xml/util/WeakCache$SegmentList;->list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/util/WeakCache$Segment;

    .line 178
    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method