.class public final Lcom/coremobility/j/o;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coremobility/j/o;->a:Ljava/lang/String;

    iput p2, p0, Lcom/coremobility/j/o;->b:I

    return-void
.end method
