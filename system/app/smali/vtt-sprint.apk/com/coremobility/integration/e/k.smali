.class public final Lcom/coremobility/integration/e/k;
.super Lcom/coremobility/integration/x;


# instance fields
.field d:Lcom/coremobility/f/g;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/coremobility/integration/x;-><init>(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/integration/e/k;->d:Lcom/coremobility/f/g;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    const-string v0, "ParentControl"

    return-object v0
.end method

.method public final a(Lcom/coremobility/f/g;)V
    .registers 2

    iput-object p1, p0, Lcom/coremobility/integration/e/k;->d:Lcom/coremobility/f/g;

    return-void
.end method

.method public final c()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/integration/e/k;->d:Lcom/coremobility/f/g;

    return-void
.end method

.method public final d()V
    .registers 1

    return-void
.end method
