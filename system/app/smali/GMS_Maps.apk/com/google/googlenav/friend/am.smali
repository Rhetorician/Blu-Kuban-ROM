.class Lcom/google/googlenav/friend/am;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/friend/be;


# instance fields
.field final synthetic a:Lcom/google/googlenav/friend/ai;


# direct methods
.method constructor <init>(Lcom/google/googlenav/friend/ai;)V
    .registers 2
    .parameter

    .prologue
    .line 228
    iput-object p1, p0, Lcom/google/googlenav/friend/am;->a:Lcom/google/googlenav/friend/ai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/google/googlenav/friend/am;->a:Lcom/google/googlenav/friend/ai;

    invoke-static {v0}, Lcom/google/googlenav/friend/ai;->a(Lcom/google/googlenav/friend/ai;)Lcom/google/googlenav/friend/ap;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 234
    iget-object v0, p0, Lcom/google/googlenav/friend/am;->a:Lcom/google/googlenav/friend/ai;

    invoke-static {v0}, Lcom/google/googlenav/friend/ai;->a(Lcom/google/googlenav/friend/ai;)Lcom/google/googlenav/friend/ap;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/friend/ap;->b()V

    .line 236
    :cond_11
    return-void
.end method
