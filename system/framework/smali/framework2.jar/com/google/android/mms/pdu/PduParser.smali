.class public Lcom/google/android/mms/pdu/PduParser;
.super Ljava/lang/Object;
.source "PduParser.java"


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final DEBUG:Z = false

.field private static final END_STRING_FLAG:I = 0x0

.field private static final LENGTH_QUOTE:I = 0x1f

.field private static final LOCAL_LOGV:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "PduParser"

.field private static final LONG_INTEGER_LENGTH_MAX:I = 0x8

.field private static final QUOTE:I = 0x7f

.field private static final QUOTED_STRING_FLAG:I = 0x22

.field private static final SHORT_INTEGER_MAX:I = 0x7f

.field private static final SHORT_LENGTH_MAX:I = 0x1e

.field private static final TEXT_MAX:I = 0x7f

.field private static final TEXT_MIN:I = 0x20

.field private static final THE_FIRST_PART:I = 0x0

.field private static final THE_LAST_PART:I = 0x1

.field private static final TYPE_QUOTED_STRING:I = 0x1

.field private static final TYPE_TEXT_STRING:I = 0x0

.field private static final TYPE_TOKEN_STRING:I = 0x2

.field private static mStartParam:[B

.field private static mTypeParam:[B


# instance fields
.field private mBody:Lcom/google/android/mms/pdu/PduBody;

.field private mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

.field private mPduDataStream:Ljava/io/ByteArrayInputStream;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 37
    const-class v0, Lcom/google/android/mms/pdu/PduParser;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_11

    const/4 v0, 0x1

    :goto_a
    sput-boolean v0, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    .line 80
    sput-object v1, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    .line 85
    sput-object v1, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    return-void

    .line 37
    :cond_11
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public constructor <init>([B)V
    .registers 3
    .parameter "pduDataStream"

    .prologue
    const/4 v0, 0x0

    .line 99
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    .line 70
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    .line 75
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    .line 100
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    .line 101
    return-void
.end method

.method protected static checkMandatoryHeader(Lcom/google/android/mms/pdu/PduHeaders;)Z
    .registers 40
    .parameter "headers"

    .prologue
    .line 1836
    if-nez p0, :cond_5

    .line 1837
    const/16 v37, 0x0

    .line 2043
    :goto_4
    return v37

    .line 1841
    :cond_5
    const/16 v37, 0x8c

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v8

    .line 1844
    .local v8, messageType:I
    const/16 v37, 0x8d

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v9

    .line 1845
    .local v9, mmsVersion:I
    if-nez v9, :cond_1e

    .line 1847
    const/16 v37, 0x0

    goto :goto_4

    .line 1851
    :cond_1e
    packed-switch v8, :pswitch_data_1f6

    .line 2040
    const/16 v37, 0x0

    goto :goto_4

    .line 1854
    :pswitch_24
    const/16 v37, 0x84

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v34

    .line 1855
    .local v34, srContentType:[B
    if-nez v34, :cond_33

    .line 1856
    const/16 v37, 0x0

    goto :goto_4

    .line 1860
    :cond_33
    const/16 v37, 0x89

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v35

    .line 1861
    .local v35, srFrom:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v35, :cond_42

    .line 1862
    const/16 v37, 0x0

    goto :goto_4

    .line 1866
    :cond_42
    const/16 v37, 0x98

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v36

    .line 1867
    .local v36, srTransactionId:[B
    if-nez v36, :cond_1f2

    .line 1868
    const/16 v37, 0x0

    goto :goto_4

    .line 1874
    .end local v34           #srContentType:[B
    .end local v35           #srFrom:Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v36           #srTransactionId:[B
    :pswitch_51
    const/16 v37, 0x92

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v32

    .line 1875
    .local v32, scResponseStatus:I
    if-nez v32, :cond_60

    .line 1876
    const/16 v37, 0x0

    goto :goto_4

    .line 1880
    :cond_60
    const/16 v37, 0x98

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v33

    .line 1881
    .local v33, scTransactionId:[B
    if-nez v33, :cond_1f2

    .line 1882
    const/16 v37, 0x0

    goto :goto_4

    .line 1888
    .end local v32           #scResponseStatus:I
    .end local v33           #scTransactionId:[B
    :pswitch_6f
    const/16 v37, 0x83

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v10

    .line 1889
    .local v10, niContentLocation:[B
    if-nez v10, :cond_7e

    .line 1890
    const/16 v37, 0x0

    goto :goto_4

    .line 1894
    :cond_7e
    const/16 v37, 0x88

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v11

    .line 1895
    .local v11, niExpiry:J
    const-wide/16 v37, -0x1

    cmp-long v37, v37, v11

    if-nez v37, :cond_92

    .line 1896
    const/16 v37, 0x0

    goto/16 :goto_4

    .line 1900
    :cond_92
    const/16 v37, 0x8a

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v13

    .line 1901
    .local v13, niMessageClass:[B
    if-nez v13, :cond_a2

    .line 1902
    const/16 v37, 0x0

    goto/16 :goto_4

    .line 1906
    :cond_a2
    const/16 v37, 0x8e

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v14

    .line 1907
    .local v14, niMessageSize:J
    const-wide/16 v37, -0x1

    cmp-long v37, v37, v14

    if-nez v37, :cond_b6

    .line 1908
    const/16 v37, 0x0

    goto/16 :goto_4

    .line 1912
    :cond_b6
    const/16 v37, 0x98

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v16

    .line 1913
    .local v16, niTransactionId:[B
    if-nez v16, :cond_1f2

    .line 1914
    const/16 v37, 0x0

    goto/16 :goto_4

    .line 1920
    .end local v10           #niContentLocation:[B
    .end local v11           #niExpiry:J
    .end local v13           #niMessageClass:[B
    .end local v14           #niMessageSize:J
    .end local v16           #niTransactionId:[B
    :pswitch_c6
    const/16 v37, 0x95

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v17

    .line 1921
    .local v17, nriStatus:I
    if-nez v17, :cond_d6

    .line 1922
    const/16 v37, 0x0

    goto/16 :goto_4

    .line 1926
    :cond_d6
    const/16 v37, 0x98

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v18

    .line 1927
    .local v18, nriTransactionId:[B
    if-nez v18, :cond_1f2

    .line 1928
    const/16 v37, 0x0

    goto/16 :goto_4

    .line 1934
    .end local v17           #nriStatus:I
    .end local v18           #nriTransactionId:[B
    :pswitch_e6
    const/16 v37, 0x84

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v19

    .line 1935
    .local v19, rcContentType:[B
    if-nez v19, :cond_f6

    .line 1936
    const/16 v37, 0x0

    goto/16 :goto_4

    .line 1940
    :cond_f6
    const/16 v37, 0x85

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v20

    .line 1941
    .local v20, rcDate:J
    const-wide/16 v37, -0x1

    cmp-long v37, v37, v20

    if-nez v37, :cond_1f2

    .line 1942
    const/16 v37, 0x0

    goto/16 :goto_4

    .line 1948
    .end local v19           #rcContentType:[B
    .end local v20           #rcDate:J
    :pswitch_10a
    const/16 v37, 0x85

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v3

    .line 1949
    .local v3, diDate:J
    const-wide/16 v37, -0x1

    cmp-long v37, v37, v3

    if-nez v37, :cond_11e

    .line 1950
    const/16 v37, 0x0

    goto/16 :goto_4

    .line 1954
    :cond_11e
    const/16 v37, 0x8b

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v5

    .line 1955
    .local v5, diMessageId:[B
    if-nez v5, :cond_12e

    .line 1956
    const/16 v37, 0x0

    goto/16 :goto_4

    .line 1960
    :cond_12e
    const/16 v37, 0x95

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v6

    .line 1961
    .local v6, diStatus:I
    if-nez v6, :cond_13e

    .line 1962
    const/16 v37, 0x0

    goto/16 :goto_4

    .line 1966
    :cond_13e
    const/16 v37, 0x97

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v7

    .line 1967
    .local v7, diTo:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v7, :cond_1f2

    .line 1968
    const/16 v37, 0x0

    goto/16 :goto_4

    .line 1974
    .end local v3           #diDate:J
    .end local v5           #diMessageId:[B
    .end local v6           #diStatus:I
    .end local v7           #diTo:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_14e
    const/16 v37, 0x98

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v2

    .line 1975
    .local v2, aiTransactionId:[B
    if-nez v2, :cond_1f2

    .line 1976
    const/16 v37, 0x0

    goto/16 :goto_4

    .line 1982
    .end local v2           #aiTransactionId:[B
    :pswitch_15e
    const/16 v37, 0x85

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v22

    .line 1983
    .local v22, roDate:J
    const-wide/16 v37, -0x1

    cmp-long v37, v37, v22

    if-nez v37, :cond_172

    .line 1984
    const/16 v37, 0x0

    goto/16 :goto_4

    .line 1988
    :cond_172
    const/16 v37, 0x89

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v24

    .line 1989
    .local v24, roFrom:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v24, :cond_182

    .line 1990
    const/16 v37, 0x0

    goto/16 :goto_4

    .line 1994
    :cond_182
    const/16 v37, 0x8b

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v25

    .line 1995
    .local v25, roMessageId:[B
    if-nez v25, :cond_192

    .line 1996
    const/16 v37, 0x0

    goto/16 :goto_4

    .line 2000
    :cond_192
    const/16 v37, 0x9b

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v26

    .line 2001
    .local v26, roReadStatus:I
    if-nez v26, :cond_1a2

    .line 2002
    const/16 v37, 0x0

    goto/16 :goto_4

    .line 2006
    :cond_1a2
    const/16 v37, 0x97

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v27

    .line 2007
    .local v27, roTo:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v27, :cond_1f2

    .line 2008
    const/16 v37, 0x0

    goto/16 :goto_4

    .line 2014
    .end local v22           #roDate:J
    .end local v24           #roFrom:Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v25           #roMessageId:[B
    .end local v26           #roReadStatus:I
    .end local v27           #roTo:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_1b2
    const/16 v37, 0x89

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v28

    .line 2015
    .local v28, rrFrom:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v28, :cond_1c2

    .line 2016
    const/16 v37, 0x0

    goto/16 :goto_4

    .line 2020
    :cond_1c2
    const/16 v37, 0x8b

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v29

    .line 2021
    .local v29, rrMessageId:[B
    if-nez v29, :cond_1d2

    .line 2022
    const/16 v37, 0x0

    goto/16 :goto_4

    .line 2026
    :cond_1d2
    const/16 v37, 0x9b

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v30

    .line 2027
    .local v30, rrReadStatus:I
    if-nez v30, :cond_1e2

    .line 2028
    const/16 v37, 0x0

    goto/16 :goto_4

    .line 2032
    :cond_1e2
    const/16 v37, 0x97

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v31

    .line 2033
    .local v31, rrTo:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v31, :cond_1f2

    .line 2034
    const/16 v37, 0x0

    goto/16 :goto_4

    .line 2043
    .end local v28           #rrFrom:Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v29           #rrMessageId:[B
    .end local v30           #rrReadStatus:I
    .end local v31           #rrTo:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_1f2
    const/16 v37, 0x1

    goto/16 :goto_4

    .line 1851
    :pswitch_data_1f6
    .packed-switch 0x80
        :pswitch_24
        :pswitch_51
        :pswitch_6f
        :pswitch_c6
        :pswitch_e6
        :pswitch_14e
        :pswitch_10a
        :pswitch_1b2
        :pswitch_15e
    .end packed-switch
.end method

.method private static checkPartPosition(Lcom/google/android/mms/pdu/PduPart;)I
    .registers 6
    .parameter "part"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1800
    sget-boolean v4, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v4, :cond_e

    if-nez p0, :cond_e

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1801
    :cond_e
    sget-object v4, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    if-nez v4, :cond_17

    sget-object v4, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    if-nez v4, :cond_17

    .line 1826
    :cond_16
    :goto_16
    return v2

    .line 1807
    :cond_17
    sget-object v4, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    if-eqz v4, :cond_2b

    .line 1808
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v0

    .line 1809
    .local v0, contentId:[B
    if-eqz v0, :cond_2b

    .line 1810
    sget-object v4, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    invoke-static {v4, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-ne v2, v4, :cond_2b

    move v2, v3

    .line 1811
    goto :goto_16

    .line 1817
    .end local v0           #contentId:[B
    :cond_2b
    sget-object v4, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    if-eqz v4, :cond_16

    .line 1818
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v1

    .line 1819
    .local v1, contentType:[B
    if-eqz v1, :cond_16

    .line 1820
    sget-object v4, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    invoke-static {v4, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-ne v2, v4, :cond_16

    move v2, v3

    .line 1821
    goto :goto_16
.end method

.method protected static extractByteValue(Ljava/io/ByteArrayInputStream;)I
    .registers 3
    .parameter "pduDataStream"

    .prologue
    .line 1218
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_c

    if-nez p0, :cond_c

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1219
    :cond_c
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1220
    .local v0, temp:I
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_1d

    const/4 v1, -0x1

    if-ne v1, v0, :cond_1d

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1221
    :cond_1d
    and-int/lit16 v1, v0, 0xff

    return v1
.end method

.method protected static getWapString(Ljava/io/ByteArrayInputStream;I)[B
    .registers 6
    .parameter "pduDataStream"
    .parameter "stringType"

    .prologue
    const/4 v3, -0x1

    .line 1184
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_d

    if-nez p0, :cond_d

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1185
    :cond_d
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1186
    .local v0, out:Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 1187
    .local v1, temp:I
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_22

    if-ne v3, v1, :cond_22

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1188
    :cond_22
    if-eq v3, v1, :cond_4c

    if-eqz v1, :cond_4c

    .line 1190
    const/4 v2, 0x2

    if-ne p1, v2, :cond_42

    .line 1191
    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->isTokenCharacter(I)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 1192
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1200
    :cond_32
    :goto_32
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 1201
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_22

    if-ne v3, v1, :cond_22

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1195
    :cond_42
    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->isText(I)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 1196
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_32

    .line 1204
    :cond_4c
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    if-lez v2, :cond_57

    .line 1205
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 1208
    :goto_56
    return-object v2

    :cond_57
    const/4 v2, 0x0

    goto :goto_56
.end method

.method protected static isText(I)Z
    .registers 3
    .parameter "ch"

    .prologue
    const/4 v0, 0x1

    .line 1168
    const/16 v1, 0x20

    if-lt p0, v1, :cond_9

    const/16 v1, 0x7e

    if-le p0, v1, :cond_11

    :cond_9
    const/16 v1, 0x80

    if-lt p0, v1, :cond_12

    const/16 v1, 0xff

    if-gt p0, v1, :cond_12

    .line 1179
    :cond_11
    :goto_11
    :pswitch_11
    return v0

    .line 1172
    :cond_12
    packed-switch p0, :pswitch_data_18

    .line 1179
    :pswitch_15
    const/4 v0, 0x0

    goto :goto_11

    .line 1172
    nop

    :pswitch_data_18
    .packed-switch 0x9
        :pswitch_11
        :pswitch_11
        :pswitch_15
        :pswitch_15
        :pswitch_11
    .end packed-switch
.end method

.method protected static isTokenCharacter(I)Z
    .registers 3
    .parameter "ch"

    .prologue
    const/4 v0, 0x0

    .line 1124
    const/16 v1, 0x21

    if-lt p0, v1, :cond_9

    const/16 v1, 0x7e

    if-le p0, v1, :cond_a

    .line 1149
    :cond_9
    :goto_9
    :sswitch_9
    return v0

    .line 1128
    :cond_a
    sparse-switch p0, :sswitch_data_10

    .line 1149
    const/4 v0, 0x1

    goto :goto_9

    .line 1128
    nop

    :sswitch_data_10
    .sparse-switch
        0x22 -> :sswitch_9
        0x28 -> :sswitch_9
        0x29 -> :sswitch_9
        0x2c -> :sswitch_9
        0x2f -> :sswitch_9
        0x3a -> :sswitch_9
        0x3b -> :sswitch_9
        0x3c -> :sswitch_9
        0x3d -> :sswitch_9
        0x3e -> :sswitch_9
        0x3f -> :sswitch_9
        0x40 -> :sswitch_9
        0x5b -> :sswitch_9
        0x5c -> :sswitch_9
        0x5d -> :sswitch_9
        0x7b -> :sswitch_9
        0x7d -> :sswitch_9
    .end sparse-switch
.end method

.method private static log(Ljava/lang/String;)V
    .registers 1
    .parameter "text"

    .prologue
    .line 936
    return-void
.end method

.method protected static parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B
    .registers 13
    .parameter "pduDataStream"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ByteArrayInputStream;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 1522
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    sget-boolean v9, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v9, :cond_c

    if-nez p0, :cond_c

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    .line 1524
    :cond_c
    const/4 v0, 0x0

    .line 1525
    .local v0, contentType:[B
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1526
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v8

    .line 1527
    .local v8, temp:I
    sget-boolean v9, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v9, :cond_22

    const/4 v9, -0x1

    if-ne v9, v8, :cond_22

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    .line 1528
    :cond_22
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1530
    and-int/lit16 v1, v8, 0xff

    .line 1532
    .local v1, cur:I
    const/16 v9, 0x20

    if-ge v1, v9, :cond_ae

    .line 1533
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    move-result v5

    .line 1534
    .local v5, length:I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v7

    .line 1535
    .local v7, startPos:I
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1536
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v8

    .line 1537
    sget-boolean v9, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v9, :cond_48

    const/4 v9, -0x1

    if-ne v9, v8, :cond_48

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    .line 1538
    :cond_48
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1539
    and-int/lit16 v3, v8, 0xff

    .line 1541
    .local v3, first:I
    const/16 v9, 0x20

    if-lt v3, v9, :cond_7e

    const/16 v9, 0x7f

    if-gt v3, v9, :cond_7e

    .line 1542
    const/4 v9, 0x0

    invoke-static {p0, v9}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    .line 1557
    :goto_5a
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v2

    .line 1558
    .local v2, endPos:I
    sub-int v9, v7, v2

    sub-int v6, v5, v9

    .line 1559
    .local v6, parameterLen:I
    if-lez v6, :cond_6b

    .line 1560
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {p0, p1, v9}, Lcom/google/android/mms/pdu/PduParser;->parseContentTypeParams(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;Ljava/lang/Integer;)V

    .line 1563
    :cond_6b
    if-gez v6, :cond_b7

    .line 1564
    const-string v9, "PduParser"

    const-string v10, "Corrupt MMS message"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    sget-object v9, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    .line 1574
    .end local v2           #endPos:I
    .end local v3           #first:I
    .end local v5           #length:I
    .end local v6           #parameterLen:I
    .end local v7           #startPos:I
    :goto_7d
    return-object v9

    .line 1543
    .restart local v3       #first:I
    .restart local v5       #length:I
    .restart local v7       #startPos:I
    :cond_7e
    const/16 v9, 0x7f

    if-le v3, v9, :cond_9d

    .line 1544
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v4

    .line 1546
    .local v4, index:I
    sget-object v9, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    array-length v9, v9

    if-ge v4, v9, :cond_94

    .line 1547
    sget-object v9, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v9, v9, v4

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_5a

    .line 1549
    :cond_94
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1550
    const/4 v9, 0x0

    invoke-static {p0, v9}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    goto :goto_5a

    .line 1553
    .end local v4           #index:I
    :cond_9d
    const-string v9, "PduParser"

    const-string v10, "Corrupt content-type"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1554
    sget-object v9, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    goto :goto_7d

    .line 1567
    .end local v3           #first:I
    .end local v5           #length:I
    .end local v7           #startPos:I
    :cond_ae
    const/16 v9, 0x7f

    if-gt v1, v9, :cond_b9

    .line 1568
    const/4 v9, 0x0

    invoke-static {p0, v9}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    :cond_b7
    :goto_b7
    move-object v9, v0

    .line 1574
    goto :goto_7d

    .line 1570
    :cond_b9
    sget-object v9, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v10

    aget-object v9, v9, v10

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_b7
.end method

.method protected static parseContentTypeParams(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;Ljava/lang/Integer;)V
    .registers 22
    .parameter "pduDataStream"
    .parameter
    .parameter "length"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ByteArrayInputStream;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1351
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    sget-boolean v17, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v17, :cond_c

    if-nez p0, :cond_c

    new-instance v17, Ljava/lang/AssertionError;

    invoke-direct/range {v17 .. v17}, Ljava/lang/AssertionError;-><init>()V

    throw v17

    .line 1352
    :cond_c
    sget-boolean v17, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v17, :cond_1c

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v17

    if-gtz v17, :cond_1c

    new-instance v17, Ljava/lang/AssertionError;

    invoke-direct/range {v17 .. v17}, Ljava/lang/AssertionError;-><init>()V

    throw v17

    .line 1354
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v14

    .line 1355
    .local v14, startPos:I
    const/4 v15, 0x0

    .line 1356
    .local v15, tempPos:I
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 1357
    .local v10, lastLen:I
    :goto_25
    if-lez v10, :cond_1a7

    .line 1358
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v12

    .line 1359
    .local v12, param:I
    sget-boolean v17, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v17, :cond_3b

    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v0, v12, :cond_3b

    new-instance v17, Ljava/lang/AssertionError;

    invoke-direct/range {v17 .. v17}, Ljava/lang/AssertionError;-><init>()V

    throw v17

    .line 1360
    :cond_3b
    add-int/lit8 v10, v10, -0x1

    .line 1362
    sparse-switch v12, :sswitch_data_1b2

    .line 1493
    const/16 v17, -0x1

    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lcom/google/android/mms/pdu/PduParser;->skipWapValue(Ljava/io/ByteArrayInputStream;I)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1a4

    .line 1494
    const-string v17, "PduParser"

    const-string v18, "Corrupt Content-Type"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 1378
    :sswitch_56
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1379
    invoke-static/range {p0 .. p0}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v7

    .line 1380
    .local v7, first:I
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1381
    const/16 v17, 0x7f

    move/from16 v0, v17

    if-le v7, v0, :cond_9f

    .line 1383
    invoke-static/range {p0 .. p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v9

    .line 1385
    .local v9, index:I
    sget-object v17, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v9, v0, :cond_92

    .line 1386
    sget-object v17, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v17, v17, v9

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    .line 1387
    .local v16, type:[B
    const/16 v17, 0x83

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1399
    .end local v9           #index:I
    .end local v16           #type:[B
    :cond_92
    :goto_92
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v15

    .line 1400
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v17

    sub-int v18, v14, v15

    sub-int v10, v17, v18

    .line 1401
    goto :goto_25

    .line 1393
    :cond_9f
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v16

    .line 1394
    .restart local v16       #type:[B
    if-eqz v16, :cond_92

    if-eqz p1, :cond_92

    .line 1395
    const/16 v17, 0x83

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_92

    .line 1418
    .end local v7           #first:I
    .end local v16           #type:[B
    :sswitch_bd
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v13

    .line 1419
    .local v13, start:[B
    if-eqz v13, :cond_d8

    if-eqz p1, :cond_d8

    .line 1420
    const/16 v17, 0x99

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1423
    :cond_d8
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v15

    .line 1424
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v17

    sub-int v18, v14, v15

    sub-int v10, v17, v18

    .line 1425
    goto/16 :goto_25

    .line 1442
    .end local v13           #start:[B
    :sswitch_e6
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1443
    invoke-static/range {p0 .. p0}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v8

    .line 1444
    .local v8, firstValue:I
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1446
    const/16 v17, 0x20

    move/from16 v0, v17

    if-le v8, v0, :cond_102

    const/16 v17, 0x7f

    move/from16 v0, v17

    if-lt v8, v0, :cond_104

    :cond_102
    if-nez v8, :cond_15e

    .line 1449
    :cond_104
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v5

    .line 1451
    .local v5, charsetStr:[B
    :try_start_10e
    new-instance v17, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([B)V

    invoke-static/range {v17 .. v17}, Lcom/google/android/mms/pdu/CharacterSets;->getMibEnumValue(Ljava/lang/String;)I

    move-result v4

    .line 1453
    .local v4, charsetInt:I
    const/16 v17, 0x81

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_10e .. :try_end_12c} :catch_13a

    .line 1467
    .end local v4           #charsetInt:I
    .end local v5           #charsetStr:[B
    :cond_12c
    :goto_12c
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v15

    .line 1468
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v17

    sub-int v18, v14, v15

    sub-int v10, v17, v18

    .line 1469
    goto/16 :goto_25

    .line 1454
    .restart local v5       #charsetStr:[B
    :catch_13a
    move-exception v6

    .line 1456
    .local v6, e:Ljava/io/UnsupportedEncodingException;
    const-string v17, "PduParser"

    invoke-static {v5}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1457
    const/16 v17, 0x81

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12c

    .line 1461
    .end local v5           #charsetStr:[B
    .end local v6           #e:Ljava/io/UnsupportedEncodingException;
    :cond_15e
    invoke-static/range {p0 .. p0}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v17

    move-wide/from16 v0, v17

    long-to-int v3, v0

    .line 1462
    .local v3, charset:I
    if-eqz p1, :cond_12c

    .line 1463
    const/16 v17, 0x81

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12c

    .line 1481
    .end local v3           #charset:I
    .end local v8           #firstValue:I
    :sswitch_17b
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v11

    .line 1482
    .local v11, name:[B
    if-eqz v11, :cond_196

    if-eqz p1, :cond_196

    .line 1483
    const/16 v17, 0x97

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1486
    :cond_196
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v15

    .line 1487
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v17

    sub-int v18, v14, v15

    sub-int v10, v17, v18

    .line 1488
    goto/16 :goto_25

    .line 1496
    .end local v11           #name:[B
    :cond_1a4
    const/4 v10, 0x0

    goto/16 :goto_25

    .line 1502
    .end local v12           #param:I
    :cond_1a7
    if-eqz v10, :cond_1b0

    .line 1503
    const-string v17, "PduParser"

    const-string v18, "Corrupt Content-Type"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1505
    :cond_1b0
    return-void

    .line 1362
    nop

    :sswitch_data_1b2
    .sparse-switch
        0x81 -> :sswitch_e6
        0x83 -> :sswitch_56
        0x85 -> :sswitch_17b
        0x89 -> :sswitch_56
        0x8a -> :sswitch_bd
        0x97 -> :sswitch_17b
        0x99 -> :sswitch_bd
    .end sparse-switch
.end method

.method protected static parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;
    .registers 10
    .parameter "pduDataStream"

    .prologue
    const/4 v7, 0x0

    .line 1012
    sget-boolean v8, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v8, :cond_d

    if-nez p0, :cond_d

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 1013
    :cond_d
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1014
    const/4 v3, 0x0

    .line 1015
    .local v3, returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    const/4 v0, 0x0

    .line 1016
    .local v0, charset:I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v5

    .line 1017
    .local v5, temp:I
    sget-boolean v8, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v8, :cond_24

    const/4 v8, -0x1

    if-ne v8, v5, :cond_24

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 1023
    :cond_24
    if-nez v5, :cond_27

    .line 1050
    :goto_26
    return-object v7

    .line 1027
    :cond_27
    and-int/lit16 v2, v5, 0xff

    .line 1029
    .local v2, first:I
    if-nez v2, :cond_2b

    .line 1031
    :cond_2b
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1032
    const/16 v8, 0x20

    if-ge v2, v8, :cond_39

    .line 1033
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 1035
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    .line 1038
    :cond_39
    const/4 v8, 0x0

    invoke-static {p0, v8}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v6

    .line 1041
    .local v6, textString:[B
    if-eqz v0, :cond_48

    .line 1042
    :try_start_40
    new-instance v4, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v4, v0, v6}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    .end local v3           #returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    .local v4, returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    move-object v3, v4

    .end local v4           #returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v3       #returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    :goto_46
    move-object v7, v3

    .line 1050
    goto :goto_26

    .line 1044
    :cond_48
    new-instance v4, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v4, v6}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>([B)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_4d} :catch_4f

    .end local v3           #returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v4       #returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    move-object v3, v4

    .end local v4           #returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v3       #returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    goto :goto_46

    .line 1046
    :catch_4f
    move-exception v1

    .line 1047
    .local v1, e:Ljava/lang/Exception;
    goto :goto_26
.end method

.method protected static parseEncodedSubjectValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;
    .registers 9
    .parameter "pduDataStream"

    .prologue
    .line 1582
    sget-boolean v7, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v7, :cond_c

    if-nez p0, :cond_c

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 1583
    :cond_c
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1584
    const/4 v3, 0x0

    .line 1585
    .local v3, returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    const/4 v0, 0x0

    .line 1586
    .local v0, charset:I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v5

    .line 1587
    .local v5, temp:I
    sget-boolean v7, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v7, :cond_23

    const/4 v7, -0x1

    if-ne v7, v5, :cond_23

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 1588
    :cond_23
    and-int/lit16 v2, v5, 0xff

    .line 1590
    .local v2, first:I
    if-nez v2, :cond_27

    .line 1593
    :cond_27
    if-lez v2, :cond_44

    .line 1594
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1595
    const/16 v7, 0x20

    if-ge v2, v7, :cond_37

    .line 1596
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 1598
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    .line 1601
    :cond_37
    const/4 v7, 0x0

    invoke-static {p0, v7}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v6

    .line 1604
    .local v6, textString:[B
    if-eqz v0, :cond_46

    .line 1605
    :try_start_3e
    new-instance v4, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v4, v0, v6}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    .end local v3           #returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    .local v4, returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    move-object v3, v4

    .end local v4           #returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v6           #textString:[B
    .restart local v3       #returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_44
    :goto_44
    move-object v7, v3

    .line 1613
    :goto_45
    return-object v7

    .line 1607
    .restart local v6       #textString:[B
    :cond_46
    new-instance v4, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v4, v6}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>([B)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_4b} :catch_4d

    .end local v3           #returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v4       #returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    move-object v3, v4

    .end local v4           #returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v3       #returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    goto :goto_44

    .line 1609
    :catch_4d
    move-exception v1

    .line 1610
    .local v1, e:Ljava/lang/Exception;
    const/4 v7, 0x0

    goto :goto_45
.end method

.method protected static parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    .registers 4
    .parameter "pduDataStream"

    .prologue
    .line 1293
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_c

    if-nez p0, :cond_c

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1294
    :cond_c
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1295
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1296
    .local v0, temp:I
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_21

    const/4 v1, -0x1

    if-ne v1, v0, :cond_21

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1297
    :cond_21
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1298
    const/16 v1, 0x7f

    if-le v0, v1, :cond_2e

    .line 1299
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v1

    int-to-long v1, v1

    .line 1301
    :goto_2d
    return-wide v1

    :cond_2e
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v1

    goto :goto_2d
.end method

.method protected static parseLongInteger(Ljava/io/ByteArrayInputStream;)J
    .registers 10
    .parameter "pduDataStream"

    .prologue
    const/16 v8, 0x8

    const/4 v7, -0x1

    .line 1261
    sget-boolean v5, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v5, :cond_f

    if-nez p0, :cond_f

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 1262
    :cond_f
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v4

    .line 1263
    .local v4, temp:I
    sget-boolean v5, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v5, :cond_1f

    if-ne v7, v4, :cond_1f

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 1264
    :cond_1f
    and-int/lit16 v0, v4, 0xff

    .line 1266
    .local v0, count:I
    if-le v0, v8, :cond_2b

    .line 1267
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Octet count greater than 8 and I can\'t represent that!"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1270
    :cond_2b
    const-wide/16 v2, 0x0

    .line 1272
    .local v2, result:J
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2e
    if-ge v1, v0, :cond_48

    .line 1273
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v4

    .line 1274
    sget-boolean v5, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v5, :cond_40

    if-ne v7, v4, :cond_40

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 1275
    :cond_40
    shl-long/2addr v2, v8

    .line 1276
    and-int/lit16 v5, v4, 0xff

    int-to-long v5, v5

    add-long/2addr v2, v5

    .line 1272
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 1279
    :cond_48
    return-wide v2
.end method

.method protected static parsePartHeaders(Ljava/io/ByteArrayInputStream;Lcom/google/android/mms/pdu/PduPart;I)Z
    .registers 14
    .parameter "pduDataStream"
    .parameter "part"
    .parameter "length"

    .prologue
    .line 1626
    sget-boolean v8, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v8, :cond_c

    if-nez p0, :cond_c

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 1627
    :cond_c
    sget-boolean v8, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v8, :cond_18

    if-nez p1, :cond_18

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 1628
    :cond_18
    sget-boolean v8, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v8, :cond_24

    if-gtz p2, :cond_24

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 1646
    :cond_24
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v4

    .line 1647
    .local v4, startPos:I
    const/4 v6, 0x0

    .line 1648
    .local v6, tempPos:I
    move v3, p2

    .line 1649
    .local v3, lastLen:I
    :goto_2a
    :sswitch_2a
    if-lez v3, :cond_bd

    .line 1650
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v2

    .line 1651
    .local v2, header:I
    sget-boolean v8, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v8, :cond_3d

    const/4 v8, -0x1

    if-ne v8, v2, :cond_3d

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 1652
    :cond_3d
    add-int/lit8 v3, v3, -0x1

    .line 1654
    const/16 v8, 0x7f

    if-le v2, v8, :cond_7e

    .line 1656
    sparse-switch v2, :sswitch_data_ca

    .line 1751
    const/4 v8, -0x1

    invoke-static {p0, v3}, Lcom/google/android/mms/pdu/PduParser;->skipWapValue(Ljava/io/ByteArrayInputStream;I)I

    move-result v9

    if-ne v8, v9, :cond_7c

    .line 1752
    const-string v8, "PduParser"

    const-string v9, "Corrupt Part headers"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1753
    const/4 v8, 0x0

    .line 1789
    .end local v2           #header:I
    :goto_55
    return v8

    .line 1662
    .restart local v2       #header:I
    :sswitch_56
    const/4 v8, 0x0

    invoke-static {p0, v8}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v1

    .line 1663
    .local v1, contentLocation:[B
    if-eqz v1, :cond_60

    .line 1664
    invoke-virtual {p1, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 1667
    :cond_60
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v6

    .line 1668
    sub-int v8, v4, v6

    sub-int v3, p2, v8

    .line 1669
    goto :goto_2a

    .line 1675
    .end local v1           #contentLocation:[B
    :sswitch_69
    const/4 v8, 0x1

    invoke-static {p0, v8}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    .line 1676
    .local v0, contentId:[B
    if-eqz v0, :cond_73

    .line 1677
    invoke-virtual {p1, v0}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    .line 1680
    :cond_73
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v6

    .line 1681
    sub-int v8, v4, v6

    sub-int v3, p2, v8

    .line 1682
    goto :goto_2a

    .line 1755
    .end local v0           #contentId:[B
    :cond_7c
    const/4 v3, 0x0

    goto :goto_2a

    .line 1758
    :cond_7e
    const/16 v8, 0x20

    if-lt v2, v8, :cond_aa

    const/16 v8, 0x7f

    if-gt v2, v8, :cond_aa

    .line 1760
    const/4 v8, 0x0

    invoke-static {p0, v8}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v5

    .line 1761
    .local v5, tempHeader:[B
    const/4 v8, 0x0

    invoke-static {p0, v8}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v7

    .line 1764
    .local v7, tempValue:[B
    const/4 v8, 0x1

    const-string v9, "Content-Transfer-Encoding"

    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-ne v8, v9, :cond_a1

    .line 1766
    invoke-virtual {p1, v7}, Lcom/google/android/mms/pdu/PduPart;->setContentTransferEncoding([B)V

    .line 1769
    :cond_a1
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v6

    .line 1770
    sub-int v8, v4, v6

    sub-int v3, p2, v8

    .line 1771
    goto :goto_2a

    .line 1776
    .end local v5           #tempHeader:[B
    .end local v7           #tempValue:[B
    :cond_aa
    const/4 v8, -0x1

    invoke-static {p0, v3}, Lcom/google/android/mms/pdu/PduParser;->skipWapValue(Ljava/io/ByteArrayInputStream;I)I

    move-result v9

    if-ne v8, v9, :cond_ba

    .line 1777
    const-string v8, "PduParser"

    const-string v9, "Corrupt Part headers"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1778
    const/4 v8, 0x0

    goto :goto_55

    .line 1780
    :cond_ba
    const/4 v3, 0x0

    goto/16 :goto_2a

    .line 1784
    .end local v2           #header:I
    :cond_bd
    if-eqz v3, :cond_c8

    .line 1785
    const-string v8, "PduParser"

    const-string v9, "Corrupt Part headers"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1786
    const/4 v8, 0x0

    goto :goto_55

    .line 1789
    :cond_c8
    const/4 v8, 0x1

    goto :goto_55

    .line 1656
    :sswitch_data_ca
    .sparse-switch
        0x8e -> :sswitch_56
        0xae -> :sswitch_2a
        0xc0 -> :sswitch_69
        0xc5 -> :sswitch_2a
    .end sparse-switch
.end method

.method protected static parseParts(Ljava/io/ByteArrayInputStream;[B)Lcom/google/android/mms/pdu/PduBody;
    .registers 28
    .parameter "pduDataStream"
    .parameter "contType"

    .prologue
    .line 787
    if-nez p0, :cond_4

    .line 788
    const/4 v3, 0x0

    .line 924
    :cond_3
    :goto_3
    return-object v3

    .line 791
    :cond_4
    const/4 v7, 0x0

    .line 792
    .local v7, count:I
    new-instance v3, Lcom/google/android/mms/pdu/PduBody;

    invoke-direct {v3}, Lcom/google/android/mms/pdu/PduBody;-><init>()V

    .line 794
    .local v3, body:Lcom/google/android/mms/pdu/PduBody;
    new-instance v8, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Ljava/lang/String;-><init>([B)V

    .line 795
    .local v8, ctTypeStr:Ljava/lang/String;
    const-string v24, "application/vnd.wap.multipart.mixed"

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_25

    const-string v24, "application/vnd.wap.multipart.related"

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_178

    .line 798
    :cond_25
    invoke-static/range {p0 .. p0}, Lcom/google/android/mms/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v7

    .line 800
    const/4 v13, 0x0

    .local v13, i:I
    :goto_2a
    if-ge v13, v7, :cond_3

    .line 801
    invoke-static/range {p0 .. p0}, Lcom/google/android/mms/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v12

    .line 802
    .local v12, headerLength:I
    invoke-static/range {p0 .. p0}, Lcom/google/android/mms/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v9

    .line 803
    .local v9, dataLength:I
    new-instance v16, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 804
    .local v16, part:Lcom/google/android/mms/pdu/PduPart;
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v23

    .line 805
    .local v23, startPos:I
    if-gtz v23, :cond_41

    .line 807
    const/4 v3, 0x0

    goto :goto_3

    .line 811
    :cond_41
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 812
    .local v14, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/google/android/mms/pdu/PduParser;->parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B

    move-result-object v6

    .line 813
    .local v6, contentType:[B
    if-eqz v6, :cond_a0

    .line 814
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 820
    :goto_53
    const/16 v24, 0x97

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, [B

    move-object/from16 v15, v24

    check-cast v15, [B

    .line 821
    .local v15, name:[B
    if-eqz v15, :cond_6c

    .line 822
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/google/android/mms/pdu/PduPart;->setName([B)V

    .line 826
    :cond_6c
    const/16 v24, 0x81

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 827
    .local v4, charset:Ljava/lang/Integer;
    if-eqz v4, :cond_87

    .line 828
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setCharset(I)V

    .line 832
    :cond_87
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v11

    .line 833
    .local v11, endPos:I
    sub-int v24, v23, v11

    sub-int v20, v12, v24

    .line 834
    .local v20, partHeaderLen:I
    if-lez v20, :cond_b2

    .line 835
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/google/android/mms/pdu/PduParser;->parsePartHeaders(Ljava/io/ByteArrayInputStream;Lcom/google/android/mms/pdu/PduPart;I)Z

    move-result v24

    if-nez v24, :cond_b7

    .line 837
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 816
    .end local v4           #charset:Ljava/lang/Integer;
    .end local v11           #endPos:I
    .end local v15           #name:[B
    .end local v20           #partHeaderLen:I
    :cond_a0
    sget-object v24, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    const/16 v25, 0x0

    aget-object v24, v24, v25

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->getBytes()[B

    move-result-object v24

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    goto :goto_53

    .line 839
    .restart local v4       #charset:Ljava/lang/Integer;
    .restart local v11       #endPos:I
    .restart local v15       #name:[B
    .restart local v20       #partHeaderLen:I
    :cond_b2
    if-gez v20, :cond_b7

    .line 841
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 847
    :cond_b7
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v24

    if-nez v24, :cond_e2

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v24

    if-nez v24, :cond_e2

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v24

    if-nez v24, :cond_e2

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v24

    if-nez v24, :cond_e2

    .line 851
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->toOctalString(J)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->getBytes()[B

    move-result-object v24

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 856
    :cond_e2
    if-lez v9, :cond_123

    .line 857
    new-array v0, v9, [B

    move-object/from16 v18, v0

    .line 858
    .local v18, partData:[B
    new-instance v17, Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v24

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 859
    .local v17, partContentType:Ljava/lang/String;
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2, v9}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 860
    const-string v24, "application/vnd.wap.multipart.alternative"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_136

    .line 862
    new-instance v24, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, v24

    invoke-static {v0, v6}, Lcom/google/android/mms/pdu/PduParser;->parseParts(Ljava/io/ByteArrayInputStream;[B)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v5

    .line 864
    .local v5, childBody:Lcom/google/android/mms/pdu/PduBody;
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v16

    .line 889
    .end local v5           #childBody:Lcom/google/android/mms/pdu/PduBody;
    .end local v17           #partContentType:Ljava/lang/String;
    .end local v18           #partData:[B
    :cond_123
    :goto_123
    invoke-static/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduParser;->checkPartPosition(Lcom/google/android/mms/pdu/PduPart;)I

    move-result v24

    if-nez v24, :cond_172

    .line 891
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v3, v0, v1}, Lcom/google/android/mms/pdu/PduBody;->addPart(ILcom/google/android/mms/pdu/PduPart;)V

    .line 800
    :goto_132
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2a

    .line 867
    .restart local v17       #partContentType:Ljava/lang/String;
    .restart local v18       #partData:[B
    :cond_136
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduPart;->getContentTransferEncoding()[B

    move-result-object v19

    .line 868
    .local v19, partDataEncoding:[B
    if-eqz v19, :cond_151

    .line 869
    new-instance v10, Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-direct {v10, v0}, Ljava/lang/String;-><init>([B)V

    .line 870
    .local v10, encoding:Ljava/lang/String;
    const-string v24, "base64"

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_15b

    .line 872
    invoke-static/range {v18 .. v18}, Lcom/google/android/mms/pdu/Base64;->decodeBase64([B)[B

    move-result-object v18

    .line 880
    .end local v10           #encoding:Ljava/lang/String;
    :cond_151
    :goto_151
    if-nez v18, :cond_16a

    .line 881
    const-string v24, "Decode part data error!"

    invoke-static/range {v24 .. v24}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 882
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 873
    .restart local v10       #encoding:Ljava/lang/String;
    :cond_15b
    const-string v24, "quoted-printable"

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_151

    .line 875
    invoke-static/range {v18 .. v18}, Lcom/google/android/mms/pdu/QuotedPrintable;->decodeQuotedPrintable([B)[B

    move-result-object v18

    goto :goto_151

    .line 884
    .end local v10           #encoding:Ljava/lang/String;
    :cond_16a
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    goto :goto_123

    .line 894
    .end local v17           #partContentType:Ljava/lang/String;
    .end local v18           #partData:[B
    .end local v19           #partDataEncoding:[B
    :cond_172
    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/google/android/mms/pdu/PduBody;->addPart(Lcom/google/android/mms/pdu/PduPart;)Z

    goto :goto_132

    .line 899
    .end local v4           #charset:Ljava/lang/Integer;
    .end local v6           #contentType:[B
    .end local v9           #dataLength:I
    .end local v11           #endPos:I
    .end local v12           #headerLength:I
    .end local v13           #i:I
    .end local v14           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    .end local v15           #name:[B
    .end local v16           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v20           #partHeaderLen:I
    .end local v23           #startPos:I
    :cond_178
    const-string v24, "text/plain"

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_3

    .line 901
    new-instance v21, Ljava/lang/String;

    const-string v24, "<smil><head><layout><root-layout width=\"320px\" height=\"480px\"/><region id=\"Text\" left=\"0\" top=\"320\" width=\"320px\" height=\"160px\" fit=\"meet\"/></layout></head><body><par><text src=\"attach.txt\" region=\"Text\"/></par></body></smil>"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 906
    .local v21, smilDoc:Ljava/lang/String;
    new-instance v22, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct/range {v22 .. v22}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 907
    .local v22, smilPart:Lcom/google/android/mms/pdu/PduPart;
    const-string v24, "smil.txt"

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->getBytes()[B

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    .line 908
    const-string v24, "smil.txt"

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->getBytes()[B

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 909
    const-string v24, "application/smil"

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->getBytes()[B

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 910
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    .line 911
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Lcom/google/android/mms/pdu/PduBody;->addPart(ILcom/google/android/mms/pdu/PduPart;)V

    .line 913
    new-instance v16, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 914
    .restart local v16       #part:Lcom/google/android/mms/pdu/PduPart;
    const-string v24, "attach.txt"

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->getBytes()[B

    move-result-object v24

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 915
    const-string v24, "attach.txt"

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->getBytes()[B

    move-result-object v24

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    .line 916
    const-string v24, "text/plain"

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->getBytes()[B

    move-result-object v24

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 917
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v9

    .line 918
    .restart local v9       #dataLength:I
    new-array v0, v9, [B

    move-object/from16 v18, v0

    .line 919
    .restart local v18       #partData:[B
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2, v9}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 920
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    .line 921
    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/google/android/mms/pdu/PduBody;->addPart(Lcom/google/android/mms/pdu/PduPart;)Z

    goto/16 :goto_3
.end method

.method protected static parseShortInteger(Ljava/io/ByteArrayInputStream;)I
    .registers 3
    .parameter "pduDataStream"

    .prologue
    .line 1238
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_c

    if-nez p0, :cond_c

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1239
    :cond_c
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1240
    .local v0, temp:I
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_1d

    const/4 v1, -0x1

    if-ne v1, v0, :cond_1d

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1241
    :cond_1d
    and-int/lit8 v1, v0, 0x7f

    return v1
.end method

.method protected static parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I
    .registers 5
    .parameter "pduDataStream"

    .prologue
    const/4 v3, -0x1

    .line 950
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_d

    if-nez p0, :cond_d

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 951
    :cond_d
    const/4 v0, 0x0

    .line 952
    .local v0, result:I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 953
    .local v1, temp:I
    if-ne v1, v3, :cond_16

    move v2, v1

    .line 969
    :goto_15
    return v2

    .line 957
    :cond_16
    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_27

    .line 958
    shl-int/lit8 v0, v0, 0x7

    .line 959
    and-int/lit8 v2, v1, 0x7f

    or-int/2addr v0, v2

    .line 960
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 961
    if-ne v1, v3, :cond_16

    move v2, v1

    .line 962
    goto :goto_15

    .line 966
    :cond_27
    shl-int/lit8 v0, v0, 0x7

    .line 967
    and-int/lit8 v2, v1, 0x7f

    or-int/2addr v0, v2

    move v2, v0

    .line 969
    goto :goto_15
.end method

.method protected static parseValueLength(Ljava/io/ByteArrayInputStream;)I
    .registers 5
    .parameter "pduDataStream"

    .prologue
    .line 987
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_c

    if-nez p0, :cond_c

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 988
    :cond_c
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 989
    .local v1, temp:I
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_1d

    const/4 v2, -0x1

    if-ne v2, v1, :cond_1d

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 990
    :cond_1d
    and-int/lit16 v0, v1, 0xff

    .line 992
    .local v0, first:I
    const/16 v2, 0x1e

    if-gt v0, v2, :cond_24

    .line 995
    .end local v0           #first:I
    :goto_23
    return v0

    .line 994
    .restart local v0       #first:I
    :cond_24
    const/16 v2, 0x1f

    if-ne v0, v2, :cond_2d

    .line 995
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    goto :goto_23

    .line 998
    :cond_2d
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Value length > LENGTH_QUOTE!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected static parseWapString(Ljava/io/ByteArrayInputStream;I)[B
    .registers 5
    .parameter "pduDataStream"
    .parameter "stringType"

    .prologue
    const/4 v2, 0x1

    .line 1062
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_d

    if-nez p0, :cond_d

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1080
    :cond_d
    invoke-virtual {p0, v2}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1083
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1084
    .local v0, temp:I
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_21

    const/4 v1, -0x1

    if-ne v1, v0, :cond_21

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1085
    :cond_21
    if-ne v2, p1, :cond_2f

    const/16 v1, 0x22

    if-ne v1, v0, :cond_2f

    .line 1088
    invoke-virtual {p0, v2}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1103
    :goto_2a
    invoke-static {p0, p1}, Lcom/google/android/mms/pdu/PduParser;->getWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v1

    return-object v1

    .line 1089
    :cond_2f
    if-nez p1, :cond_39

    const/16 v1, 0x7f

    if-ne v1, v0, :cond_39

    .line 1092
    invoke-virtual {p0, v2}, Ljava/io/ByteArrayInputStream;->mark(I)V

    goto :goto_2a

    .line 1095
    :cond_39
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    goto :goto_2a
.end method

.method protected static skipWapValue(Ljava/io/ByteArrayInputStream;I)I
    .registers 5
    .parameter "pduDataStream"
    .parameter "length"

    .prologue
    .line 1313
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_c

    if-nez p0, :cond_c

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1314
    :cond_c
    new-array v0, p1, [B

    .line 1315
    .local v0, area:[B
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, p1}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result v1

    .line 1316
    .local v1, readLen:I
    if-ge v1, p1, :cond_16

    .line 1317
    const/4 v1, -0x1

    .line 1319
    .end local v1           #readLen:I
    :cond_16
    return v1
.end method


# virtual methods
.method public parse()Lcom/google/android/mms/pdu/GenericPdu;
    .registers 19

    .prologue
    .line 110
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    if-nez v15, :cond_8

    .line 111
    const/4 v12, 0x0

    .line 217
    :cond_7
    :goto_7
    return-object v12

    .line 115
    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/google/android/mms/pdu/PduParser;->parseHeaders(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/PduHeaders;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    .line 116
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    if-nez v15, :cond_1e

    .line 118
    const/4 v12, 0x0

    goto :goto_7

    .line 122
    :cond_1e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v16, 0x8c

    invoke-virtual/range {v15 .. v16}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v7

    .line 128
    .local v7, messageType:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v16, 0x84

    invoke-virtual/range {v15 .. v16}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v2

    .line 131
    .local v2, contType:[B
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-static {v15}, Lcom/google/android/mms/pdu/PduParser;->checkMandatoryHeader(Lcom/google/android/mms/pdu/PduHeaders;)Z

    move-result v15

    if-nez v15, :cond_43

    .line 132
    const-string v15, "check mandatory headers failed!"

    invoke-static {v15}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 133
    const/4 v12, 0x0

    goto :goto_7

    .line 136
    :cond_43
    const/16 v15, 0x80

    if-eq v15, v7, :cond_4b

    const/16 v15, 0x84

    if-ne v15, v7, :cond_7b

    .line 140
    :cond_4b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    invoke-static {v15, v2}, Lcom/google/android/mms/pdu/PduParser;->parseParts(Ljava/io/ByteArrayInputStream;[B)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    .line 142
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    if-nez v15, :cond_5f

    .line 144
    const/4 v12, 0x0

    goto :goto_7

    .line 147
    :cond_5f
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    .line 148
    .local v4, ctTypeStr:Ljava/lang/String;
    const-string v15, "text/plain"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7b

    .line 150
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const-string v16, "application/vnd.wap.multipart.mixed"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    const/16 v17, 0x84

    invoke-virtual/range {v15 .. v17}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    .line 156
    .end local v4           #ctTypeStr:Ljava/lang/String;
    :cond_7b
    packed-switch v7, :pswitch_data_154

    .line 216
    const-string v15, "Parser doesn\'t support this message type in this version!"

    invoke-static {v15}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 217
    const/4 v12, 0x0

    goto :goto_7

    .line 158
    :pswitch_85
    new-instance v14, Lcom/google/android/mms/pdu/SendReq;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    move-object/from16 v16, v0

    invoke-direct/range {v14 .. v16}, Lcom/google/android/mms/pdu/SendReq;-><init>(Lcom/google/android/mms/pdu/PduHeaders;Lcom/google/android/mms/pdu/PduBody;)V

    .local v14, sendReq:Lcom/google/android/mms/pdu/SendReq;
    move-object v12, v14

    .line 159
    goto/16 :goto_7

    .line 161
    .end local v14           #sendReq:Lcom/google/android/mms/pdu/SendReq;
    :pswitch_97
    new-instance v13, Lcom/google/android/mms/pdu/SendConf;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v13, v15}, Lcom/google/android/mms/pdu/SendConf;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v13, sendConf:Lcom/google/android/mms/pdu/SendConf;
    move-object v12, v13

    .line 162
    goto/16 :goto_7

    .line 164
    .end local v13           #sendConf:Lcom/google/android/mms/pdu/SendConf;
    :pswitch_a3
    new-instance v8, Lcom/google/android/mms/pdu/NotificationInd;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v8, v15}, Lcom/google/android/mms/pdu/NotificationInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v8, notificationInd:Lcom/google/android/mms/pdu/NotificationInd;
    move-object v12, v8

    .line 166
    goto/16 :goto_7

    .line 168
    .end local v8           #notificationInd:Lcom/google/android/mms/pdu/NotificationInd;
    :pswitch_af
    new-instance v9, Lcom/google/android/mms/pdu/NotifyRespInd;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v9, v15}, Lcom/google/android/mms/pdu/NotifyRespInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v9, notifyRespInd:Lcom/google/android/mms/pdu/NotifyRespInd;
    move-object v12, v9

    .line 170
    goto/16 :goto_7

    .line 172
    .end local v9           #notifyRespInd:Lcom/google/android/mms/pdu/NotifyRespInd;
    :pswitch_bb
    new-instance v12, Lcom/google/android/mms/pdu/RetrieveConf;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v12, v15, v0}, Lcom/google/android/mms/pdu/RetrieveConf;-><init>(Lcom/google/android/mms/pdu/PduHeaders;Lcom/google/android/mms/pdu/PduBody;)V

    .line 175
    .local v12, retrieveConf:Lcom/google/android/mms/pdu/RetrieveConf;
    invoke-virtual {v12}, Lcom/google/android/mms/pdu/RetrieveConf;->getContentType()[B

    move-result-object v3

    .line 176
    .local v3, contentType:[B
    if-nez v3, :cond_d5

    .line 177
    const/4 v12, 0x0

    goto/16 :goto_7

    .line 179
    :cond_d5
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    .line 181
    .restart local v4       #ctTypeStr:Ljava/lang/String;
    const-string v15, "application/vnd.wap.multipart.mixed"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_7

    const-string v15, "application/vnd.wap.multipart.related"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_7

    const-string v15, "text/plain"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_7

    const-string v15, "application/vnd.wap.multipart.alternative"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_7

    .line 190
    const-string v15, "application/vnd.wap.multipart.alternative"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_120

    .line 193
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v6

    .line 194
    .local v6, firstPart:Lcom/google/android/mms/pdu/PduPart;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    invoke-virtual {v15}, Lcom/google/android/mms/pdu/PduBody;->removeAll()V

    .line 195
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v15, v0, v6}, Lcom/google/android/mms/pdu/PduBody;->addPart(ILcom/google/android/mms/pdu/PduPart;)V

    goto/16 :goto_7

    .line 198
    .end local v6           #firstPart:Lcom/google/android/mms/pdu/PduPart;
    :cond_120
    const/4 v12, 0x0

    goto/16 :goto_7

    .line 200
    .end local v3           #contentType:[B
    .end local v4           #ctTypeStr:Ljava/lang/String;
    .end local v12           #retrieveConf:Lcom/google/android/mms/pdu/RetrieveConf;
    :pswitch_123
    new-instance v5, Lcom/google/android/mms/pdu/DeliveryInd;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v5, v15}, Lcom/google/android/mms/pdu/DeliveryInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v5, deliveryInd:Lcom/google/android/mms/pdu/DeliveryInd;
    move-object v12, v5

    .line 202
    goto/16 :goto_7

    .line 204
    .end local v5           #deliveryInd:Lcom/google/android/mms/pdu/DeliveryInd;
    :pswitch_12f
    new-instance v1, Lcom/google/android/mms/pdu/AcknowledgeInd;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v1, v15}, Lcom/google/android/mms/pdu/AcknowledgeInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v1, acknowledgeInd:Lcom/google/android/mms/pdu/AcknowledgeInd;
    move-object v12, v1

    .line 206
    goto/16 :goto_7

    .line 208
    .end local v1           #acknowledgeInd:Lcom/google/android/mms/pdu/AcknowledgeInd;
    :pswitch_13b
    new-instance v10, Lcom/google/android/mms/pdu/ReadOrigInd;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v10, v15}, Lcom/google/android/mms/pdu/ReadOrigInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v10, readOrigInd:Lcom/google/android/mms/pdu/ReadOrigInd;
    move-object v12, v10

    .line 210
    goto/16 :goto_7

    .line 212
    .end local v10           #readOrigInd:Lcom/google/android/mms/pdu/ReadOrigInd;
    :pswitch_147
    new-instance v11, Lcom/google/android/mms/pdu/ReadRecInd;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v11, v15}, Lcom/google/android/mms/pdu/ReadRecInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v11, readRecInd:Lcom/google/android/mms/pdu/ReadRecInd;
    move-object v12, v11

    .line 214
    goto/16 :goto_7

    .line 156
    nop

    :pswitch_data_154
    .packed-switch 0x80
        :pswitch_85
        :pswitch_97
        :pswitch_a3
        :pswitch_af
        :pswitch_bb
        :pswitch_12f
        :pswitch_123
        :pswitch_147
        :pswitch_13b
    .end packed-switch
.end method

.method protected parseHeaders(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/PduHeaders;
    .registers 33
    .parameter "pduDataStream"

    .prologue
    .line 228
    if-nez p1, :cond_4

    .line 229
    const/4 v11, 0x0

    .line 776
    :cond_3
    :goto_3
    return-object v11

    .line 232
    :cond_4
    const/4 v12, 0x1

    .line 233
    .local v12, keepParsing:Z
    new-instance v11, Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v11}, Lcom/google/android/mms/pdu/PduHeaders;-><init>()V

    .line 235
    .local v11, headers:Lcom/google/android/mms/pdu/PduHeaders;
    :cond_a
    :goto_a
    if-eqz v12, :cond_3

    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v27

    if-lez v27, :cond_3

    .line 236
    const/16 v27, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 237
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v10

    .line 239
    .local v10, headerField:I
    const/16 v27, 0x20

    move/from16 v0, v27

    if-lt v10, v0, :cond_39

    const/16 v27, 0x7f

    move/from16 v0, v27

    if-gt v10, v0, :cond_39

    .line 240
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 241
    const/16 v27, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v4

    .line 246
    .local v4, bVal:[B
    goto :goto_a

    .line 248
    .end local v4           #bVal:[B
    :cond_39
    packed-switch v10, :pswitch_data_564

    .line 771
    :pswitch_3c
    const-string v27, "Unknown header"

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto :goto_a

    .line 251
    :pswitch_42
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v16

    .line 252
    .local v16, messageType:I
    packed-switch v16, :pswitch_data_5e6

    .line 272
    :try_start_49
    move/from16 v0, v16

    invoke-virtual {v11, v0, v10}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V
    :try_end_4e
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_49 .. :try_end_4e} :catch_4f
    .catch Ljava/lang/RuntimeException; {:try_start_49 .. :try_end_4e} :catch_7a

    goto :goto_a

    .line 273
    :catch_4f
    move-exception v6

    .line 274
    .local v6, e:Lcom/google/android/mms/InvalidHeaderValueException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Set invalid Octet value: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " into the header filed: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 276
    const/4 v11, 0x0

    goto :goto_3

    .line 269
    .end local v6           #e:Lcom/google/android/mms/InvalidHeaderValueException;
    :pswitch_78
    const/4 v11, 0x0

    goto :goto_3

    .line 277
    :catch_7a
    move-exception v6

    .line 278
    .local v6, e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Octet header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 279
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 312
    .end local v6           #e:Ljava/lang/RuntimeException;
    .end local v16           #messageType:I
    :pswitch_96
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v24

    .line 315
    .local v24, value:I
    :try_start_9a
    move/from16 v0, v24

    invoke-virtual {v11, v0, v10}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V
    :try_end_9f
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_9a .. :try_end_9f} :catch_a1
    .catch Ljava/lang/RuntimeException; {:try_start_9a .. :try_end_9f} :catch_cb

    goto/16 :goto_a

    .line 316
    :catch_a1
    move-exception v6

    .line 317
    .local v6, e:Lcom/google/android/mms/InvalidHeaderValueException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Set invalid Octet value: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " into the header filed: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 319
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 320
    .end local v6           #e:Lcom/google/android/mms/InvalidHeaderValueException;
    :catch_cb
    move-exception v6

    .line 321
    .local v6, e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Octet header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 322
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 333
    .end local v6           #e:Ljava/lang/RuntimeException;
    .end local v24           #value:I
    :pswitch_e7
    :try_start_e7
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v24

    .line 334
    .local v24, value:J
    move-wide/from16 v0, v24

    invoke-virtual {v11, v0, v1, v10}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_f0
    .catch Ljava/lang/RuntimeException; {:try_start_e7 .. :try_end_f0} :catch_f2

    goto/16 :goto_a

    .line 335
    .end local v24           #value:J
    :catch_f2
    move-exception v6

    .line 336
    .restart local v6       #e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Long-Integer header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 337
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 348
    .end local v6           #e:Ljava/lang/RuntimeException;
    :pswitch_10e
    :try_start_10e
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v24

    .line 349
    .restart local v24       #value:J
    move-wide/from16 v0, v24

    invoke-virtual {v11, v0, v1, v10}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_117
    .catch Ljava/lang/RuntimeException; {:try_start_10e .. :try_end_117} :catch_119

    goto/16 :goto_a

    .line 350
    .end local v24           #value:J
    :catch_119
    move-exception v6

    .line 351
    .restart local v6       #e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Long-Integer header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 352
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 378
    .end local v6           #e:Ljava/lang/RuntimeException;
    :pswitch_135
    const/16 v27, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v24

    .line 379
    .local v24, value:[B
    if-eqz v24, :cond_a

    .line 381
    :try_start_141
    move-object/from16 v0, v24

    invoke-virtual {v11, v0, v10}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_146
    .catch Ljava/lang/NullPointerException; {:try_start_141 .. :try_end_146} :catch_148
    .catch Ljava/lang/RuntimeException; {:try_start_141 .. :try_end_146} :catch_150

    goto/16 :goto_a

    .line 382
    :catch_148
    move-exception v6

    .line 383
    .local v6, e:Ljava/lang/NullPointerException;
    const-string v27, "null pointer error!"

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 384
    .end local v6           #e:Ljava/lang/NullPointerException;
    :catch_150
    move-exception v6

    .line 385
    .local v6, e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Text-String header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 386
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 428
    .end local v6           #e:Ljava/lang/RuntimeException;
    .end local v24           #value:[B
    :pswitch_16c
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v24

    .line 430
    .local v24, value:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v24, :cond_a

    .line 432
    :try_start_172
    move-object/from16 v0, v24

    invoke-virtual {v11, v0, v10}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_177
    .catch Ljava/lang/NullPointerException; {:try_start_172 .. :try_end_177} :catch_179
    .catch Ljava/lang/RuntimeException; {:try_start_172 .. :try_end_177} :catch_181

    goto/16 :goto_a

    .line 433
    :catch_179
    move-exception v6

    .line 434
    .local v6, e:Ljava/lang/NullPointerException;
    const-string v27, "null pointer error!"

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 435
    .end local v6           #e:Ljava/lang/NullPointerException;
    :catch_181
    move-exception v6

    .line 436
    .local v6, e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 437
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 448
    .end local v6           #e:Ljava/lang/RuntimeException;
    .end local v24           #value:Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_19d
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v24

    .line 450
    .restart local v24       #value:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v24, :cond_a

    .line 451
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v3

    .line 452
    .local v3, address:[B
    if-eqz v3, :cond_1d1

    .line 453
    new-instance v20, Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    .line 454
    .local v20, str:Ljava/lang/String;
    const-string v27, "/"

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 455
    .local v7, endIndex:I
    if-lez v7, :cond_1c6

    .line 456
    const/16 v27, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v27

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 459
    :cond_1c6
    :try_start_1c6
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/EncodedStringValue;->setTextString([B)V
    :try_end_1d1
    .catch Ljava/lang/NullPointerException; {:try_start_1c6 .. :try_end_1d1} :catch_1e0

    .line 467
    .end local v7           #endIndex:I
    .end local v20           #str:Ljava/lang/String;
    :cond_1d1
    :try_start_1d1
    move-object/from16 v0, v24

    invoke-virtual {v11, v0, v10}, Lcom/google/android/mms/pdu/PduHeaders;->appendEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_1d6
    .catch Ljava/lang/NullPointerException; {:try_start_1d1 .. :try_end_1d6} :catch_1d8
    .catch Ljava/lang/RuntimeException; {:try_start_1d1 .. :try_end_1d6} :catch_1e9

    goto/16 :goto_a

    .line 468
    :catch_1d8
    move-exception v6

    .line 469
    .local v6, e:Ljava/lang/NullPointerException;
    const-string v27, "null pointer error!"

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 460
    .end local v6           #e:Ljava/lang/NullPointerException;
    .restart local v7       #endIndex:I
    .restart local v20       #str:Ljava/lang/String;
    :catch_1e0
    move-exception v6

    .line 461
    .restart local v6       #e:Ljava/lang/NullPointerException;
    const-string v27, "null pointer error!"

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 462
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 470
    .end local v6           #e:Ljava/lang/NullPointerException;
    .end local v7           #endIndex:I
    .end local v20           #str:Ljava/lang/String;
    :catch_1e9
    move-exception v6

    .line 471
    .local v6, e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 472
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 485
    .end local v3           #address:[B
    .end local v6           #e:Ljava/lang/RuntimeException;
    .end local v24           #value:Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_205
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 488
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v23

    .line 493
    .local v23, token:I
    :try_start_20c
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J
    :try_end_20f
    .catch Ljava/lang/RuntimeException; {:try_start_20c .. :try_end_20f} :catch_245

    move-result-wide v21

    .line 498
    .local v21, timeValue:J
    const/16 v27, 0x81

    move/from16 v0, v27

    move/from16 v1, v23

    if-ne v0, v1, :cond_222

    .line 501
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v27

    const-wide/16 v29, 0x3e8

    div-long v27, v27, v29

    add-long v21, v21, v27

    .line 505
    :cond_222
    :try_start_222
    move-wide/from16 v0, v21

    invoke-virtual {v11, v0, v1, v10}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_227
    .catch Ljava/lang/RuntimeException; {:try_start_222 .. :try_end_227} :catch_229

    goto/16 :goto_a

    .line 506
    :catch_229
    move-exception v6

    .line 507
    .restart local v6       #e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Long-Integer header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 508
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 494
    .end local v6           #e:Ljava/lang/RuntimeException;
    .end local v21           #timeValue:J
    :catch_245
    move-exception v6

    .line 495
    .restart local v6       #e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Long-Integer header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 496
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 518
    .end local v6           #e:Ljava/lang/RuntimeException;
    .end local v23           #token:I
    :pswitch_261
    const/4 v8, 0x0

    .line 519
    .local v8, from:Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 522
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v9

    .line 525
    .local v9, fromToken:I
    const/16 v27, 0x80

    move/from16 v0, v27

    if-ne v0, v9, :cond_2bb

    .line 527
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v8

    .line 528
    if-eqz v8, :cond_2a1

    .line 529
    invoke-virtual {v8}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v3

    .line 530
    .restart local v3       #address:[B
    if-eqz v3, :cond_2a1

    .line 531
    new-instance v20, Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    .line 532
    .restart local v20       #str:Ljava/lang/String;
    const-string v27, "/"

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 533
    .restart local v7       #endIndex:I
    if-lez v7, :cond_298

    .line 534
    const/16 v27, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v27

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 537
    :cond_298
    :try_start_298
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v8, v0}, Lcom/google/android/mms/pdu/EncodedStringValue;->setTextString([B)V
    :try_end_2a1
    .catch Ljava/lang/NullPointerException; {:try_start_298 .. :try_end_2a1} :catch_2b2

    .line 555
    .end local v3           #address:[B
    .end local v7           #endIndex:I
    .end local v20           #str:Ljava/lang/String;
    :cond_2a1
    :goto_2a1
    const/16 v27, 0x89

    :try_start_2a3
    move/from16 v0, v27

    invoke-virtual {v11, v8, v0}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_2a8
    .catch Ljava/lang/NullPointerException; {:try_start_2a3 .. :try_end_2a8} :catch_2aa
    .catch Ljava/lang/RuntimeException; {:try_start_2a3 .. :try_end_2a8} :catch_2e5

    goto/16 :goto_a

    .line 556
    :catch_2aa
    move-exception v6

    .line 557
    .local v6, e:Ljava/lang/NullPointerException;
    const-string v27, "null pointer error!"

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 538
    .end local v6           #e:Ljava/lang/NullPointerException;
    .restart local v3       #address:[B
    .restart local v7       #endIndex:I
    .restart local v20       #str:Ljava/lang/String;
    :catch_2b2
    move-exception v6

    .line 539
    .restart local v6       #e:Ljava/lang/NullPointerException;
    const-string v27, "null pointer error!"

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 540
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 546
    .end local v3           #address:[B
    .end local v6           #e:Ljava/lang/NullPointerException;
    .end local v7           #endIndex:I
    .end local v20           #str:Ljava/lang/String;
    :cond_2bb
    :try_start_2bb
    new-instance v8, Lcom/google/android/mms/pdu/EncodedStringValue;

    .end local v8           #from:Lcom/google/android/mms/pdu/EncodedStringValue;
    const-string v27, "insert-address-token"

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    move-object/from16 v0, v27

    invoke-direct {v8, v0}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>([B)V
    :try_end_2c8
    .catch Ljava/lang/NullPointerException; {:try_start_2bb .. :try_end_2c8} :catch_2c9

    .restart local v8       #from:Lcom/google/android/mms/pdu/EncodedStringValue;
    goto :goto_2a1

    .line 548
    .end local v8           #from:Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_2c9
    move-exception v6

    .line 549
    .restart local v6       #e:Ljava/lang/NullPointerException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 550
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 558
    .end local v6           #e:Ljava/lang/NullPointerException;
    .restart local v8       #from:Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_2e5
    move-exception v6

    .line 559
    .local v6, e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 560
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 567
    .end local v6           #e:Ljava/lang/RuntimeException;
    .end local v8           #from:Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v9           #fromToken:I
    :pswitch_301
    const/16 v27, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 568
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v14

    .line 570
    .local v14, messageClass:I
    const/16 v27, 0x80

    move/from16 v0, v27

    if-lt v14, v0, :cond_394

    .line 573
    const/16 v27, 0x80

    move/from16 v0, v27

    if-ne v0, v14, :cond_333

    .line 574
    :try_start_31a
    const-string v27, "personal"

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    const/16 v28, 0x8a

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v11, v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_329
    .catch Ljava/lang/NullPointerException; {:try_start_31a .. :try_end_329} :catch_32b
    .catch Ljava/lang/RuntimeException; {:try_start_31a .. :try_end_329} :catch_34a

    goto/16 :goto_a

    .line 590
    :catch_32b
    move-exception v6

    .line 591
    .local v6, e:Ljava/lang/NullPointerException;
    const-string v27, "null pointer error!"

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 577
    .end local v6           #e:Ljava/lang/NullPointerException;
    :cond_333
    const/16 v27, 0x81

    move/from16 v0, v27

    if-ne v0, v14, :cond_366

    .line 578
    :try_start_339
    const-string v27, "advertisement"

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    const/16 v28, 0x8a

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v11, v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_348
    .catch Ljava/lang/NullPointerException; {:try_start_339 .. :try_end_348} :catch_32b
    .catch Ljava/lang/RuntimeException; {:try_start_339 .. :try_end_348} :catch_34a

    goto/16 :goto_a

    .line 592
    :catch_34a
    move-exception v6

    .line 593
    .local v6, e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Text-String header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 594
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 581
    .end local v6           #e:Ljava/lang/RuntimeException;
    :cond_366
    const/16 v27, 0x82

    move/from16 v0, v27

    if-ne v0, v14, :cond_37d

    .line 582
    :try_start_36c
    const-string v27, "informational"

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    const/16 v28, 0x8a

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v11, v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    goto/16 :goto_a

    .line 585
    :cond_37d
    const/16 v27, 0x83

    move/from16 v0, v27

    if-ne v0, v14, :cond_a

    .line 586
    const-string v27, "auto"

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    const/16 v28, 0x8a

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v11, v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_392
    .catch Ljava/lang/NullPointerException; {:try_start_36c .. :try_end_392} :catch_32b
    .catch Ljava/lang/RuntimeException; {:try_start_36c .. :try_end_392} :catch_34a

    goto/16 :goto_a

    .line 598
    :cond_394
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 599
    const/16 v27, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v15

    .line 600
    .local v15, messageClassString:[B
    if-eqz v15, :cond_a

    .line 602
    const/16 v27, 0x8a

    :try_start_3a5
    move/from16 v0, v27

    invoke-virtual {v11, v15, v0}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_3aa
    .catch Ljava/lang/NullPointerException; {:try_start_3a5 .. :try_end_3aa} :catch_3ac
    .catch Ljava/lang/RuntimeException; {:try_start_3a5 .. :try_end_3aa} :catch_3b4

    goto/16 :goto_a

    .line 603
    :catch_3ac
    move-exception v6

    .line 604
    .local v6, e:Ljava/lang/NullPointerException;
    const-string v27, "null pointer error!"

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 605
    .end local v6           #e:Ljava/lang/NullPointerException;
    :catch_3b4
    move-exception v6

    .line 606
    .local v6, e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Text-String header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 607
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 615
    .end local v6           #e:Ljava/lang/RuntimeException;
    .end local v14           #messageClass:I
    .end local v15           #messageClassString:[B
    :pswitch_3d0
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v26

    .line 618
    .local v26, version:I
    const/16 v27, 0x8d

    :try_start_3d6
    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v11, v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V
    :try_end_3dd
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_3d6 .. :try_end_3dd} :catch_3df
    .catch Ljava/lang/RuntimeException; {:try_start_3d6 .. :try_end_3dd} :catch_409

    goto/16 :goto_a

    .line 619
    :catch_3df
    move-exception v6

    .line 620
    .local v6, e:Lcom/google/android/mms/InvalidHeaderValueException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Set invalid Octet value: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " into the header filed: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 622
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 623
    .end local v6           #e:Lcom/google/android/mms/InvalidHeaderValueException;
    :catch_409
    move-exception v6

    .line 624
    .local v6, e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Octet header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 625
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 634
    .end local v6           #e:Ljava/lang/RuntimeException;
    .end local v26           #version:I
    :pswitch_425
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 638
    :try_start_428
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    :try_end_42b
    .catch Ljava/lang/RuntimeException; {:try_start_428 .. :try_end_42b} :catch_444

    .line 645
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v19

    .line 647
    .local v19, previouslySentBy:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v19, :cond_a

    .line 649
    const/16 v27, 0xa0

    :try_start_433
    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-virtual {v11, v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_43a
    .catch Ljava/lang/NullPointerException; {:try_start_433 .. :try_end_43a} :catch_43c
    .catch Ljava/lang/RuntimeException; {:try_start_433 .. :try_end_43a} :catch_460

    goto/16 :goto_a

    .line 651
    :catch_43c
    move-exception v6

    .line 652
    .local v6, e:Ljava/lang/NullPointerException;
    const-string v27, "null pointer error!"

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 639
    .end local v6           #e:Ljava/lang/NullPointerException;
    .end local v19           #previouslySentBy:Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_444
    move-exception v6

    .line 640
    .local v6, e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " is not Integer-Value"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 641
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 653
    .end local v6           #e:Ljava/lang/RuntimeException;
    .restart local v19       #previouslySentBy:Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_460
    move-exception v6

    .line 654
    .restart local v6       #e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 655
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 665
    .end local v6           #e:Ljava/lang/RuntimeException;
    .end local v19           #previouslySentBy:Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_47c
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 669
    :try_start_47f
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    :try_end_482
    .catch Ljava/lang/RuntimeException; {:try_start_47f .. :try_end_482} :catch_4ad

    .line 677
    :try_start_482
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v17

    .line 678
    .local v17, perviouslySentDate:J
    const/16 v27, 0xa1

    move-wide/from16 v0, v17

    move/from16 v2, v27

    invoke-virtual {v11, v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_48f
    .catch Ljava/lang/RuntimeException; {:try_start_482 .. :try_end_48f} :catch_491

    goto/16 :goto_a

    .line 680
    .end local v17           #perviouslySentDate:J
    :catch_491
    move-exception v6

    .line 681
    .restart local v6       #e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Long-Integer header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 682
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 670
    .end local v6           #e:Ljava/lang/RuntimeException;
    :catch_4ad
    move-exception v6

    .line 671
    .restart local v6       #e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " is not Integer-Value"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 672
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 695
    .end local v6           #e:Ljava/lang/RuntimeException;
    :pswitch_4c9
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 698
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    .line 701
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    goto/16 :goto_a

    .line 714
    :pswitch_4d4
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 717
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    .line 721
    :try_start_4da
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    :try_end_4dd
    .catch Ljava/lang/RuntimeException; {:try_start_4da .. :try_end_4dd} :catch_4df

    goto/16 :goto_a

    .line 722
    :catch_4df
    move-exception v6

    .line 723
    .restart local v6       #e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " is not Integer-Value"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 724
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 733
    .end local v6           #e:Ljava/lang/RuntimeException;
    :pswitch_4fb
    const/16 v27, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B

    goto/16 :goto_a

    .line 741
    :pswitch_506
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 743
    .local v13, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/google/android/mms/pdu/PduParser;->parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B

    move-result-object v5

    .line 746
    .local v5, contentType:[B
    if-eqz v5, :cond_51a

    .line 748
    const/16 v27, 0x84

    :try_start_515
    move/from16 v0, v27

    invoke-virtual {v11, v5, v0}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_51a
    .catch Ljava/lang/NullPointerException; {:try_start_515 .. :try_end_51a} :catch_541
    .catch Ljava/lang/RuntimeException; {:try_start_515 .. :try_end_51a} :catch_548

    .line 758
    :cond_51a
    :goto_51a
    const/16 v27, 0x99

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, [B

    check-cast v27, [B

    sput-object v27, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    .line 761
    const/16 v27, 0x83

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, [B

    check-cast v27, [B

    sput-object v27, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    .line 763
    const/4 v12, 0x0

    .line 764
    goto/16 :goto_a

    .line 749
    :catch_541
    move-exception v6

    .line 750
    .local v6, e:Ljava/lang/NullPointerException;
    const-string v27, "null pointer error!"

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto :goto_51a

    .line 751
    .end local v6           #e:Ljava/lang/NullPointerException;
    :catch_548
    move-exception v6

    .line 752
    .local v6, e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Text-String header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 753
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 248
    :pswitch_data_564
    .packed-switch 0x81
        :pswitch_19d
        :pswitch_19d
        :pswitch_135
        :pswitch_506
        :pswitch_e7
        :pswitch_96
        :pswitch_205
        :pswitch_205
        :pswitch_261
        :pswitch_301
        :pswitch_135
        :pswitch_42
        :pswitch_3d0
        :pswitch_e7
        :pswitch_96
        :pswitch_96
        :pswitch_96
        :pswitch_96
        :pswitch_16c
        :pswitch_96
        :pswitch_96
        :pswitch_16c
        :pswitch_19d
        :pswitch_135
        :pswitch_96
        :pswitch_16c
        :pswitch_96
        :pswitch_96
        :pswitch_205
        :pswitch_135
        :pswitch_e7
        :pswitch_425
        :pswitch_47c
        :pswitch_96
        :pswitch_96
        :pswitch_4c9
        :pswitch_96
        :pswitch_16c
        :pswitch_96
        :pswitch_3c
        :pswitch_96
        :pswitch_4d4
        :pswitch_96
        :pswitch_4d4
        :pswitch_10e
        :pswitch_3c
        :pswitch_10e
        :pswitch_3c
        :pswitch_96
        :pswitch_4fb
        :pswitch_10e
        :pswitch_96
        :pswitch_16c
        :pswitch_16c
        :pswitch_135
        :pswitch_135
        :pswitch_135
        :pswitch_96
        :pswitch_96
        :pswitch_96
        :pswitch_135
        :pswitch_135
        :pswitch_96
    .end packed-switch

    .line 252
    :pswitch_data_5e6
    .packed-switch 0x89
        :pswitch_78
        :pswitch_78
        :pswitch_78
        :pswitch_78
        :pswitch_78
        :pswitch_78
        :pswitch_78
        :pswitch_78
        :pswitch_78
        :pswitch_78
        :pswitch_78
        :pswitch_78
        :pswitch_78
        :pswitch_78
        :pswitch_78
    .end packed-switch
.end method
