.class public Lde/aflx/sardine/model/Propertyupdate;
.super Ljava/lang/Object;


# instance fields
.field protected removeOrSet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRemoveOrSet()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lde/aflx/sardine/model/Propertyupdate;->removeOrSet:Ljava/util/List;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lde/aflx/sardine/model/Propertyupdate;->removeOrSet:Ljava/util/List;

    :cond_b
    iget-object v0, p0, Lde/aflx/sardine/model/Propertyupdate;->removeOrSet:Ljava/util/List;

    return-object v0
.end method
