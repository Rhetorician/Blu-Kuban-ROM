.class public Lde/aflx/sardine/model/Resourcetype;
.super Ljava/lang/Object;


# instance fields
.field private collection:Lde/aflx/sardine/model/Collection;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCollection()Lde/aflx/sardine/model/Collection;
    .registers 2

    iget-object v0, p0, Lde/aflx/sardine/model/Resourcetype;->collection:Lde/aflx/sardine/model/Collection;

    return-object v0
.end method

.method public setCollection(Lde/aflx/sardine/model/Collection;)V
    .registers 2

    iput-object p1, p0, Lde/aflx/sardine/model/Resourcetype;->collection:Lde/aflx/sardine/model/Collection;

    return-void
.end method
