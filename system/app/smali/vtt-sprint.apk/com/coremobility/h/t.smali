.class public final Lcom/coremobility/h/t;
.super Lcom/coremobility/integration/c/c;


# instance fields
.field public a:Z

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Lcom/coremobility/integration/c/c;-><init>()V

    const v0, 0x30524148

    iput v0, p0, Lcom/coremobility/h/t;->m:I

    iput-boolean p1, p0, Lcom/coremobility/h/t;->a:Z

    iput-object p2, p0, Lcom/coremobility/h/t;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 6

    const/16 v1, 0x32

    const-string v2, "CM+RS t-done ( retry=%b ) %s"

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-boolean v4, p0, Lcom/coremobility/h/t;->a:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/coremobility/h/t;->b:Ljava/lang/String;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/coremobility/h/t;->b:Ljava/lang/String;

    :goto_17
    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1d
    const-string v0, ""

    goto :goto_17
.end method