.class public final Lcom/coremobility/k/y;
.super Lcom/coremobility/integration/c/c;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Lcom/coremobility/integration/c/c;-><init>()V

    const v0, 0x30564149

    iput v0, p0, Lcom/coremobility/k/y;->m:I

    iput-object p1, p0, Lcom/coremobility/k/y;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/coremobility/k/y;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/coremobility/k/y;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/coremobility/k/y;->d:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/coremobility/k/y;->e:I

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 6

    const/16 v1, 0x1c

    const-string v2, "CM+VN >Create( %d, %s, %s, %s, %s )"

    const/4 v0, 0x5

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget v4, p0, Lcom/coremobility/k/y;->e:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/coremobility/k/y;->a:Ljava/lang/String;

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/coremobility/k/y;->a:Ljava/lang/String;

    :goto_17
    aput-object v0, v3, v4

    const/4 v4, 0x2

    iget-object v0, p0, Lcom/coremobility/k/y;->b:Ljava/lang/String;

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/coremobility/k/y;->b:Ljava/lang/String;

    :goto_20
    aput-object v0, v3, v4

    const/4 v4, 0x3

    iget-object v0, p0, Lcom/coremobility/k/y;->c:Ljava/lang/String;

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/coremobility/k/y;->c:Ljava/lang/String;

    :goto_29
    aput-object v0, v3, v4

    const/4 v4, 0x4

    iget-object v0, p0, Lcom/coremobility/k/y;->d:Ljava/lang/String;

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/coremobility/k/y;->d:Ljava/lang/String;

    :goto_32
    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_38
    const-string v0, "null"

    goto :goto_17

    :cond_3b
    const-string v0, "null"

    goto :goto_20

    :cond_3e
    const-string v0, "null"

    goto :goto_29

    :cond_41
    const-string v0, "null"

    goto :goto_32
.end method
