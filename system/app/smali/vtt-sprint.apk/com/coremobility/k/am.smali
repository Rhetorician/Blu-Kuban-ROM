.class public final Lcom/coremobility/k/am;
.super Lcom/coremobility/integration/c/c;


# instance fields
.field public a:Z

.field public b:Z


# direct methods
.method public constructor <init>(ZZ)V
    .registers 4

    invoke-direct {p0}, Lcom/coremobility/integration/c/c;-><init>()V

    const v0, 0x30564257

    iput v0, p0, Lcom/coremobility/k/am;->m:I

    iput-boolean p1, p0, Lcom/coremobility/k/am;->a:Z

    iput-boolean p2, p0, Lcom/coremobility/k/am;->b:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 6

    const/16 v0, 0x1c

    const-string v1, "CM+VN >Provision(auto %b, provisioning %b )"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-boolean v4, p0, Lcom/coremobility/k/am;->a:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-boolean v4, p0, Lcom/coremobility/k/am;->b:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
