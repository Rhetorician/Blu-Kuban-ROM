.class public Lcom/google/common/io/protocol/ProtoBuf;
.super Ljava/lang/Object;
.source "ProtoBuf.java"


# static fields
.field public static final FALSE:Ljava/lang/Boolean;

.field private static SMALL_NUMBERS:[Ljava/lang/Long;

.field public static final TRUE:Ljava/lang/Boolean;


# instance fields
.field private msgType:Lcom/google/common/io/protocol/ProtoBufType;

.field private final values:Ljava/util/Vector;

.field private final wireTypes:Ljava/lang/StringBuffer;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 41
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, v4}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, Lcom/google/common/io/protocol/ProtoBuf;->FALSE:Ljava/lang/Boolean;

    .line 42
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, v5}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, Lcom/google/common/io/protocol/ProtoBuf;->TRUE:Ljava/lang/Boolean;

    .line 59
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/Long;

    new-instance v1, Ljava/lang/Long;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    aput-object v1, v0, v4

    new-instance v1, Ljava/lang/Long;

    const-wide/16 v2, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    aput-object v1, v0, v5

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/Long;

    const-wide/16 v3, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Ljava/lang/Long;

    const-wide/16 v3, 0x3

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Ljava/lang/Long;

    const-wide/16 v3, 0x4

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Ljava/lang/Long;

    const-wide/16 v3, 0x5

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Ljava/lang/Long;

    const-wide/16 v3, 0x6

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Ljava/lang/Long;

    const-wide/16 v3, 0x7

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Ljava/lang/Long;

    const-wide/16 v3, 0x8

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Ljava/lang/Long;

    const-wide/16 v3, 0x9

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Ljava/lang/Long;

    const-wide/16 v3, 0xa

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Ljava/lang/Long;

    const-wide/16 v3, 0xb

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Ljava/lang/Long;

    const-wide/16 v3, 0xc

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Ljava/lang/Long;

    const-wide/16 v3, 0xd

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Ljava/lang/Long;

    const-wide/16 v3, 0xe

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Ljava/lang/Long;

    const-wide/16 v3, 0xf

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/common/io/protocol/ProtoBuf;->SMALL_NUMBERS:[Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(Lcom/google/common/io/protocol/ProtoBufType;)V
    .registers 3
    .parameter "type"

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/common/io/protocol/ProtoBuf;->values:Ljava/util/Vector;

    .line 72
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/google/common/io/protocol/ProtoBuf;->wireTypes:Ljava/lang/StringBuffer;

    .line 80
    iput-object p1, p0, Lcom/google/common/io/protocol/ProtoBuf;->msgType:Lcom/google/common/io/protocol/ProtoBufType;

    .line 81
    return-void
.end method

.method private assertTypeMatch(ILjava/lang/Object;)V
    .registers 7
    .parameter "tag"
    .parameter "object"

    .prologue
    .line 833
    invoke-virtual {p0, p1}, Lcom/google/common/io/protocol/ProtoBuf;->getType(I)I

    move-result v0

    .line 834
    .local v0, tagType:I
    const/16 v1, 0x10

    if-ne v0, v1, :cond_d

    iget-object v1, p0, Lcom/google/common/io/protocol/ProtoBuf;->msgType:Lcom/google/common/io/protocol/ProtoBufType;

    if-nez v1, :cond_d

    .line 894
    .end local p2
    :cond_c
    :goto_c
    :pswitch_c
    :sswitch_c
    return-void

    .line 838
    .restart local p2
    :cond_d
    instance-of v1, p2, Ljava/lang/Boolean;

    if-eqz v1, :cond_3c

    .line 839
    const/16 v1, 0x18

    if-eq v0, v1, :cond_c

    if-eqz v0, :cond_c

    .line 897
    .end local p2
    :cond_17
    :goto_17
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Type mismatch type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/io/protocol/ProtoBuf;->msgType:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " tag:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 843
    .restart local p2
    :cond_3c
    instance-of v1, p2, Ljava/lang/Long;

    if-eqz v1, :cond_44

    .line 844
    packed-switch v0, :pswitch_data_7c

    :pswitch_43
    goto :goto_17

    .line 864
    :cond_44
    instance-of v1, p2, [B

    if-eqz v1, :cond_4c

    .line 865
    sparse-switch v0, :sswitch_data_c6

    goto :goto_17

    .line 874
    :cond_4c
    instance-of v1, p2, Lcom/google/common/io/protocol/ProtoBuf;

    if-eqz v1, :cond_74

    .line 875
    sparse-switch v0, :sswitch_data_e0

    goto :goto_17

    .line 882
    :sswitch_54
    iget-object v1, p0, Lcom/google/common/io/protocol/ProtoBuf;->msgType:Lcom/google/common/io/protocol/ProtoBufType;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/google/common/io/protocol/ProtoBuf;->msgType:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v1, p1}, Lcom/google/common/io/protocol/ProtoBufType;->getData(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_c

    move-object v1, p2

    check-cast v1, Lcom/google/common/io/protocol/ProtoBuf;

    iget-object v1, v1, Lcom/google/common/io/protocol/ProtoBuf;->msgType:Lcom/google/common/io/protocol/ProtoBufType;

    if-eqz v1, :cond_c

    check-cast p2, Lcom/google/common/io/protocol/ProtoBuf;

    .end local p2
    iget-object v1, p2, Lcom/google/common/io/protocol/ProtoBuf;->msgType:Lcom/google/common/io/protocol/ProtoBufType;

    iget-object v2, p0, Lcom/google/common/io/protocol/ProtoBuf;->msgType:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v2, p1}, Lcom/google/common/io/protocol/ProtoBufType;->getData(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_17

    goto :goto_c

    .line 888
    .restart local p2
    :cond_74
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_17

    .line 889
    sparse-switch v0, :sswitch_data_fa

    goto :goto_17

    .line 844
    :pswitch_data_7c
    .packed-switch 0x0
        :pswitch_c
        :pswitch_c
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_c
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
    .end packed-switch

    .line 865
    :sswitch_data_c6
    .sparse-switch
        0x2 -> :sswitch_c
        0x19 -> :sswitch_c
        0x1b -> :sswitch_c
        0x1c -> :sswitch_c
        0x23 -> :sswitch_c
        0x24 -> :sswitch_c
    .end sparse-switch

    .line 875
    :sswitch_data_e0
    .sparse-switch
        0x2 -> :sswitch_54
        0x3 -> :sswitch_54
        0x19 -> :sswitch_54
        0x1a -> :sswitch_54
        0x1b -> :sswitch_54
        0x1c -> :sswitch_54
    .end sparse-switch

    .line 889
    :sswitch_data_fa
    .sparse-switch
        0x2 -> :sswitch_c
        0x19 -> :sswitch_c
        0x1c -> :sswitch_c
        0x24 -> :sswitch_c
    .end sparse-switch
.end method

.method private convert(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 10
    .parameter "obj"
    .parameter "tagType"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1047
    packed-switch p2, :pswitch_data_94

    .line 1108
    :pswitch_5
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Unsupp.Type"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1052
    :pswitch_d
    instance-of v3, p1, Ljava/lang/Boolean;

    if-eqz v3, :cond_12

    .line 1105
    .end local p1
    :cond_11
    :goto_11
    :pswitch_11
    return-object p1

    .line 1055
    .restart local p1
    :cond_12
    check-cast p1, Ljava/lang/Long;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    long-to-int v3, v3

    packed-switch v3, :pswitch_data_c2

    .line 1061
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Type mismatch"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1057
    :pswitch_24
    sget-object p1, Lcom/google/common/io/protocol/ProtoBuf;->FALSE:Ljava/lang/Boolean;

    goto :goto_11

    .line 1059
    :pswitch_27
    sget-object p1, Lcom/google/common/io/protocol/ProtoBuf;->TRUE:Ljava/lang/Boolean;

    goto :goto_11

    .line 1071
    .restart local p1
    :pswitch_2a
    instance-of v5, p1, Ljava/lang/Boolean;

    if-eqz v5, :cond_11

    .line 1072
    sget-object v5, Lcom/google/common/io/protocol/ProtoBuf;->SMALL_NUMBERS:[Ljava/lang/Long;

    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_3b

    :goto_38
    aget-object p1, v5, v3

    goto :goto_11

    :cond_3b
    move v3, v4

    goto :goto_38

    .line 1077
    .restart local p1
    :pswitch_3d
    instance-of v3, p1, Ljava/lang/String;

    if-eqz v3, :cond_48

    .line 1078
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-static {p1}, Lcom/google/common/io/protocol/ProtoBuf;->encodeUtf8(Ljava/lang/String;)[B

    move-result-object p1

    goto :goto_11

    .line 1079
    .restart local p1
    :cond_48
    instance-of v3, p1, Lcom/google/common/io/protocol/ProtoBuf;

    if-eqz v3, :cond_11

    .line 1080
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1082
    .local v0, buf:Ljava/io/ByteArrayOutputStream;
    :try_start_51
    check-cast p1, Lcom/google/common/io/protocol/ProtoBuf;

    .end local p1
    invoke-virtual {p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->outputTo(Ljava/io/OutputStream;)V

    .line 1083
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_59} :catch_5b

    move-result-object p1

    goto :goto_11

    .line 1084
    :catch_5b
    move-exception v2

    .line 1085
    .local v2, e:Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1091
    .end local v0           #buf:Ljava/io/ByteArrayOutputStream;
    .end local v2           #e:Ljava/io/IOException;
    .restart local p1
    :pswitch_66
    instance-of v5, p1, [B

    if-eqz v5, :cond_11

    .line 1092
    check-cast p1, [B

    .end local p1
    move-object v1, p1

    check-cast v1, [B

    .line 1093
    .local v1, data:[B
    array-length v5, v1

    invoke-static {v1, v4, v5, v3}, Lcom/google/common/io/protocol/ProtoBuf;->decodeUtf8([BIIZ)Ljava/lang/String;

    move-result-object p1

    goto :goto_11

    .line 1098
    .end local v1           #data:[B
    .restart local p1
    :pswitch_75
    instance-of v3, p1, [B

    if-eqz v3, :cond_11

    .line 1100
    :try_start_79
    new-instance v3, Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    check-cast p1, [B

    .end local p1
    check-cast p1, [B

    invoke-virtual {v3, p1}, Lcom/google/common/io/protocol/ProtoBuf;->parse([B)Lcom/google/common/io/protocol/ProtoBuf;
    :try_end_86
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_86} :catch_88

    move-result-object p1

    goto :goto_11

    .line 1101
    :catch_88
    move-exception v2

    .line 1102
    .restart local v2       #e:Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1047
    nop

    :pswitch_data_94
    .packed-switch 0x10
        :pswitch_11
        :pswitch_5
        :pswitch_5
        :pswitch_2a
        :pswitch_5
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_d
        :pswitch_3d
        :pswitch_75
        :pswitch_75
        :pswitch_66
        :pswitch_5
        :pswitch_5
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_3d
        :pswitch_66
    .end packed-switch

    .line 1055
    :pswitch_data_c2
    .packed-switch 0x0
        :pswitch_24
        :pswitch_27
    .end packed-switch
.end method

.method static decodeUtf8([BIIZ)Ljava/lang/String;
    .registers 16
    .parameter "data"
    .parameter "start"
    .parameter "end"
    .parameter "tolerant"

    .prologue
    .line 1283
    new-instance v9, Ljava/lang/StringBuffer;

    sub-int v10, p2, p1

    invoke-direct {v9, v10}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1284
    .local v9, sb:Ljava/lang/StringBuffer;
    move v7, p1

    .local v7, pos:I
    move v8, v7

    .line 1286
    .end local v7           #pos:I
    .local v8, pos:I
    :goto_9
    if-ge v8, p2, :cond_b3

    .line 1287
    add-int/lit8 v7, v8, 0x1

    .end local v8           #pos:I
    .restart local v7       #pos:I
    aget-byte v10, p0, v8

    and-int/lit16 v0, v10, 0xff

    .line 1288
    .local v0, b:I
    const/16 v10, 0x7f

    if-gt v0, v10, :cond_1b

    .line 1289
    int-to-char v10, v0

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_19
    move v8, v7

    .line 1336
    .end local v7           #pos:I
    .restart local v8       #pos:I
    goto :goto_9

    .line 1290
    .end local v8           #pos:I
    .restart local v7       #pos:I
    :cond_1b
    const/16 v10, 0xf5

    if-lt v0, v10, :cond_2e

    .line 1291
    if-nez p3, :cond_29

    .line 1292
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "Invalid UTF8"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1294
    :cond_29
    int-to-char v10, v0

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_19

    .line 1296
    :cond_2e
    const/16 v1, 0xe0

    .line 1297
    .local v1, border:I
    const/4 v3, 0x1

    .line 1298
    .local v3, count:I
    const/16 v6, 0x80

    .line 1299
    .local v6, minCode:I
    const/16 v5, 0x1f

    .line 1300
    .local v5, mask:I
    :goto_35
    if-lt v0, v1, :cond_47

    .line 1301
    shr-int/lit8 v10, v1, 0x1

    or-int/lit16 v1, v10, 0x80

    .line 1302
    const/4 v10, 0x1

    if-ne v3, v10, :cond_45

    const/4 v10, 0x4

    :goto_3f
    shl-int/2addr v6, v10

    .line 1303
    add-int/lit8 v3, v3, 0x1

    .line 1304
    shr-int/lit8 v5, v5, 0x1

    goto :goto_35

    .line 1302
    :cond_45
    const/4 v10, 0x5

    goto :goto_3f

    .line 1306
    :cond_47
    and-int v2, v0, v5

    .line 1308
    .local v2, code:I
    const/4 v4, 0x0

    .local v4, i:I
    move v8, v7

    .end local v7           #pos:I
    .restart local v8       #pos:I
    :goto_4b
    if-ge v4, v3, :cond_78

    .line 1309
    shl-int/lit8 v2, v2, 0x6

    .line 1310
    if-lt v8, p2, :cond_5b

    .line 1311
    if-nez p3, :cond_b8

    .line 1312
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "Invalid UTF8"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1316
    :cond_5b
    if-nez p3, :cond_6d

    aget-byte v10, p0, v8

    and-int/lit16 v10, v10, 0xc0

    const/16 v11, 0x80

    if-eq v10, v11, :cond_6d

    .line 1317
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "Invalid UTF8"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1319
    :cond_6d
    add-int/lit8 v7, v8, 0x1

    .end local v8           #pos:I
    .restart local v7       #pos:I
    aget-byte v10, p0, v8

    and-int/lit8 v10, v10, 0x3f

    or-int/2addr v2, v10

    .line 1308
    :goto_74
    add-int/lit8 v4, v4, 0x1

    move v8, v7

    .end local v7           #pos:I
    .restart local v8       #pos:I
    goto :goto_4b

    .line 1324
    :cond_78
    if-nez p3, :cond_7c

    if-lt v2, v6, :cond_86

    :cond_7c
    const v10, 0xd800

    if-lt v2, v10, :cond_8e

    const v10, 0xdfff

    if-gt v2, v10, :cond_8e

    .line 1325
    :cond_86
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "Invalid UTF8"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1328
    :cond_8e
    const v10, 0xffff

    if-gt v2, v10, :cond_99

    .line 1329
    int-to-char v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v7, v8

    .end local v8           #pos:I
    .restart local v7       #pos:I
    goto :goto_19

    .line 1331
    .end local v7           #pos:I
    .restart local v8       #pos:I
    :cond_99
    const/high16 v10, 0x1

    sub-int/2addr v2, v10

    .line 1332
    const v10, 0xd800

    shr-int/lit8 v11, v2, 0xa

    or-int/2addr v10, v11

    int-to-char v10, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1333
    const v10, 0xdc00

    and-int/lit16 v11, v2, 0x3ff

    or-int/2addr v10, v11

    int-to-char v10, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v7, v8

    .end local v8           #pos:I
    .restart local v7       #pos:I
    goto/16 :goto_19

    .line 1337
    .end local v0           #b:I
    .end local v1           #border:I
    .end local v2           #code:I
    .end local v3           #count:I
    .end local v4           #i:I
    .end local v5           #mask:I
    .end local v6           #minCode:I
    .end local v7           #pos:I
    .restart local v8       #pos:I
    :cond_b3
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10

    .restart local v0       #b:I
    .restart local v1       #border:I
    .restart local v2       #code:I
    .restart local v3       #count:I
    .restart local v4       #i:I
    .restart local v5       #mask:I
    .restart local v6       #minCode:I
    :cond_b8
    move v7, v8

    .end local v8           #pos:I
    .restart local v7       #pos:I
    goto :goto_74
.end method

.method static encodeUtf8(Ljava/lang/String;[BI)I
    .registers 12
    .parameter "s"
    .parameter "buf"
    .parameter "pos"

    .prologue
    const v8, 0xd800

    const v7, 0xfc00

    .line 1210
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 1211
    .local v4, len:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_b
    if-ge v3, v4, :cond_b7

    .line 1212
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1215
    .local v0, code:I
    if-lt v0, v8, :cond_3e

    const v5, 0xdfff

    if-gt v0, v5, :cond_3e

    add-int/lit8 v5, v3, 0x1

    if-ge v5, v4, :cond_3e

    .line 1216
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1221
    .local v2, codeLo:I
    and-int v5, v2, v7

    and-int v6, v0, v7

    xor-int/2addr v5, v6

    const/16 v6, 0x400

    if-ne v5, v6, :cond_3e

    .line 1223
    add-int/lit8 v3, v3, 0x1

    .line 1226
    and-int v5, v2, v7

    if-ne v5, v8, :cond_4c

    .line 1227
    move v1, v2

    .line 1228
    .local v1, codeHi:I
    move v2, v0

    .line 1232
    :goto_33
    and-int/lit16 v5, v1, 0x3ff

    shl-int/lit8 v5, v5, 0xa

    and-int/lit16 v6, v2, 0x3ff

    or-int/2addr v5, v6

    const/high16 v6, 0x1

    add-int v0, v5, v6

    .line 1235
    .end local v1           #codeHi:I
    .end local v2           #codeLo:I
    :cond_3e
    const/16 v5, 0x7f

    if-gt v0, v5, :cond_4e

    .line 1236
    if-eqz p1, :cond_47

    .line 1237
    int-to-byte v5, v0

    aput-byte v5, p1, p2

    .line 1239
    :cond_47
    add-int/lit8 p2, p2, 0x1

    .line 1211
    :goto_49
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 1230
    .restart local v2       #codeLo:I
    :cond_4c
    move v1, v0

    .restart local v1       #codeHi:I
    goto :goto_33

    .line 1240
    .end local v1           #codeHi:I
    .end local v2           #codeLo:I
    :cond_4e
    const/16 v5, 0x7ff

    if-gt v0, v5, :cond_67

    .line 1242
    if-eqz p1, :cond_64

    .line 1243
    shr-int/lit8 v5, v0, 0x6

    or-int/lit16 v5, v5, 0xc0

    int-to-byte v5, v5

    aput-byte v5, p1, p2

    .line 1244
    add-int/lit8 v5, p2, 0x1

    and-int/lit8 v6, v0, 0x3f

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    aput-byte v6, p1, v5

    .line 1246
    :cond_64
    add-int/lit8 p2, p2, 0x2

    goto :goto_49

    .line 1247
    :cond_67
    const v5, 0xffff

    if-gt v0, v5, :cond_8c

    .line 1249
    if-eqz p1, :cond_89

    .line 1250
    shr-int/lit8 v5, v0, 0xc

    or-int/lit16 v5, v5, 0xe0

    int-to-byte v5, v5

    aput-byte v5, p1, p2

    .line 1251
    add-int/lit8 v5, p2, 0x1

    shr-int/lit8 v6, v0, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    aput-byte v6, p1, v5

    .line 1252
    add-int/lit8 v5, p2, 0x2

    and-int/lit8 v6, v0, 0x3f

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    aput-byte v6, p1, v5

    .line 1254
    :cond_89
    add-int/lit8 p2, p2, 0x3

    goto :goto_49

    .line 1256
    :cond_8c
    if-eqz p1, :cond_b4

    .line 1257
    shr-int/lit8 v5, v0, 0x12

    or-int/lit16 v5, v5, 0xf0

    int-to-byte v5, v5

    aput-byte v5, p1, p2

    .line 1258
    add-int/lit8 v5, p2, 0x1

    shr-int/lit8 v6, v0, 0xc

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    aput-byte v6, p1, v5

    .line 1259
    add-int/lit8 v5, p2, 0x2

    shr-int/lit8 v6, v0, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    aput-byte v6, p1, v5

    .line 1260
    add-int/lit8 v5, p2, 0x3

    and-int/lit8 v6, v0, 0x3f

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    aput-byte v6, p1, v5

    .line 1262
    :cond_b4
    add-int/lit8 p2, p2, 0x4

    goto :goto_49

    .line 1266
    .end local v0           #code:I
    :cond_b7
    return p2
.end method

.method static encodeUtf8(Ljava/lang/String;)[B
    .registers 5
    .parameter "s"

    .prologue
    const/4 v3, 0x0

    .line 1194
    const/4 v2, 0x0

    invoke-static {p0, v2, v3}, Lcom/google/common/io/protocol/ProtoBuf;->encodeUtf8(Ljava/lang/String;[BI)I

    move-result v0

    .line 1195
    .local v0, len:I
    new-array v1, v0, [B

    .line 1196
    .local v1, result:[B
    invoke-static {p0, v1, v3}, Lcom/google/common/io/protocol/ProtoBuf;->encodeUtf8(Ljava/lang/String;[BI)I

    .line 1197
    return-object v1
.end method

.method private getDataSize(II)I
    .registers 10
    .parameter "tag"
    .parameter "i"

    .prologue
    .line 537
    shl-int/lit8 v5, p1, 0x3

    int-to-long v5, v5

    invoke-static {v5, v6}, Lcom/google/common/io/protocol/ProtoBuf;->getVarIntSize(J)I

    move-result v2

    .line 539
    .local v2, tagSize:I
    invoke-direct {p0, p1}, Lcom/google/common/io/protocol/ProtoBuf;->getWireType(I)I

    move-result v5

    packed-switch v5, :pswitch_data_5e

    .line 556
    :pswitch_e
    const/16 v5, 0x10

    invoke-direct {p0, p1, p2, v5}, Lcom/google/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object v1

    .line 560
    .local v1, o:Ljava/lang/Object;
    instance-of v5, v1, [B

    if-eqz v5, :cond_4a

    .line 561
    check-cast v1, [B

    .end local v1           #o:Ljava/lang/Object;
    check-cast v1, [B

    array-length v0, v1

    .line 568
    .local v0, contentSize:I
    :goto_1d
    int-to-long v5, v0

    invoke-static {v5, v6}, Lcom/google/common/io/protocol/ProtoBuf;->getVarIntSize(J)I

    move-result v5

    add-int/2addr v5, v2

    add-int/2addr v5, v0

    .end local v0           #contentSize:I
    :goto_24
    return v5

    .line 541
    :pswitch_25
    add-int/lit8 v5, v2, 0x4

    goto :goto_24

    .line 543
    :pswitch_28
    add-int/lit8 v5, v2, 0x8

    goto :goto_24

    .line 545
    :pswitch_2b
    invoke-virtual {p0, p1, p2}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(II)J

    move-result-wide v3

    .line 546
    .local v3, value:J
    invoke-direct {p0, p1}, Lcom/google/common/io/protocol/ProtoBuf;->isZigZagEncodedType(I)Z

    move-result v5

    if-eqz v5, :cond_39

    .line 547
    invoke-static {v3, v4}, Lcom/google/common/io/protocol/ProtoBuf;->zigZagEncode(J)J

    move-result-wide v3

    .line 549
    :cond_39
    invoke-static {v3, v4}, Lcom/google/common/io/protocol/ProtoBuf;->getVarIntSize(J)I

    move-result v5

    add-int/2addr v5, v2

    goto :goto_24

    .line 552
    .end local v3           #value:J
    :pswitch_3f
    invoke-virtual {p0, p1, p2}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/common/io/protocol/ProtoBuf;->getDataSize()I

    move-result v5

    add-int/2addr v5, v2

    add-int/2addr v5, v2

    goto :goto_24

    .line 562
    .restart local v1       #o:Ljava/lang/Object;
    :cond_4a
    instance-of v5, v1, Ljava/lang/String;

    if-eqz v5, :cond_57

    .line 563
    check-cast v1, Ljava/lang/String;

    .end local v1           #o:Ljava/lang/Object;
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v1, v5, v6}, Lcom/google/common/io/protocol/ProtoBuf;->encodeUtf8(Ljava/lang/String;[BI)I

    move-result v0

    .restart local v0       #contentSize:I
    goto :goto_1d

    .line 565
    .end local v0           #contentSize:I
    .restart local v1       #o:Ljava/lang/Object;
    :cond_57
    check-cast v1, Lcom/google/common/io/protocol/ProtoBuf;

    .end local v1           #o:Ljava/lang/Object;
    invoke-virtual {v1}, Lcom/google/common/io/protocol/ProtoBuf;->getDataSize()I

    move-result v0

    .restart local v0       #contentSize:I
    goto :goto_1d

    .line 539
    :pswitch_data_5e
    .packed-switch 0x0
        :pswitch_2b
        :pswitch_28
        :pswitch_e
        :pswitch_3f
        :pswitch_e
        :pswitch_25
    .end packed-switch
.end method

.method private getDefault(I)Ljava/lang/Object;
    .registers 3
    .parameter "tag"

    .prologue
    .line 906
    invoke-virtual {p0, p1}, Lcom/google/common/io/protocol/ProtoBuf;->getType(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_10

    .line 912
    iget-object v0, p0, Lcom/google/common/io/protocol/ProtoBuf;->msgType:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, p1}, Lcom/google/common/io/protocol/ProtoBufType;->getData(I)Ljava/lang/Object;

    move-result-object v0

    :goto_d
    return-object v0

    .line 910
    :sswitch_e
    const/4 v0, 0x0

    goto :goto_d

    .line 906
    :sswitch_data_10
    .sparse-switch
        0x10 -> :sswitch_e
        0x1a -> :sswitch_e
        0x1b -> :sswitch_e
    .end sparse-switch
.end method

.method private getObject(II)Ljava/lang/Object;
    .registers 5
    .parameter "tag"
    .parameter "desiredType"

    .prologue
    .line 924
    invoke-virtual {p0, p1}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    .line 926
    .local v0, count:I
    if-nez v0, :cond_b

    .line 927
    invoke-direct {p0, p1}, Lcom/google/common/io/protocol/ProtoBuf;->getDefault(I)Ljava/lang/Object;

    move-result-object v1

    .line 934
    :goto_a
    return-object v1

    .line 930
    :cond_b
    const/4 v1, 0x1

    if-le v0, v1, :cond_14

    .line 931
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 934
    :cond_14
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, p2}, Lcom/google/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object v1

    goto :goto_a
.end method

.method private getObject(III)Ljava/lang/Object;
    .registers 8
    .parameter "tag"
    .parameter "index"
    .parameter "desiredType"

    .prologue
    .line 944
    invoke-virtual {p0, p1}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v3

    if-lt p2, v3, :cond_c

    .line 945
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v3

    .line 948
    :cond_c
    iget-object v3, p0, Lcom/google/common/io/protocol/ProtoBuf;->values:Ljava/util/Vector;

    invoke-virtual {v3, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    .line 950
    .local v0, o:Ljava/lang/Object;
    const/4 v2, 0x0

    .line 951
    .local v2, v:Ljava/util/Vector;
    instance-of v3, v0, Ljava/util/Vector;

    if-eqz v3, :cond_1e

    move-object v2, v0

    .line 952
    check-cast v2, Ljava/util/Vector;

    .line 953
    invoke-virtual {v2, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    .line 956
    :cond_1e
    invoke-direct {p0, v0, p3}, Lcom/google/common/io/protocol/ProtoBuf;->convert(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    .line 958
    .local v1, o2:Ljava/lang/Object;
    if-eq v1, v0, :cond_2b

    if-eqz v0, :cond_2b

    .line 959
    if-nez v2, :cond_2c

    .line 960
    invoke-direct {p0, p1, v1}, Lcom/google/common/io/protocol/ProtoBuf;->setObject(ILjava/lang/Object;)V

    .line 966
    :cond_2b
    :goto_2b
    return-object v1

    .line 962
    :cond_2c
    invoke-virtual {v2, v1, p2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    goto :goto_2b
.end method

.method private static getVarIntSize(J)I
    .registers 5
    .parameter "i"

    .prologue
    .line 576
    const-wide/16 v1, 0x0

    cmp-long v1, p0, v1

    if-gez v1, :cond_9

    .line 577
    const/16 v0, 0xa

    .line 584
    :cond_8
    return v0

    .line 579
    :cond_9
    const/4 v0, 0x1

    .line 580
    .local v0, size:I
    :goto_a
    const-wide/16 v1, 0x80

    cmp-long v1, p0, v1

    if-ltz v1, :cond_8

    .line 581
    add-int/lit8 v0, v0, 0x1

    .line 582
    const/4 v1, 0x7

    shr-long/2addr p0, v1

    goto :goto_a
.end method

.method private final getWireType(I)I
    .registers 7
    .parameter "tag"

    .prologue
    const/16 v4, 0x2f

    .line 976
    invoke-virtual {p0, p1}, Lcom/google/common/io/protocol/ProtoBuf;->getType(I)I

    move-result v0

    .line 978
    .local v0, tagType:I
    packed-switch v0, :pswitch_data_3e

    .line 1013
    :pswitch_9
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupp.Type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/io/protocol/ProtoBuf;->msgType:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 995
    :pswitch_34
    const/4 v0, 0x0

    .line 1011
    .end local v0           #tagType:I
    :goto_35
    :pswitch_35
    return v0

    .line 1001
    .restart local v0       #tagType:I
    :pswitch_36
    const/4 v0, 0x2

    goto :goto_35

    .line 1005
    :pswitch_38
    const/4 v0, 0x1

    goto :goto_35

    .line 1009
    :pswitch_3a
    const/4 v0, 0x5

    goto :goto_35

    .line 1011
    :pswitch_3c
    const/4 v0, 0x3

    goto :goto_35

    .line 978
    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_9
        :pswitch_35
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_35
        :pswitch_38
        :pswitch_3a
        :pswitch_34
        :pswitch_34
        :pswitch_34
        :pswitch_38
        :pswitch_3a
        :pswitch_34
        :pswitch_36
        :pswitch_3c
        :pswitch_36
        :pswitch_36
        :pswitch_34
        :pswitch_34
        :pswitch_3a
        :pswitch_38
        :pswitch_34
        :pswitch_34
        :pswitch_36
        :pswitch_36
    .end packed-switch
.end method

.method private insertObject(IILjava/lang/Object;)V
    .registers 8
    .parameter "tag"
    .parameter "index"
    .parameter "o"

    .prologue
    .line 1022
    invoke-direct {p0, p1, p3}, Lcom/google/common/io/protocol/ProtoBuf;->assertTypeMatch(ILjava/lang/Object;)V

    .line 1024
    invoke-virtual {p0, p1}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    .line 1026
    .local v0, count:I
    if-nez v0, :cond_d

    .line 1027
    invoke-direct {p0, p1, p3}, Lcom/google/common/io/protocol/ProtoBuf;->setObject(ILjava/lang/Object;)V

    .line 1040
    :goto_c
    return-void

    .line 1029
    :cond_d
    iget-object v3, p0, Lcom/google/common/io/protocol/ProtoBuf;->values:Ljava/util/Vector;

    invoke-virtual {v3, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    .line 1031
    .local v1, curr:Ljava/lang/Object;
    instance-of v3, v1, Ljava/util/Vector;

    if-eqz v3, :cond_1e

    move-object v2, v1

    .line 1032
    check-cast v2, Ljava/util/Vector;

    .line 1038
    .local v2, v:Ljava/util/Vector;
    :goto_1a
    invoke-virtual {v2, p3, p2}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    goto :goto_c

    .line 1034
    .end local v2           #v:Ljava/util/Vector;
    :cond_1e
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 1035
    .restart local v2       #v:Ljava/util/Vector;
    invoke-virtual {v2, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1036
    iget-object v3, p0, Lcom/google/common/io/protocol/ProtoBuf;->values:Ljava/util/Vector;

    invoke-virtual {v3, v2, p1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    goto :goto_1a
.end method

.method private isZigZagEncodedType(I)Z
    .registers 4
    .parameter "tag"

    .prologue
    .line 665
    invoke-virtual {p0, p1}, Lcom/google/common/io/protocol/ProtoBuf;->getType(I)I

    move-result v0

    .line 666
    .local v0, declaredType:I
    const/16 v1, 0x21

    if-eq v0, v1, :cond_c

    const/16 v1, 0x22

    if-ne v0, v1, :cond_e

    :cond_c
    const/4 v1, 0x1

    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method static readVarInt(Ljava/io/InputStream;Z)J
    .registers 9
    .parameter "is"
    .parameter "permitEOF"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1126
    const-wide/16 v2, 0x0

    .line 1127
    .local v2, result:J
    const/4 v4, 0x0

    .line 1131
    .local v4, shift:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    const/16 v5, 0xa

    if-ge v0, v5, :cond_27

    .line 1132
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 1134
    .local v1, in:I
    const/4 v5, -0x1

    if-ne v1, v5, :cond_1e

    .line 1135
    if-nez v0, :cond_16

    if-eqz p1, :cond_16

    .line 1136
    const-wide/16 v5, -0x1

    .line 1149
    .end local v1           #in:I
    :goto_15
    return-wide v5

    .line 1138
    .restart local v1       #in:I
    :cond_16
    new-instance v5, Ljava/io/IOException;

    const-string v6, "EOF"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1141
    :cond_1e
    and-int/lit8 v5, v1, 0x7f

    int-to-long v5, v5

    shl-long/2addr v5, v4

    or-long/2addr v2, v5

    .line 1143
    and-int/lit16 v5, v1, 0x80

    if-nez v5, :cond_29

    .end local v1           #in:I
    :cond_27
    move-wide v5, v2

    .line 1149
    goto :goto_15

    .line 1147
    .restart local v1       #in:I
    :cond_29
    add-int/lit8 v4, v4, 0x7

    .line 1131
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method private setObject(ILjava/lang/Object;)V
    .registers 5
    .parameter "tag"
    .parameter "o"

    .prologue
    .line 1157
    iget-object v0, p0, Lcom/google/common/io/protocol/ProtoBuf;->values:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-gt v0, p1, :cond_f

    .line 1158
    iget-object v0, p0, Lcom/google/common/io/protocol/ProtoBuf;->values:Ljava/util/Vector;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->setSize(I)V

    .line 1160
    :cond_f
    if-eqz p2, :cond_14

    .line 1161
    invoke-direct {p0, p1, p2}, Lcom/google/common/io/protocol/ProtoBuf;->assertTypeMatch(ILjava/lang/Object;)V

    .line 1163
    :cond_14
    iget-object v0, p0, Lcom/google/common/io/protocol/ProtoBuf;->values:Ljava/util/Vector;

    invoke-virtual {v0, p2, p1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 1164
    return-void
.end method

.method static writeVarInt(Ljava/io/OutputStream;J)V
    .registers 7
    .parameter "os"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1170
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/16 v2, 0xa

    if-ge v0, v2, :cond_14

    .line 1172
    const-wide/16 v2, 0x7f

    and-long/2addr v2, p1

    long-to-int v1, v2

    .line 1174
    .local v1, toWrite:I
    const/4 v2, 0x7

    ushr-long/2addr p1, v2

    .line 1176
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-nez v2, :cond_15

    .line 1177
    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 1183
    .end local v1           #toWrite:I
    :cond_14
    return-void

    .line 1180
    .restart local v1       #toWrite:I
    :cond_15
    or-int/lit16 v2, v1, 0x80

    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 1170
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static zigZagDecode(J)J
    .registers 6
    .parameter "v"

    .prologue
    .line 682
    const/4 v0, 0x1

    ushr-long v0, p0, v0

    const-wide/16 v2, 0x1

    and-long/2addr v2, p0

    neg-long v2, v2

    xor-long p0, v0, v2

    .line 683
    return-wide p0
.end method

.method private static zigZagEncode(J)J
    .registers 6
    .parameter "v"

    .prologue
    .line 674
    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    ushr-long v2, p0, v2

    neg-long v2, v2

    xor-long p0, v0, v2

    .line 675
    return-wide p0
.end method


# virtual methods
.method public addNewProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;
    .registers 3
    .parameter "tag"

    .prologue
    .line 154
    invoke-virtual {p0, p1}, Lcom/google/common/io/protocol/ProtoBuf;->newProtoBufForTag(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 155
    .local v0, child:Lcom/google/common/io/protocol/ProtoBuf;
    invoke-virtual {p0, p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 156
    return-object v0
.end method

.method public addProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V
    .registers 4
    .parameter "tag"
    .parameter "value"

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/common/io/protocol/ProtoBuf;->insertProtoBuf(IILcom/google/common/io/protocol/ProtoBuf;)V

    .line 145
    return-void
.end method

.method public addString(ILjava/lang/String;)V
    .registers 4
    .parameter "tag"
    .parameter "value"

    .prologue
    .line 173
    invoke-virtual {p0, p1}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/common/io/protocol/ProtoBuf;->insertString(IILjava/lang/String;)V

    .line 174
    return-void
.end method

.method public clear()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 87
    iget-object v0, p0, Lcom/google/common/io/protocol/ProtoBuf;->values:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->setSize(I)V

    .line 88
    iget-object v0, p0, Lcom/google/common/io/protocol/ProtoBuf;->wireTypes:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 89
    return-void
.end method

.method public getBool(I)Z
    .registers 3
    .parameter "tag"

    .prologue
    .line 180
    const/16 v0, 0x18

    invoke-direct {p0, p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getObject(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getBytes(I)[B
    .registers 3
    .parameter "tag"

    .prologue
    .line 196
    const/16 v0, 0x19

    invoke-direct {p0, p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getObject(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method

.method public getCount(I)I
    .registers 5
    .parameter "tag"

    .prologue
    const/4 v1, 0x0

    .line 482
    iget-object v2, p0, Lcom/google/common/io/protocol/ProtoBuf;->values:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt p1, v2, :cond_a

    .line 489
    :cond_9
    :goto_9
    return v1

    .line 485
    :cond_a
    iget-object v2, p0, Lcom/google/common/io/protocol/ProtoBuf;->values:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    .line 486
    .local v0, o:Ljava/lang/Object;
    if-eqz v0, :cond_9

    .line 489
    instance-of v1, v0, Ljava/util/Vector;

    if-eqz v1, :cond_1d

    check-cast v0, Ljava/util/Vector;

    .end local v0           #o:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    goto :goto_9

    .restart local v0       #o:Ljava/lang/Object;
    :cond_1d
    const/4 v1, 0x1

    goto :goto_9
.end method

.method public getDataSize()I
    .registers 5

    .prologue
    .line 523
    const/4 v1, 0x0

    .line 524
    .local v1, size:I
    const/4 v2, 0x0

    .local v2, tag:I
    :goto_2
    invoke-virtual {p0}, Lcom/google/common/io/protocol/ProtoBuf;->maxTag()I

    move-result v3

    if-gt v2, v3, :cond_1a

    .line 525
    const/4 v0, 0x0

    .local v0, i:I
    :goto_9
    invoke-virtual {p0, v2}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v3

    if-ge v0, v3, :cond_17

    .line 526
    invoke-direct {p0, v2, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getDataSize(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 525
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 524
    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 529
    .end local v0           #i:I
    :cond_1a
    return v1
.end method

.method public getInt(I)I
    .registers 4
    .parameter "tag"

    .prologue
    .line 210
    const/16 v0, 0x15

    invoke-direct {p0, p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getObject(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getLong(I)J
    .registers 4
    .parameter "tag"

    .prologue
    .line 225
    const/16 v0, 0x13

    invoke-direct {p0, p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getObject(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLong(II)J
    .registers 5
    .parameter "tag"
    .parameter "index"

    .prologue
    .line 232
    const/16 v0, 0x13

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;
    .registers 3
    .parameter "tag"

    .prologue
    .line 267
    const/16 v0, 0x1a

    invoke-direct {p0, p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getObject(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/io/protocol/ProtoBuf;

    return-object v0
.end method

.method public getProtoBuf(II)Lcom/google/common/io/protocol/ProtoBuf;
    .registers 4
    .parameter "tag"
    .parameter "index"

    .prologue
    .line 275
    const/16 v0, 0x1a

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/io/protocol/ProtoBuf;

    return-object v0
.end method

.method public getString(I)Ljava/lang/String;
    .registers 3
    .parameter "tag"

    .prologue
    .line 283
    const/16 v0, 0x1c

    invoke-direct {p0, p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getObject(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getString(II)Ljava/lang/String;
    .registers 4
    .parameter "tag"
    .parameter "index"

    .prologue
    .line 291
    const/16 v0, 0x1c

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getType(I)I
    .registers 7
    .parameter "tag"

    .prologue
    const/4 v2, 0x0

    const/16 v4, 0x10

    .line 500
    const/16 v1, 0x10

    .line 501
    .local v1, tagType:I
    iget-object v3, p0, Lcom/google/common/io/protocol/ProtoBuf;->msgType:Lcom/google/common/io/protocol/ProtoBufType;

    if-eqz v3, :cond_f

    .line 502
    iget-object v3, p0, Lcom/google/common/io/protocol/ProtoBuf;->msgType:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v3, p1}, Lcom/google/common/io/protocol/ProtoBufType;->getType(I)I

    move-result v1

    .line 505
    :cond_f
    if-ne v1, v4, :cond_1f

    iget-object v3, p0, Lcom/google/common/io/protocol/ProtoBuf;->wireTypes:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-ge p1, v3, :cond_1f

    .line 506
    iget-object v3, p0, Lcom/google/common/io/protocol/ProtoBuf;->wireTypes:Ljava/lang/StringBuffer;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    .line 509
    :cond_1f
    if-ne v1, v4, :cond_34

    invoke-virtual {p0, p1}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v3

    if-lez v3, :cond_34

    .line 510
    invoke-direct {p0, p1, v2, v4}, Lcom/google/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object v0

    .line 512
    .local v0, o:Ljava/lang/Object;
    instance-of v3, v0, Ljava/lang/Long;

    if-nez v3, :cond_33

    instance-of v3, v0, Ljava/lang/Boolean;

    if-eqz v3, :cond_35

    :cond_33
    move v1, v2

    .line 516
    .end local v0           #o:Ljava/lang/Object;
    :cond_34
    :goto_34
    return v1

    .line 512
    .restart local v0       #o:Ljava/lang/Object;
    :cond_35
    const/4 v1, 0x2

    goto :goto_34
.end method

.method public getType()Lcom/google/common/io/protocol/ProtoBufType;
    .registers 2

    .prologue
    .line 298
    iget-object v0, p0, Lcom/google/common/io/protocol/ProtoBuf;->msgType:Lcom/google/common/io/protocol/ProtoBufType;

    return-object v0
.end method

.method public has(I)Z
    .registers 3
    .parameter "tag"

    .prologue
    .line 321
    invoke-virtual {p0, p1}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    if-gtz v0, :cond_c

    invoke-direct {p0, p1}, Lcom/google/common/io/protocol/ProtoBuf;->getDefault(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public insertProtoBuf(IILcom/google/common/io/protocol/ProtoBuf;)V
    .registers 4
    .parameter "tag"
    .parameter "index"
    .parameter "pb"

    .prologue
    .line 820
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/io/protocol/ProtoBuf;->insertObject(IILjava/lang/Object;)V

    .line 821
    return-void
.end method

.method public insertString(IILjava/lang/String;)V
    .registers 4
    .parameter "tag"
    .parameter "index"
    .parameter "value"

    .prologue
    .line 827
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/io/protocol/ProtoBuf;->insertObject(IILjava/lang/Object;)V

    .line 828
    return-void
.end method

.method public maxTag()I
    .registers 2

    .prologue
    .line 701
    iget-object v0, p0, Lcom/google/common/io/protocol/ProtoBuf;->values:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public newProtoBufForTag(I)Lcom/google/common/io/protocol/ProtoBuf;
    .registers 4
    .parameter "tag"

    .prologue
    .line 166
    new-instance v1, Lcom/google/common/io/protocol/ProtoBuf;

    iget-object v0, p0, Lcom/google/common/io/protocol/ProtoBuf;->msgType:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, p1}, Lcom/google/common/io/protocol/ProtoBufType;->getData(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v0}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    return-object v1
.end method

.method public outputTo(Ljava/io/OutputStream;)V
    .registers 15
    .parameter "os"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 594
    const/4 v7, 0x0

    .local v7, tag:I
    :goto_1
    invoke-virtual {p0}, Lcom/google/common/io/protocol/ProtoBuf;->maxTag()I

    move-result v11

    if-gt v7, v11, :cond_ab

    .line 595
    invoke-virtual {p0, v7}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v6

    .line 596
    .local v6, size:I
    invoke-direct {p0, v7}, Lcom/google/common/io/protocol/ProtoBuf;->getWireType(I)I

    move-result v10

    .line 599
    .local v10, wireType:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_10
    if-ge v3, v6, :cond_a7

    .line 600
    shl-int/lit8 v11, v7, 0x3

    or-int/2addr v11, v10

    int-to-long v11, v11

    invoke-static {p1, v11, v12}, Lcom/google/common/io/protocol/ProtoBuf;->writeVarInt(Ljava/io/OutputStream;J)V

    .line 602
    packed-switch v10, :pswitch_data_ac

    .line 646
    :pswitch_1c
    new-instance v11, Ljava/lang/IllegalArgumentException;

    invoke-direct {v11}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v11

    .line 605
    :pswitch_22
    const/16 v11, 0x13

    invoke-direct {p0, v7, v3, v11}, Lcom/google/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 607
    .local v8, v:J
    const/4 v11, 0x5

    if-ne v10, v11, :cond_42

    const/4 v1, 0x4

    .line 608
    .local v1, cnt:I
    :goto_32
    const/4 v0, 0x0

    .local v0, b:I
    :goto_33
    if-ge v0, v1, :cond_5e

    .line 609
    const-wide/16 v11, 0xff

    and-long/2addr v11, v8

    long-to-int v11, v11

    invoke-virtual {p1, v11}, Ljava/io/OutputStream;->write(I)V

    .line 610
    const/16 v11, 0x8

    shr-long/2addr v8, v11

    .line 608
    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    .line 607
    .end local v0           #b:I
    .end local v1           #cnt:I
    :cond_42
    const/16 v1, 0x8

    goto :goto_32

    .line 615
    .end local v8           #v:J
    :pswitch_45
    const/16 v11, 0x13

    invoke-direct {p0, v7, v3, v11}, Lcom/google/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 616
    .restart local v8       #v:J
    invoke-direct {p0, v7}, Lcom/google/common/io/protocol/ProtoBuf;->isZigZagEncodedType(I)Z

    move-result v11

    if-eqz v11, :cond_5b

    .line 617
    invoke-static {v8, v9}, Lcom/google/common/io/protocol/ProtoBuf;->zigZagEncode(J)J

    move-result-wide v8

    .line 619
    :cond_5b
    invoke-static {p1, v8, v9}, Lcom/google/common/io/protocol/ProtoBuf;->writeVarInt(Ljava/io/OutputStream;J)V

    .line 599
    .end local v8           #v:J
    :cond_5e
    :goto_5e
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 623
    :pswitch_61
    invoke-virtual {p0, v7}, Lcom/google/common/io/protocol/ProtoBuf;->getType(I)I

    move-result v11

    const/16 v12, 0x1b

    if-ne v11, v12, :cond_81

    const/16 v11, 0x10

    :goto_6b
    invoke-direct {p0, v7, v3, v11}, Lcom/google/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object v5

    .line 628
    .local v5, o:Ljava/lang/Object;
    instance-of v11, v5, [B

    if-eqz v11, :cond_84

    .line 629
    check-cast v5, [B

    .end local v5           #o:Ljava/lang/Object;
    move-object v2, v5

    check-cast v2, [B

    .line 630
    .local v2, data:[B
    array-length v11, v2

    int-to-long v11, v11

    invoke-static {p1, v11, v12}, Lcom/google/common/io/protocol/ProtoBuf;->writeVarInt(Ljava/io/OutputStream;J)V

    .line 631
    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    goto :goto_5e

    .line 623
    .end local v2           #data:[B
    :cond_81
    const/16 v11, 0x19

    goto :goto_6b

    .restart local v5       #o:Ljava/lang/Object;
    :cond_84
    move-object v4, v5

    .line 633
    check-cast v4, Lcom/google/common/io/protocol/ProtoBuf;

    .line 634
    .local v4, msg:Lcom/google/common/io/protocol/ProtoBuf;
    invoke-virtual {v4}, Lcom/google/common/io/protocol/ProtoBuf;->getDataSize()I

    move-result v11

    int-to-long v11, v11

    invoke-static {p1, v11, v12}, Lcom/google/common/io/protocol/ProtoBuf;->writeVarInt(Ljava/io/OutputStream;J)V

    .line 635
    invoke-virtual {v4, p1}, Lcom/google/common/io/protocol/ProtoBuf;->outputTo(Ljava/io/OutputStream;)V

    goto :goto_5e

    .line 640
    .end local v4           #msg:Lcom/google/common/io/protocol/ProtoBuf;
    .end local v5           #o:Ljava/lang/Object;
    :pswitch_93
    const/16 v11, 0x1a

    invoke-direct {p0, v7, v3, v11}, Lcom/google/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v11, p1}, Lcom/google/common/io/protocol/ProtoBuf;->outputTo(Ljava/io/OutputStream;)V

    .line 642
    shl-int/lit8 v11, v7, 0x3

    or-int/lit8 v11, v11, 0x4

    int-to-long v11, v11

    invoke-static {p1, v11, v12}, Lcom/google/common/io/protocol/ProtoBuf;->writeVarInt(Ljava/io/OutputStream;J)V

    goto :goto_5e

    .line 594
    :cond_a7
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 650
    .end local v3           #i:I
    .end local v6           #size:I
    .end local v10           #wireType:I
    :cond_ab
    return-void

    .line 602
    :pswitch_data_ac
    .packed-switch 0x0
        :pswitch_45
        :pswitch_22
        :pswitch_61
        :pswitch_93
        :pswitch_1c
        :pswitch_22
    .end packed-switch
.end method

.method public parse(Ljava/io/InputStream;I)I
    .registers 26
    .parameter "is"
    .parameter "available"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 366
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/io/protocol/ProtoBuf;->clear()V

    .line 367
    :goto_3
    if-lez p2, :cond_15

    .line 368
    const/16 v20, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->readVarInt(Ljava/io/InputStream;Z)J

    move-result-wide v13

    .line 370
    .local v13, tagAndType:J
    const-wide/16 v20, -0x1

    cmp-long v20, v13, v20

    if-nez v20, :cond_1d

    .line 453
    .end local v13           #tagAndType:J
    :cond_15
    if-gez p2, :cond_1b7

    .line 454
    new-instance v20, Ljava/io/IOException;

    invoke-direct/range {v20 .. v20}, Ljava/io/IOException;-><init>()V

    throw v20

    .line 373
    .restart local v13       #tagAndType:J
    :cond_1d
    invoke-static {v13, v14}, Lcom/google/common/io/protocol/ProtoBuf;->getVarIntSize(J)I

    move-result v20

    sub-int p2, p2, v20

    .line 374
    long-to-int v0, v13

    move/from16 v20, v0

    and-int/lit8 v19, v20, 0x7

    .line 375
    .local v19, wireType:I
    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_15

    .line 378
    const/16 v20, 0x3

    ushr-long v20, v13, v20

    move-wide/from16 v0, v20

    long-to-int v12, v0

    .line 379
    .local v12, tag:I
    :goto_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/io/protocol/ProtoBuf;->wireTypes:Ljava/lang/StringBuffer;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->length()I

    move-result v20

    move/from16 v0, v20

    if-gt v0, v12, :cond_51

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/io/protocol/ProtoBuf;->wireTypes:Ljava/lang/StringBuffer;

    move-object/from16 v20, v0

    const/16 v21, 0x10

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_37

    .line 382
    :cond_51
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/io/protocol/ProtoBuf;->wireTypes:Ljava/lang/StringBuffer;

    move-object/from16 v20, v0

    move/from16 v0, v19

    int-to-char v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v12, v1}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 386
    packed-switch v19, :pswitch_data_1b8

    .line 448
    :pswitch_66
    new-instance v20, Ljava/lang/RuntimeException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Unsupp.Type"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 388
    :pswitch_83
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->readVarInt(Ljava/io/InputStream;Z)J

    move-result-wide v16

    .line 389
    .local v16, v:J
    invoke-static/range {v16 .. v17}, Lcom/google/common/io/protocol/ProtoBuf;->getVarIntSize(J)I

    move-result v20

    sub-int p2, p2, v20

    .line 390
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/google/common/io/protocol/ProtoBuf;->isZigZagEncodedType(I)Z

    move-result v20

    if-eqz v20, :cond_9f

    .line 391
    invoke-static/range {v16 .. v17}, Lcom/google/common/io/protocol/ProtoBuf;->zigZagDecode(J)J

    move-result-wide v16

    .line 393
    :cond_9f
    const-wide/16 v20, 0x0

    cmp-long v20, v16, v20

    if-ltz v20, :cond_cf

    sget-object v20, Lcom/google/common/io/protocol/ProtoBuf;->SMALL_NUMBERS:[Ljava/lang/Long;

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    cmp-long v20, v16, v20

    if-gez v20, :cond_cf

    sget-object v20, Lcom/google/common/io/protocol/ProtoBuf;->SMALL_NUMBERS:[Ljava/lang/Long;

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v21, v0

    aget-object v18, v20, v21

    .line 450
    .end local v16           #v:J
    :goto_be
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v18

    invoke-direct {v0, v12, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->insertObject(IILjava/lang/Object;)V

    goto/16 :goto_3

    .line 393
    .restart local v16       #v:J
    :cond_cf
    new-instance v18, Ljava/lang/Long;

    move-object/from16 v0, v18

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    goto :goto_be

    .line 400
    .end local v16           #v:J
    :pswitch_d9
    const-wide/16 v16, 0x0

    .line 401
    .restart local v16       #v:J
    const/4 v11, 0x0

    .line 402
    .local v11, shift:I
    const/16 v20, 0x5

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_fb

    const/4 v3, 0x4

    .line 403
    .local v3, count:I
    :goto_e5
    sub-int p2, p2, v3

    move v4, v3

    .line 405
    .end local v3           #count:I
    .local v4, count:I
    :goto_e8
    add-int/lit8 v3, v4, -0x1

    .end local v4           #count:I
    .restart local v3       #count:I
    if-lez v4, :cond_fe

    .line 406
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->read()I

    move-result v20

    move/from16 v0, v20

    int-to-long v7, v0

    .line 407
    .local v7, l:J
    shl-long v20, v7, v11

    or-long v16, v16, v20

    .line 408
    add-int/lit8 v11, v11, 0x8

    move v4, v3

    .line 409
    .end local v3           #count:I
    .restart local v4       #count:I
    goto :goto_e8

    .line 402
    .end local v4           #count:I
    .end local v7           #l:J
    :cond_fb
    const/16 v3, 0x8

    goto :goto_e5

    .line 411
    .restart local v3       #count:I
    :cond_fe
    const-wide/16 v20, 0x0

    cmp-long v20, v16, v20

    if-ltz v20, :cond_11e

    sget-object v20, Lcom/google/common/io/protocol/ProtoBuf;->SMALL_NUMBERS:[Ljava/lang/Long;

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    cmp-long v20, v16, v20

    if-gez v20, :cond_11e

    sget-object v20, Lcom/google/common/io/protocol/ProtoBuf;->SMALL_NUMBERS:[Ljava/lang/Long;

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v21, v0

    aget-object v18, v20, v21

    .line 414
    .local v18, value:Ljava/lang/Long;
    :goto_11d
    goto :goto_be

    .line 411
    .end local v18           #value:Ljava/lang/Long;
    :cond_11e
    new-instance v18, Ljava/lang/Long;

    move-object/from16 v0, v18

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    goto :goto_11d

    .line 417
    .end local v3           #count:I
    .end local v11           #shift:I
    .end local v16           #v:J
    :pswitch_128
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->readVarInt(Ljava/io/InputStream;Z)J

    move-result-wide v20

    move-wide/from16 v0, v20

    long-to-int v15, v0

    .line 418
    .local v15, total:I
    int-to-long v0, v15

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Lcom/google/common/io/protocol/ProtoBuf;->getVarIntSize(J)I

    move-result v20

    sub-int p2, p2, v20

    .line 419
    sub-int p2, p2, v15

    .line 421
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/google/common/io/protocol/ProtoBuf;->getType(I)I

    move-result v20

    const/16 v21, 0x1b

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_16c

    .line 422
    new-instance v9, Lcom/google/common/io/protocol/ProtoBuf;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/io/protocol/ProtoBuf;->msgType:Lcom/google/common/io/protocol/ProtoBufType;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Lcom/google/common/io/protocol/ProtoBufType;->getData(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/google/common/io/protocol/ProtoBufType;

    move-object/from16 v0, v20

    invoke-direct {v9, v0}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 423
    .local v9, msg:Lcom/google/common/io/protocol/ProtoBuf;
    move-object/from16 v0, p1

    invoke-virtual {v9, v0, v15}, Lcom/google/common/io/protocol/ProtoBuf;->parse(Ljava/io/InputStream;I)I

    .line 424
    move-object/from16 v18, v9

    .line 425
    .local v18, value:Lcom/google/common/io/protocol/ProtoBuf;
    goto/16 :goto_be

    .line 426
    .end local v9           #msg:Lcom/google/common/io/protocol/ProtoBuf;
    .end local v18           #value:Lcom/google/common/io/protocol/ProtoBuf;
    :cond_16c
    new-array v5, v15, [B

    .line 427
    .local v5, data:[B
    const/4 v10, 0x0

    .line 428
    .local v10, pos:I
    :goto_16f
    if-ge v10, v15, :cond_187

    .line 429
    sub-int v20, v15, v10

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v5, v10, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 430
    .restart local v3       #count:I
    if-gtz v3, :cond_185

    .line 431
    new-instance v20, Ljava/io/IOException;

    const-string v21, "Unexp.EOF"

    invoke-direct/range {v20 .. v21}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 433
    :cond_185
    add-int/2addr v10, v3

    goto :goto_16f

    .line 435
    .end local v3           #count:I
    :cond_187
    move-object/from16 v18, v5

    .line 437
    .local v18, value:[B
    goto/16 :goto_be

    .line 440
    .end local v5           #data:[B
    .end local v10           #pos:I
    .end local v15           #total:I
    .end local v18           #value:[B
    :pswitch_18b
    new-instance v6, Lcom/google/common/io/protocol/ProtoBuf;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/io/protocol/ProtoBuf;->msgType:Lcom/google/common/io/protocol/ProtoBufType;

    move-object/from16 v20, v0

    if-nez v20, :cond_1a8

    const/16 v20, 0x0

    :goto_197
    move-object/from16 v0, v20

    invoke-direct {v6, v0}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 443
    .local v6, group:Lcom/google/common/io/protocol/ProtoBuf;
    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v6, v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->parse(Ljava/io/InputStream;I)I

    move-result p2

    .line 444
    move-object/from16 v18, v6

    .line 445
    .local v18, value:Lcom/google/common/io/protocol/ProtoBuf;
    goto/16 :goto_be

    .line 440
    .end local v6           #group:Lcom/google/common/io/protocol/ProtoBuf;
    .end local v18           #value:Lcom/google/common/io/protocol/ProtoBuf;
    :cond_1a8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/io/protocol/ProtoBuf;->msgType:Lcom/google/common/io/protocol/ProtoBufType;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Lcom/google/common/io/protocol/ProtoBufType;->getData(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/google/common/io/protocol/ProtoBufType;

    goto :goto_197

    .line 457
    .end local v12           #tag:I
    .end local v13           #tagAndType:J
    .end local v19           #wireType:I
    :cond_1b7
    return p2

    .line 386
    :pswitch_data_1b8
    .packed-switch 0x0
        :pswitch_83
        :pswitch_d9
        :pswitch_128
        :pswitch_18b
        :pswitch_66
        :pswitch_d9
    .end packed-switch
.end method

.method public parse(Ljava/io/InputStream;)Lcom/google/common/io/protocol/ProtoBuf;
    .registers 3
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 349
    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->parse(Ljava/io/InputStream;I)I

    .line 350
    return-object p0
.end method

.method public parse([B)Lcom/google/common/io/protocol/ProtoBuf;
    .registers 4
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 334
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->parse(Ljava/io/InputStream;I)I

    .line 335
    return-object p0
.end method

.method public remove(II)V
    .registers 7
    .parameter "tag"
    .parameter "index"

    .prologue
    .line 464
    invoke-virtual {p0, p1}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    .line 465
    .local v0, count:I
    if-lt p2, v0, :cond_c

    .line 466
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    .line 468
    :cond_c
    const/4 v2, 0x1

    if-ne v0, v2, :cond_16

    .line 469
    iget-object v2, p0, Lcom/google/common/io/protocol/ProtoBuf;->values:Ljava/util/Vector;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 474
    :goto_15
    return-void

    .line 471
    :cond_16
    iget-object v2, p0, Lcom/google/common/io/protocol/ProtoBuf;->values:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Vector;

    .line 472
    .local v1, v:Ljava/util/Vector;
    invoke-virtual {v1, p2}, Ljava/util/Vector;->removeElementAt(I)V

    goto :goto_15
.end method

.method public setBool(IZ)V
    .registers 4
    .parameter "tag"
    .parameter "value"

    .prologue
    .line 708
    if-eqz p2, :cond_8

    sget-object v0, Lcom/google/common/io/protocol/ProtoBuf;->TRUE:Ljava/lang/Boolean;

    :goto_4
    invoke-direct {p0, p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->setObject(ILjava/lang/Object;)V

    .line 709
    return-void

    .line 708
    :cond_8
    sget-object v0, Lcom/google/common/io/protocol/ProtoBuf;->FALSE:Ljava/lang/Boolean;

    goto :goto_4
.end method

.method public setBytes(I[B)V
    .registers 3
    .parameter "tag"
    .parameter "value"

    .prologue
    .line 715
    invoke-direct {p0, p1, p2}, Lcom/google/common/io/protocol/ProtoBuf;->setObject(ILjava/lang/Object;)V

    .line 716
    return-void
.end method

.method public setInt(II)V
    .registers 5
    .parameter "tag"
    .parameter "value"

    .prologue
    .line 722
    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->setLong(IJ)V

    .line 723
    return-void
.end method

.method public setLong(IJ)V
    .registers 6
    .parameter "tag"
    .parameter "value"

    .prologue
    .line 729
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_17

    sget-object v0, Lcom/google/common/io/protocol/ProtoBuf;->SMALL_NUMBERS:[Ljava/lang/Long;

    array-length v0, v0

    int-to-long v0, v0

    cmp-long v0, p2, v0

    if-gez v0, :cond_17

    sget-object v0, Lcom/google/common/io/protocol/ProtoBuf;->SMALL_NUMBERS:[Ljava/lang/Long;

    long-to-int v1, p2

    aget-object v0, v0, v1

    :goto_13
    invoke-direct {p0, p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->setObject(ILjava/lang/Object;)V

    .line 731
    return-void

    .line 729
    :cond_17
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p2, p3}, Ljava/lang/Long;-><init>(J)V

    goto :goto_13
.end method

.method public setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V
    .registers 3
    .parameter "tag"
    .parameter "pb"

    .prologue
    .line 751
    invoke-direct {p0, p1, p2}, Lcom/google/common/io/protocol/ProtoBuf;->setObject(ILjava/lang/Object;)V

    .line 752
    return-void
.end method

.method public setString(ILjava/lang/String;)V
    .registers 3
    .parameter "tag"
    .parameter "value"

    .prologue
    .line 770
    invoke-direct {p0, p1, p2}, Lcom/google/common/io/protocol/ProtoBuf;->setObject(ILjava/lang/Object;)V

    .line 771
    return-void
.end method

.method public toByteArray()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 692
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 693
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0, v0}, Lcom/google/common/io/protocol/ProtoBuf;->outputTo(Ljava/io/OutputStream;)V

    .line 694
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method
