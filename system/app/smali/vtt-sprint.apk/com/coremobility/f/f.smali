.class public final Lcom/coremobility/f/f;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field b:Lcom/coremobility/f/m;


# direct methods
.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/coremobility/f/f;->a:I

    invoke-static {}, Lcom/coremobility/f/m;->a()Lcom/coremobility/f/m;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/f/f;->b:Lcom/coremobility/f/m;

    return-void
.end method

.method public static a()V
    .registers 3

    invoke-static {}, Lcom/coremobility/f/m;->c()[Lcom/coremobility/f/g;

    move-result-object v1

    if-nez v1, :cond_7

    :cond_6
    return-void

    :cond_7
    const/4 v0, 0x0

    :goto_8
    array-length v2, v1

    if-ge v0, v2, :cond_6

    aget-object v2, v1, v0

    if-eqz v2, :cond_12

    invoke-virtual {v2}, Lcom/coremobility/f/g;->c()V

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_8
.end method
