.class public Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$ArrayListCursor;
.super Landroid/database/AbstractCursor;
.source "InteractionGroupBrowseListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArrayListCursor"
.end annotation


# instance fields
.field private mColumnNames:[Ljava/lang/String;

.field private mRows:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 10
    .parameter "columnNames"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, rows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    const/4 v6, 0x0

    .line 591
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 592
    array-length v0, p1

    .line 593
    .local v0, colCount:I
    const/4 v1, 0x0

    .line 595
    .local v1, foundID:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_7
    if-ge v2, v0, :cond_16

    .line 596
    aget-object v4, p1, v2

    const-string v5, "_id"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_4f

    .line 597
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$ArrayListCursor;->mColumnNames:[Ljava/lang/String;

    .line 598
    const/4 v1, 0x1

    .line 604
    :cond_16
    if-nez v1, :cond_2a

    .line 605
    add-int/lit8 v4, v0, 0x1

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$ArrayListCursor;->mColumnNames:[Ljava/lang/String;

    .line 606
    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$ArrayListCursor;->mColumnNames:[Ljava/lang/String;

    array-length v5, p1

    invoke-static {p1, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 607
    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$ArrayListCursor;->mColumnNames:[Ljava/lang/String;

    const-string v5, "_id"

    aput-object v5, v4, v0

    .line 610
    :cond_2a
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 611
    .local v3, rowCount:I
    new-array v4, v3, [Ljava/util/ArrayList;

    iput-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    .line 612
    const/4 v2, 0x0

    :goto_33
    if-ge v2, v3, :cond_52

    .line 613
    iget-object v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    aput-object v4, v5, v2

    .line 614
    if-nez v1, :cond_4c

    .line 615
    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    aget-object v4, v4, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 612
    :cond_4c
    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    .line 595
    .end local v3           #rowCount:I
    :cond_4f
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 618
    .restart local v3       #rowCount:I
    :cond_52
    return-void
.end method


# virtual methods
.method public fillWindow(ILandroid/database/CursorWindow;)V
    .registers 11
    .parameter "position"
    .parameter "window"

    .prologue
    .line 622
    if-ltz p1, :cond_8

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$ArrayListCursor;->getCount()I

    move-result v6

    if-le p1, v6, :cond_9

    .line 665
    :cond_8
    :goto_8
    return-void

    .line 626
    :cond_9
    invoke-virtual {p2}, Landroid/database/CursorWindow;->acquireReference()V

    .line 628
    :try_start_c
    iget v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$ArrayListCursor;->mPos:I

    .line 629
    .local v5, oldpos:I
    add-int/lit8 v6, p1, -0x1

    iput v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$ArrayListCursor;->mPos:I

    .line 630
    invoke-virtual {p2}, Landroid/database/CursorWindow;->clear()V

    .line 631
    invoke-virtual {p2, p1}, Landroid/database/CursorWindow;->setStartPosition(I)V

    .line 632
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$ArrayListCursor;->getColumnCount()I

    move-result v1

    .line 633
    .local v1, columnNum:I
    invoke-virtual {p2, v1}, Landroid/database/CursorWindow;->setNumColumns(I)Z

    .line 634
    :cond_1f
    :goto_1f
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$ArrayListCursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_79

    invoke-virtual {p2}, Landroid/database/CursorWindow;->allocRow()Z

    move-result v6

    if-eqz v6, :cond_79

    .line 635
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2c
    if-ge v4, v1, :cond_1f

    .line 636
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    iget v7, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$ArrayListCursor;->mPos:I

    aget-object v6, v6, v7

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 637
    .local v2, data:Ljava/lang/Object;
    if-eqz v2, :cond_6a

    .line 638
    instance-of v6, v2, [B

    if-eqz v6, :cond_55

    .line 639
    check-cast v2, [B

    .end local v2           #data:Ljava/lang/Object;
    move-object v0, v2

    check-cast v0, [B

    move-object v3, v0

    .line 640
    .local v3, field:[B
    iget v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$ArrayListCursor;->mPos:I

    invoke-virtual {p2, v3, v6, v4}, Landroid/database/CursorWindow;->putBlob([BII)Z

    move-result v6

    if-nez v6, :cond_76

    .line 641
    invoke-virtual {p2}, Landroid/database/CursorWindow;->freeLastRow()V
    :try_end_4f
    .catchall {:try_start_c .. :try_end_4f} :catchall_65
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_4f} :catch_50

    goto :goto_1f

    .line 660
    .end local v1           #columnNum:I
    .end local v3           #field:[B
    .end local v4           #i:I
    .end local v5           #oldpos:I
    :catch_50
    move-exception v6

    .line 663
    invoke-virtual {p2}, Landroid/database/CursorWindow;->releaseReference()V

    goto :goto_8

    .line 645
    .restart local v1       #columnNum:I
    .restart local v2       #data:Ljava/lang/Object;
    .restart local v4       #i:I
    .restart local v5       #oldpos:I
    :cond_55
    :try_start_55
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 646
    .local v3, field:Ljava/lang/String;
    iget v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$ArrayListCursor;->mPos:I

    invoke-virtual {p2, v3, v6, v4}, Landroid/database/CursorWindow;->putString(Ljava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_76

    .line 647
    invoke-virtual {p2}, Landroid/database/CursorWindow;->freeLastRow()V
    :try_end_64
    .catchall {:try_start_55 .. :try_end_64} :catchall_65
    .catch Ljava/lang/IllegalStateException; {:try_start_55 .. :try_end_64} :catch_50

    goto :goto_1f

    .line 663
    .end local v1           #columnNum:I
    .end local v2           #data:Ljava/lang/Object;
    .end local v3           #field:Ljava/lang/String;
    .end local v4           #i:I
    .end local v5           #oldpos:I
    :catchall_65
    move-exception v6

    invoke-virtual {p2}, Landroid/database/CursorWindow;->releaseReference()V

    throw v6

    .line 652
    .restart local v1       #columnNum:I
    .restart local v2       #data:Ljava/lang/Object;
    .restart local v4       #i:I
    .restart local v5       #oldpos:I
    :cond_6a
    :try_start_6a
    iget v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$ArrayListCursor;->mPos:I

    invoke-virtual {p2, v6, v4}, Landroid/database/CursorWindow;->putNull(II)Z

    move-result v6

    if-nez v6, :cond_76

    .line 653
    invoke-virtual {p2}, Landroid/database/CursorWindow;->freeLastRow()V

    goto :goto_1f

    .line 635
    .end local v2           #data:Ljava/lang/Object;
    :cond_76
    add-int/lit8 v4, v4, 0x1

    goto :goto_2c

    .line 659
    .end local v4           #i:I
    :cond_79
    iput v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$ArrayListCursor;->mPos:I
    :try_end_7b
    .catchall {:try_start_6a .. :try_end_7b} :catchall_65
    .catch Ljava/lang/IllegalStateException; {:try_start_6a .. :try_end_7b} :catch_50

    .line 663
    invoke-virtual {p2}, Landroid/database/CursorWindow;->releaseReference()V

    goto :goto_8
.end method

.method public getBlob(I)[B
    .registers 4
    .parameter "columnIndex"

    .prologue
    .line 679
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$ArrayListCursor;->mPos:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 674
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$ArrayListCursor;->mColumnNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 669
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    array-length v0, v0

    return v0
.end method

.method public getDouble(I)D
    .registers 5
    .parameter "columnIndex"

    .prologue
    .line 714
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$ArrayListCursor;->mPos:I

    aget-object v1, v1, v2

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    .line 715
    .local v0, num:Ljava/lang/Number;
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    return-wide v1
.end method

.method public getFloat(I)F
    .registers 5
    .parameter "columnIndex"

    .prologue
    .line 708
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$ArrayListCursor;->mPos:I

    aget-object v1, v1, v2

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    .line 709
    .local v0, num:Ljava/lang/Number;
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v1

    return v1
.end method

.method public getInt(I)I
    .registers 5
    .parameter "columnIndex"

    .prologue
    .line 696
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$ArrayListCursor;->mPos:I

    aget-object v1, v1, v2

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    .line 697
    .local v0, num:Ljava/lang/Number;
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    return v1
.end method

.method public getLong(I)J
    .registers 5
    .parameter "columnIndex"

    .prologue
    .line 702
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$ArrayListCursor;->mPos:I

    aget-object v1, v1, v2

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    .line 703
    .local v0, num:Ljava/lang/Number;
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    return-wide v1
.end method

.method public getShort(I)S
    .registers 5
    .parameter "columnIndex"

    .prologue
    .line 690
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$ArrayListCursor;->mPos:I

    aget-object v1, v1, v2

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    .line 691
    .local v0, num:Ljava/lang/Number;
    invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S

    move-result v1

    return v1
.end method

.method public getString(I)Ljava/lang/String;
    .registers 5
    .parameter "columnIndex"

    .prologue
    .line 684
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$ArrayListCursor;->mPos:I

    aget-object v1, v1, v2

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 685
    .local v0, cell:Ljava/lang/Object;
    if-nez v0, :cond_e

    const/4 v1, 0x0

    :goto_d
    return-object v1

    :cond_e
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_d
.end method

.method public isNull(I)Z
    .registers 4
    .parameter "columnIndex"

    .prologue
    .line 720
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$ArrayListCursor;->mPos:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
