.class public final Lcom/coremobility/k/bc;
.super Lcom/coremobility/integration/c/c;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/coremobility/integration/c/c;-><init>()V

    const v0, 0x30564144

    iput v0, p0, Lcom/coremobility/k/bc;->m:I

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    const/16 v0, 0x1c

    const-string v1, "CM+VN <VnotesClose()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
