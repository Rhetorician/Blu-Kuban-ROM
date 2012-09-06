.class Lorg/simpleframework/xml/stream/Formatter;
.super Ljava/lang/Object;
.source "Formatter.java"


# static fields
.field private static final AND:[C

.field private static final CLOSE:[C

.field private static final DOUBLE:[C

.field private static final GREATER:[C

.field private static final LESS:[C

.field private static final NAMESPACE:[C

.field private static final OPEN:[C

.field private static final SINGLE:[C


# instance fields
.field private buffer:Lorg/simpleframework/xml/stream/OutputBuffer;

.field private indenter:Lorg/simpleframework/xml/stream/Indenter;

.field private last:Lorg/simpleframework/xml/stream/Formatter$Tag;

.field private prolog:Ljava/lang/String;

.field private result:Ljava/io/Writer;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x5

    const/4 v1, 0x4

    .line 40
    new-array v0, v2, [C

    fill-array-data v0, :array_3c

    sput-object v0, Lorg/simpleframework/xml/stream/Formatter;->NAMESPACE:[C

    .line 45
    new-array v0, v1, [C

    fill-array-data v0, :array_46

    sput-object v0, Lorg/simpleframework/xml/stream/Formatter;->LESS:[C

    .line 50
    new-array v0, v1, [C

    fill-array-data v0, :array_4e

    sput-object v0, Lorg/simpleframework/xml/stream/Formatter;->GREATER:[C

    .line 55
    new-array v0, v3, [C

    fill-array-data v0, :array_56

    sput-object v0, Lorg/simpleframework/xml/stream/Formatter;->DOUBLE:[C

    .line 60
    new-array v0, v3, [C

    fill-array-data v0, :array_60

    sput-object v0, Lorg/simpleframework/xml/stream/Formatter;->SINGLE:[C

    .line 65
    new-array v0, v2, [C

    fill-array-data v0, :array_6a

    sput-object v0, Lorg/simpleframework/xml/stream/Formatter;->AND:[C

    .line 70
    new-array v0, v2, [C

    fill-array-data v0, :array_74

    sput-object v0, Lorg/simpleframework/xml/stream/Formatter;->OPEN:[C

    .line 75
    new-array v0, v1, [C

    fill-array-data v0, :array_7e

    sput-object v0, Lorg/simpleframework/xml/stream/Formatter;->CLOSE:[C

    return-void

    .line 40
    :array_3c
    .array-data 0x2
        0x78t 0x0t
        0x6dt 0x0t
        0x6ct 0x0t
        0x6et 0x0t
        0x73t 0x0t
    .end array-data

    .line 45
    nop

    :array_46
    .array-data 0x2
        0x26t 0x0t
        0x6ct 0x0t
        0x74t 0x0t
        0x3bt 0x0t
    .end array-data

    .line 50
    :array_4e
    .array-data 0x2
        0x26t 0x0t
        0x67t 0x0t
        0x74t 0x0t
        0x3bt 0x0t
    .end array-data

    .line 55
    :array_56
    .array-data 0x2
        0x26t 0x0t
        0x71t 0x0t
        0x75t 0x0t
        0x6ft 0x0t
        0x74t 0x0t
        0x3bt 0x0t
    .end array-data

    .line 60
    :array_60
    .array-data 0x2
        0x26t 0x0t
        0x61t 0x0t
        0x70t 0x0t
        0x6ft 0x0t
        0x73t 0x0t
        0x3bt 0x0t
    .end array-data

    .line 65
    :array_6a
    .array-data 0x2
        0x26t 0x0t
        0x61t 0x0t
        0x6dt 0x0t
        0x70t 0x0t
        0x3bt 0x0t
    .end array-data

    .line 70
    nop

    :array_74
    .array-data 0x2
        0x3ct 0x0t
        0x21t 0x0t
        0x2dt 0x0t
        0x2dt 0x0t
        0x20t 0x0t
    .end array-data

    .line 75
    nop

    :array_7e
    .array-data 0x2
        0x20t 0x0t
        0x2dt 0x0t
        0x2dt 0x0t
        0x3et 0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/Writer;Lorg/simpleframework/xml/stream/Format;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    new-instance v0, Ljava/io/BufferedWriter;

    const/16 v1, 0x400

    invoke-direct {v0, p1, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    iput-object v0, p0, Lorg/simpleframework/xml/stream/Formatter;->result:Ljava/io/Writer;

    .line 112
    new-instance v0, Lorg/simpleframework/xml/stream/Indenter;

    invoke-direct {v0, p2}, Lorg/simpleframework/xml/stream/Indenter;-><init>(Lorg/simpleframework/xml/stream/Format;)V

    iput-object v0, p0, Lorg/simpleframework/xml/stream/Formatter;->indenter:Lorg/simpleframework/xml/stream/Indenter;

    .line 113
    new-instance v0, Lorg/simpleframework/xml/stream/OutputBuffer;

    invoke-direct {v0}, Lorg/simpleframework/xml/stream/OutputBuffer;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/stream/Formatter;->buffer:Lorg/simpleframework/xml/stream/OutputBuffer;

    .line 114
    invoke-virtual {p2}, Lorg/simpleframework/xml/stream/Format;->getProlog()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/stream/Formatter;->prolog:Ljava/lang/String;

    .line 115
    return-void
.end method

.method private append(C)V
    .registers 3
    .parameter

    .prologue
    .line 362
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Formatter;->buffer:Lorg/simpleframework/xml/stream/OutputBuffer;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/stream/OutputBuffer;->append(C)V

    .line 363
    return-void
.end method

.method private append(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 384
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Formatter;->buffer:Lorg/simpleframework/xml/stream/OutputBuffer;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/stream/OutputBuffer;->append(Ljava/lang/String;)V

    .line 385
    return-void
.end method

.method private append([C)V
    .registers 3
    .parameter

    .prologue
    .line 373
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Formatter;->buffer:Lorg/simpleframework/xml/stream/OutputBuffer;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/stream/OutputBuffer;->append([C)V

    .line 374
    return-void
.end method

.method private data(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 397
    const-string v0, "<![CDATA["

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/Formatter;->write(Ljava/lang/String;)V

    .line 398
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/stream/Formatter;->write(Ljava/lang/String;)V

    .line 399
    const-string v0, "]]>"

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/Formatter;->write(Ljava/lang/String;)V

    .line 400
    return-void
.end method

.method private escape(C)V
    .registers 3
    .parameter

    .prologue
    .line 429
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/stream/Formatter;->symbol(C)[C

    move-result-object v0

    .line 431
    if-eqz v0, :cond_a

    .line 432
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/Formatter;->write([C)V

    .line 436
    :goto_9
    return-void

    .line 434
    :cond_a
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/stream/Formatter;->write(C)V

    goto :goto_9
.end method

.method private escape(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 412
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 414
    const/4 v0, 0x0

    :goto_5
    if-ge v0, v1, :cond_11

    .line 415
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-direct {p0, v2}, Lorg/simpleframework/xml/stream/Formatter;->escape(C)V

    .line 414
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 417
    :cond_11
    return-void
.end method

.method private isEmpty(Ljava/lang/String;)Z
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 474
    if-eqz p1, :cond_9

    .line 475
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    .line 477
    :cond_9
    :goto_9
    return v0

    .line 475
    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private isText(C)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 490
    sparse-switch p1, :sswitch_data_16

    .line 495
    const/16 v2, 0x20

    if-le p1, v2, :cond_14

    const/16 v2, 0x7e

    if-gt p1, v2, :cond_14

    .line 496
    const/16 v2, 0xf7

    if-eq p1, v2, :cond_12

    .line 498
    :goto_11
    :sswitch_11
    return v0

    :cond_12
    move v0, v1

    .line 496
    goto :goto_11

    :cond_14
    move v0, v1

    .line 498
    goto :goto_11

    .line 490
    :sswitch_data_16
    .sparse-switch
        0x9 -> :sswitch_11
        0xa -> :sswitch_11
        0xd -> :sswitch_11
        0x20 -> :sswitch_11
    .end sparse-switch
.end method

.method private symbol(C)[C
    .registers 3
    .parameter

    .prologue
    .line 511
    sparse-switch p1, :sswitch_data_14

    .line 523
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 513
    :sswitch_5
    sget-object v0, Lorg/simpleframework/xml/stream/Formatter;->LESS:[C

    goto :goto_4

    .line 515
    :sswitch_8
    sget-object v0, Lorg/simpleframework/xml/stream/Formatter;->GREATER:[C

    goto :goto_4

    .line 517
    :sswitch_b
    sget-object v0, Lorg/simpleframework/xml/stream/Formatter;->DOUBLE:[C

    goto :goto_4

    .line 519
    :sswitch_e
    sget-object v0, Lorg/simpleframework/xml/stream/Formatter;->SINGLE:[C

    goto :goto_4

    .line 521
    :sswitch_11
    sget-object v0, Lorg/simpleframework/xml/stream/Formatter;->AND:[C

    goto :goto_4

    .line 511
    :sswitch_data_14
    .sparse-switch
        0x22 -> :sswitch_b
        0x26 -> :sswitch_11
        0x27 -> :sswitch_e
        0x3c -> :sswitch_5
        0x3e -> :sswitch_8
    .end sparse-switch
.end method

.method private unicode(C)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 460
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private write(C)V
    .registers 4
    .parameter

    .prologue
    .line 304
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Formatter;->buffer:Lorg/simpleframework/xml/stream/OutputBuffer;

    iget-object v1, p0, Lorg/simpleframework/xml/stream/Formatter;->result:Ljava/io/Writer;

    invoke-virtual {v0, v1}, Lorg/simpleframework/xml/stream/OutputBuffer;->write(Ljava/io/Writer;)V

    .line 305
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Formatter;->buffer:Lorg/simpleframework/xml/stream/OutputBuffer;

    invoke-virtual {v0}, Lorg/simpleframework/xml/stream/OutputBuffer;->clear()V

    .line 306
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Formatter;->result:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(I)V

    .line 307
    return-void
.end method

.method private write(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 330
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Formatter;->buffer:Lorg/simpleframework/xml/stream/OutputBuffer;

    iget-object v1, p0, Lorg/simpleframework/xml/stream/Formatter;->result:Ljava/io/Writer;

    invoke-virtual {v0, v1}, Lorg/simpleframework/xml/stream/OutputBuffer;->write(Ljava/io/Writer;)V

    .line 331
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Formatter;->buffer:Lorg/simpleframework/xml/stream/OutputBuffer;

    invoke-virtual {v0}, Lorg/simpleframework/xml/stream/OutputBuffer;->clear()V

    .line 332
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Formatter;->result:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 333
    return-void
.end method

.method private write(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 344
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Formatter;->buffer:Lorg/simpleframework/xml/stream/OutputBuffer;

    iget-object v1, p0, Lorg/simpleframework/xml/stream/Formatter;->result:Ljava/io/Writer;

    invoke-virtual {v0, v1}, Lorg/simpleframework/xml/stream/OutputBuffer;->write(Ljava/io/Writer;)V

    .line 345
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Formatter;->buffer:Lorg/simpleframework/xml/stream/OutputBuffer;

    invoke-virtual {v0}, Lorg/simpleframework/xml/stream/OutputBuffer;->clear()V

    .line 347
    invoke-direct {p0, p2}, Lorg/simpleframework/xml/stream/Formatter;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 348
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Formatter;->result:Ljava/io/Writer;

    invoke-virtual {v0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 349
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Formatter;->result:Ljava/io/Writer;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 351
    :cond_1e
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Formatter;->result:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 352
    return-void
.end method

.method private write([C)V
    .registers 4
    .parameter

    .prologue
    .line 317
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Formatter;->buffer:Lorg/simpleframework/xml/stream/OutputBuffer;

    iget-object v1, p0, Lorg/simpleframework/xml/stream/Formatter;->result:Ljava/io/Writer;

    invoke-virtual {v0, v1}, Lorg/simpleframework/xml/stream/OutputBuffer;->write(Ljava/io/Writer;)V

    .line 318
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Formatter;->buffer:Lorg/simpleframework/xml/stream/OutputBuffer;

    invoke-virtual {v0}, Lorg/simpleframework/xml/stream/OutputBuffer;->clear()V

    .line 319
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Formatter;->result:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write([C)V

    .line 320
    return-void
.end method


# virtual methods
.method public flush()V
    .registers 3

    .prologue
    .line 445
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Formatter;->buffer:Lorg/simpleframework/xml/stream/OutputBuffer;

    iget-object v1, p0, Lorg/simpleframework/xml/stream/Formatter;->result:Ljava/io/Writer;

    invoke-virtual {v0, v1}, Lorg/simpleframework/xml/stream/OutputBuffer;->write(Ljava/io/Writer;)V

    .line 446
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Formatter;->buffer:Lorg/simpleframework/xml/stream/OutputBuffer;

    invoke-virtual {v0}, Lorg/simpleframework/xml/stream/OutputBuffer;->clear()V

    .line 447
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Formatter;->result:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 448
    return-void
.end method

.method public writeAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v2, 0x22

    .line 194
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Formatter;->last:Lorg/simpleframework/xml/stream/Formatter$Tag;

    sget-object v1, Lorg/simpleframework/xml/stream/Formatter$Tag;->START:Lorg/simpleframework/xml/stream/Formatter$Tag;

    if-eq v0, v1, :cond_10

    .line 195
    new-instance v0, Lorg/simpleframework/xml/stream/NodeException;

    const-string v1, "Start element required"

    invoke-direct {v0, v1}, Lorg/simpleframework/xml/stream/NodeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    :cond_10
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/Formatter;->write(C)V

    .line 198
    invoke-direct {p0, p1, p3}, Lorg/simpleframework/xml/stream/Formatter;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const/16 v0, 0x3d

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/Formatter;->write(C)V

    .line 200
    invoke-direct {p0, v2}, Lorg/simpleframework/xml/stream/Formatter;->write(C)V

    .line 201
    invoke-direct {p0, p2}, Lorg/simpleframework/xml/stream/Formatter;->escape(Ljava/lang/String;)V

    .line 202
    invoke-direct {p0, v2}, Lorg/simpleframework/xml/stream/Formatter;->write(C)V

    .line 203
    return-void
.end method

.method public writeComment(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 141
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Formatter;->indenter:Lorg/simpleframework/xml/stream/Indenter;

    invoke-virtual {v0}, Lorg/simpleframework/xml/stream/Indenter;->top()Ljava/lang/String;

    move-result-object v0

    .line 143
    iget-object v1, p0, Lorg/simpleframework/xml/stream/Formatter;->last:Lorg/simpleframework/xml/stream/Formatter$Tag;

    sget-object v2, Lorg/simpleframework/xml/stream/Formatter$Tag;->START:Lorg/simpleframework/xml/stream/Formatter$Tag;

    if-ne v1, v2, :cond_11

    .line 144
    const/16 v1, 0x3e

    invoke-direct {p0, v1}, Lorg/simpleframework/xml/stream/Formatter;->append(C)V

    .line 146
    :cond_11
    if-eqz v0, :cond_23

    .line 147
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/Formatter;->append(Ljava/lang/String;)V

    .line 148
    sget-object v0, Lorg/simpleframework/xml/stream/Formatter;->OPEN:[C

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/Formatter;->append([C)V

    .line 149
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/stream/Formatter;->append(Ljava/lang/String;)V

    .line 150
    sget-object v0, Lorg/simpleframework/xml/stream/Formatter;->CLOSE:[C

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/Formatter;->append([C)V

    .line 152
    :cond_23
    sget-object v0, Lorg/simpleframework/xml/stream/Formatter$Tag;->COMMENT:Lorg/simpleframework/xml/stream/Formatter$Tag;

    iput-object v0, p0, Lorg/simpleframework/xml/stream/Formatter;->last:Lorg/simpleframework/xml/stream/Formatter$Tag;

    .line 153
    return-void
.end method

.method public writeEnd(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/16 v4, 0x3e

    const/16 v3, 0x2f

    .line 277
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Formatter;->indenter:Lorg/simpleframework/xml/stream/Indenter;

    invoke-virtual {v0}, Lorg/simpleframework/xml/stream/Indenter;->pop()Ljava/lang/String;

    move-result-object v0

    .line 279
    iget-object v1, p0, Lorg/simpleframework/xml/stream/Formatter;->last:Lorg/simpleframework/xml/stream/Formatter$Tag;

    sget-object v2, Lorg/simpleframework/xml/stream/Formatter$Tag;->START:Lorg/simpleframework/xml/stream/Formatter$Tag;

    if-ne v1, v2, :cond_1b

    .line 280
    invoke-direct {p0, v3}, Lorg/simpleframework/xml/stream/Formatter;->write(C)V

    .line 281
    invoke-direct {p0, v4}, Lorg/simpleframework/xml/stream/Formatter;->write(C)V

    .line 293
    :cond_16
    :goto_16
    sget-object v0, Lorg/simpleframework/xml/stream/Formatter$Tag;->END:Lorg/simpleframework/xml/stream/Formatter$Tag;

    iput-object v0, p0, Lorg/simpleframework/xml/stream/Formatter;->last:Lorg/simpleframework/xml/stream/Formatter$Tag;

    .line 294
    return-void

    .line 283
    :cond_1b
    iget-object v1, p0, Lorg/simpleframework/xml/stream/Formatter;->last:Lorg/simpleframework/xml/stream/Formatter$Tag;

    sget-object v2, Lorg/simpleframework/xml/stream/Formatter$Tag;->TEXT:Lorg/simpleframework/xml/stream/Formatter$Tag;

    if-eq v1, v2, :cond_24

    .line 284
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/Formatter;->write(Ljava/lang/String;)V

    .line 286
    :cond_24
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Formatter;->last:Lorg/simpleframework/xml/stream/Formatter$Tag;

    sget-object v1, Lorg/simpleframework/xml/stream/Formatter$Tag;->START:Lorg/simpleframework/xml/stream/Formatter$Tag;

    if-eq v0, v1, :cond_16

    .line 287
    const/16 v0, 0x3c

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/Formatter;->write(C)V

    .line 288
    invoke-direct {p0, v3}, Lorg/simpleframework/xml/stream/Formatter;->write(C)V

    .line 289
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/stream/Formatter;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    invoke-direct {p0, v4}, Lorg/simpleframework/xml/stream/Formatter;->write(C)V

    goto :goto_16
.end method

.method public writeNamespace(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/16 v2, 0x22

    .line 216
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Formatter;->last:Lorg/simpleframework/xml/stream/Formatter$Tag;

    sget-object v1, Lorg/simpleframework/xml/stream/Formatter$Tag;->START:Lorg/simpleframework/xml/stream/Formatter$Tag;

    if-eq v0, v1, :cond_10

    .line 217
    new-instance v0, Lorg/simpleframework/xml/stream/NodeException;

    const-string v1, "Start element required"

    invoke-direct {v0, v1}, Lorg/simpleframework/xml/stream/NodeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_10
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/Formatter;->write(C)V

    .line 220
    sget-object v0, Lorg/simpleframework/xml/stream/Formatter;->NAMESPACE:[C

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/Formatter;->write([C)V

    .line 222
    invoke-direct {p0, p2}, Lorg/simpleframework/xml/stream/Formatter;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 223
    const/16 v0, 0x3a

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/Formatter;->write(C)V

    .line 224
    invoke-direct {p0, p2}, Lorg/simpleframework/xml/stream/Formatter;->write(Ljava/lang/String;)V

    .line 226
    :cond_28
    const/16 v0, 0x3d

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/Formatter;->write(C)V

    .line 227
    invoke-direct {p0, v2}, Lorg/simpleframework/xml/stream/Formatter;->write(C)V

    .line 228
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/stream/Formatter;->escape(Ljava/lang/String;)V

    .line 229
    invoke-direct {p0, v2}, Lorg/simpleframework/xml/stream/Formatter;->write(C)V

    .line 230
    return-void
.end method

.method public writeProlog()V
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Formatter;->prolog:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 127
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Formatter;->prolog:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/Formatter;->write(Ljava/lang/String;)V

    .line 128
    const-string v0, "\n"

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/Formatter;->write(Ljava/lang/String;)V

    .line 130
    :cond_e
    return-void
.end method

.method public writeStart(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 166
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Formatter;->indenter:Lorg/simpleframework/xml/stream/Indenter;

    invoke-virtual {v0}, Lorg/simpleframework/xml/stream/Indenter;->push()Ljava/lang/String;

    move-result-object v0

    .line 168
    iget-object v1, p0, Lorg/simpleframework/xml/stream/Formatter;->last:Lorg/simpleframework/xml/stream/Formatter$Tag;

    sget-object v2, Lorg/simpleframework/xml/stream/Formatter$Tag;->START:Lorg/simpleframework/xml/stream/Formatter$Tag;

    if-ne v1, v2, :cond_11

    .line 169
    const/16 v1, 0x3e

    invoke-direct {p0, v1}, Lorg/simpleframework/xml/stream/Formatter;->append(C)V

    .line 171
    :cond_11
    invoke-virtual {p0}, Lorg/simpleframework/xml/stream/Formatter;->flush()V

    .line 172
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/Formatter;->append(Ljava/lang/String;)V

    .line 173
    const/16 v0, 0x3c

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/Formatter;->append(C)V

    .line 175
    invoke-direct {p0, p2}, Lorg/simpleframework/xml/stream/Formatter;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 176
    invoke-direct {p0, p2}, Lorg/simpleframework/xml/stream/Formatter;->append(Ljava/lang/String;)V

    .line 177
    const/16 v0, 0x3a

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/Formatter;->append(C)V

    .line 179
    :cond_2a
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/stream/Formatter;->append(Ljava/lang/String;)V

    .line 180
    sget-object v0, Lorg/simpleframework/xml/stream/Formatter$Tag;->START:Lorg/simpleframework/xml/stream/Formatter$Tag;

    iput-object v0, p0, Lorg/simpleframework/xml/stream/Formatter;->last:Lorg/simpleframework/xml/stream/Formatter$Tag;

    .line 181
    return-void
.end method

.method public writeText(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 242
    sget-object v0, Lorg/simpleframework/xml/stream/Mode;->ESCAPE:Lorg/simpleframework/xml/stream/Mode;

    invoke-virtual {p0, p1, v0}, Lorg/simpleframework/xml/stream/Formatter;->writeText(Ljava/lang/String;Lorg/simpleframework/xml/stream/Mode;)V

    .line 243
    return-void
.end method

.method public writeText(Ljava/lang/String;Lorg/simpleframework/xml/stream/Mode;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 255
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Formatter;->last:Lorg/simpleframework/xml/stream/Formatter$Tag;

    sget-object v1, Lorg/simpleframework/xml/stream/Formatter$Tag;->START:Lorg/simpleframework/xml/stream/Formatter$Tag;

    if-ne v0, v1, :cond_b

    .line 256
    const/16 v0, 0x3e

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/Formatter;->write(C)V

    .line 258
    :cond_b
    sget-object v0, Lorg/simpleframework/xml/stream/Mode;->DATA:Lorg/simpleframework/xml/stream/Mode;

    if-ne p2, v0, :cond_17

    .line 259
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/stream/Formatter;->data(Ljava/lang/String;)V

    .line 263
    :goto_12
    sget-object v0, Lorg/simpleframework/xml/stream/Formatter$Tag;->TEXT:Lorg/simpleframework/xml/stream/Formatter$Tag;

    iput-object v0, p0, Lorg/simpleframework/xml/stream/Formatter;->last:Lorg/simpleframework/xml/stream/Formatter$Tag;

    .line 264
    return-void

    .line 261
    :cond_17
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/stream/Formatter;->escape(Ljava/lang/String;)V

    goto :goto_12
.end method
