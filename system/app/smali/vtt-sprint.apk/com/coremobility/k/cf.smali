.class public final Lcom/coremobility/k/cf;
.super Lcom/coremobility/integration/c/c;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/coremobility/integration/c/c;-><init>()V

    const v0, 0x30564952

    iput v0, p0, Lcom/coremobility/k/cf;->m:I

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    const/16 v0, 0x17

    const-string v1, "Media  PlaybackPause()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
