.class public final Lcom/google/android/youtube/core/model/Purchase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final expirationDate:Ljava/util/Date;

.field public final id:Ljava/lang/String;

.field public final itemType:Lcom/google/android/youtube/core/model/Purchase$ItemType;

.field public final itemUri:Landroid/net/Uri;

.field public final pricePaid:Lcom/google/android/youtube/core/model/PricingStructure;

.field public final purchaseDate:Ljava/util/Date;

.field public final purchasedVideo:Lcom/google/android/youtube/core/model/Video;

.field public final status:Lcom/google/android/youtube/core/model/Purchase$Status;

.field public final streamable:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/youtube/core/model/Purchase$ItemType;Landroid/net/Uri;Ljava/util/Date;Ljava/util/Date;Lcom/google/android/youtube/core/model/PricingStructure;Lcom/google/android/youtube/core/model/Purchase$Status;ZLcom/google/android/youtube/core/model/Video;)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const-string v0, "id may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Purchase;->id:Ljava/lang/String;

    .line 60
    const-string v0, "itemType may not be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Purchase$ItemType;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Purchase;->itemType:Lcom/google/android/youtube/core/model/Purchase$ItemType;

    .line 61
    sget-object v0, Lcom/google/android/youtube/core/model/Purchase$ItemType;->OTHER:Lcom/google/android/youtube/core/model/Purchase$ItemType;

    if-eq p2, v0, :cond_1d

    if-eqz p3, :cond_47

    :cond_1d
    const/4 v0, 0x1

    :goto_1e
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "itemUri may not be null for itemType "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/n;->a(ZLjava/lang/Object;)V

    .line 63
    iput-object p3, p0, Lcom/google/android/youtube/core/model/Purchase;->itemUri:Landroid/net/Uri;

    .line 64
    iput-object p4, p0, Lcom/google/android/youtube/core/model/Purchase;->purchaseDate:Ljava/util/Date;

    .line 65
    iput-object p5, p0, Lcom/google/android/youtube/core/model/Purchase;->expirationDate:Ljava/util/Date;

    .line 66
    iput-object p6, p0, Lcom/google/android/youtube/core/model/Purchase;->pricePaid:Lcom/google/android/youtube/core/model/PricingStructure;

    .line 67
    const-string v0, "status may not be null"

    invoke-static {p7, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Purchase$Status;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Purchase;->status:Lcom/google/android/youtube/core/model/Purchase$Status;

    .line 68
    iput-boolean p8, p0, Lcom/google/android/youtube/core/model/Purchase;->streamable:Z

    .line 69
    iput-object p9, p0, Lcom/google/android/youtube/core/model/Purchase;->purchasedVideo:Lcom/google/android/youtube/core/model/Video;

    .line 70
    return-void

    .line 61
    :cond_47
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .parameter

    .prologue
    .line 126
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "builder required"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Purchase;->buildUpon()Lcom/google/android/youtube/core/model/Purchase$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final buildUpon()Lcom/google/android/youtube/core/model/Purchase$Builder;
    .registers 3

    .prologue
    .line 109
    new-instance v0, Lcom/google/android/youtube/core/model/Purchase$Builder;

    invoke-direct {v0}, Lcom/google/android/youtube/core/model/Purchase$Builder;-><init>()V

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Purchase;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Purchase$Builder;->id(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Purchase$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Purchase;->itemType:Lcom/google/android/youtube/core/model/Purchase$ItemType;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Purchase$Builder;->itemType(Lcom/google/android/youtube/core/model/Purchase$ItemType;)Lcom/google/android/youtube/core/model/Purchase$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Purchase;->itemUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Purchase$Builder;->itemUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Purchase$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Purchase;->purchaseDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Purchase$Builder;->purchaseDate(Ljava/util/Date;)Lcom/google/android/youtube/core/model/Purchase$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Purchase;->expirationDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Purchase$Builder;->expirationDate(Ljava/util/Date;)Lcom/google/android/youtube/core/model/Purchase$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Purchase;->pricePaid:Lcom/google/android/youtube/core/model/PricingStructure;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Purchase$Builder;->pricePaid(Lcom/google/android/youtube/core/model/PricingStructure;)Lcom/google/android/youtube/core/model/Purchase$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Purchase;->status:Lcom/google/android/youtube/core/model/Purchase$Status;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Purchase$Builder;->status(Lcom/google/android/youtube/core/model/Purchase$Status;)Lcom/google/android/youtube/core/model/Purchase$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/youtube/core/model/Purchase;->streamable:Z

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Purchase$Builder;->streamable(Z)Lcom/google/android/youtube/core/model/Purchase$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Purchase;->purchasedVideo:Lcom/google/android/youtube/core/model/Video;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Purchase$Builder;->purchasedVideo(Lcom/google/android/youtube/core/model/Video;)Lcom/google/android/youtube/core/model/Purchase$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 79
    if-ne p1, p0, :cond_4

    .line 80
    const/4 v0, 0x1

    .line 86
    :goto_3
    return v0

    .line 82
    :cond_4
    instance-of v0, p1, Lcom/google/android/youtube/core/model/Purchase;

    if-nez v0, :cond_a

    .line 83
    const/4 v0, 0x0

    goto :goto_3

    .line 85
    :cond_a
    check-cast p1, Lcom/google/android/youtube/core/model/Purchase;

    .line 86
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Purchase;->id:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/youtube/core/model/Purchase;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3
.end method

.method public final hashCode()I
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Purchase;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final isExpired(J)Z
    .registers 5
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Purchase;->status:Lcom/google/android/youtube/core/model/Purchase$Status;

    sget-object v1, Lcom/google/android/youtube/core/model/Purchase$Status;->EXPIRED:Lcom/google/android/youtube/core/model/Purchase$Status;

    if-eq v0, v1, :cond_14

    iget-object v0, p0, Lcom/google/android/youtube/core/model/Purchase;->expirationDate:Ljava/util/Date;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/android/youtube/core/model/Purchase;->expirationDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-gez v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{id =\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Purchase;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', itemType = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Purchase;->itemType:Lcom/google/android/youtube/core/model/Purchase$ItemType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', itemUri = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Purchase;->itemUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', purchaseDate = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Purchase;->purchaseDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', expirationDate = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Purchase;->expirationDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', pricePaid = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Purchase;->pricePaid:Lcom/google/android/youtube/core/model/PricingStructure;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' status = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Purchase;->status:Lcom/google/android/youtube/core/model/Purchase$Status;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' streamable = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/youtube/core/model/Purchase;->streamable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
