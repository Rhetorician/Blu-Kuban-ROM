.class public Lcom/google/android/syncadapters/contacts/GalProvider;
.super Landroid/content/ContentProvider;
.source "GalProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/syncadapters/contacts/GalProvider$FutureCallable;,
        Lcom/google/android/syncadapters/contacts/GalProvider$PhotoDataWriter;
    }
.end annotation


# static fields
.field private static final sContactHandler:Lcom/google/android/syncadapters/contacts/ContactHandler;

.field private static final sURIMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mAccountManager:Landroid/accounts/AccountManager;

.field private final mActiveTasks:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/util/concurrent/FutureTask;",
            ">;"
        }
    .end annotation
.end field

.field private mContactsClient:Lcom/google/wireless/gdata2/contacts/client/ContactsClient;

.field private mThumbnailSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 100
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/google/android/syncadapters/contacts/GalProvider;->sURIMatcher:Landroid/content/UriMatcher;

    .line 101
    new-instance v0, Lcom/google/android/syncadapters/contacts/ContactHandler;

    invoke-direct {v0}, Lcom/google/android/syncadapters/contacts/ContactHandler;-><init>()V

    sput-object v0, Lcom/google/android/syncadapters/contacts/GalProvider;->sContactHandler:Lcom/google/android/syncadapters/contacts/ContactHandler;

    .line 130
    sget-object v0, Lcom/google/android/syncadapters/contacts/GalProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.contacts.gal.provider"

    const-string v2, "directories"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 131
    sget-object v0, Lcom/google/android/syncadapters/contacts/GalProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.contacts.gal.provider"

    const-string v2, "contacts/filter/*"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 132
    sget-object v0, Lcom/google/android/syncadapters/contacts/GalProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.contacts.gal.provider"

    const-string v2, "contacts/lookup/*/entities"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 133
    sget-object v0, Lcom/google/android/syncadapters/contacts/GalProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.contacts.gal.provider"

    const-string v2, "contacts/lookup/*/#/entities"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 134
    sget-object v0, Lcom/google/android/syncadapters/contacts/GalProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.contacts.gal.provider"

    const-string v2, "data/emails/filter/*"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 135
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 80
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 137
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/syncadapters/contacts/GalProvider;->mActiveTasks:Ljava/util/LinkedList;

    .line 1054
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/syncadapters/contacts/GalProvider;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/database/Cursor;
    .registers 7
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 80
    invoke-direct/range {p0 .. p5}, Lcom/google/android/syncadapters/contacts/GalProvider;->handleFilter([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/syncadapters/contacts/GalProvider;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Landroid/database/Cursor;
    .registers 7
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 80
    invoke-direct/range {p0 .. p5}, Lcom/google/android/syncadapters/contacts/GalProvider;->handleContact([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/syncadapters/contacts/GalProvider;Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/google/android/syncadapters/contacts/GalProvider;->openFile(Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/syncadapters/contacts/GalProvider;)Ljava/util/LinkedList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/syncadapters/contacts/GalProvider;->mActiveTasks:Ljava/util/LinkedList;

    return-object v0
.end method

.method private addRow(Ljava/util/ArrayList;[Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter "row"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/Object;",
            ">;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 662
    .local p1, rows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[Ljava/lang/Object;>;"
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 663
    return-void
.end method

.method private buildGalResultCursor([Ljava/lang/String;Lcom/google/wireless/gdata2/parser/GDataParser;Ljava/lang/String;Z)Landroid/database/Cursor;
    .registers 22
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 833
    const/4 v10, -0x1

    .line 834
    const/4 v9, -0x1

    .line 835
    const/4 v8, -0x1

    .line 836
    const/4 v7, -0x1

    .line 837
    const/4 v6, -0x1

    .line 838
    const/4 v5, -0x1

    .line 839
    const/4 v4, -0x1

    .line 840
    const/4 v3, -0x1

    .line 842
    const/4 v2, 0x0

    :goto_9
    move-object/from16 v0, p1

    array-length v11, v0

    if-ge v2, v11, :cond_6a

    .line 843
    aget-object v11, p1, v2

    .line 844
    const-string v12, "display_name"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_20

    const-string v12, "display_name"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_24

    :cond_20
    move v10, v2

    .line 842
    :cond_21
    :goto_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 847
    :cond_24
    const-string v12, "display_name_alt"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2e

    move v9, v2

    .line 848
    goto :goto_21

    .line 849
    :cond_2e
    const-string v12, "data1"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_38

    move v8, v2

    .line 850
    goto :goto_21

    .line 851
    :cond_38
    const-string v12, "has_phone_number"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_42

    move v7, v2

    .line 852
    goto :goto_21

    .line 853
    :cond_42
    const-string v12, "photo_uri"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4c

    move v6, v2

    .line 854
    goto :goto_21

    .line 855
    :cond_4c
    const-string v12, "photo_thumb_uri"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_56

    move v5, v2

    .line 856
    goto :goto_21

    .line 857
    :cond_56
    const-string v12, "_id"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_60

    move v4, v2

    .line 858
    goto :goto_21

    .line 859
    :cond_60
    const-string v12, "lookup"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_21

    move v3, v2

    .line 860
    goto :goto_21

    .line 867
    :cond_6a
    new-instance v12, Landroid/database/MatrixCursor;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 869
    const/4 v11, 0x1

    .line 871
    :try_start_72
    invoke-interface/range {p2 .. p2}, Lcom/google/wireless/gdata2/parser/GDataParser;->parseFeedEnvelope()Lcom/google/wireless/gdata2/data/Feed;

    .line 872
    :cond_75
    :goto_75
    invoke-interface/range {p2 .. p2}, Lcom/google/wireless/gdata2/parser/GDataParser;->hasMoreData()Z

    move-result v2

    if-eqz v2, :cond_142

    .line 873
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Lcom/google/wireless/gdata2/parser/GDataParser;->readNextEntry(Lcom/google/wireless/gdata2/data/Entry;)Lcom/google/wireless/gdata2/data/Entry;

    move-result-object v2

    check-cast v2, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;

    .line 875
    invoke-virtual {v2}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getId()Ljava/lang/String;

    move-result-object v13

    .line 876
    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v14

    .line 877
    if-ltz v14, :cond_75

    .line 881
    add-int/lit8 v14, v14, 0x1

    invoke-virtual {v13, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 883
    invoke-static {v2}, Lcom/google/android/syncadapters/contacts/GalProvider;->getDisplayName(Lcom/google/wireless/gdata2/contacts/data/ContactEntry;)Ljava/lang/String;

    move-result-object v14

    .line 885
    if-eqz v14, :cond_75

    .line 890
    move-object/from16 v0, p1

    array-length v15, v0

    new-array v15, v15, [Ljava/lang/Object;

    .line 891
    if-ltz v10, :cond_a5

    .line 892
    aput-object v14, v15, v10

    .line 895
    :cond_a5
    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v9, v0, :cond_b1

    .line 896
    invoke-static {v2, v14}, Lcom/google/android/syncadapters/contacts/GalProvider;->getAlternateDisplayName(Lcom/google/wireless/gdata2/contacts/data/ContactEntry;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 897
    aput-object v14, v15, v9

    .line 900
    :cond_b1
    if-ltz v7, :cond_c9

    .line 901
    invoke-virtual {v2}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getPhoneNumbers()Ljava/util/Vector;

    move-result-object v14

    .line 902
    if-eqz v14, :cond_c9

    invoke-virtual {v14}, Ljava/util/Vector;->size()I

    move-result v14

    if-lez v14, :cond_c9

    .line 903
    const/4 v14, -0x1

    if-eq v7, v14, :cond_c9

    .line 904
    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    aput-object v14, v15, v7

    .line 909
    :cond_c9
    if-ltz v6, :cond_d6

    .line 910
    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v2, v14}, Lcom/google/android/syncadapters/contacts/GalProvider;->getPhotoUri(Ljava/lang/String;Lcom/google/wireless/gdata2/contacts/data/ContactEntry;Z)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v15, v6

    .line 913
    :cond_d6
    if-ltz v5, :cond_e3

    .line 914
    const/4 v14, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v2, v14}, Lcom/google/android/syncadapters/contacts/GalProvider;->getPhotoUri(Ljava/lang/String;Lcom/google/wireless/gdata2/contacts/data/ContactEntry;Z)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v15, v5

    .line 917
    :cond_e3
    const/4 v14, -0x1

    if-eq v4, v14, :cond_ec

    .line 918
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v15, v4

    .line 921
    :cond_ec
    const/4 v14, -0x1

    if-eq v3, v14, :cond_f1

    .line 922
    aput-object v13, v15, v3

    .line 928
    :cond_f1
    if-eqz p4, :cond_117

    .line 931
    invoke-virtual {v2}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getEmailAddresses()Ljava/util/Vector;

    move-result-object v2

    .line 932
    if-eqz v2, :cond_14c

    .line 933
    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_fd
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14c

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 934
    if-ltz v8, :cond_111

    .line 935
    check-cast v2, Lcom/google/wireless/gdata2/contacts/data/EmailAddress;

    invoke-virtual {v2}, Lcom/google/wireless/gdata2/contacts/data/EmailAddress;->getAddress()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v15, v8

    .line 937
    :cond_111
    invoke-virtual {v12, v15}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 938
    add-int/lit8 v11, v11, 0x1

    goto :goto_fd

    .line 943
    :cond_117
    if-ltz v8, :cond_132

    .line 944
    invoke-virtual {v2}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getEmailAddresses()Ljava/util/Vector;

    move-result-object v2

    .line 945
    if-eqz v2, :cond_132

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v13

    if-lez v13, :cond_132

    .line 946
    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/wireless/gdata2/contacts/data/EmailAddress;

    .line 947
    invoke-virtual {v2}, Lcom/google/wireless/gdata2/contacts/data/EmailAddress;->getAddress()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v15, v8

    .line 950
    :cond_132
    invoke-virtual {v12, v15}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_135
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_135} :catch_13a
    .catch Lcom/google/wireless/gdata2/parser/ParseException; {:try_start_72 .. :try_end_135} :catch_143

    .line 951
    add-int/lit8 v2, v11, 0x1

    :goto_137
    move v11, v2

    .line 953
    goto/16 :goto_75

    .line 954
    :catch_13a
    move-exception v2

    .line 955
    const-string v3, "GalProvider"

    const-string v4, "Exception when parsing feed"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 960
    :cond_142
    :goto_142
    return-object v12

    .line 956
    :catch_143
    move-exception v2

    .line 957
    const-string v3, "GalProvider"

    const-string v4, "Exception when parsing feed"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_142

    :cond_14c
    move v2, v11

    goto :goto_137
.end method

.method private createContactRow(Ljava/util/Map;Landroid/content/ContentValues;J)[Ljava/lang/Object;
    .registers 12
    .parameter
    .parameter "values"
    .parameter "contactId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/content/ContentValues;",
            "J)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 670
    .local p1, columnMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-nez p2, :cond_4

    .line 671
    const/4 v3, 0x0

    .line 681
    :cond_3
    return-object v3

    .line 673
    :cond_4
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v5

    new-array v3, v5, [Ljava/lang/Object;

    .line 674
    .local v3, row:[Ljava/lang/Object;
    const-string v5, "contact_id"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {p0, v3, p1, v5, v6}, Lcom/google/android/syncadapters/contacts/GalProvider;->putContactRowValue([Ljava/lang/Object;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 675
    const-string v5, "raw_contact_id"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {p0, v3, p1, v5, v6}, Lcom/google/android/syncadapters/contacts/GalProvider;->putContactRowValue([Ljava/lang/Object;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 676
    invoke-virtual {p2}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 677
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 678
    .local v0, columnName:Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 679
    .local v4, value:Ljava/lang/Object;
    invoke-direct {p0, v3, p1, v0, v4}, Lcom/google/android/syncadapters/contacts/GalProvider;->putContactRowValue([Ljava/lang/Object;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_24
.end method

.method private execute(Ljava/util/concurrent/Callable;Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 15
    .parameter
    .parameter "threadName"
    .parameter "timeout"
    .parameter "timeUnit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 223
    .local p1, callable:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<TT;>;"
    new-instance v2, Lcom/google/android/syncadapters/contacts/GalProvider$FutureCallable;

    invoke-direct {v2, p0, p1}, Lcom/google/android/syncadapters/contacts/GalProvider$FutureCallable;-><init>(Lcom/google/android/syncadapters/contacts/GalProvider;Ljava/util/concurrent/Callable;)V

    .line 225
    .local v2, futureCallable:Lcom/google/android/syncadapters/contacts/GalProvider$FutureCallable;,"Lcom/google/android/syncadapters/contacts/GalProvider$FutureCallable<TT;>;"
    new-instance v1, Ljava/util/concurrent/FutureTask;

    invoke-direct {v1, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 226
    .local v1, future:Ljava/util/concurrent/FutureTask;,"Ljava/util/concurrent/FutureTask<TT;>;"
    invoke-virtual {v2, v1}, Lcom/google/android/syncadapters/contacts/GalProvider$FutureCallable;->setFuture(Ljava/util/concurrent/FutureTask;)V

    .line 228
    iget-object v6, p0, Lcom/google/android/syncadapters/contacts/GalProvider;->mActiveTasks:Ljava/util/LinkedList;

    monitor-enter v6

    .line 229
    :try_start_10
    iget-object v5, p0, Lcom/google/android/syncadapters/contacts/GalProvider;->mActiveTasks:Ljava/util/LinkedList;

    invoke-virtual {v5, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 231
    const-string v5, "GalProvider"

    const/4 v7, 0x2

    invoke-static {v5, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 232
    const-string v5, "GalProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Currently running tasks: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/syncadapters/contacts/GalProvider;->mActiveTasks:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_3c
    :goto_3c
    iget-object v5, p0, Lcom/google/android/syncadapters/contacts/GalProvider;->mActiveTasks:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    const/16 v7, 0x8

    if-le v5, v7, :cond_5d

    .line 236
    const-string v5, "GalProvider"

    const-string v7, "Too many tasks, canceling one"

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v5, p0, Lcom/google/android/syncadapters/contacts/GalProvider;->mActiveTasks:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/FutureTask;

    .line 238
    .local v3, task:Ljava/util/concurrent/FutureTask;
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    goto :goto_3c

    .line 240
    .end local v3           #task:Ljava/util/concurrent/FutureTask;
    :catchall_5a
    move-exception v5

    monitor-exit v6
    :try_end_5c
    .catchall {:try_start_10 .. :try_end_5c} :catchall_5a

    throw v5

    :cond_5d
    :try_start_5d
    monitor-exit v6
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5a

    .line 241
    const-string v5, "GalProvider"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_7f

    .line 242
    const-string v5, "GalProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Starting task "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_7f
    new-instance v4, Ljava/lang/Thread;

    invoke-direct {v4, v1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 245
    .local v4, thread:Ljava/lang/Thread;
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 247
    :try_start_87
    const-string v5, "GalProvider"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_a8

    .line 248
    const-string v5, "GalProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Getting future "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_a8
    invoke-virtual {v1, p3, p4, p5}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_ab
    .catch Ljava/lang/InterruptedException; {:try_start_87 .. :try_end_ab} :catch_ad
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_87 .. :try_end_ab} :catch_cf
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_87 .. :try_end_ab} :catch_ea
    .catch Ljava/util/concurrent/CancellationException; {:try_start_87 .. :try_end_ab} :catch_109

    move-result-object v5

    .line 264
    :goto_ac
    return-object v5

    .line 251
    :catch_ad
    move-exception v0

    .line 252
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v5, "GalProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Gal task was interrupted: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    .line 254
    const/4 v5, 0x0

    goto :goto_ac

    .line 255
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_cf
    move-exception v0

    .line 256
    .local v0, e:Ljava/util/concurrent/ExecutionException;
    const-string v5, "GalProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Gal task threw an exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 257
    const/4 v5, 0x0

    goto :goto_ac

    .line 258
    .end local v0           #e:Ljava/util/concurrent/ExecutionException;
    :catch_ea
    move-exception v0

    .line 259
    .local v0, e:Ljava/util/concurrent/TimeoutException;
    const-string v5, "GalProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Gal task timed out: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    .line 261
    const/4 v5, 0x0

    goto :goto_ac

    .line 262
    .end local v0           #e:Ljava/util/concurrent/TimeoutException;
    :catch_109
    move-exception v0

    .line 263
    .local v0, e:Ljava/util/concurrent/CancellationException;
    const-string v5, "GalProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Gal task was cancelled: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    const/4 v5, 0x0

    goto :goto_ac
.end method

.method private getAccount(Ljava/lang/String;)Landroid/accounts/Account;
    .registers 9
    .parameter "accountName"

    .prologue
    .line 821
    iget-object v5, p0, Lcom/google/android/syncadapters/contacts/GalProvider;->mAccountManager:Landroid/accounts/AccountManager;

    const-string v6, "com.google"

    invoke-virtual {v5, v6}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 823
    .local v1, accounts:[Landroid/accounts/Account;
    move-object v2, v1

    .local v2, arr$:[Landroid/accounts/Account;
    array-length v4, v2

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_b
    if-ge v3, v4, :cond_1b

    aget-object v0, v2, v3

    .line 824
    .local v0, account:Landroid/accounts/Account;
    iget-object v5, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 828
    .end local v0           #account:Landroid/accounts/Account;
    :goto_17
    return-object v0

    .line 823
    .restart local v0       #account:Landroid/accounts/Account;
    :cond_18
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 828
    .end local v0           #account:Landroid/accounts/Account;
    :cond_1b
    const/4 v0, 0x0

    goto :goto_17
.end method

.method private static getAlternateDisplayName(Lcom/google/wireless/gdata2/contacts/data/ContactEntry;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1016
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getName()Lcom/google/wireless/gdata2/contacts/data/Name;

    move-result-object v0

    .line 1017
    if-eqz v0, :cond_29

    .line 1018
    invoke-virtual {v0}, Lcom/google/wireless/gdata2/contacts/data/Name;->getGivenName()Ljava/lang/String;

    move-result-object v1

    .line 1019
    invoke-virtual {v0}, Lcom/google/wireless/gdata2/contacts/data/Name;->getFamilyName()Ljava/lang/String;

    move-result-object v0

    .line 1021
    if-eqz v1, :cond_2a

    if-eqz v0, :cond_2a

    .line 1022
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1028
    :cond_29
    :goto_29
    return-object p1

    .line 1024
    :cond_2a
    if-eqz v0, :cond_29

    move-object p1, v0

    .line 1025
    goto :goto_29
.end method

.method private static getDisplayName(Lcom/google/wireless/gdata2/contacts/data/ContactEntry;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 973
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getName()Lcom/google/wireless/gdata2/contacts/data/Name;

    move-result-object v1

    .line 974
    if-eqz v1, :cond_38

    .line 975
    invoke-virtual {v1}, Lcom/google/wireless/gdata2/contacts/data/Name;->getFullName()Ljava/lang/String;

    move-result-object v0

    .line 976
    if-eqz v0, :cond_e

    .line 1011
    :cond_d
    :goto_d
    return-object v0

    .line 980
    :cond_e
    invoke-virtual {v1}, Lcom/google/wireless/gdata2/contacts/data/Name;->getGivenName()Ljava/lang/String;

    move-result-object v0

    .line 981
    invoke-virtual {v1}, Lcom/google/wireless/gdata2/contacts/data/Name;->getFamilyName()Ljava/lang/String;

    move-result-object v1

    .line 983
    if-eqz v0, :cond_32

    if-eqz v1, :cond_32

    .line 984
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 986
    :cond_32
    if-nez v0, :cond_d

    .line 989
    if-eqz v1, :cond_38

    move-object v0, v1

    .line 990
    goto :goto_d

    .line 995
    :cond_38
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getEmailAddresses()Ljava/util/Vector;

    move-result-object v0

    .line 996
    if-eqz v0, :cond_57

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_57

    .line 997
    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/gdata2/contacts/data/EmailAddress;

    .line 998
    invoke-virtual {v0}, Lcom/google/wireless/gdata2/contacts/data/EmailAddress;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 999
    if-eqz v1, :cond_52

    move-object v0, v1

    .line 1000
    goto :goto_d

    .line 1002
    :cond_52
    invoke-virtual {v0}, Lcom/google/wireless/gdata2/contacts/data/EmailAddress;->getAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 1006
    :cond_57
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getPhoneNumbers()Ljava/util/Vector;

    move-result-object v0

    .line 1007
    if-eqz v0, :cond_6e

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_6e

    .line 1008
    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;

    .line 1009
    invoke-virtual {v0}, Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 1011
    :cond_6e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private getEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/google/wireless/gdata2/contacts/data/ContactEntry;
    .registers 13
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v9, 0x1

    .line 765
    invoke-virtual {p0}, Lcom/google/android/syncadapters/contacts/GalProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 767
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 768
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_23

    .line 769
    :cond_1a
    const-string v0, "GalProvider"

    const-string v2, "getEntry(): Not connected"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 815
    :goto_22
    return-object v0

    .line 773
    :cond_23
    invoke-direct {p0, p1}, Lcom/google/android/syncadapters/contacts/GalProvider;->getAccount(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    .line 774
    if-nez v0, :cond_43

    .line 775
    const-string v0, "GalProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Account not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 776
    goto :goto_22

    .line 779
    :cond_43
    new-instance v2, Lcom/google/android/syncadapters/contacts/AuthInfo;

    iget-object v3, p0, Lcom/google/android/syncadapters/contacts/GalProvider;->mAccountManager:Landroid/accounts/AccountManager;

    const-string v4, "cp"

    invoke-direct {v2, v3, v0, v4}, Lcom/google/android/syncadapters/contacts/AuthInfo;-><init>(Landroid/accounts/AccountManager;Landroid/accounts/Account;Ljava/lang/String;)V

    .line 781
    const/16 v3, 0x40

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 782
    if-gez v3, :cond_6e

    .line 783
    const-string v0, "GalProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid account name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 784
    goto :goto_22

    .line 787
    :cond_6e
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 788
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "https://www.google.com/m8/feeds/gal/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/full/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 789
    const-string v4, "GalProvider"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_c6

    .line 790
    const-string v4, "GalProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getEntry("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "): GData URL: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    :cond_c6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 793
    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/common/GoogleTrafficStats;->getDomainType(Ljava/lang/String;)I

    move-result v0

    const/high16 v6, 0x40

    or-int/2addr v0, v6

    const/high16 v6, 0x8

    or-int/2addr v0, v6

    or-int/lit8 v6, v0, 0x2

    .line 798
    :try_start_d8
    invoke-static {v6}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 799
    iget-object v0, p0, Lcom/google/android/syncadapters/contacts/GalProvider;->mContactsClient:Lcom/google/wireless/gdata2/contacts/client/ContactsClient;

    sget-object v7, Lcom/google/android/syncadapters/contacts/GalProvider;->sContactHandler:Lcom/google/android/syncadapters/contacts/ContactHandler;

    invoke-virtual {v7}, Lcom/google/android/syncadapters/contacts/ContactHandler;->getEntryClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v2}, Lcom/google/android/syncadapters/contacts/AuthInfo;->getAuthToken()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v3, v2, v8}, Lcom/google/wireless/gdata2/contacts/client/ContactsClient;->getEntry(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/wireless/gdata2/data/Entry;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;
    :try_end_ee
    .catchall {:try_start_d8 .. :try_end_ee} :catchall_13e
    .catch Ljava/io/IOException; {:try_start_d8 .. :try_end_ee} :catch_f9
    .catch Lcom/google/wireless/gdata2/GDataException; {:try_start_d8 .. :try_end_ee} :catch_11e
    .catch Landroid/accounts/OperationCanceledException; {:try_start_d8 .. :try_end_ee} :catch_149

    .line 811
    invoke-static {v6, v9}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 812
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 813
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_22

    .line 804
    :catch_f9
    move-exception v0

    .line 805
    :try_start_fa
    const-string v2, "GalProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception when getting feed "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_112
    .catchall {:try_start_fa .. :try_end_112} :catchall_13e

    .line 811
    invoke-static {v6, v9}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 812
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 813
    :goto_118
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object v0, v1

    .line 815
    goto/16 :goto_22

    .line 806
    :catch_11e
    move-exception v0

    .line 807
    :try_start_11f
    const-string v2, "GalProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception when getting feed "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_137
    .catchall {:try_start_11f .. :try_end_137} :catchall_13e

    .line 811
    invoke-static {v6, v9}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 812
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    goto :goto_118

    .line 811
    :catchall_13e
    move-exception v0

    invoke-static {v6, v9}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 812
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 813
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 811
    throw v0

    .line 808
    :catch_149
    move-exception v0

    .line 811
    invoke-static {v6, v9}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 812
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    goto :goto_118
.end method

.method private getFeed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/wireless/gdata2/parser/GDataParser;
    .registers 14
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v9, 0x1

    .line 704
    invoke-virtual {p0}, Lcom/google/android/syncadapters/contacts/GalProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 706
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 707
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_23

    .line 708
    :cond_1a
    const-string v0, "GalProvider"

    const-string v2, "getFeed(): Not connected"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 761
    :goto_22
    return-object v0

    .line 712
    :cond_23
    invoke-direct {p0, p1}, Lcom/google/android/syncadapters/contacts/GalProvider;->getAccount(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    .line 713
    if-nez v0, :cond_43

    .line 714
    const-string v0, "GalProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Account not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 715
    goto :goto_22

    .line 718
    :cond_43
    new-instance v2, Lcom/google/android/syncadapters/contacts/AuthInfo;

    iget-object v3, p0, Lcom/google/android/syncadapters/contacts/GalProvider;->mAccountManager:Landroid/accounts/AccountManager;

    const-string v4, "cp"

    invoke-direct {v2, v3, v0, v4}, Lcom/google/android/syncadapters/contacts/AuthInfo;-><init>(Landroid/accounts/AccountManager;Landroid/accounts/Account;Ljava/lang/String;)V

    .line 720
    const/16 v3, 0x40

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 721
    if-gez v3, :cond_6e

    .line 722
    const-string v0, "GalProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid account name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 723
    goto :goto_22

    .line 726
    :cond_6e
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 727
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "https://www.google.com/m8/feeds/gal/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 728
    const-string v4, "GalProvider"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_c4

    .line 729
    const-string v4, "GalProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getFeed("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "): GData URL: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    :cond_c4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 732
    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/common/GoogleTrafficStats;->getDomainType(Ljava/lang/String;)I

    move-result v0

    const/high16 v6, 0x40

    or-int/2addr v0, v6

    const/high16 v6, 0x8

    or-int/2addr v0, v6

    or-int/lit8 v6, v0, 0x1

    .line 737
    :try_start_d6
    invoke-static {v6}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 738
    iget-object v0, p0, Lcom/google/android/syncadapters/contacts/GalProvider;->mContactsClient:Lcom/google/wireless/gdata2/contacts/client/ContactsClient;

    sget-object v7, Lcom/google/android/syncadapters/contacts/GalProvider;->sContactHandler:Lcom/google/android/syncadapters/contacts/ContactHandler;

    invoke-virtual {v7}, Lcom/google/android/syncadapters/contacts/ContactHandler;->getEntryClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v2}, Lcom/google/android/syncadapters/contacts/AuthInfo;->getAuthToken()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v3, v2, v8}, Lcom/google/wireless/gdata2/contacts/client/ContactsClient;->getParserForFeed(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/wireless/gdata2/parser/GDataParser;
    :try_end_e9
    .catchall {:try_start_d6 .. :try_end_e9} :catchall_183
    .catch Lcom/google/wireless/gdata2/client/ForbiddenException; {:try_start_d6 .. :try_end_e9} :catch_f5
    .catch Ljava/io/IOException; {:try_start_d6 .. :try_end_e9} :catch_11e
    .catch Lcom/google/wireless/gdata2/client/ResourceGoneException; {:try_start_d6 .. :try_end_e9} :catch_143
    .catch Lcom/google/wireless/gdata2/GDataException; {:try_start_d6 .. :try_end_e9} :catch_163
    .catch Landroid/accounts/OperationCanceledException; {:try_start_d6 .. :try_end_e9} :catch_18e

    move-result-object v0

    .line 757
    invoke-static {v6, v9}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 758
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 759
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_22

    .line 743
    :catch_f5
    move-exception v0

    .line 744
    :try_start_f6
    const-string v2, "GalProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ForbiddenException when getting feed. Probably a non Gmail consumer account."

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/wireless/gdata2/client/ForbiddenException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_112
    .catchall {:try_start_f6 .. :try_end_112} :catchall_183

    .line 757
    invoke-static {v6, v9}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 758
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 759
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object v0, v1

    .line 747
    goto/16 :goto_22

    .line 748
    :catch_11e
    move-exception v0

    .line 749
    :try_start_11f
    const-string v2, "GalProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception when getting feed "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_137
    .catchall {:try_start_11f .. :try_end_137} :catchall_183

    .line 757
    invoke-static {v6, v9}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 758
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 759
    :goto_13d
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object v0, v1

    .line 761
    goto/16 :goto_22

    .line 750
    :catch_143
    move-exception v0

    .line 751
    :try_start_144
    const-string v2, "GalProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception when getting feed "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_15c
    .catchall {:try_start_144 .. :try_end_15c} :catchall_183

    .line 757
    invoke-static {v6, v9}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 758
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    goto :goto_13d

    .line 752
    :catch_163
    move-exception v0

    .line 753
    :try_start_164
    const-string v2, "GalProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception when getting feed "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_17c
    .catchall {:try_start_164 .. :try_end_17c} :catchall_183

    .line 757
    invoke-static {v6, v9}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 758
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    goto :goto_13d

    .line 757
    :catchall_183
    move-exception v0

    invoke-static {v6, v9}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 758
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 759
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 757
    throw v0

    .line 754
    :catch_18e
    move-exception v0

    .line 757
    invoke-static {v6, v9}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 758
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    goto :goto_13d
.end method

.method private getPhotoUri(Ljava/lang/String;Lcom/google/wireless/gdata2/contacts/data/ContactEntry;Z)Ljava/lang/String;
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1032
    invoke-virtual {p2}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getLinkPhotoHref()Ljava/lang/String;

    move-result-object v0

    .line 1033
    if-eqz v0, :cond_32

    .line 1034
    if-eqz p3, :cond_c

    .line 1035
    invoke-direct {p0, v0}, Lcom/google/android/syncadapters/contacts/GalProvider;->getThumbnailUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1038
    :cond_c
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "content"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "com.google.contacts.gal.provider"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "photo"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "account_name"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1046
    :goto_31
    return-object v0

    :cond_32
    const/4 v0, 0x0

    goto :goto_31
.end method

.method private getThumbnailUri(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 1050
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?sz="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/syncadapters/contacts/GalProvider;->mThumbnailSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1051
    return-object v0
.end method

.method private handleContact([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Landroid/database/Cursor;
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 483
    const-string v0, "GalProvider"

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 484
    const-string v0, "GalProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleContact("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    :cond_3d
    if-nez p2, :cond_4c

    .line 488
    const-string v0, "GalProvider"

    const-string v1, "Account name cannot be null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    new-instance v0, Landroid/database/MatrixCursor;

    invoke-direct {v0, p1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 658
    :goto_4b
    return-object v0

    .line 491
    :cond_4c
    invoke-direct {p0, p2, p3}, Lcom/google/android/syncadapters/contacts/GalProvider;->getEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/google/wireless/gdata2/contacts/data/ContactEntry;

    move-result-object v2

    .line 492
    if-nez v2, :cond_7a

    .line 493
    const-string v0, "GalProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t find entry: accountName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " lookupKey: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    new-instance v0, Landroid/database/MatrixCursor;

    invoke-direct {v0, p1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    goto :goto_4b

    .line 498
    :cond_7a
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v3

    move v0, v1

    .line 500
    :goto_7f
    array-length v4, p1

    if-ge v0, v4, :cond_8e

    .line 501
    aget-object v4, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    add-int/lit8 v0, v0, 0x1

    goto :goto_7f

    .line 504
    :cond_8e
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 505
    invoke-virtual {v2}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getName()Lcom/google/wireless/gdata2/contacts/data/Name;

    move-result-object v0

    if-eqz v0, :cond_a3

    .line 506
    invoke-static {v2}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newNameDataValues(Lcom/google/wireless/gdata2/contacts/data/ContactEntry;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-direct {p0, v3, v0, p4, p5}, Lcom/google/android/syncadapters/contacts/GalProvider;->createContactRow(Ljava/util/Map;Landroid/content/ContentValues;J)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v4, v0}, Lcom/google/android/syncadapters/contacts/GalProvider;->addRow(Ljava/util/ArrayList;[Ljava/lang/Object;)V

    .line 510
    :cond_a3
    invoke-virtual {v2}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getContent()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b4

    .line 511
    invoke-static {v2}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newNoteDataValues(Lcom/google/wireless/gdata2/contacts/data/ContactEntry;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-direct {p0, v3, v0, p4, p5}, Lcom/google/android/syncadapters/contacts/GalProvider;->createContactRow(Ljava/util/Map;Landroid/content/ContentValues;J)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v4, v0}, Lcom/google/android/syncadapters/contacts/GalProvider;->addRow(Ljava/util/ArrayList;[Ljava/lang/Object;)V

    .line 515
    :cond_b4
    invoke-static {v2}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newNicknameDataValues(Lcom/google/wireless/gdata2/contacts/data/ContactEntry;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-direct {p0, v3, v0, p4, p5}, Lcom/google/android/syncadapters/contacts/GalProvider;->createContactRow(Ljava/util/Map;Landroid/content/ContentValues;J)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v4, v0}, Lcom/google/android/syncadapters/contacts/GalProvider;->addRow(Ljava/util/ArrayList;[Ljava/lang/Object;)V

    .line 518
    invoke-static {v2}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newBirthdayDataValues(Lcom/google/wireless/gdata2/contacts/data/ContactEntry;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-direct {p0, v3, v0, p4, p5}, Lcom/google/android/syncadapters/contacts/GalProvider;->createContactRow(Ljava/util/Map;Landroid/content/ContentValues;J)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v4, v0}, Lcom/google/android/syncadapters/contacts/GalProvider;->addRow(Ljava/util/ArrayList;[Ljava/lang/Object;)V

    .line 521
    invoke-static {v2}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newFocusMiscDataValues(Lcom/google/wireless/gdata2/contacts/data/ContactEntry;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-direct {p0, v3, v0, p4, p5}, Lcom/google/android/syncadapters/contacts/GalProvider;->createContactRow(Ljava/util/Map;Landroid/content/ContentValues;J)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v4, v0}, Lcom/google/android/syncadapters/contacts/GalProvider;->addRow(Ljava/util/ArrayList;[Ljava/lang/Object;)V

    .line 524
    invoke-virtual {v2}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getEmailAddresses()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_dd
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 525
    check-cast v0, Lcom/google/wireless/gdata2/contacts/data/EmailAddress;

    invoke-static {v0}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newDataValuesFromEntryElement(Lcom/google/wireless/gdata2/contacts/data/EmailAddress;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-direct {p0, v3, v0, p4, p5}, Lcom/google/android/syncadapters/contacts/GalProvider;->createContactRow(Ljava/util/Map;Landroid/content/ContentValues;J)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v4, v0}, Lcom/google/android/syncadapters/contacts/GalProvider;->addRow(Ljava/util/ArrayList;[Ljava/lang/Object;)V

    goto :goto_dd

    .line 530
    :cond_f5
    invoke-virtual {v2}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getPostalAddresses()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_fd
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_115

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 531
    check-cast v0, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;

    invoke-static {v0}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newDataValuesFromEntryElement(Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-direct {p0, v3, v0, p4, p5}, Lcom/google/android/syncadapters/contacts/GalProvider;->createContactRow(Ljava/util/Map;Landroid/content/ContentValues;J)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v4, v0}, Lcom/google/android/syncadapters/contacts/GalProvider;->addRow(Ljava/util/ArrayList;[Ljava/lang/Object;)V

    goto :goto_fd

    .line 536
    :cond_115
    invoke-virtual {v2}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getImAddresses()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_11d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_135

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 537
    check-cast v0, Lcom/google/wireless/gdata2/contacts/data/ImAddress;

    invoke-static {v0}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newDataValuesFromEntryElement(Lcom/google/wireless/gdata2/contacts/data/ImAddress;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-direct {p0, v3, v0, p4, p5}, Lcom/google/android/syncadapters/contacts/GalProvider;->createContactRow(Ljava/util/Map;Landroid/content/ContentValues;J)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v4, v0}, Lcom/google/android/syncadapters/contacts/GalProvider;->addRow(Ljava/util/ArrayList;[Ljava/lang/Object;)V

    goto :goto_11d

    .line 542
    :cond_135
    invoke-virtual {v2}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getOrganizations()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_13d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_155

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 543
    check-cast v0, Lcom/google/wireless/gdata2/contacts/data/Organization;

    invoke-static {v0}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newDataValuesFromEntryElement(Lcom/google/wireless/gdata2/contacts/data/Organization;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-direct {p0, v3, v0, p4, p5}, Lcom/google/android/syncadapters/contacts/GalProvider;->createContactRow(Ljava/util/Map;Landroid/content/ContentValues;J)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v4, v0}, Lcom/google/android/syncadapters/contacts/GalProvider;->addRow(Ljava/util/ArrayList;[Ljava/lang/Object;)V

    goto :goto_13d

    .line 547
    :cond_155
    invoke-virtual {v2}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getGroups()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_15d
    :goto_15d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 548
    check-cast v0, Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;

    .line 549
    invoke-virtual {v0}, Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;->isDeleted()Z

    move-result v6

    if-nez v6, :cond_15d

    .line 553
    invoke-static {v0}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newDataValuesFromEntryElement(Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-direct {p0, v3, v0, p4, p5}, Lcom/google/android/syncadapters/contacts/GalProvider;->createContactRow(Ljava/util/Map;Landroid/content/ContentValues;J)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v4, v0}, Lcom/google/android/syncadapters/contacts/GalProvider;->addRow(Ljava/util/ArrayList;[Ljava/lang/Object;)V

    goto :goto_15d

    .line 557
    :cond_17b
    invoke-virtual {v2}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getHobbies()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_183
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 558
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newDataValuesFromHobbyEntryElement(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-direct {p0, v3, v0, p4, p5}, Lcom/google/android/syncadapters/contacts/GalProvider;->createContactRow(Ljava/util/Map;Landroid/content/ContentValues;J)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v4, v0}, Lcom/google/android/syncadapters/contacts/GalProvider;->addRow(Ljava/util/ArrayList;[Ljava/lang/Object;)V

    goto :goto_183

    .line 562
    :cond_19b
    invoke-virtual {v2}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getUserDefinedFields()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1a3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1bb

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 563
    check-cast v0, Lcom/google/wireless/gdata2/contacts/data/UserDefinedField;

    invoke-static {v0}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newDataValuesFromEntryElement(Lcom/google/wireless/gdata2/contacts/data/UserDefinedField;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-direct {p0, v3, v0, p4, p5}, Lcom/google/android/syncadapters/contacts/GalProvider;->createContactRow(Ljava/util/Map;Landroid/content/ContentValues;J)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v4, v0}, Lcom/google/android/syncadapters/contacts/GalProvider;->addRow(Ljava/util/ArrayList;[Ljava/lang/Object;)V

    goto :goto_1a3

    .line 567
    :cond_1bb
    invoke-virtual {v2}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getLanguages()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1c3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1db

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 568
    check-cast v0, Lcom/google/wireless/gdata2/contacts/data/Language;

    invoke-static {v0}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newDataValuesFromEntryElement(Lcom/google/wireless/gdata2/contacts/data/Language;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-direct {p0, v3, v0, p4, p5}, Lcom/google/android/syncadapters/contacts/GalProvider;->createContactRow(Ljava/util/Map;Landroid/content/ContentValues;J)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v4, v0}, Lcom/google/android/syncadapters/contacts/GalProvider;->addRow(Ljava/util/ArrayList;[Ljava/lang/Object;)V

    goto :goto_1c3

    .line 573
    :cond_1db
    invoke-virtual {v2}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getExternalIds()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1e3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1fb

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 574
    check-cast v0, Lcom/google/wireless/gdata2/contacts/data/ExternalId;

    invoke-static {v0}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newDataValuesFromEntryElement(Lcom/google/wireless/gdata2/contacts/data/ExternalId;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-direct {p0, v3, v0, p4, p5}, Lcom/google/android/syncadapters/contacts/GalProvider;->createContactRow(Ljava/util/Map;Landroid/content/ContentValues;J)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v4, v0}, Lcom/google/android/syncadapters/contacts/GalProvider;->addRow(Ljava/util/ArrayList;[Ljava/lang/Object;)V

    goto :goto_1e3

    .line 579
    :cond_1fb
    invoke-virtual {v2}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getCalendarLinks()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_203
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 580
    check-cast v0, Lcom/google/wireless/gdata2/contacts/data/CalendarLink;

    invoke-static {v0}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newDataValuesFromEntryElement(Lcom/google/wireless/gdata2/contacts/data/CalendarLink;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-direct {p0, v3, v0, p4, p5}, Lcom/google/android/syncadapters/contacts/GalProvider;->createContactRow(Ljava/util/Map;Landroid/content/ContentValues;J)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v4, v0}, Lcom/google/android/syncadapters/contacts/GalProvider;->addRow(Ljava/util/ArrayList;[Ljava/lang/Object;)V

    goto :goto_203

    .line 584
    :cond_21b
    invoke-virtual {v2}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getJots()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_223
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 585
    check-cast v0, Lcom/google/wireless/gdata2/contacts/data/Jot;

    invoke-static {v0}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newDataValuesFromEntryElement(Lcom/google/wireless/gdata2/contacts/data/Jot;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-direct {p0, v3, v0, p4, p5}, Lcom/google/android/syncadapters/contacts/GalProvider;->createContactRow(Ljava/util/Map;Landroid/content/ContentValues;J)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v4, v0}, Lcom/google/android/syncadapters/contacts/GalProvider;->addRow(Ljava/util/ArrayList;[Ljava/lang/Object;)V

    goto :goto_223

    .line 589
    :cond_23b
    invoke-virtual {v2}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getPhoneNumbers()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_243
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 590
    check-cast v0, Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;

    invoke-static {v0}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newDataValuesFromEntryElement(Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-direct {p0, v3, v0, p4, p5}, Lcom/google/android/syncadapters/contacts/GalProvider;->createContactRow(Ljava/util/Map;Landroid/content/ContentValues;J)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v4, v0}, Lcom/google/android/syncadapters/contacts/GalProvider;->addRow(Ljava/util/ArrayList;[Ljava/lang/Object;)V

    goto :goto_243

    .line 595
    :cond_25b
    invoke-virtual {v2}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getWebSites()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_263
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 596
    check-cast v0, Lcom/google/wireless/gdata2/contacts/data/WebSite;

    invoke-static {v0}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newDataValuesFromEntryElement(Lcom/google/wireless/gdata2/contacts/data/WebSite;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-direct {p0, v3, v0, p4, p5}, Lcom/google/android/syncadapters/contacts/GalProvider;->createContactRow(Ljava/util/Map;Landroid/content/ContentValues;J)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v4, v0}, Lcom/google/android/syncadapters/contacts/GalProvider;->addRow(Ljava/util/ArrayList;[Ljava/lang/Object;)V

    goto :goto_263

    .line 601
    :cond_27b
    invoke-virtual {v2}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getRelations()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_283
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 602
    check-cast v0, Lcom/google/wireless/gdata2/contacts/data/Relation;

    invoke-static {v0}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newDataValuesFromEntryElement(Lcom/google/wireless/gdata2/contacts/data/Relation;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-direct {p0, v3, v0, p4, p5}, Lcom/google/android/syncadapters/contacts/GalProvider;->createContactRow(Ljava/util/Map;Landroid/content/ContentValues;J)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v4, v0}, Lcom/google/android/syncadapters/contacts/GalProvider;->addRow(Ljava/util/ArrayList;[Ljava/lang/Object;)V

    goto :goto_283

    .line 607
    :cond_29b
    invoke-virtual {v2}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getEvents()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2a3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2bb

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 608
    check-cast v0, Lcom/google/wireless/gdata2/contacts/data/Event;

    invoke-static {v0}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newDataValuesFromEntryElement(Lcom/google/wireless/gdata2/contacts/data/Event;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-direct {p0, v3, v0, p4, p5}, Lcom/google/android/syncadapters/contacts/GalProvider;->createContactRow(Ljava/util/Map;Landroid/content/ContentValues;J)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v4, v0}, Lcom/google/android/syncadapters/contacts/GalProvider;->addRow(Ljava/util/ArrayList;[Ljava/lang/Object;)V

    goto :goto_2a3

    .line 612
    :cond_2bb
    invoke-virtual {v2}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getExtendedProperties()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2c3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 613
    check-cast v0, Lcom/google/wireless/gdata2/data/ExtendedProperty;

    .line 614
    const-string v6, "android"

    invoke-virtual {v0}, Lcom/google/wireless/gdata2/data/ExtendedProperty;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2c3

    .line 615
    invoke-static {v0}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newDataValuesFromEntryElement(Lcom/google/wireless/gdata2/data/ExtendedProperty;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2e3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 616
    invoke-direct {p0, v3, v0, p4, p5}, Lcom/google/android/syncadapters/contacts/GalProvider;->createContactRow(Ljava/util/Map;Landroid/content/ContentValues;J)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v4, v0}, Lcom/google/android/syncadapters/contacts/GalProvider;->addRow(Ljava/util/ArrayList;[Ljava/lang/Object;)V

    goto :goto_2e3

    .line 622
    :cond_2f7
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_389

    .line 623
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 624
    const-string v5, "contact_id"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {p0, v0, v3, v5, v6}, Lcom/google/android/syncadapters/contacts/GalProvider;->putContactRowValue([Ljava/lang/Object;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 626
    invoke-static {v2}, Lcom/google/android/syncadapters/contacts/GalProvider;->getDisplayName(Lcom/google/wireless/gdata2/contacts/data/ContactEntry;)Ljava/lang/String;

    move-result-object v5

    .line 627
    invoke-static {v2, v5}, Lcom/google/android/syncadapters/contacts/GalProvider;->getAlternateDisplayName(Lcom/google/wireless/gdata2/contacts/data/ContactEntry;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 630
    const-string v7, "raw_contact_id"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-direct {p0, v0, v3, v7, v8}, Lcom/google/android/syncadapters/contacts/GalProvider;->putContactRowValue([Ljava/lang/Object;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 631
    const-string v7, "display_name"

    invoke-direct {p0, v0, v3, v7, v5}, Lcom/google/android/syncadapters/contacts/GalProvider;->putContactRowValue([Ljava/lang/Object;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 632
    const-string v5, "display_name_alt"

    invoke-direct {p0, v0, v3, v5, v6}, Lcom/google/android/syncadapters/contacts/GalProvider;->putContactRowValue([Ljava/lang/Object;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 634
    const-string v5, "account_type"

    const-string v6, "com.google"

    invoke-direct {p0, v0, v3, v5, v6}, Lcom/google/android/syncadapters/contacts/GalProvider;->putContactRowValue([Ljava/lang/Object;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 636
    const-string v5, "account_name"

    invoke-direct {p0, v0, v3, v5, p2}, Lcom/google/android/syncadapters/contacts/GalProvider;->putContactRowValue([Ljava/lang/Object;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 637
    const-string v5, "raw_contact_is_read_only"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {p0, v0, v3, v5, v6}, Lcom/google/android/syncadapters/contacts/GalProvider;->putContactRowValue([Ljava/lang/Object;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 638
    const-string v5, "is_read_only"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {p0, v0, v3, v5, v6}, Lcom/google/android/syncadapters/contacts/GalProvider;->putContactRowValue([Ljava/lang/Object;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 639
    invoke-direct {p0, p2, v2, v1}, Lcom/google/android/syncadapters/contacts/GalProvider;->getPhotoUri(Ljava/lang/String;Lcom/google/wireless/gdata2/contacts/data/ContactEntry;Z)Ljava/lang/String;

    move-result-object v2

    .line 640
    invoke-static {v2}, Lcom/google/android/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_35d

    .line 641
    const-string v5, "photo_uri"

    invoke-direct {p0, v0, v3, v5, v2}, Lcom/google/android/syncadapters/contacts/GalProvider;->putContactRowValue([Ljava/lang/Object;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 642
    const-string v5, "photo_thumb_uri"

    invoke-direct {p0, v2}, Lcom/google/android/syncadapters/contacts/GalProvider;->getThumbnailUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v3, v5, v2}, Lcom/google/android/syncadapters/contacts/GalProvider;->putContactRowValue([Ljava/lang/Object;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 646
    :cond_35d
    new-instance v2, Landroid/database/MatrixCursor;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {v2, p1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 648
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    :goto_36a
    if-ge v1, v5, :cond_386

    .line 649
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 650
    if-nez v0, :cond_377

    .line 648
    :goto_374
    add-int/lit8 v1, v1, 0x1

    goto :goto_36a

    .line 653
    :cond_377
    const-string v6, "data_id"

    add-int/lit8 v7, v1, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v0, v3, v6, v7}, Lcom/google/android/syncadapters/contacts/GalProvider;->putContactRowValue([Ljava/lang/Object;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 654
    invoke-virtual {v2, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_374

    :cond_386
    move-object v0, v2

    .line 656
    goto/16 :goto_4b

    .line 658
    :cond_389
    const/4 v0, 0x0

    goto/16 :goto_4b
.end method

.method private handleDirectories([Ljava/lang/String;)Landroid/database/Cursor;
    .registers 18
    .parameter "projection"

    .prologue
    .line 386
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/syncadapters/contacts/GalProvider;->mAccountManager:Landroid/accounts/AccountManager;

    const-string v14, "com.google"

    invoke-virtual {v13, v14}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 387
    .local v2, accounts:[Landroid/accounts/Account;
    new-instance v6, Landroid/database/MatrixCursor;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 388
    .local v6, cursor:Landroid/database/MatrixCursor;
    if-eqz v2, :cond_f8

    .line 389
    move-object v3, v2

    .local v3, arr$:[Landroid/accounts/Account;
    array-length v10, v3

    .local v10, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_16
    if-ge v9, v10, :cond_f8

    aget-object v1, v3, v9

    .line 390
    .local v1, account:Landroid/accounts/Account;
    const-string v13, "GalProvider"

    const/4 v14, 0x2

    invoke-static {v13, v14}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v13

    if-eqz v13, :cond_3b

    .line 391
    const-string v13, "GalProvider"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "handleDirectories: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    :cond_3b
    iget-object v11, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 395
    .local v11, name:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/google/android/syncadapters/contacts/GalProvider;->mayHaveGalSupport(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_48

    .line 389
    :goto_45
    add-int/lit8 v9, v9, 0x1

    goto :goto_16

    .line 398
    :cond_48
    move-object/from16 v0, p1

    array-length v13, v0

    new-array v12, v13, [Ljava/lang/Object;

    .line 400
    .local v12, row:[Ljava/lang/Object;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_4e
    move-object/from16 v0, p1

    array-length v13, v0

    if-ge v8, v13, :cond_f3

    .line 401
    aget-object v5, p1, v8

    .line 402
    .local v5, column:Ljava/lang/String;
    const-string v13, "accountName"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_62

    .line 403
    aput-object v11, v12, v8

    .line 400
    :cond_5f
    :goto_5f
    add-int/lit8 v8, v8, 0x1

    goto :goto_4e

    .line 404
    :cond_62
    const-string v13, "accountType"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6f

    .line 405
    iget-object v13, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v13, v12, v8

    goto :goto_5f

    .line 406
    :cond_6f
    const-string v13, "typeResourceId"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_81

    .line 407
    const v13, 0x7f050001

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v8

    goto :goto_5f

    .line 408
    :cond_81
    const-string v13, "displayName"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c1

    .line 411
    const/16 v13, 0x40

    invoke-virtual {v11, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 412
    .local v4, atIndex:I
    const/4 v13, -0x1

    if-eq v4, v13, :cond_be

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, -0x2

    if-ge v4, v13, :cond_be

    .line 413
    add-int/lit8 v13, v4, 0x1

    invoke-virtual {v11, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-static {v13}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v7

    .line 415
    .local v7, firstLetter:C
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    add-int/lit8 v14, v4, 0x2

    invoke-virtual {v11, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v8

    goto :goto_5f

    .line 417
    .end local v7           #firstLetter:C
    :cond_be
    aput-object v11, v12, v8

    goto :goto_5f

    .line 419
    .end local v4           #atIndex:I
    :cond_c1
    const-string v13, "exportSupport"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d1

    .line 420
    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v8

    goto :goto_5f

    .line 421
    :cond_d1
    const-string v13, "shortcutSupport"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e2

    .line 422
    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v8

    goto/16 :goto_5f

    .line 423
    :cond_e2
    const-string v13, "photoSupport"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5f

    .line 424
    const/4 v13, 0x3

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v8

    goto/16 :goto_5f

    .line 427
    .end local v5           #column:Ljava/lang/String;
    :cond_f3
    invoke-virtual {v6, v12}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_45

    .line 430
    .end local v1           #account:Landroid/accounts/Account;
    .end local v3           #arr$:[Landroid/accounts/Account;
    .end local v8           #i:I
    .end local v9           #i$:I
    .end local v10           #len$:I
    .end local v11           #name:Ljava/lang/String;
    .end local v12           #row:[Ljava/lang/Object;
    :cond_f8
    return-object v6
.end method

.method private handleFilter([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/database/Cursor;
    .registers 14
    .parameter "projection"
    .parameter "accountName"
    .parameter "filter"
    .parameter "maxResults"
    .parameter "emailFilter"

    .prologue
    const/4 v0, 0x0

    const/4 v7, 0x2

    .line 439
    const-string v4, "GalProvider"

    invoke-static {v4, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 440
    const-string v4, "GalProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleFilter("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :cond_32
    if-eqz p3, :cond_3a

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v7, :cond_3b

    .line 475
    :cond_3a
    :goto_3a
    return-object v0

    .line 447
    :cond_3b
    if-nez p2, :cond_45

    .line 448
    const-string v4, "GalProvider"

    const-string v5, "Account name cannot be null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3a

    .line 453
    :cond_45
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 454
    .local v3, query:Ljava/lang/StringBuilder;
    const-string v4, "?q="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    const-string v4, "&max-results="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 457
    if-eqz p5, :cond_b1

    .line 458
    const-string v2, "/autocomplete/"

    .line 463
    .local v2, projectionPath:Ljava/lang/String;
    :goto_60
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p2, v4, v2}, Lcom/google/android/syncadapters/contacts/GalProvider;->getFeed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/wireless/gdata2/parser/GDataParser;

    move-result-object v1

    .line 464
    .local v1, parser:Lcom/google/wireless/gdata2/parser/GDataParser;
    if-eqz v1, :cond_3a

    .line 469
    :try_start_6a
    invoke-direct {p0, p1, v1, p2, p5}, Lcom/google/android/syncadapters/contacts/GalProvider;->buildGalResultCursor([Ljava/lang/String;Lcom/google/wireless/gdata2/parser/GDataParser;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v0

    .line 471
    .local v0, cursor:Landroid/database/Cursor;
    const-string v4, "GalProvider"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_ad

    .line 472
    const-string v4, "GalProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleFilter("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " matches"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ad
    .catchall {:try_start_6a .. :try_end_ad} :catchall_b9

    .line 477
    :cond_ad
    invoke-interface {v1}, Lcom/google/wireless/gdata2/parser/GDataParser;->close()V

    goto :goto_3a

    .line 460
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v1           #parser:Lcom/google/wireless/gdata2/parser/GDataParser;
    .end local v2           #projectionPath:Ljava/lang/String;
    :cond_b1
    const-string v2, "/autocompletepic/"

    .line 461
    .restart local v2       #projectionPath:Ljava/lang/String;
    const-string v4, "&group=false"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_60

    .line 477
    .restart local v1       #parser:Lcom/google/wireless/gdata2/parser/GDataParser;
    :catchall_b9
    move-exception v4

    invoke-interface {v1}, Lcom/google/wireless/gdata2/parser/GDataParser;->close()V

    throw v4
.end method

.method private mayHaveGalSupport(Ljava/lang/String;)Z
    .registers 3
    .parameter

    .prologue
    .line 699
    const-string v0, "@gmail.com"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "@googlemail.com"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private openFile(Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;
    .registers 15
    .parameter "uri"

    .prologue
    .line 319
    const-string v0, "account_name"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 320
    .local v7, accountName:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 322
    .local v10, photoUrl:Ljava/lang/String;
    const-string v0, "GalProvider"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 323
    const-string v0, "GalProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openFile("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :cond_42
    invoke-direct {p0, v7}, Lcom/google/android/syncadapters/contacts/GalProvider;->getAccount(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v6

    .line 326
    .local v6, account:Landroid/accounts/Account;
    if-nez v6, :cond_62

    .line 327
    const-string v0, "GalProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Account not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    const/4 v0, 0x0

    .line 355
    :goto_61
    return-object v0

    .line 331
    :cond_62
    new-instance v8, Lcom/google/android/syncadapters/contacts/AuthInfo;

    iget-object v0, p0, Lcom/google/android/syncadapters/contacts/GalProvider;->mAccountManager:Landroid/accounts/AccountManager;

    const-string v1, "cp"

    invoke-direct {v8, v0, v6, v1}, Lcom/google/android/syncadapters/contacts/AuthInfo;-><init>(Landroid/accounts/AccountManager;Landroid/accounts/Account;Ljava/lang/String;)V

    .line 332
    .local v8, authInfo:Lcom/google/android/syncadapters/contacts/AuthInfo;
    iget-object v0, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/common/GoogleTrafficStats;->getDomainType(Ljava/lang/String;)I

    move-result v0

    const/high16 v1, 0x40

    or-int/2addr v0, v1

    const/high16 v1, 0x8

    or-int/2addr v0, v1

    or-int/lit8 v11, v0, 0x3

    .line 337
    .local v11, tag:I
    :try_start_79
    invoke-static {v11}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 338
    iget-object v0, p0, Lcom/google/android/syncadapters/contacts/GalProvider;->mContactsClient:Lcom/google/wireless/gdata2/contacts/client/ContactsClient;

    invoke-virtual {v8}, Lcom/google/android/syncadapters/contacts/AuthInfo;->getAuthToken()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v10, v1, v2}, Lcom/google/wireless/gdata2/contacts/client/ContactsClient;->getMediaEntryAsStream(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 340
    .local v4, inputStream:Ljava/io/InputStream;
    new-instance v12, Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v5, Lcom/google/android/syncadapters/contacts/GalProvider$PhotoDataWriter;

    invoke-direct {v5, v7, v10}, Lcom/google/android/syncadapters/contacts/GalProvider$PhotoDataWriter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/syncadapters/contacts/GalProvider;->openPipeHelper(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;Landroid/content/ContentProvider$PipeDataWriter;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-direct {v12, v0}, Landroid/os/ParcelFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_99
    .catchall {:try_start_79 .. :try_end_99} :catchall_130
    .catch Lcom/google/wireless/gdata2/client/ResourceNotFoundException; {:try_start_79 .. :try_end_99} :catch_a2
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_99} :catch_d4
    .catch Lcom/google/wireless/gdata2/GDataException; {:try_start_79 .. :try_end_99} :catch_102
    .catch Landroid/accounts/OperationCanceledException; {:try_start_79 .. :try_end_99} :catch_139

    .line 352
    const/4 v0, 0x1

    invoke-static {v11, v0}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 353
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    move-object v0, v12

    .line 340
    goto :goto_61

    .line 343
    .end local v4           #inputStream:Ljava/io/InputStream;
    :catch_a2
    move-exception v9

    .line 344
    .local v9, e:Lcom/google/wireless/gdata2/client/ResourceNotFoundException;
    :try_start_a3
    const-string v0, "GalProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openFile("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): Not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cb
    .catchall {:try_start_a3 .. :try_end_cb} :catchall_130

    .line 352
    const/4 v0, 0x1

    invoke-static {v11, v0}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 353
    .end local v9           #e:Lcom/google/wireless/gdata2/client/ResourceNotFoundException;
    :goto_cf
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 355
    const/4 v0, 0x0

    goto :goto_61

    .line 345
    :catch_d4
    move-exception v9

    .line 346
    .local v9, e:Ljava/io/IOException;
    :try_start_d5
    const-string v0, "GalProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openFile("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_fd
    .catchall {:try_start_d5 .. :try_end_fd} :catchall_130

    .line 352
    const/4 v0, 0x1

    invoke-static {v11, v0}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    goto :goto_cf

    .line 347
    .end local v9           #e:Ljava/io/IOException;
    :catch_102
    move-exception v9

    .line 348
    .local v9, e:Lcom/google/wireless/gdata2/GDataException;
    :try_start_103
    const-string v0, "GalProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openFile("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_12b
    .catchall {:try_start_103 .. :try_end_12b} :catchall_130

    .line 352
    const/4 v0, 0x1

    invoke-static {v11, v0}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    goto :goto_cf

    .end local v9           #e:Lcom/google/wireless/gdata2/GDataException;
    :catchall_130
    move-exception v0

    const/4 v1, 0x1

    invoke-static {v11, v1}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 353
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 352
    throw v0

    .line 349
    :catch_139
    move-exception v0

    .line 352
    const/4 v0, 0x1

    invoke-static {v11, v0}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    goto :goto_cf
.end method

.method private putContactRowValue([Ljava/lang/Object;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7
    .parameter "row"
    .parameter
    .parameter "columnName"
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 689
    .local p2, columnMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-nez p4, :cond_3

    .line 696
    :cond_2
    :goto_2
    return-void

    .line 692
    :cond_3
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 693
    .local v0, integer:Ljava/lang/Integer;
    if-eqz v0, :cond_2

    .line 694
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput-object p4, p1, v1

    goto :goto_2
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 370
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 4
    .parameter "uri"

    .prologue
    .line 360
    sget-object v1, Lcom/google/android/syncadapters/contacts/GalProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 361
    .local v0, match:I
    packed-switch v0, :pswitch_data_e

    .line 365
    const/4 v1, 0x0

    :goto_a
    return-object v1

    .line 363
    :pswitch_b
    const-string v1, "vnd.android.cursor.item/contact"

    goto :goto_a

    .line 361
    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_b
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 4
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 375
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public onCreate()Z
    .registers 6

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/google/android/syncadapters/contacts/GalProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 142
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/syncadapters/contacts/GalProvider;->mAccountManager:Landroid/accounts/AccountManager;

    .line 143
    new-instance v1, Lcom/google/wireless/gdata2/contacts/client/ContactsClient;

    new-instance v2, Lcom/google/android/common/gdata2/AndroidGDataClient;

    const-string v3, "Android-GData-Contacts/1.3"

    const-string v4, ""

    invoke-direct {v2, v0, v3, v4}, Lcom/google/android/common/gdata2/AndroidGDataClient;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParserFactory;

    new-instance v4, Lcom/google/android/common/gdata2/AndroidXmlParserFactory;

    invoke-direct {v4}, Lcom/google/android/common/gdata2/AndroidXmlParserFactory;-><init>()V

    invoke-direct {v3, v4}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParserFactory;-><init>(Lcom/google/wireless/gdata2/parser/xml/XmlParserFactory;)V

    invoke-direct {v1, v2, v3}, Lcom/google/wireless/gdata2/contacts/client/ContactsClient;-><init>(Lcom/google/wireless/gdata2/client/GDataClient;Lcom/google/wireless/gdata2/client/GDataParserFactory;)V

    iput-object v1, p0, Lcom/google/android/syncadapters/contacts/GalProvider;->mContactsClient:Lcom/google/wireless/gdata2/contacts/client/ContactsClient;

    .line 146
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f04

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/syncadapters/contacts/GalProvider;->mThumbnailSize:I

    .line 149
    const/4 v1, 0x1

    return v1
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 9
    .parameter "uri"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 307
    const-string v0, "r"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 308
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mode must be \"r\""

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 310
    :cond_10
    new-instance v1, Lcom/google/android/syncadapters/contacts/GalProvider$4;

    invoke-direct {v1, p0, p1}, Lcom/google/android/syncadapters/contacts/GalProvider$4;-><init>(Lcom/google/android/syncadapters/contacts/GalProvider;Landroid/net/Uri;)V

    const-string v2, "GalOpenFileThread"

    const-wide/16 v3, 0x4e20

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/syncadapters/contacts/GalProvider;->execute(Ljava/util/concurrent/Callable;Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 31
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 155
    const-string v2, "GalProvider"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 156
    const-string v2, "GalProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "query: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_23
    sget-object v2, Lcom/google/android/syncadapters/contacts/GalProvider;->sURIMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    .line 160
    .local v4, match:I
    packed-switch v4, :pswitch_data_104

    .line 218
    const/4 v2, 0x0

    :goto_2f
    return-object v2

    .line 162
    :pswitch_30
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/syncadapters/contacts/GalProvider;->handleDirectories([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    goto :goto_2f

    .line 167
    :pswitch_39
    const-string v2, "account_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 168
    .local v6, accountName:Ljava/lang/String;
    const-string v2, "limit"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 171
    .local v23, limit:Ljava/lang/String;
    if-eqz v23, :cond_72

    :try_start_4b
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4e
    .catch Ljava/lang/NumberFormatException; {:try_start_4b .. :try_end_4e} :catch_75

    move-result v24

    .line 176
    .local v24, maxResults:I
    :goto_4f
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 178
    .local v7, filter:Ljava/lang/String;
    move/from16 v8, v24

    .line 180
    .local v8, finalMaxResults:I
    new-instance v2, Lcom/google/android/syncadapters/contacts/GalProvider$1;

    move-object/from16 v3, p0

    move-object/from16 v5, p2

    invoke-direct/range {v2 .. v8}, Lcom/google/android/syncadapters/contacts/GalProvider$1;-><init>(Lcom/google/android/syncadapters/contacts/GalProvider;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const-string v11, "GalFilterThread"

    const-wide/16 v12, 0x1388

    sget-object v14, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v9, p0

    move-object v10, v2

    invoke-direct/range {v9 .. v14}, Lcom/google/android/syncadapters/contacts/GalProvider;->execute(Ljava/util/concurrent/Callable;Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/Cursor;

    goto :goto_2f

    .line 171
    .end local v7           #filter:Ljava/lang/String;
    .end local v8           #finalMaxResults:I
    .end local v24           #maxResults:I
    :cond_72
    const/16 v24, 0x14

    goto :goto_4f

    .line 172
    :catch_75
    move-exception v22

    .line 173
    .local v22, e:Ljava/lang/NumberFormatException;
    const-string v2, "GalProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "query: invalid limit parameter: \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const/16 v24, 0x14

    .restart local v24       #maxResults:I
    goto :goto_4f

    .line 192
    .end local v6           #accountName:Ljava/lang/String;
    .end local v22           #e:Ljava/lang/NumberFormatException;
    .end local v23           #limit:Ljava/lang/String;
    .end local v24           #maxResults:I
    :pswitch_99
    const-string v2, "account_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 193
    .restart local v6       #accountName:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 195
    .local v13, lookupKey:Ljava/lang/String;
    new-instance v10, Lcom/google/android/syncadapters/contacts/GalProvider$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v10, v0, v1, v6, v13}, Lcom/google/android/syncadapters/contacts/GalProvider$2;-><init>(Lcom/google/android/syncadapters/contacts/GalProvider;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "GalContactThread"

    const-wide/16 v12, 0x1388

    sget-object v14, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v9, p0

    invoke-direct/range {v9 .. v14}, Lcom/google/android/syncadapters/contacts/GalProvider;->execute(Ljava/util/concurrent/Callable;Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/Cursor;

    goto/16 :goto_2f

    .line 205
    .end local v6           #accountName:Ljava/lang/String;
    .end local v13           #lookupKey:Ljava/lang/String;
    :pswitch_c5
    const-string v2, "account_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 206
    .restart local v6       #accountName:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 207
    .restart local v13       #lookupKey:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 209
    .local v14, contactId:J
    new-instance v9, Lcom/google/android/syncadapters/contacts/GalProvider$3;

    move-object/from16 v10, p0

    move-object/from16 v11, p2

    move-object v12, v6

    invoke-direct/range {v9 .. v15}, Lcom/google/android/syncadapters/contacts/GalProvider$3;-><init>(Lcom/google/android/syncadapters/contacts/GalProvider;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    const-string v18, "GalContactWithIdThread"

    const-wide/16 v19, 0x1388

    sget-object v21, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v16, p0

    move-object/from16 v17, v9

    invoke-direct/range {v16 .. v21}, Lcom/google/android/syncadapters/contacts/GalProvider;->execute(Ljava/util/concurrent/Callable;Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/Cursor;

    goto/16 :goto_2f

    .line 160
    nop

    :pswitch_data_104
    .packed-switch 0x0
        :pswitch_30
        :pswitch_39
        :pswitch_99
        :pswitch_c5
        :pswitch_39
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 380
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
