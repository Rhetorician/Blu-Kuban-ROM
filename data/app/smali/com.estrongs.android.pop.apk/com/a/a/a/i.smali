.class public Lcom/a/a/a/i;
.super Ljava/lang/Object;


# instance fields
.field public a:Z

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x1d4c0

    iput v0, p0, Lcom/a/a/a/i;->b:I

    const/16 v0, 0x4000

    iput v0, p0, Lcom/a/a/a/i;->c:I

    return-void
.end method
