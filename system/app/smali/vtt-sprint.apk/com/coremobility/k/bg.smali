.class public final Lcom/coremobility/k/bg;
.super Lcom/coremobility/integration/c/c;


# instance fields
.field public a:I

.field public b:I


# direct methods
.method public constructor <init>(II)V
    .registers 4

    invoke-direct {p0}, Lcom/coremobility/integration/c/c;-><init>()V

    const v0, 0x30564146

    iput v0, p0, Lcom/coremobility/k/bg;->m:I

    iput p1, p0, Lcom/coremobility/k/bg;->a:I

    iput p2, p0, Lcom/coremobility/k/bg;->b:I

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 6

    const/16 v0, 0x1c

    const-string v1, "CM+VN <GetDirCount() %d, %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/coremobility/k/bg;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/coremobility/k/bg;->b:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
