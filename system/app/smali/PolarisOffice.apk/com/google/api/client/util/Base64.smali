.class public final Lcom/google/api/client/util/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field public static final ALPHABET:[B = null

.field private static final DECODABET:[B = null

.field private static final EQUALS_SIGN:B = 0x3dt

.field private static final EQUALS_SIGN_ENC:B = -0x1t

.field private static final NEW_LINE:B = 0xat

.field public static final WEBSAFE_ALPHABET:[B = null

.field private static final WEBSAFE_DECODABET:[B = null

.field private static final WHITE_SPACE_ENC:B = -0x5t


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/16 v2, 0x80

    const/16 v1, 0x40

    .line 44
    const-class v0, Lcom/google/api/client/util/Base64;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_2c

    const/4 v0, 0x1

    :goto_d
    sput-boolean v0, Lcom/google/api/client/util/Base64;->$assertionsDisabled:Z

    .line 57
    new-array v0, v1, [B

    fill-array-data v0, :array_2e

    sput-object v0, Lcom/google/api/client/util/Base64;->ALPHABET:[B

    .line 77
    new-array v0, v1, [B

    fill-array-data v0, :array_52

    sput-object v0, Lcom/google/api/client/util/Base64;->WEBSAFE_ALPHABET:[B

    .line 96
    new-array v0, v2, [B

    fill-array-data v0, :array_76

    sput-object v0, Lcom/google/api/client/util/Base64;->DECODABET:[B

    .line 130
    new-array v0, v2, [B

    fill-array-data v0, :array_ba

    sput-object v0, Lcom/google/api/client/util/Base64;->WEBSAFE_DECODABET:[B

    return-void

    .line 44
    :cond_2c
    const/4 v0, 0x0

    goto :goto_d

    .line 57
    :array_2e
    .array-data 0x1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    .line 77
    :array_52
    .array-data 0x1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2dt
        0x5ft
    .end array-data

    .line 96
    :array_76
    .array-data 0x1
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xfbt
        0xfbt
        0xf7t
        0xf7t
        0xfbt
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xfbt
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0x3et
        0xf7t
        0xf7t
        0xf7t
        0x3ft
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        0xf7t
        0xf7t
        0xf7t
        0xfft
        0xf7t
        0xf7t
        0xf7t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
    .end array-data

    .line 130
    :array_ba
    .array-data 0x1
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xfbt
        0xfbt
        0xf7t
        0xf7t
        0xfbt
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xfbt
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0x3et
        0xf7t
        0xf7t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        0xf7t
        0xf7t
        0xf7t
        0xfft
        0xf7t
        0xf7t
        0xf7t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0x3ft
        0xf7t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .registers 5
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/api/client/util/Base64DecoderException;
        }
    .end annotation

    .prologue
    .line 427
    :try_start_0
    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_5} :catch_d

    move-result-object v0

    .line 431
    .local v0, bytes:[B
    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {v0, v2, v3}, Lcom/google/api/client/util/Base64;->decode([BII)[B

    move-result-object v2

    return-object v2

    .line 428
    .end local v0           #bytes:[B
    :catch_d
    move-exception v1

    .line 429
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public static decode([B)[B
    .registers 3
    .parameter "source"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/api/client/util/Base64DecoderException;
        }
    .end annotation

    .prologue
    .line 461
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/google/api/client/util/Base64;->decode([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode([BII)[B
    .registers 4
    .parameter "source"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/api/client/util/Base64DecoderException;
        }
    .end annotation

    .prologue
    .line 490
    sget-object v0, Lcom/google/api/client/util/Base64;->DECODABET:[B

    invoke-static {p0, p1, p2, v0}, Lcom/google/api/client/util/Base64;->decode([BII[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode([BII[B)[B
    .registers 20
    .parameter "source"
    .parameter "off"
    .parameter "len"
    .parameter "decodabet"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/api/client/util/Base64DecoderException;
        }
    .end annotation

    .prologue
    .line 520
    mul-int/lit8 v13, p2, 0x3

    div-int/lit8 v7, v13, 0x4

    .line 521
    .local v7, len34:I
    add-int/lit8 v13, v7, 0x2

    new-array v9, v13, [B

    .line 522
    .local v9, outBuff:[B
    const/4 v10, 0x0

    .line 524
    .local v10, outBuffPosn:I
    const/4 v13, 0x4

    new-array v1, v13, [B

    .line 525
    .local v1, b4:[B
    const/4 v2, 0x0

    .line 526
    .local v2, b4Posn:I
    const/4 v5, 0x0

    .line 527
    .local v5, i:I
    const/4 v11, 0x0

    .line 528
    .local v11, sbiCrop:B
    const/4 v12, 0x0

    .line 529
    .local v12, sbiDecode:B
    const/4 v5, 0x0

    move v3, v2

    .end local v2           #b4Posn:I
    .local v3, b4Posn:I
    :goto_12
    move/from16 v0, p2

    if-ge v5, v0, :cond_c9

    .line 530
    add-int v13, v5, p1

    aget-byte v13, p0, v13

    and-int/lit8 v13, v13, 0x7f

    int-to-byte v11, v13

    .line 531
    aget-byte v12, p3, v11

    .line 533
    const/4 v13, -0x5

    if-lt v12, v13, :cond_9c

    .line 534
    const/4 v13, -0x1

    if-lt v12, v13, :cond_101

    .line 537
    const/16 v13, 0x3d

    if-ne v11, v13, :cond_87

    .line 538
    sub-int v4, p2, v5

    .line 539
    .local v4, bytesLeft:I
    add-int/lit8 v13, p2, -0x1

    add-int v13, v13, p1

    aget-byte v13, p0, v13

    and-int/lit8 v13, v13, 0x7f

    int-to-byte v6, v13

    .line 540
    .local v6, lastByte:B
    if-eqz v3, :cond_39

    const/4 v13, 0x1

    if-ne v3, v13, :cond_52

    .line 541
    :cond_39
    new-instance v13, Lcom/google/api/client/util/Base64DecoderException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "invalid padding byte \'=\' at byte offset "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/google/api/client/util/Base64DecoderException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 543
    :cond_52
    const/4 v13, 0x3

    if-ne v3, v13, :cond_58

    const/4 v13, 0x2

    if-gt v4, v13, :cond_5e

    :cond_58
    const/4 v13, 0x4

    if-ne v3, v13, :cond_77

    const/4 v13, 0x1

    if-le v4, v13, :cond_77

    .line 545
    :cond_5e
    new-instance v13, Lcom/google/api/client/util/Base64DecoderException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "padding byte \'=\' falsely signals end of encoded value at offset "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/google/api/client/util/Base64DecoderException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 548
    :cond_77
    const/16 v13, 0x3d

    if-eq v6, v13, :cond_c9

    const/16 v13, 0xa

    if-eq v6, v13, :cond_c9

    .line 549
    new-instance v13, Lcom/google/api/client/util/Base64DecoderException;

    const-string v14, "encoded value has invalid trailing byte"

    invoke-direct {v13, v14}, Lcom/google/api/client/util/Base64DecoderException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 555
    .end local v4           #bytesLeft:I
    .end local v6           #lastByte:B
    :cond_87
    add-int/lit8 v2, v3, 0x1

    .end local v3           #b4Posn:I
    .restart local v2       #b4Posn:I
    aput-byte v11, v1, v3

    .line 556
    const/4 v13, 0x4

    if-ne v2, v13, :cond_97

    .line 557
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-static {v1, v13, v9, v10, v0}, Lcom/google/api/client/util/Base64;->decode4to3([BI[BI[B)I

    move-result v13

    add-int/2addr v10, v13

    .line 558
    const/4 v2, 0x0

    .line 529
    :cond_97
    :goto_97
    add-int/lit8 v5, v5, 0x1

    move v3, v2

    .end local v2           #b4Posn:I
    .restart local v3       #b4Posn:I
    goto/16 :goto_12

    .line 562
    :cond_9c
    new-instance v13, Lcom/google/api/client/util/Base64DecoderException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Bad Base64 input character at "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ": "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    add-int v15, v5, p1

    aget-byte v15, p0, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "(decimal)"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/google/api/client/util/Base64DecoderException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 573
    :cond_c9
    if-eqz v3, :cond_ff

    .line 574
    const/4 v13, 0x1

    if-ne v3, v13, :cond_e9

    .line 575
    new-instance v13, Lcom/google/api/client/util/Base64DecoderException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "single trailing character at offset "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    add-int/lit8 v15, p2, -0x1

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/google/api/client/util/Base64DecoderException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 578
    :cond_e9
    add-int/lit8 v2, v3, 0x1

    .end local v3           #b4Posn:I
    .restart local v2       #b4Posn:I
    const/16 v13, 0x3d

    aput-byte v13, v1, v3

    .line 579
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-static {v1, v13, v9, v10, v0}, Lcom/google/api/client/util/Base64;->decode4to3([BI[BI[B)I

    move-result v13

    add-int/2addr v10, v13

    .line 582
    :goto_f7
    new-array v8, v10, [B

    .line 583
    .local v8, out:[B
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v9, v13, v8, v14, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 584
    return-object v8

    .end local v2           #b4Posn:I
    .end local v8           #out:[B
    .restart local v3       #b4Posn:I
    :cond_ff
    move v2, v3

    .end local v3           #b4Posn:I
    .restart local v2       #b4Posn:I
    goto :goto_f7

    .end local v2           #b4Posn:I
    .restart local v3       #b4Posn:I
    :cond_101
    move v2, v3

    .end local v3           #b4Posn:I
    .restart local v2       #b4Posn:I
    goto :goto_97
.end method

.method private static decode4to3([BI[BI[B)I
    .registers 8
    .parameter "source"
    .parameter "srcOffset"
    .parameter "destination"
    .parameter "destOffset"
    .parameter "decodabet"

    .prologue
    const/16 v2, 0x3d

    .line 384
    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    if-ne v1, v2, :cond_23

    .line 385
    aget-byte v1, p0, p1

    aget-byte v1, p4, v1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0x6

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    aget-byte v2, p4, v2

    shl-int/lit8 v2, v2, 0x18

    ushr-int/lit8 v2, v2, 0xc

    or-int v0, v1, v2

    .line 389
    .local v0, outBuff:I
    ushr-int/lit8 v1, v0, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, p3

    .line 390
    const/4 v1, 0x1

    .line 412
    :goto_22
    return v1

    .line 391
    .end local v0           #outBuff:I
    :cond_23
    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    if-ne v1, v2, :cond_56

    .line 393
    aget-byte v1, p0, p1

    aget-byte v1, p4, v1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0x6

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    aget-byte v2, p4, v2

    shl-int/lit8 v2, v2, 0x18

    ushr-int/lit8 v2, v2, 0xc

    or-int/2addr v1, v2

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    aget-byte v2, p4, v2

    shl-int/lit8 v2, v2, 0x18

    ushr-int/lit8 v2, v2, 0x12

    or-int v0, v1, v2

    .line 398
    .restart local v0       #outBuff:I
    ushr-int/lit8 v1, v0, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, p3

    .line 399
    add-int/lit8 v1, p3, 0x1

    ushr-int/lit8 v2, v0, 0x8

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    .line 400
    const/4 v1, 0x2

    goto :goto_22

    .line 403
    .end local v0           #outBuff:I
    :cond_56
    aget-byte v1, p0, p1

    aget-byte v1, p4, v1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0x6

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    aget-byte v2, p4, v2

    shl-int/lit8 v2, v2, 0x18

    ushr-int/lit8 v2, v2, 0xc

    or-int/2addr v1, v2

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    aget-byte v2, p4, v2

    shl-int/lit8 v2, v2, 0x18

    ushr-int/lit8 v2, v2, 0x12

    or-int/2addr v1, v2

    add-int/lit8 v2, p1, 0x3

    aget-byte v2, p0, v2

    aget-byte v2, p4, v2

    shl-int/lit8 v2, v2, 0x18

    ushr-int/lit8 v2, v2, 0x18

    or-int v0, v1, v2

    .line 409
    .restart local v0       #outBuff:I
    shr-int/lit8 v1, v0, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, p3

    .line 410
    add-int/lit8 v1, p3, 0x1

    shr-int/lit8 v2, v0, 0x8

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    .line 411
    add-int/lit8 v1, p3, 0x2

    int-to-byte v2, v0

    aput-byte v2, p2, v1

    .line 412
    const/4 v1, 0x3

    goto :goto_22
.end method

.method public static decodeWebSafe(Ljava/lang/String;)[B
    .registers 5
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/api/client/util/Base64DecoderException;
        }
    .end annotation

    .prologue
    .line 444
    :try_start_0
    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_5} :catch_d

    move-result-object v0

    .line 448
    .local v0, bytes:[B
    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {v0, v2, v3}, Lcom/google/api/client/util/Base64;->decodeWebSafe([BII)[B

    move-result-object v2

    return-object v2

    .line 445
    .end local v0           #bytes:[B
    :catch_d
    move-exception v1

    .line 446
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public static decodeWebSafe([B)[B
    .registers 3
    .parameter "source"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/api/client/util/Base64DecoderException;
        }
    .end annotation

    .prologue
    .line 474
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/google/api/client/util/Base64;->decodeWebSafe([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public static decodeWebSafe([BII)[B
    .registers 4
    .parameter "source"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/api/client/util/Base64DecoderException;
        }
    .end annotation

    .prologue
    .line 505
    sget-object v0, Lcom/google/api/client/util/Base64;->WEBSAFE_DECODABET:[B

    invoke-static {p0, p1, p2, v0}, Lcom/google/api/client/util/Base64;->decode([BII[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static encode([B)Ljava/lang/String;
    .registers 5
    .parameter "source"

    .prologue
    .line 249
    const/4 v0, 0x0

    array-length v1, p0

    sget-object v2, Lcom/google/api/client/util/Base64;->ALPHABET:[B

    const/4 v3, 0x1

    invoke-static {p0, v0, v1, v2, v3}, Lcom/google/api/client/util/Base64;->encode([BII[BZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encode([BII[BZ)Ljava/lang/String;
    .registers 11
    .parameter "source"
    .parameter "off"
    .parameter "len"
    .parameter "alphabet"
    .parameter "doPadding"

    .prologue
    .line 276
    const v3, 0x7fffffff

    invoke-static {p0, p1, p2, p3, v3}, Lcom/google/api/client/util/Base64;->encode([BII[BI)[B

    move-result-object v1

    .line 277
    .local v1, outBuff:[B
    array-length v2, v1

    .line 281
    .local v2, outLen:I
    :goto_8
    if-nez p4, :cond_14

    if-lez v2, :cond_14

    .line 282
    add-int/lit8 v3, v2, -0x1

    aget-byte v3, v1, v3

    const/16 v4, 0x3d

    if-eq v3, v4, :cond_1d

    .line 289
    :cond_14
    :try_start_14
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "UTF-8"

    invoke-direct {v3, v1, v4, v2, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_1c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_14 .. :try_end_1c} :catch_20

    return-object v3

    .line 285
    :cond_1d
    add-int/lit8 v2, v2, -0x1

    goto :goto_8

    .line 290
    :catch_20
    move-exception v0

    .line 291
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method public static encode([BII[BI)[B
    .registers 18
    .parameter "source"
    .parameter "off"
    .parameter "len"
    .parameter "alphabet"
    .parameter "maxLineLength"

    .prologue
    .line 307
    add-int/lit8 v1, p2, 0x2

    div-int/lit8 v11, v1, 0x3

    .line 308
    .local v11, lenDiv3:I
    mul-int/lit8 v10, v11, 0x4

    .line 309
    .local v10, len43:I
    div-int v1, v10, p4

    add-int/2addr v1, v10

    new-array v4, v1, [B

    .line 312
    .local v4, outBuff:[B
    const/4 v7, 0x0

    .line 313
    .local v7, d:I
    const/4 v5, 0x0

    .line 314
    .local v5, e:I
    add-int/lit8 v9, p2, -0x2

    .line 315
    .local v9, len2:I
    const/4 v12, 0x0

    .line 316
    .local v12, lineLength:I
    :goto_10
    if-ge v7, v9, :cond_65

    .line 321
    add-int v1, v7, p1

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0x8

    add-int/lit8 v2, v7, 0x1

    add-int/2addr v2, p1

    aget-byte v2, p0, v2

    shl-int/lit8 v2, v2, 0x18

    ushr-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v2, v7, 0x2

    add-int/2addr v2, p1

    aget-byte v2, p0, v2

    shl-int/lit8 v2, v2, 0x18

    ushr-int/lit8 v2, v2, 0x18

    or-int v8, v1, v2

    .line 325
    .local v8, inBuff:I
    ushr-int/lit8 v1, v8, 0x12

    aget-byte v1, p3, v1

    aput-byte v1, v4, v5

    .line 326
    add-int/lit8 v1, v5, 0x1

    ushr-int/lit8 v2, v8, 0xc

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, p3, v2

    aput-byte v2, v4, v1

    .line 327
    add-int/lit8 v1, v5, 0x2

    ushr-int/lit8 v2, v8, 0x6

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, p3, v2

    aput-byte v2, v4, v1

    .line 328
    add-int/lit8 v1, v5, 0x3

    and-int/lit8 v2, v8, 0x3f

    aget-byte v2, p3, v2

    aput-byte v2, v4, v1

    .line 330
    add-int/lit8 v12, v12, 0x4

    .line 331
    move/from16 v0, p4

    if-ne v12, v0, :cond_60

    .line 332
    add-int/lit8 v1, v5, 0x4

    const/16 v2, 0xa

    aput-byte v2, v4, v1

    .line 333
    add-int/lit8 v5, v5, 0x1

    .line 334
    const/4 v12, 0x0

    .line 316
    :cond_60
    add-int/lit8 v7, v7, 0x3

    add-int/lit8 v5, v5, 0x4

    goto :goto_10

    .line 338
    .end local v8           #inBuff:I
    :cond_65
    if-ge v7, p2, :cond_81

    .line 339
    add-int v2, v7, p1

    sub-int v3, p2, v7

    move-object v1, p0

    move-object/from16 v6, p3

    invoke-static/range {v1 .. v6}, Lcom/google/api/client/util/Base64;->encode3to4([BII[BI[B)[B

    .line 341
    add-int/lit8 v12, v12, 0x4

    .line 342
    move/from16 v0, p4

    if-ne v12, v0, :cond_7f

    .line 344
    add-int/lit8 v1, v5, 0x4

    const/16 v2, 0xa

    aput-byte v2, v4, v1

    .line 345
    add-int/lit8 v5, v5, 0x1

    .line 347
    :cond_7f
    add-int/lit8 v5, v5, 0x4

    .line 350
    :cond_81
    sget-boolean v1, Lcom/google/api/client/util/Base64;->$assertionsDisabled:Z

    if-nez v1, :cond_8e

    array-length v1, v4

    if-eq v5, v1, :cond_8e

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 351
    :cond_8e
    return-object v4
.end method

.method private static encode3to4([BII[BI[B)[B
    .registers 11
    .parameter "source"
    .parameter "srcOffset"
    .parameter "numSigBytes"
    .parameter "destination"
    .parameter "destOffset"
    .parameter "alphabet"

    .prologue
    const/16 v4, 0x3d

    const/4 v1, 0x0

    .line 211
    if-lez p2, :cond_29

    aget-byte v2, p0, p1

    shl-int/lit8 v2, v2, 0x18

    ushr-int/lit8 v2, v2, 0x8

    move v3, v2

    :goto_c
    const/4 v2, 0x1

    if-le p2, v2, :cond_2b

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    shl-int/lit8 v2, v2, 0x18

    ushr-int/lit8 v2, v2, 0x10

    :goto_17
    or-int/2addr v2, v3

    const/4 v3, 0x2

    if-le p2, v3, :cond_23

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0x18

    :cond_23
    or-int v0, v2, v1

    .line 216
    .local v0, inBuff:I
    packed-switch p2, :pswitch_data_88

    .line 236
    :goto_28
    return-object p3

    .end local v0           #inBuff:I
    :cond_29
    move v3, v1

    .line 211
    goto :goto_c

    :cond_2b
    move v2, v1

    goto :goto_17

    .line 218
    .restart local v0       #inBuff:I
    :pswitch_2d
    ushr-int/lit8 v1, v0, 0x12

    aget-byte v1, p5, v1

    aput-byte v1, p3, p4

    .line 219
    add-int/lit8 v1, p4, 0x1

    ushr-int/lit8 v2, v0, 0xc

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, p5, v2

    aput-byte v2, p3, v1

    .line 220
    add-int/lit8 v1, p4, 0x2

    ushr-int/lit8 v2, v0, 0x6

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, p5, v2

    aput-byte v2, p3, v1

    .line 221
    add-int/lit8 v1, p4, 0x3

    and-int/lit8 v2, v0, 0x3f

    aget-byte v2, p5, v2

    aput-byte v2, p3, v1

    goto :goto_28

    .line 224
    :pswitch_50
    ushr-int/lit8 v1, v0, 0x12

    aget-byte v1, p5, v1

    aput-byte v1, p3, p4

    .line 225
    add-int/lit8 v1, p4, 0x1

    ushr-int/lit8 v2, v0, 0xc

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, p5, v2

    aput-byte v2, p3, v1

    .line 226
    add-int/lit8 v1, p4, 0x2

    ushr-int/lit8 v2, v0, 0x6

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, p5, v2

    aput-byte v2, p3, v1

    .line 227
    add-int/lit8 v1, p4, 0x3

    aput-byte v4, p3, v1

    goto :goto_28

    .line 230
    :pswitch_6f
    ushr-int/lit8 v1, v0, 0x12

    aget-byte v1, p5, v1

    aput-byte v1, p3, p4

    .line 231
    add-int/lit8 v1, p4, 0x1

    ushr-int/lit8 v2, v0, 0xc

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, p5, v2

    aput-byte v2, p3, v1

    .line 232
    add-int/lit8 v1, p4, 0x2

    aput-byte v4, p3, v1

    .line 233
    add-int/lit8 v1, p4, 0x3

    aput-byte v4, p3, v1

    goto :goto_28

    .line 216
    :pswitch_data_88
    .packed-switch 0x1
        :pswitch_6f
        :pswitch_50
        :pswitch_2d
    .end packed-switch
.end method

.method public static encodeWebSafe([BZ)Ljava/lang/String;
    .registers 5
    .parameter "source"
    .parameter "doPadding"

    .prologue
    .line 260
    const/4 v0, 0x0

    array-length v1, p0

    sget-object v2, Lcom/google/api/client/util/Base64;->WEBSAFE_ALPHABET:[B

    invoke-static {p0, v0, v1, v2, p1}, Lcom/google/api/client/util/Base64;->encode([BII[BZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method