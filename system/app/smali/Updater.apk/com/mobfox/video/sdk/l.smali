.class final Lcom/mobfox/video/sdk/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/mobfox/video/sdk/j;


# direct methods
.method constructor <init>(Lcom/mobfox/video/sdk/j;)V
    .registers 2

    iput-object p1, p0, Lcom/mobfox/video/sdk/l;->a:Lcom/mobfox/video/sdk/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/mobfox/video/sdk/l;->a:Lcom/mobfox/video/sdk/j;

    iget-object v0, v0, Lcom/mobfox/video/sdk/j;->a:Lcom/mobfox/video/sdk/i;

    invoke-static {v0}, Lcom/mobfox/video/sdk/i;->c(Lcom/mobfox/video/sdk/i;)Lcom/mobfox/video/sdk/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/mobfox/video/sdk/h;->a()V

    return-void
.end method
