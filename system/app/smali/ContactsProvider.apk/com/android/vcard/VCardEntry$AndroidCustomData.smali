.class public Lcom/android/vcard/VCardEntry$AndroidCustomData;
.super Ljava/lang/Object;
.source "VCardEntry.java"

# interfaces
.implements Lcom/android/vcard/VCardEntry$EntryElement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vcard/VCardEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AndroidCustomData"
.end annotation


# instance fields
.field private final mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mMimeType:Ljava/lang/String;


# virtual methods
.method public constructInsertOperation(Ljava/util/List;I)V
    .registers 8
    .parameter
    .parameter "backReferenceIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1529
    .local p1, operationList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1531
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v3, "raw_contact_id"

    invoke-virtual {v0, v3, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1532
    const-string v3, "mimetype"

    iget-object v4, p0, Lcom/android/vcard/VCardEntry$AndroidCustomData;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1533
    const/4 v1, 0x0

    .local v1, i:I
    :goto_13
    iget-object v3, p0, Lcom/android/vcard/VCardEntry$AndroidCustomData;->mDataList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_44

    .line 1534
    iget-object v3, p0, Lcom/android/vcard/VCardEntry$AndroidCustomData;->mDataList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1535
    .local v2, value:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_41

    .line 1537
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1533
    :cond_41
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 1540
    .end local v2           #value:Ljava/lang/String;
    :cond_44
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1541
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9
    .parameter "obj"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1550
    if-ne p0, p1, :cond_6

    move v6, v5

    .line 1572
    :cond_5
    :goto_5
    return v6

    .line 1553
    :cond_6
    instance-of v3, p1, Lcom/android/vcard/VCardEntry$AndroidCustomData;

    if-eqz v3, :cond_5

    move-object v0, p1

    .line 1556
    check-cast v0, Lcom/android/vcard/VCardEntry$AndroidCustomData;

    .line 1557
    .local v0, data:Lcom/android/vcard/VCardEntry$AndroidCustomData;
    iget-object v3, p0, Lcom/android/vcard/VCardEntry$AndroidCustomData;->mMimeType:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/vcard/VCardEntry$AndroidCustomData;->mMimeType:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1560
    iget-object v3, p0, Lcom/android/vcard/VCardEntry$AndroidCustomData;->mDataList:Ljava/util/List;

    if-nez v3, :cond_24

    .line 1561
    iget-object v3, v0, Lcom/android/vcard/VCardEntry$AndroidCustomData;->mDataList:Ljava/util/List;

    if-nez v3, :cond_22

    move v3, v5

    :goto_20
    move v6, v3

    goto :goto_5

    :cond_22
    move v3, v6

    goto :goto_20

    .line 1563
    :cond_24
    iget-object v3, p0, Lcom/android/vcard/VCardEntry$AndroidCustomData;->mDataList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 1564
    .local v2, size:I
    iget-object v3, v0, Lcom/android/vcard/VCardEntry$AndroidCustomData;->mDataList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_5

    .line 1567
    const/4 v1, 0x0

    .local v1, i:I
    :goto_33
    if-ge v1, v2, :cond_4e

    .line 1568
    iget-object v3, p0, Lcom/android/vcard/VCardEntry$AndroidCustomData;->mDataList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    iget-object v4, v0, Lcom/android/vcard/VCardEntry$AndroidCustomData;->mDataList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1567
    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    :cond_4e
    move v6, v5

    .line 1572
    goto :goto_5
.end method

.method public getEntryLabel()Lcom/android/vcard/VCardEntry$EntryLabel;
    .registers 2

    .prologue
    .line 1597
    sget-object v0, Lcom/android/vcard/VCardEntry$EntryLabel;->ANDROID_CUSTOM:Lcom/android/vcard/VCardEntry$EntryLabel;

    return-object v0
.end method

.method public hashCode()I
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 1578
    iget-object v4, p0, Lcom/android/vcard/VCardEntry$AndroidCustomData;->mMimeType:Ljava/lang/String;

    if-eqz v4, :cond_2c

    iget-object v4, p0, Lcom/android/vcard/VCardEntry$AndroidCustomData;->mMimeType:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 1579
    .local v1, hash:I
    :goto_b
    iget-object v4, p0, Lcom/android/vcard/VCardEntry$AndroidCustomData;->mDataList:Ljava/util/List;

    if-eqz v4, :cond_30

    .line 1580
    iget-object v4, p0, Lcom/android/vcard/VCardEntry$AndroidCustomData;->mDataList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1581
    .local v0, data:Ljava/lang/String;
    mul-int/lit8 v5, v1, 0x1f

    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    :goto_29
    add-int v1, v5, v4

    goto :goto_15

    .end local v0           #data:Ljava/lang/String;
    .end local v1           #hash:I
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_2c
    move v1, v3

    .line 1578
    goto :goto_b

    .restart local v0       #data:Ljava/lang/String;
    .restart local v1       #hash:I
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_2e
    move v4, v3

    .line 1581
    goto :goto_29

    .line 1584
    .end local v0           #data:Ljava/lang/String;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_30
    return v1
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 1545
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$AndroidCustomData;->mMimeType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/android/vcard/VCardEntry$AndroidCustomData;->mDataList:Ljava/util/List;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/vcard/VCardEntry$AndroidCustomData;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1589
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1590
    .local v0, builder:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android-custom: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$AndroidCustomData;->mMimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1591
    iget-object v1, p0, Lcom/android/vcard/VCardEntry$AndroidCustomData;->mDataList:Ljava/util/List;

    if-nez v1, :cond_31

    const-string v1, "null"

    :goto_29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1592
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1591
    :cond_31
    iget-object v1, p0, Lcom/android/vcard/VCardEntry$AndroidCustomData;->mDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_29
.end method
