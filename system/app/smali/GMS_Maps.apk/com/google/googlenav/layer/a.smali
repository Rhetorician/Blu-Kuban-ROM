.class public Lcom/google/googlenav/layer/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:Lcom/google/googlenav/layer/m;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/googlenav/layer/m;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/layer/a;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/googlenav/layer/a;->c:Lcom/google/googlenav/layer/m;

    iput p3, p0, Lcom/google/googlenav/layer/a;->a:I

    return-void
.end method


# virtual methods
.method public a()Lcom/google/googlenav/layer/m;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/layer/a;->c:Lcom/google/googlenav/layer/m;

    return-object v0
.end method