.class public Lcom/google/android/apps/plus/fragments/PeopleNotInCirclesLoader;
.super Lcom/google/android/apps/plus/phone/EsCursorLoader;
.source "PeopleNotInCirclesLoader.java"


# static fields
.field private static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private final mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private final mPeopleMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/wireless/tacotruck/proto/Data$Person;",
            ">;"
        }
    .end annotation
.end field

.field private final mProjection:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 34
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "person_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "in_my_circles"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/plus/fragments/PeopleNotInCirclesLoader;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;[Ljava/lang/String;Ljava/util/HashMap;Z)V
    .registers 7
    .parameter "context"
    .parameter "account"
    .parameter "projection"
    .parameter
    .parameter "filterNullGaiaIds"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/wireless/tacotruck/proto/Data$Person;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p4, people:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Person;>;"
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/phone/EsCursorLoader;-><init>(Landroid/content/Context;)V

    .line 53
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->CONTACTS_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/PeopleNotInCirclesLoader;->setUri(Landroid/net/Uri;)V

    .line 54
    iput-object p2, p0, Lcom/google/android/apps/plus/fragments/PeopleNotInCirclesLoader;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 55
    iput-object p3, p0, Lcom/google/android/apps/plus/fragments/PeopleNotInCirclesLoader;->mProjection:[Ljava/lang/String;

    .line 56
    iput-object p4, p0, Lcom/google/android/apps/plus/fragments/PeopleNotInCirclesLoader;->mPeopleMap:Ljava/util/HashMap;

    .line 57
    if-eqz p5, :cond_16

    const-string v0, "gaia_id IS NOT NULL"

    :goto_12
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/PeopleNotInCirclesLoader;->setSelection(Ljava/lang/String;)V

    .line 58
    return-void

    .line 57
    :cond_16
    const/4 v0, 0x0

    goto :goto_12
.end method

.method private buildSortedMatrixCursor(Lcom/google/android/apps/plus/phone/EsMatrixCursor;Ljava/util/HashMap;)V
    .registers 16
    .parameter "cursor"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/plus/phone/EsMatrixCursor;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/wireless/tacotruck/proto/Data$Person;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 125
    .local p2, people:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Person;>;"
    const-string v12, "_id"

    invoke-virtual {p1, v12}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 126
    .local v3, idColumnIndex:I
    const-string v12, "person_id"

    invoke-virtual {p1, v12}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 127
    .local v9, personIdColumnIndex:I
    const-string v12, "name"

    invoke-virtual {p1, v12}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 128
    .local v6, nameColumnIndex:I
    const-string v12, "gaia_id"

    invoke-virtual {p1, v12}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 130
    .local v1, gaiaIdColumnIndex:I
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 131
    .local v11, rows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[Ljava/lang/Object;>;"
    const/4 v4, 0x0

    .line 133
    .local v4, index:I
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_26
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_64

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 134
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Person;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 135
    .local v8, personId:Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/wireless/tacotruck/proto/Data$Person;

    .line 136
    .local v7, person:Lcom/google/wireless/tacotruck/proto/Data$Person;
    iget-object v12, p0, Lcom/google/android/apps/plus/fragments/PeopleNotInCirclesLoader;->mProjection:[Ljava/lang/String;

    array-length v12, v12

    new-array v10, v12, [Ljava/lang/Object;

    .line 137
    .local v10, row:[Ljava/lang/Object;
    add-int/lit8 v5, v4, 0x1

    .end local v4           #index:I
    .local v5, index:I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v3

    .line 138
    aput-object v8, v10, v9

    .line 139
    invoke-virtual {v7}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v6

    .line 140
    invoke-virtual {v7}, Lcom/google/wireless/tacotruck/proto/Data$Person;->hasFocusObfuscatedId()Z

    move-result v12

    if-eqz v12, :cond_5f

    .line 141
    invoke-virtual {v7}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getFocusObfuscatedId()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v1

    .line 143
    :cond_5f
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v5

    .line 144
    .end local v5           #index:I
    .restart local v4       #index:I
    goto :goto_26

    .line 146
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Person;>;"
    .end local v7           #person:Lcom/google/wireless/tacotruck/proto/Data$Person;
    .end local v8           #personId:Ljava/lang/String;
    .end local v10           #row:[Ljava/lang/Object;
    :cond_64
    new-instance v12, Lcom/google/android/apps/plus/fragments/PeopleNotInCirclesLoader$1;

    invoke-direct {v12, p0, v6}, Lcom/google/android/apps/plus/fragments/PeopleNotInCirclesLoader$1;-><init>(Lcom/google/android/apps/plus/fragments/PeopleNotInCirclesLoader;I)V

    invoke-static {v11, v12}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 162
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_70
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_80

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/Object;

    .line 163
    .restart local v10       #row:[Ljava/lang/Object;
    invoke-virtual {p1, v10}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_70

    .line 165
    .end local v10           #row:[Ljava/lang/Object;
    :cond_80
    return-void
.end method

.method private removePeopleInMyCircles(Ljava/util/HashMap;)Z
    .registers 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/wireless/tacotruck/proto/Data$Person;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, people:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Person;>;"
    const/4 v2, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 90
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .local v9, sb:Ljava/lang/StringBuilder;
    const-string v0, "person_id"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " IN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    const/4 v8, 0x0

    .local v8, i:I
    :goto_14
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleNotInCirclesLoader;->mPeopleMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-ge v8, v0, :cond_2b

    .line 93
    if-lez v8, :cond_23

    .line 94
    const/16 v0, 0x2c

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 96
    :cond_23
    const/16 v0, 0x3f

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 92
    add-int/lit8 v8, v8, 0x1

    goto :goto_14

    .line 98
    :cond_2b
    const/16 v0, 0x29

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 100
    .local v5, selection:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleNotInCirclesLoader;->mPeopleMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    new-array v1, v10, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    .line 102
    .local v6, selectionArgs:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PeopleNotInCirclesLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PeopleNotInCirclesLoader;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    sget-object v4, Lcom/google/android/apps/plus/fragments/PeopleNotInCirclesLoader;->PROJECTION:[Ljava/lang/String;

    move-object v3, v2

    invoke-static/range {v0 .. v6}, Lcom/google/android/apps/plus/content/EsPeopleData;->getPeople(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 104
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_53

    move v0, v10

    .line 118
    :goto_52
    return v0

    .line 109
    :cond_53
    :goto_53
    :try_start_53
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 110
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_53

    .line 111
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_68
    .catchall {:try_start_53 .. :try_end_68} :catchall_69

    goto :goto_53

    .line 115
    :catchall_69
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_6e
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move v0, v11

    .line 118
    goto :goto_52
.end method


# virtual methods
.method public esLoadInBackground()Landroid/database/Cursor;
    .registers 4

    .prologue
    .line 65
    new-instance v1, Lcom/google/android/apps/plus/phone/EsMatrixCursor;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PeopleNotInCirclesLoader;->mProjection:[Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 67
    .local v1, result:Lcom/google/android/apps/plus/phone/EsMatrixCursor;
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PeopleNotInCirclesLoader;->mPeopleMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-nez v2, :cond_10

    .line 83
    .end local v1           #result:Lcom/google/android/apps/plus/phone/EsMatrixCursor;
    :cond_f
    :goto_f
    return-object v1

    .line 71
    .restart local v1       #result:Lcom/google/android/apps/plus/phone/EsMatrixCursor;
    :cond_10
    new-instance v0, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PeopleNotInCirclesLoader;->mPeopleMap:Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 73
    .local v0, people:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Person;>;"
    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/PeopleNotInCirclesLoader;->removePeopleInMyCircles(Ljava/util/HashMap;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 74
    const/4 v1, 0x0

    goto :goto_f

    .line 77
    :cond_1f
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_f

    .line 81
    invoke-direct {p0, v1, v0}, Lcom/google/android/apps/plus/fragments/PeopleNotInCirclesLoader;->buildSortedMatrixCursor(Lcom/google/android/apps/plus/phone/EsMatrixCursor;Ljava/util/HashMap;)V

    goto :goto_f
.end method
