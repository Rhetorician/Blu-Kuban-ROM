.class public final Lcom/coremobility/h/n;
.super Lcom/coremobility/integration/c/c;


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0}, Lcom/coremobility/integration/c/c;-><init>()V

    const v0, 0x30524142

    iput v0, p0, Lcom/coremobility/h/n;->m:I

    iput-object p1, p0, Lcom/coremobility/h/n;->a:Ljava/lang/String;

    iput p2, p0, Lcom/coremobility/h/n;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/h/n;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 6

    const/16 v1, 0x32

    const-string v2, "CM+RS q postReq %s %d %s"

    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/coremobility/h/n;->a:Ljava/lang/String;

    aput-object v4, v3, v0

    const/4 v0, 0x1

    iget v4, p0, Lcom/coremobility/h/n;->b:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x2

    iget-object v0, p0, Lcom/coremobility/h/n;->c:Ljava/lang/String;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/coremobility/h/n;->c:Ljava/lang/String;

    :goto_1c
    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_22
    const-string v0, "null"

    goto :goto_1c
.end method
