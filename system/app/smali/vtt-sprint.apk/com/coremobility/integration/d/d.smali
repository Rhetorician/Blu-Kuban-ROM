.class final Lcom/coremobility/integration/d/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/coremobility/integration/d/c;


# direct methods
.method constructor <init>(Lcom/coremobility/integration/d/c;)V
    .registers 2

    iput-object p1, p0, Lcom/coremobility/integration/d/d;->a:Lcom/coremobility/integration/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/coremobility/integration/d/d;->a:Lcom/coremobility/integration/d/c;

    invoke-static {v0}, Lcom/coremobility/integration/d/c;->a(Lcom/coremobility/integration/d/c;)V

    return-void
.end method
