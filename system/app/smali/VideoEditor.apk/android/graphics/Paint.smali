.class public Landroid/graphics/Paint;
.super Ljava/lang/Object;
.source "Paint.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Paint$FontMetricsInt;,
        Landroid/graphics/Paint$FontMetrics;,
        Landroid/graphics/Paint$Align;,
        Landroid/graphics/Paint$Join;,
        Landroid/graphics/Paint$Cap;,
        Landroid/graphics/Paint$Style;
    }
.end annotation


# static fields
.field public static final ANTI_ALIAS_FLAG:I = 0x1

.field public static final BIDI_DEFAULT_LTR:I = 0x2

.field public static final BIDI_DEFAULT_RTL:I = 0x3

.field private static final BIDI_FLAG_MASK:I = 0x7

.field public static final BIDI_FORCE_LTR:I = 0x4

.field public static final BIDI_FORCE_RTL:I = 0x5

.field public static final BIDI_LTR:I = 0x0

.field private static final BIDI_MAX_FLAG_VALUE:I = 0x5

.field public static final BIDI_RTL:I = 0x1

.field public static final CURSOR_AFTER:I = 0x0

.field public static final CURSOR_AT:I = 0x4

.field public static final CURSOR_AT_OR_AFTER:I = 0x1

.field public static final CURSOR_AT_OR_BEFORE:I = 0x3

.field public static final CURSOR_BEFORE:I = 0x2

.field private static final CURSOR_OPT_MAX_VALUE:I = 0x4

.field static final DEFAULT_PAINT_FLAGS:I = 0x100

.field public static final DEV_KERN_TEXT_FLAG:I = 0x100

.field public static final DIRECTION_LTR:I = 0x0

.field public static final DIRECTION_RTL:I = 0x1

.field public static final DITHER_FLAG:I = 0x4

.field public static final FAKE_BOLD_TEXT_FLAG:I = 0x20

.field public static final FILTER_BITMAP_FLAG:I = 0x2

.field public static final HINTING_OFF:I = 0x0

.field public static final HINTING_ON:I = 0x1

.field public static final LINEAR_TEXT_FLAG:I = 0x40

.field public static final STRIKE_THRU_TEXT_FLAG:I = 0x10

.field public static final SUBPIXEL_TEXT_FLAG:I = 0x80

.field public static final UNDERLINE_TEXT_FLAG:I = 0x8

.field static final sAlignArray:[Landroid/graphics/Paint$Align;

.field static final sCapArray:[Landroid/graphics/Paint$Cap;

.field static final sJoinArray:[Landroid/graphics/Paint$Join;

.field static final sStyleArray:[Landroid/graphics/Paint$Style;


# instance fields
.field public hasShadow:Z

.field public mBidiFlags:I

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mCompatScaling:F

.field private mHasCompatScaling:Z

.field private mInvCompatScaling:F

.field private mMaskFilter:Landroid/graphics/MaskFilter;

.field public mNativePaint:I

.field private mPathEffect:Landroid/graphics/PathEffect;

.field private mRasterizer:Landroid/graphics/Rasterizer;

.field private mShader:Landroid/graphics/Shader;

.field private mTypeface:Landroid/graphics/Typeface;

.field private mXfermode:Landroid/graphics/Xfermode;

.field public shadowColor:I

.field public shadowDx:F

.field public shadowDy:F

.field public shadowRadius:F


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 73
    new-array v0, v5, [Landroid/graphics/Paint$Style;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    aput-object v1, v0, v3

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    aput-object v1, v0, v4

    sput-object v0, Landroid/graphics/Paint;->sStyleArray:[Landroid/graphics/Paint$Style;

    .line 76
    new-array v0, v5, [Landroid/graphics/Paint$Cap;

    sget-object v1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    aput-object v1, v0, v3

    sget-object v1, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    aput-object v1, v0, v4

    sput-object v0, Landroid/graphics/Paint;->sCapArray:[Landroid/graphics/Paint$Cap;

    .line 79
    new-array v0, v5, [Landroid/graphics/Paint$Join;

    sget-object v1, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    aput-object v1, v0, v3

    sget-object v1, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    aput-object v1, v0, v4

    sput-object v0, Landroid/graphics/Paint;->sJoinArray:[Landroid/graphics/Paint$Join;

    .line 82
    new-array v0, v5, [Landroid/graphics/Paint$Align;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    aput-object v1, v0, v3

    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    aput-object v1, v0, v4

    sput-object v0, Landroid/graphics/Paint;->sAlignArray:[Landroid/graphics/Paint$Align;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 334
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 335
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .parameter "flags"

    .prologue
    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x2

    iput v0, p0, Landroid/graphics/Paint;->mBidiFlags:I

    .line 344
    invoke-static {}, Landroid/graphics/Paint;->native_init()I

    move-result v0

    iput v0, p0, Landroid/graphics/Paint;->mNativePaint:I

    .line 345
    or-int/lit16 v0, p1, 0x100

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setFlags(I)V

    .line 350
    const/high16 v0, 0x3f80

    iput v0, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    iput v0, p0, Landroid/graphics/Paint;->mCompatScaling:F

    .line 351
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Paint;)V
    .registers 3
    .parameter "paint"

    .prologue
    .line 360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x2

    iput v0, p0, Landroid/graphics/Paint;->mBidiFlags:I

    .line 361
    iget v0, p1, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v0}, Landroid/graphics/Paint;->native_initWithPaint(I)I

    move-result v0

    iput v0, p0, Landroid/graphics/Paint;->mNativePaint:I

    .line 362
    invoke-direct {p0, p1}, Landroid/graphics/Paint;->setClassVariablesFrom(Landroid/graphics/Paint;)V

    .line 363
    return-void
.end method

.method private static native finalizer(I)V
.end method

.method private native nSetShadowLayer(FFFI)V
.end method

.method private static native nativeGetCharArrayBounds(I[CIILandroid/graphics/Rect;)V
.end method

.method private static native nativeGetStringBounds(ILjava/lang/String;IILandroid/graphics/Rect;)V
.end method

.method private native native_breakText(Ljava/lang/String;ZF[F)I
.end method

.method private native native_breakText([CIIF[F)I
.end method

.method private static native native_getFillPath(III)Z
.end method

.method private static native native_getFontMetrics(ILandroid/graphics/Paint$FontMetrics;)F
.end method

.method private static native native_getStrokeCap(I)I
.end method

.method private static native native_getStrokeJoin(I)I
.end method

.method private static native native_getStyle(I)I
.end method

.method private static native native_getTextAlign(I)I
.end method

.method private static native native_getTextGlyphs(ILjava/lang/String;IIIII[C)I
.end method

.method private static native native_getTextPath(IILjava/lang/String;IIFFI)V
.end method

.method private static native native_getTextPath(II[CIIFFI)V
.end method

.method private static native native_getTextRunAdvances(ILjava/lang/String;IIIII[FII)F
.end method

.method private static native native_getTextRunAdvances(I[CIIIII[FII)F
.end method

.method private native native_getTextRunCursor(ILjava/lang/String;IIIII)I
.end method

.method private native native_getTextRunCursor(I[CIIIII)I
.end method

.method private static native native_getTextWidths(ILjava/lang/String;II[F)I
.end method

.method private static native native_getTextWidths(I[CII[F)I
.end method

.method private static native native_init()I
.end method

.method private static native native_initWithPaint(I)I
.end method

.method private native native_measureText(Ljava/lang/String;)F
.end method

.method private native native_measureText(Ljava/lang/String;II)F
.end method

.method private native native_measureText([CII)F
.end method

.method private static native native_reset(I)V
.end method

.method private static native native_set(II)V
.end method

.method private static native native_setColorFilter(II)I
.end method

.method private static native native_setMaskFilter(II)I
.end method

.method private static native native_setPathEffect(II)I
.end method

.method private static native native_setRasterizer(II)I
.end method

.method private static native native_setShader(II)I
.end method

.method private static native native_setStrokeCap(II)V
.end method

.method private static native native_setStrokeJoin(II)V
.end method

.method private static native native_setStyle(II)V
.end method

.method private static native native_setTextAlign(II)V
.end method

.method private static native native_setTypeface(II)I
.end method

.method private static native native_setXfermode(II)I
.end method

.method private setClassVariablesFrom(Landroid/graphics/Paint;)V
    .registers 3
    .parameter "paint"

    .prologue
    .line 396
    iget-object v0, p1, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    iput-object v0, p0, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 397
    iget-object v0, p1, Landroid/graphics/Paint;->mMaskFilter:Landroid/graphics/MaskFilter;

    iput-object v0, p0, Landroid/graphics/Paint;->mMaskFilter:Landroid/graphics/MaskFilter;

    .line 398
    iget-object v0, p1, Landroid/graphics/Paint;->mPathEffect:Landroid/graphics/PathEffect;

    iput-object v0, p0, Landroid/graphics/Paint;->mPathEffect:Landroid/graphics/PathEffect;

    .line 399
    iget-object v0, p1, Landroid/graphics/Paint;->mRasterizer:Landroid/graphics/Rasterizer;

    iput-object v0, p0, Landroid/graphics/Paint;->mRasterizer:Landroid/graphics/Rasterizer;

    .line 400
    iget-object v0, p1, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    iput-object v0, p0, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    .line 401
    iget-object v0, p1, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    iput-object v0, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    .line 402
    iget-object v0, p1, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    iput-object v0, p0, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    .line 404
    iget-boolean v0, p1, Landroid/graphics/Paint;->mHasCompatScaling:Z

    iput-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    .line 405
    iget v0, p1, Landroid/graphics/Paint;->mCompatScaling:F

    iput v0, p0, Landroid/graphics/Paint;->mCompatScaling:F

    .line 406
    iget v0, p1, Landroid/graphics/Paint;->mInvCompatScaling:F

    iput v0, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    .line 408
    iget-boolean v0, p1, Landroid/graphics/Paint;->hasShadow:Z

    iput-boolean v0, p0, Landroid/graphics/Paint;->hasShadow:Z

    .line 409
    iget v0, p1, Landroid/graphics/Paint;->shadowDx:F

    iput v0, p0, Landroid/graphics/Paint;->shadowDx:F

    .line 410
    iget v0, p1, Landroid/graphics/Paint;->shadowDy:F

    iput v0, p0, Landroid/graphics/Paint;->shadowDy:F

    .line 411
    iget v0, p1, Landroid/graphics/Paint;->shadowRadius:F

    iput v0, p0, Landroid/graphics/Paint;->shadowRadius:F

    .line 412
    iget v0, p1, Landroid/graphics/Paint;->shadowColor:I

    iput v0, p0, Landroid/graphics/Paint;->shadowColor:I

    .line 414
    iget v0, p1, Landroid/graphics/Paint;->mBidiFlags:I

    iput v0, p0, Landroid/graphics/Paint;->mBidiFlags:I

    .line 415
    return-void
.end method


# virtual methods
.method public native ascent()F
.end method

.method public breakText(Ljava/lang/CharSequence;IIZF[F)I
    .registers 14
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "measureForwards"
    .parameter "maxWidth"
    .parameter "measuredWidth"

    .prologue
    const/4 v2, 0x0

    .line 1397
    if-nez p1, :cond_b

    .line 1398
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "text cannot be null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1400
    :cond_b
    or-int v0, p2, p3

    sub-int v3, p3, p2

    or-int/2addr v0, v3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    sub-int/2addr v3, p3

    or-int/2addr v0, v3

    if-gez v0, :cond_1e

    .line 1401
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 1404
    :cond_1e
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_26

    if-ne p2, p3, :cond_28

    :cond_26
    move v6, v2

    .line 1424
    .end local p1
    :goto_27
    return v6

    .line 1407
    .restart local p1
    :cond_28
    if-nez p2, :cond_3b

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_3b

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ne p3, v0, :cond_3b

    .line 1408
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1, p4, p5, p6}, Landroid/graphics/Paint;->breakText(Ljava/lang/String;ZF[F)I

    move-result v6

    goto :goto_27

    .line 1412
    .restart local p1
    :cond_3b
    sub-int v0, p3, p2

    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v1

    .line 1415
    .local v1, buf:[C
    invoke-static {p1, p2, p3, v1, v2}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 1417
    if-eqz p4, :cond_53

    .line 1418
    sub-int v3, p3, p2

    move-object v0, p0

    move v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Paint;->breakText([CIIF[F)I

    move-result v6

    .line 1423
    .local v6, result:I
    :goto_4f
    invoke-static {v1}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    goto :goto_27

    .line 1420
    .end local v6           #result:I
    :cond_53
    sub-int v0, p3, p2

    neg-int v3, v0

    move-object v0, p0

    move v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Paint;->breakText([CIIF[F)I

    move-result v6

    .restart local v6       #result:I
    goto :goto_4f
.end method

.method public breakText(Ljava/lang/String;ZF[F)I
    .registers 10
    .parameter "text"
    .parameter "measureForwards"
    .parameter "maxWidth"
    .parameter "measuredWidth"

    .prologue
    const/4 v2, 0x0

    .line 1445
    if-nez p1, :cond_b

    .line 1446
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "text cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1449
    :cond_b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_13

    move v1, v2

    .line 1462
    :cond_12
    :goto_12
    return v1

    .line 1452
    :cond_13
    iget-boolean v3, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v3, :cond_1c

    .line 1453
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/graphics/Paint;->native_breakText(Ljava/lang/String;ZF[F)I

    move-result v1

    goto :goto_12

    .line 1456
    :cond_1c
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    .line 1457
    .local v0, oldSize:F
    iget v3, p0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v3, v0

    invoke-virtual {p0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1458
    iget v3, p0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v3, p3

    invoke-direct {p0, p1, p2, v3, p4}, Landroid/graphics/Paint;->native_breakText(Ljava/lang/String;ZF[F)I

    move-result v1

    .line 1460
    .local v1, res:I
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1461
    if-eqz p4, :cond_12

    aget v3, p4, v2

    iget v4, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v3, v4

    aput v3, p4, v2

    goto :goto_12
.end method

.method public breakText([CIIF[F)I
    .registers 15
    .parameter "text"
    .parameter "index"
    .parameter "count"
    .parameter "maxWidth"
    .parameter "measuredWidth"

    .prologue
    const/4 v8, 0x0

    .line 1352
    if-nez p1, :cond_b

    .line 1353
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "text cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1355
    :cond_b
    if-ltz p2, :cond_15

    array-length v0, p1

    sub-int/2addr v0, p2

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 1356
    :cond_15
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 1359
    :cond_1b
    array-length v0, p1

    if-eqz v0, :cond_20

    if-nez p3, :cond_22

    :cond_20
    move v7, v8

    .line 1372
    :cond_21
    :goto_21
    return v7

    .line 1362
    :cond_22
    iget-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v0, :cond_2b

    .line 1363
    invoke-direct/range {p0 .. p5}, Landroid/graphics/Paint;->native_breakText([CIIF[F)I

    move-result v7

    goto :goto_21

    .line 1366
    :cond_2b
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v6

    .line 1367
    .local v6, oldSize:F
    iget v0, p0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v0, v6

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1368
    iget v0, p0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float v4, p4, v0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/graphics/Paint;->native_breakText([CIIF[F)I

    move-result v7

    .line 1370
    .local v7, res:I
    invoke-virtual {p0, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1371
    if-eqz p5, :cond_21

    aget v0, p5, v8

    iget v1, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v0, v1

    aput v0, p5, v8

    goto :goto_21
.end method

.method public clearShadowLayer()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 1017
    iput-boolean v1, p0, Landroid/graphics/Paint;->hasShadow:Z

    .line 1018
    invoke-direct {p0, v0, v0, v0, v1}, Landroid/graphics/Paint;->nSetShadowLayer(FFFI)V

    .line 1019
    return-void
.end method

.method public native descent()F
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 2108
    :try_start_0
    iget v0, p0, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v0}, Landroid/graphics/Paint;->finalizer(I)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_9

    .line 2110
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 2112
    return-void

    .line 2110
    :catchall_9
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public native getAlpha()I
.end method

.method public getBidiFlags()I
    .registers 2

    .prologue
    .line 436
    iget v0, p0, Landroid/graphics/Paint;->mBidiFlags:I

    return v0
.end method

.method public native getColor()I
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .registers 2

    .prologue
    .line 833
    iget-object v0, p0, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public getFillPath(Landroid/graphics/Path;Landroid/graphics/Path;)Z
    .registers 6
    .parameter "src"
    .parameter "dst"

    .prologue
    .line 797
    iget v0, p0, Landroid/graphics/Paint;->mNativePaint:I

    invoke-virtual {p1}, Landroid/graphics/Path;->ni()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Path;->ni()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/graphics/Paint;->native_getFillPath(III)Z

    move-result v0

    return v0
.end method

.method public native getFlags()I
.end method

.method public native getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F
.end method

.method public getFontMetrics()Landroid/graphics/Paint$FontMetrics;
    .registers 2

    .prologue
    .line 1157
    new-instance v0, Landroid/graphics/Paint$FontMetrics;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetrics;-><init>()V

    .line 1158
    .local v0, fm:Landroid/graphics/Paint$FontMetrics;
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    .line 1159
    return-object v0
.end method

.method public native getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I
.end method

.method public getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;
    .registers 2

    .prologue
    .line 1193
    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    .line 1194
    .local v0, fm:Landroid/graphics/Paint$FontMetricsInt;
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 1195
    return-object v0
.end method

.method public getFontSpacing()F
    .registers 2

    .prologue
    .line 1206
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    move-result v0

    return v0
.end method

.method public native getHinting()I
.end method

.method public getMaskFilter()Landroid/graphics/MaskFilter;
    .registers 2

    .prologue
    .line 912
    iget-object v0, p0, Landroid/graphics/Paint;->mMaskFilter:Landroid/graphics/MaskFilter;

    return-object v0
.end method

.method public getPathEffect()Landroid/graphics/PathEffect;
    .registers 2

    .prologue
    .line 884
    iget-object v0, p0, Landroid/graphics/Paint;->mPathEffect:Landroid/graphics/PathEffect;

    return-object v0
.end method

.method public getRasterizer()Landroid/graphics/Rasterizer;
    .registers 2

    .prologue
    .line 974
    iget-object v0, p0, Landroid/graphics/Paint;->mRasterizer:Landroid/graphics/Rasterizer;

    return-object v0
.end method

.method public getShader()Landroid/graphics/Shader;
    .registers 2

    .prologue
    .line 806
    iget-object v0, p0, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    return-object v0
.end method

.method public getStrokeCap()Landroid/graphics/Paint$Cap;
    .registers 3

    .prologue
    .line 753
    sget-object v0, Landroid/graphics/Paint;->sCapArray:[Landroid/graphics/Paint$Cap;

    iget v1, p0, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v1}, Landroid/graphics/Paint;->native_getStrokeCap(I)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getStrokeJoin()Landroid/graphics/Paint$Join;
    .registers 3

    .prologue
    .line 772
    sget-object v0, Landroid/graphics/Paint;->sJoinArray:[Landroid/graphics/Paint$Join;

    iget v1, p0, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v1}, Landroid/graphics/Paint;->native_getStrokeJoin(I)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public native getStrokeMiter()F
.end method

.method public native getStrokeWidth()F
.end method

.method public getStyle()Landroid/graphics/Paint$Style;
    .registers 3

    .prologue
    .line 642
    sget-object v0, Landroid/graphics/Paint;->sStyleArray:[Landroid/graphics/Paint$Style;

    iget v1, p0, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v1}, Landroid/graphics/Paint;->native_getStyle(I)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getTextAlign()Landroid/graphics/Paint$Align;
    .registers 3

    .prologue
    .line 1030
    sget-object v0, Landroid/graphics/Paint;->sAlignArray:[Landroid/graphics/Paint$Align;

    iget v1, p0, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v1}, Landroid/graphics/Paint;->native_getTextAlign(I)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V
    .registers 7
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "bounds"

    .prologue
    .line 2076
    or-int v0, p2, p3

    sub-int v1, p3, p2

    or-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    if-gez v0, :cond_13

    .line 2077
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 2079
    :cond_13
    if-nez p4, :cond_1d

    .line 2080
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "need bounds Rect"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2082
    :cond_1d
    iget v0, p0, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v0, p1, p2, p3, p4}, Landroid/graphics/Paint;->nativeGetStringBounds(ILjava/lang/String;IILandroid/graphics/Rect;)V

    .line 2083
    return-void
.end method

.method public getTextBounds([CIILandroid/graphics/Rect;)V
    .registers 7
    .parameter "text"
    .parameter "index"
    .parameter "count"
    .parameter "bounds"

    .prologue
    .line 2096
    or-int v0, p2, p3

    if-ltz v0, :cond_9

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_f

    .line 2097
    :cond_9
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 2099
    :cond_f
    if-nez p4, :cond_19

    .line 2100
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "need bounds Rect"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2102
    :cond_19
    iget v0, p0, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v0, p1, p2, p3, p4}, Landroid/graphics/Paint;->nativeGetCharArrayBounds(I[CIILandroid/graphics/Rect;)V

    .line 2103
    return-void
.end method

.method public getTextGlyphs(Ljava/lang/String;IIIII[C)I
    .registers 16
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "contextStart"
    .parameter "contextEnd"
    .parameter "flags"
    .parameter "glyphs"

    .prologue
    .line 1621
    if-nez p1, :cond_a

    .line 1622
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "text cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1624
    :cond_a
    if-eqz p6, :cond_28

    const/4 v0, 0x1

    if-eq p6, v0, :cond_28

    .line 1625
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown flags value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1627
    :cond_28
    or-int v0, p2, p3

    or-int/2addr v0, p4

    or-int/2addr v0, p5

    sub-int v1, p3, p2

    or-int/2addr v0, v1

    sub-int v1, p2, p4

    or-int/2addr v0, v1

    sub-int v1, p5, p3

    or-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p5

    or-int/2addr v0, v1

    if-gez v0, :cond_49

    .line 1630
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 1632
    :cond_49
    sub-int v0, p3, p2

    array-length v1, p7

    if-le v0, v1, :cond_54

    .line 1633
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 1635
    :cond_54
    iget v0, p0, Landroid/graphics/Paint;->mNativePaint:I

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    invoke-static/range {v0 .. v7}, Landroid/graphics/Paint;->native_getTextGlyphs(ILjava/lang/String;IIIII[C)I

    move-result v0

    return v0
.end method

.method public getTextPath(Ljava/lang/String;IIFFLandroid/graphics/Path;)V
    .registers 15
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "x"
    .parameter "y"
    .parameter "path"

    .prologue
    .line 2058
    or-int v0, p2, p3

    sub-int v1, p3, p2

    or-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    if-gez v0, :cond_13

    .line 2059
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 2061
    :cond_13
    iget v0, p0, Landroid/graphics/Paint;->mNativePaint:I

    iget v1, p0, Landroid/graphics/Paint;->mBidiFlags:I

    invoke-virtual {p6}, Landroid/graphics/Path;->ni()I

    move-result v7

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v7}, Landroid/graphics/Paint;->native_getTextPath(IILjava/lang/String;IIFFI)V

    .line 2063
    return-void
.end method

.method public getTextPath([CIIFFLandroid/graphics/Path;)V
    .registers 15
    .parameter "text"
    .parameter "index"
    .parameter "count"
    .parameter "x"
    .parameter "y"
    .parameter "path"

    .prologue
    .line 2036
    or-int v0, p2, p3

    if-ltz v0, :cond_9

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_f

    .line 2037
    :cond_9
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 2039
    :cond_f
    iget v0, p0, Landroid/graphics/Paint;->mNativePaint:I

    iget v1, p0, Landroid/graphics/Paint;->mBidiFlags:I

    invoke-virtual {p6}, Landroid/graphics/Path;->ni()I

    move-result v7

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v7}, Landroid/graphics/Paint;->native_getTextPath(II[CIIFFI)V

    .line 2041
    return-void
.end method

.method public getTextRunAdvances(Ljava/lang/CharSequence;IIIII[FI)F
    .registers 19
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "contextStart"
    .parameter "contextEnd"
    .parameter "flags"
    .parameter "advances"
    .parameter "advancesIndex"

    .prologue
    .line 1711
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Landroid/graphics/Paint;->getTextRunAdvances(Ljava/lang/CharSequence;IIIII[FII)F

    move-result v0

    return v0
.end method

.method public getTextRunAdvances(Ljava/lang/CharSequence;IIIII[FII)F
    .registers 23
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "contextStart"
    .parameter "contextEnd"
    .parameter "flags"
    .parameter "advances"
    .parameter "advancesIndex"
    .parameter "reserved"

    .prologue
    .line 1726
    if-nez p1, :cond_a

    .line 1727
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "text cannot be null"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1729
    :cond_a
    or-int v2, p2, p3

    or-int v2, v2, p4

    or-int v2, v2, p5

    or-int v2, v2, p8

    sub-int v4, p3, p2

    or-int/2addr v2, v4

    sub-int v4, p2, p4

    or-int/2addr v2, v4

    sub-int v4, p5, p3

    or-int/2addr v2, v4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    sub-int v4, v4, p5

    or-int/2addr v4, v2

    if-nez p7, :cond_2e

    const/4 v2, 0x0

    :goto_25
    or-int/2addr v2, v4

    if-gez v2, :cond_37

    .line 1734
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 1729
    :cond_2e
    move-object/from16 v0, p7

    array-length v2, v0

    sub-int v2, v2, p8

    sub-int v6, p3, p2

    sub-int/2addr v2, v6

    goto :goto_25

    .line 1737
    :cond_37
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_53

    move-object v3, p1

    .line 1738
    check-cast v3, Ljava/lang/String;

    move-object v2, p0

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-virtual/range {v2 .. v11}, Landroid/graphics/Paint;->getTextRunAdvances(Ljava/lang/String;IIIII[FII)F

    move-result v12

    .line 1761
    :goto_52
    return v12

    .line 1741
    :cond_53
    instance-of v2, p1, Landroid/text/SpannedString;

    if-nez v2, :cond_5b

    instance-of v2, p1, Landroid/text/SpannableString;

    if-eqz v2, :cond_74

    .line 1743
    :cond_5b
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, p0

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-virtual/range {v2 .. v11}, Landroid/graphics/Paint;->getTextRunAdvances(Ljava/lang/String;IIIII[FII)F

    move-result v12

    goto :goto_52

    .line 1746
    :cond_74
    instance-of v2, p1, Landroid/text/GraphicsOperations;

    if-eqz v2, :cond_8e

    move-object v2, p1

    .line 1747
    check-cast v2, Landroid/text/GraphicsOperations;

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object v10, p0

    invoke-interface/range {v2 .. v10}, Landroid/text/GraphicsOperations;->getTextRunAdvances(IIIII[FILandroid/graphics/Paint;)F

    move-result v12

    goto :goto_52

    .line 1750
    :cond_8e
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_98

    move/from16 v0, p3

    if-ne v0, p2, :cond_9a

    .line 1751
    :cond_98
    const/4 v12, 0x0

    goto :goto_52

    .line 1754
    :cond_9a
    sub-int v7, p5, p4

    .line 1755
    .local v7, contextLen:I
    sub-int v5, p3, p2

    .line 1756
    .local v5, len:I
    invoke-static {v7}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v3

    .line 1757
    .local v3, buf:[C
    const/4 v2, 0x0

    move/from16 v0, p4

    move/from16 v1, p5

    invoke-static {p1, v0, v1, v3, v2}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 1758
    sub-int v4, p2, p4

    const/4 v6, 0x0

    move-object v2, p0

    move/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-virtual/range {v2 .. v11}, Landroid/graphics/Paint;->getTextRunAdvances([CIIIII[FII)F

    move-result v12

    .line 1760
    .local v12, result:F
    invoke-static {v3}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    goto :goto_52
.end method

.method public getTextRunAdvances(Ljava/lang/String;IIIII[FI)F
    .registers 19
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "contextStart"
    .parameter "contextEnd"
    .parameter "flags"
    .parameter "advances"
    .parameter "advancesIndex"

    .prologue
    .line 1808
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Landroid/graphics/Paint;->getTextRunAdvances(Ljava/lang/String;IIIII[FII)F

    move-result v0

    return v0
.end method

.method public getTextRunAdvances(Ljava/lang/String;IIIII[FII)F
    .registers 26
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "contextStart"
    .parameter "contextEnd"
    .parameter "flags"
    .parameter "advances"
    .parameter "advancesIndex"
    .parameter "reserved"

    .prologue
    .line 1858
    if-nez p1, :cond_a

    .line 1859
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "text cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1861
    :cond_a
    if-eqz p6, :cond_2c

    const/4 v2, 0x1

    move/from16 v0, p6

    if-eq v0, v2, :cond_2c

    .line 1862
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown flags value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1864
    :cond_2c
    or-int v2, p2, p3

    or-int v2, v2, p4

    or-int v2, v2, p5

    or-int v2, v2, p8

    sub-int v3, p3, p2

    or-int/2addr v2, v3

    sub-int v3, p2, p4

    or-int/2addr v2, v3

    sub-int v3, p5, p3

    or-int/2addr v2, v3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v3, v3, p5

    or-int/2addr v3, v2

    if-nez p7, :cond_50

    const/4 v2, 0x0

    :goto_47
    or-int/2addr v2, v3

    if-gez v2, :cond_59

    .line 1869
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 1864
    :cond_50
    move-object/from16 v0, p7

    array-length v2, v0

    sub-int v2, v2, p8

    sub-int v4, p3, p2

    sub-int/2addr v2, v4

    goto :goto_47

    .line 1872
    :cond_59
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_65

    move/from16 v0, p2

    move/from16 v1, p3

    if-ne v0, v1, :cond_67

    .line 1873
    :cond_65
    const/4 v2, 0x0

    .line 1892
    :goto_66
    return v2

    .line 1876
    :cond_67
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v2, :cond_88

    .line 1877
    move-object/from16 v0, p0

    iget v2, v0, Landroid/graphics/Paint;->mNativePaint:I

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-static/range {v2 .. v11}, Landroid/graphics/Paint;->native_getTextRunAdvances(ILjava/lang/String;IIIII[FII)F

    move-result v2

    goto :goto_66

    .line 1881
    :cond_88
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v14

    .line 1882
    .local v14, oldSize:F
    move-object/from16 v0, p0

    iget v2, v0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v2, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1883
    move-object/from16 v0, p0

    iget v2, v0, Landroid/graphics/Paint;->mNativePaint:I

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-static/range {v2 .. v11}, Landroid/graphics/Paint;->native_getTextRunAdvances(ILjava/lang/String;IIIII[FII)F

    move-result v15

    .line 1885
    .local v15, totalAdvance:F
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1887
    if-eqz p7, :cond_cb

    .line 1888
    move/from16 v13, p8

    .local v13, i:I
    sub-int v2, p3, p2

    add-int v12, v13, v2

    .local v12, e:I
    :goto_bd
    if-ge v13, v12, :cond_cb

    .line 1889
    aget v2, p7, v13

    move-object/from16 v0, p0

    iget v3, v0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v2, v3

    aput v2, p7, v13

    .line 1888
    add-int/lit8 v13, v13, 0x1

    goto :goto_bd

    .line 1892
    .end local v12           #e:I
    .end local v13           #i:I
    :cond_cb
    move-object/from16 v0, p0

    iget v2, v0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v2, v15

    goto :goto_66
.end method

.method public getTextRunAdvances([CIIIII[FI)F
    .registers 19
    .parameter "chars"
    .parameter "index"
    .parameter "count"
    .parameter "contextIndex"
    .parameter "contextCount"
    .parameter "flags"
    .parameter "advances"
    .parameter "advancesIndex"

    .prologue
    .line 1649
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Landroid/graphics/Paint;->getTextRunAdvances([CIIIII[FII)F

    move-result v0

    return v0
.end method

.method public getTextRunAdvances([CIIIII[FII)F
    .registers 25
    .parameter "chars"
    .parameter "index"
    .parameter "count"
    .parameter "contextIndex"
    .parameter "contextCount"
    .parameter "flags"
    .parameter "advances"
    .parameter "advancesIndex"
    .parameter "reserved"

    .prologue
    .line 1664
    if-nez p1, :cond_a

    .line 1665
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "text cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1667
    :cond_a
    if-eqz p6, :cond_2c

    const/4 v1, 0x1

    move/from16 v0, p6

    if-eq v0, v1, :cond_2c

    .line 1668
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown flags value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1670
    :cond_2c
    or-int v1, p2, p3

    or-int v1, v1, p4

    or-int v1, v1, p5

    or-int v1, v1, p8

    sub-int v2, p2, p4

    or-int/2addr v1, v2

    sub-int v2, p5, p3

    or-int/2addr v1, v2

    add-int v2, p4, p5

    add-int v3, p2, p3

    sub-int/2addr v2, v3

    or-int/2addr v1, v2

    move-object/from16 v0, p1

    array-length v2, v0

    add-int v3, p4, p5

    sub-int/2addr v2, v3

    or-int/2addr v2, v1

    if-nez p7, :cond_53

    const/4 v1, 0x0

    :goto_4a
    or-int/2addr v1, v2

    if-gez v1, :cond_5a

    .line 1676
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 1670
    :cond_53
    move-object/from16 v0, p7

    array-length v1, v0

    add-int v3, p8, p3

    sub-int/2addr v1, v3

    goto :goto_4a

    .line 1679
    :cond_5a
    move-object/from16 v0, p1

    array-length v1, v0

    if-eqz v1, :cond_61

    if-nez p3, :cond_63

    .line 1680
    :cond_61
    const/4 v1, 0x0

    .line 1698
    :goto_62
    return v1

    .line 1682
    :cond_63
    iget-boolean v1, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v1, :cond_80

    .line 1683
    iget v1, p0, Landroid/graphics/Paint;->mNativePaint:I

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-static/range {v1 .. v10}, Landroid/graphics/Paint;->native_getTextRunAdvances(I[CIIIII[FII)F

    move-result v1

    goto :goto_62

    .line 1687
    :cond_80
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v13

    .line 1688
    .local v13, oldSize:F
    iget v1, p0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v1, v13

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1689
    iget v1, p0, Landroid/graphics/Paint;->mNativePaint:I

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-static/range {v1 .. v10}, Landroid/graphics/Paint;->native_getTextRunAdvances(I[CIIIII[FII)F

    move-result v14

    .line 1691
    .local v14, res:F
    invoke-virtual {p0, v13}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1693
    if-eqz p7, :cond_b7

    .line 1694
    move/from16 v12, p8

    .local v12, i:I
    add-int v11, v12, p3

    .local v11, e:I
    :goto_ab
    if-ge v12, v11, :cond_b7

    .line 1695
    aget v1, p7, v12

    iget v2, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v1, v2

    aput v1, p7, v12

    .line 1694
    add-int/lit8 v12, v12, 0x1

    goto :goto_ab

    .line 1698
    .end local v11           #e:I
    .end local v12           #i:I
    :cond_b7
    iget v1, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v1, v14

    goto :goto_62
.end method

.method public getTextRunCursor(Ljava/lang/CharSequence;IIIII)I
    .registers 15
    .parameter "text"
    .parameter "contextStart"
    .parameter "contextEnd"
    .parameter "flags"
    .parameter "offset"
    .parameter "cursorOpt"

    .prologue
    const/4 v2, 0x0

    .line 1964
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_d

    instance-of v0, p1, Landroid/text/SpannedString;

    if-nez v0, :cond_d

    instance-of v0, p1, Landroid/text/SpannableString;

    if-eqz v0, :cond_1c

    .line 1966
    :cond_d
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->getTextRunCursor(Ljava/lang/String;IIIII)I

    move-result v7

    .line 1979
    :goto_1b
    return v7

    .line 1969
    :cond_1c
    instance-of v0, p1, Landroid/text/GraphicsOperations;

    if-eqz v0, :cond_2e

    move-object v0, p1

    .line 1970
    check-cast v0, Landroid/text/GraphicsOperations;

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move-object v6, p0

    invoke-interface/range {v0 .. v6}, Landroid/text/GraphicsOperations;->getTextRunCursor(IIIIILandroid/graphics/Paint;)I

    move-result v7

    goto :goto_1b

    .line 1974
    :cond_2e
    sub-int v3, p3, p2

    .line 1975
    .local v3, contextLen:I
    invoke-static {v3}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v1

    .line 1976
    .local v1, buf:[C
    invoke-static {p1, p2, p3, v1, v2}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 1977
    sub-int v5, p5, p2

    move-object v0, p0

    move v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->getTextRunCursor([CIIIII)I

    move-result v7

    .line 1978
    .local v7, result:I
    invoke-static {v1}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    goto :goto_1b
.end method

.method public getTextRunCursor(Ljava/lang/String;IIIII)I
    .registers 15
    .parameter "text"
    .parameter "contextStart"
    .parameter "contextEnd"
    .parameter "flags"
    .parameter "offset"
    .parameter "cursorOpt"

    .prologue
    .line 2010
    or-int v0, p2, p3

    or-int/2addr v0, p5

    sub-int v1, p3, p2

    or-int/2addr v0, v1

    sub-int v1, p5, p2

    or-int/2addr v0, v1

    sub-int v1, p3, p5

    or-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    or-int/2addr v0, p6

    if-ltz v0, :cond_18

    const/4 v0, 0x4

    if-le p6, v0, :cond_1e

    .line 2014
    :cond_18
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 2017
    :cond_1e
    iget v1, p0, Landroid/graphics/Paint;->mNativePaint:I

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/graphics/Paint;->native_getTextRunCursor(ILjava/lang/String;IIIII)I

    move-result v0

    return v0
.end method

.method public getTextRunCursor([CIIIII)I
    .registers 16
    .parameter "text"
    .parameter "contextStart"
    .parameter "contextLength"
    .parameter "flags"
    .parameter "offset"
    .parameter "cursorOpt"

    .prologue
    .line 1923
    add-int v8, p2, p3

    .line 1924
    .local v8, contextEnd:I
    or-int v0, p2, v8

    or-int/2addr v0, p5

    sub-int v1, v8, p2

    or-int/2addr v0, v1

    sub-int v1, p5, p2

    or-int/2addr v0, v1

    sub-int v1, v8, p5

    or-int/2addr v0, v1

    array-length v1, p1

    sub-int/2addr v1, v8

    or-int/2addr v0, v1

    or-int/2addr v0, p6

    if-ltz v0, :cond_17

    const/4 v0, 0x4

    if-le p6, v0, :cond_1d

    .line 1928
    :cond_17
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 1931
    :cond_1d
    iget v1, p0, Landroid/graphics/Paint;->mNativePaint:I

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/graphics/Paint;->native_getTextRunCursor(I[CIIIII)I

    move-result v0

    return v0
.end method

.method public native getTextScaleX()F
.end method

.method public native getTextSize()F
.end method

.method public native getTextSkewX()F
.end method

.method public getTextWidths(Ljava/lang/CharSequence;II[F)I
    .registers 9
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "widths"

    .prologue
    const/4 v1, 0x0

    .line 1517
    if-nez p1, :cond_b

    .line 1518
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "text cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1520
    :cond_b
    or-int v2, p2, p3

    sub-int v3, p3, p2

    or-int/2addr v2, v3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    sub-int/2addr v3, p3

    or-int/2addr v2, v3

    if-gez v2, :cond_1e

    .line 1521
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 1523
    :cond_1e
    sub-int v2, p3, p2

    array-length v3, p4

    if-le v2, v3, :cond_29

    .line 1524
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    .line 1527
    :cond_29
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_31

    if-ne p2, p3, :cond_32

    .line 1546
    .end local p1
    :cond_31
    :goto_31
    return v1

    .line 1530
    .restart local p1
    :cond_32
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_3d

    .line 1531
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;II[F)I

    move-result v1

    goto :goto_31

    .line 1533
    .restart local p1
    :cond_3d
    instance-of v2, p1, Landroid/text/SpannedString;

    if-nez v2, :cond_45

    instance-of v2, p1, Landroid/text/SpannableString;

    if-eqz v2, :cond_4e

    .line 1535
    :cond_45
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p2, p3, p4}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;II[F)I

    move-result v1

    goto :goto_31

    .line 1537
    :cond_4e
    instance-of v2, p1, Landroid/text/GraphicsOperations;

    if-eqz v2, :cond_59

    .line 1538
    check-cast p1, Landroid/text/GraphicsOperations;

    .end local p1
    invoke-interface {p1, p2, p3, p4, p0}, Landroid/text/GraphicsOperations;->getTextWidths(II[FLandroid/graphics/Paint;)I

    move-result v1

    goto :goto_31

    .line 1542
    .restart local p1
    :cond_59
    sub-int v2, p3, p2

    invoke-static {v2}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v0

    .line 1543
    .local v0, buf:[C
    invoke-static {p1, p2, p3, v0, v1}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 1544
    sub-int v2, p3, p2

    invoke-virtual {p0, v0, v1, v2, p4}, Landroid/graphics/Paint;->getTextWidths([CII[F)I

    move-result v1

    .line 1545
    .local v1, result:I
    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    goto :goto_31
.end method

.method public getTextWidths(Ljava/lang/String;II[F)I
    .registers 10
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "widths"

    .prologue
    .line 1560
    if-nez p1, :cond_a

    .line 1561
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "text cannot be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1563
    :cond_a
    or-int v3, p2, p3

    sub-int v4, p3, p2

    or-int/2addr v3, v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, p3

    or-int/2addr v3, v4

    if-gez v3, :cond_1d

    .line 1564
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3

    .line 1566
    :cond_1d
    sub-int v3, p3, p2

    array-length v4, p4

    if-le v3, v4, :cond_28

    .line 1567
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v3

    .line 1570
    :cond_28
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_30

    if-ne p2, p3, :cond_32

    .line 1571
    :cond_30
    const/4 v2, 0x0

    .line 1584
    :cond_31
    :goto_31
    return v2

    .line 1573
    :cond_32
    iget-boolean v3, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v3, :cond_3d

    .line 1574
    iget v3, p0, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v3, p1, p2, p3, p4}, Landroid/graphics/Paint;->native_getTextWidths(ILjava/lang/String;II[F)I

    move-result v2

    goto :goto_31

    .line 1577
    :cond_3d
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v1

    .line 1578
    .local v1, oldSize:F
    iget v3, p0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v3, v1

    invoke-virtual {p0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1579
    iget v3, p0, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v3, p1, p2, p3, p4}, Landroid/graphics/Paint;->native_getTextWidths(ILjava/lang/String;II[F)I

    move-result v2

    .line 1580
    .local v2, res:I
    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1581
    const/4 v0, 0x0

    .local v0, i:I
    :goto_51
    if-ge v0, v2, :cond_31

    .line 1582
    aget v3, p4, v0

    iget v4, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v3, v4

    aput v3, p4, v0

    .line 1581
    add-int/lit8 v0, v0, 0x1

    goto :goto_51
.end method

.method public getTextWidths(Ljava/lang/String;[F)I
    .registers 5
    .parameter "text"
    .parameter "widths"

    .prologue
    .line 1596
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;II[F)I

    move-result v0

    return v0
.end method

.method public getTextWidths([CII[F)I
    .registers 10
    .parameter "text"
    .parameter "index"
    .parameter "count"
    .parameter "widths"

    .prologue
    .line 1480
    if-nez p1, :cond_a

    .line 1481
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "text cannot be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1483
    :cond_a
    or-int v3, p2, p3

    if-ltz v3, :cond_16

    add-int v3, p2, p3

    array-length v4, p1

    if-gt v3, v4, :cond_16

    array-length v3, p4

    if-le p3, v3, :cond_1c

    .line 1485
    :cond_16
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v3

    .line 1488
    :cond_1c
    array-length v3, p1

    if-eqz v3, :cond_21

    if-nez p3, :cond_23

    .line 1489
    :cond_21
    const/4 v2, 0x0

    .line 1502
    :cond_22
    :goto_22
    return v2

    .line 1491
    :cond_23
    iget-boolean v3, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v3, :cond_2e

    .line 1492
    iget v3, p0, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v3, p1, p2, p3, p4}, Landroid/graphics/Paint;->native_getTextWidths(I[CII[F)I

    move-result v2

    goto :goto_22

    .line 1495
    :cond_2e
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v1

    .line 1496
    .local v1, oldSize:F
    iget v3, p0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v3, v1

    invoke-virtual {p0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1497
    iget v3, p0, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v3, p1, p2, p3, p4}, Landroid/graphics/Paint;->native_getTextWidths(I[CII[F)I

    move-result v2

    .line 1498
    .local v2, res:I
    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1499
    const/4 v0, 0x0

    .local v0, i:I
    :goto_42
    if-ge v0, v2, :cond_22

    .line 1500
    aget v3, p4, v0

    iget v4, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v3, v4

    aput v3, p4, v0

    .line 1499
    add-int/lit8 v0, v0, 0x1

    goto :goto_42
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .registers 2

    .prologue
    .line 944
    iget-object v0, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public getXfermode()Landroid/graphics/Xfermode;
    .registers 2

    .prologue
    .line 857
    iget-object v0, p0, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    return-object v0
.end method

.method public final isAntiAlias()Z
    .registers 2

    .prologue
    .line 487
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final isDither()Z
    .registers 2

    .prologue
    .line 511
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final isFakeBoldText()Z
    .registers 2

    .prologue
    .line 600
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final isFilterBitmap()Z
    .registers 2

    .prologue
    .line 620
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final isLinearText()Z
    .registers 2

    .prologue
    .line 532
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final isStrikeThruText()Z
    .registers 2

    .prologue
    .line 583
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final isSubpixelText()Z
    .registers 2

    .prologue
    .line 549
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final isUnderlineText()Z
    .registers 2

    .prologue
    .line 566
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public measureText(Ljava/lang/CharSequence;II)F
    .registers 9
    .parameter "text"
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v4, 0x0

    .line 1307
    if-nez p1, :cond_b

    .line 1308
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "text cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1310
    :cond_b
    or-int v2, p2, p3

    sub-int v3, p3, p2

    or-int/2addr v2, v3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    sub-int/2addr v3, p3

    or-int/2addr v2, v3

    if-gez v2, :cond_1e

    .line 1311
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 1314
    :cond_1e
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_26

    if-ne p2, p3, :cond_28

    .line 1315
    :cond_26
    const/4 v1, 0x0

    .line 1332
    .end local p1
    :goto_27
    return v1

    .line 1317
    .restart local p1
    :cond_28
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_33

    .line 1318
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1, p2, p3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v1

    goto :goto_27

    .line 1320
    .restart local p1
    :cond_33
    instance-of v2, p1, Landroid/text/SpannedString;

    if-nez v2, :cond_3b

    instance-of v2, p1, Landroid/text/SpannableString;

    if-eqz v2, :cond_44

    .line 1322
    :cond_3b
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p2, p3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v1

    goto :goto_27

    .line 1324
    :cond_44
    instance-of v2, p1, Landroid/text/GraphicsOperations;

    if-eqz v2, :cond_4f

    .line 1325
    check-cast p1, Landroid/text/GraphicsOperations;

    .end local p1
    invoke-interface {p1, p2, p3, p0}, Landroid/text/GraphicsOperations;->measureText(IILandroid/graphics/Paint;)F

    move-result v1

    goto :goto_27

    .line 1328
    .restart local p1
    :cond_4f
    sub-int v2, p3, p2

    invoke-static {v2}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v0

    .line 1329
    .local v0, buf:[C
    invoke-static {p1, p2, p3, v0, v4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 1330
    sub-int v2, p3, p2

    invoke-virtual {p0, v0, v4, v2}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v1

    .line 1331
    .local v1, result:F
    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    goto :goto_27
.end method

.method public measureText(Ljava/lang/String;)F
    .registers 6
    .parameter "text"

    .prologue
    .line 1280
    if-nez p1, :cond_a

    .line 1281
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "text cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1284
    :cond_a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_12

    .line 1285
    const/4 v2, 0x0

    .line 1293
    :goto_11
    return v2

    .line 1288
    :cond_12
    iget-boolean v2, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v2, :cond_1b

    invoke-direct {p0, p1}, Landroid/graphics/Paint;->native_measureText(Ljava/lang/String;)F

    move-result v2

    goto :goto_11

    .line 1289
    :cond_1b
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    .line 1290
    .local v0, oldSize:F
    iget v2, p0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v2, v0

    invoke-virtual {p0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1291
    invoke-direct {p0, p1}, Landroid/graphics/Paint;->native_measureText(Ljava/lang/String;)F

    move-result v1

    .line 1292
    .local v1, w:F
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1293
    iget v2, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v2, v1

    goto :goto_11
.end method

.method public measureText(Ljava/lang/String;II)F
    .registers 8
    .parameter "text"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 1250
    if-nez p1, :cond_a

    .line 1251
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "text cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1253
    :cond_a
    or-int v2, p2, p3

    sub-int v3, p3, p2

    or-int/2addr v2, v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, p3

    or-int/2addr v2, v3

    if-gez v2, :cond_1d

    .line 1254
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 1257
    :cond_1d
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_25

    if-ne p2, p3, :cond_27

    .line 1258
    :cond_25
    const/4 v2, 0x0

    .line 1268
    :goto_26
    return v2

    .line 1260
    :cond_27
    iget-boolean v2, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v2, :cond_30

    .line 1261
    invoke-direct {p0, p1, p2, p3}, Landroid/graphics/Paint;->native_measureText(Ljava/lang/String;II)F

    move-result v2

    goto :goto_26

    .line 1264
    :cond_30
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    .line 1265
    .local v0, oldSize:F
    iget v2, p0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v2, v0

    invoke-virtual {p0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1266
    invoke-direct {p0, p1, p2, p3}, Landroid/graphics/Paint;->native_measureText(Ljava/lang/String;II)F

    move-result v1

    .line 1267
    .local v1, w:F
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1268
    iget v2, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v2, v1

    goto :goto_26
.end method

.method public measureText([CII)F
    .registers 8
    .parameter "text"
    .parameter "index"
    .parameter "count"

    .prologue
    .line 1218
    if-nez p1, :cond_a

    .line 1219
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "text cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1221
    :cond_a
    or-int v2, p2, p3

    if-ltz v2, :cond_13

    add-int v2, p2, p3

    array-length v3, p1

    if-le v2, v3, :cond_19

    .line 1222
    :cond_13
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    .line 1225
    :cond_19
    array-length v2, p1

    if-eqz v2, :cond_1e

    if-nez p3, :cond_20

    .line 1226
    :cond_1e
    const/4 v2, 0x0

    .line 1236
    :goto_1f
    return v2

    .line 1228
    :cond_20
    iget-boolean v2, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v2, :cond_29

    .line 1229
    invoke-direct {p0, p1, p2, p3}, Landroid/graphics/Paint;->native_measureText([CII)F

    move-result v2

    goto :goto_1f

    .line 1232
    :cond_29
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    .line 1233
    .local v0, oldSize:F
    iget v2, p0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v2, v0

    invoke-virtual {p0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1234
    invoke-direct {p0, p1, p2, p3}, Landroid/graphics/Paint;->native_measureText([CII)F

    move-result v1

    .line 1235
    .local v1, w:F
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1236
    iget v2, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v2, v1

    goto :goto_1f
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 367
    iget v0, p0, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v0}, Landroid/graphics/Paint;->native_reset(I)V

    .line 368
    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setFlags(I)V

    .line 373
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    .line 374
    const/high16 v0, 0x3f80

    iput v0, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    iput v0, p0, Landroid/graphics/Paint;->mCompatScaling:F

    .line 375
    const/4 v0, 0x2

    iput v0, p0, Landroid/graphics/Paint;->mBidiFlags:I

    .line 376
    return-void
.end method

.method public set(Landroid/graphics/Paint;)V
    .registers 4
    .parameter "src"

    .prologue
    .line 384
    if-eq p0, p1, :cond_c

    .line 386
    iget v0, p0, Landroid/graphics/Paint;->mNativePaint:I

    iget v1, p1, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v0, v1}, Landroid/graphics/Paint;->native_set(II)V

    .line 387
    invoke-direct {p0, p1}, Landroid/graphics/Paint;->setClassVariablesFrom(Landroid/graphics/Paint;)V

    .line 389
    :cond_c
    return-void
.end method

.method public setARGB(IIII)V
    .registers 7
    .parameter "a"
    .parameter "r"
    .parameter "g"
    .parameter "b"

    .prologue
    .line 703
    shl-int/lit8 v0, p1, 0x18

    shl-int/lit8 v1, p2, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, p3, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, p4

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 704
    return-void
.end method

.method public native setAlpha(I)V
.end method

.method public native setAntiAlias(Z)V
.end method

.method public setBidiFlags(I)V
    .registers 5
    .parameter "flags"

    .prologue
    .line 445
    and-int/lit8 p1, p1, 0x7

    .line 446
    const/4 v0, 0x5

    if-le p1, v0, :cond_1e

    .line 447
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown bidi flag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 449
    :cond_1e
    iput p1, p0, Landroid/graphics/Paint;->mBidiFlags:I

    .line 450
    return-void
.end method

.method public native setColor(I)V
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;
    .registers 4
    .parameter "filter"

    .prologue
    .line 843
    const/4 v0, 0x0

    .line 844
    .local v0, filterNative:I
    if-eqz p1, :cond_5

    .line 845
    iget v0, p1, Landroid/graphics/ColorFilter;->native_instance:I

    .line 846
    :cond_5
    iget v1, p0, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v1, v0}, Landroid/graphics/Paint;->native_setColorFilter(II)I

    .line 847
    iput-object p1, p0, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 848
    return-object p1
.end method

.method public setCompatibilityScaling(F)V
    .registers 7
    .parameter "factor"

    .prologue
    const/high16 v4, 0x3f80

    .line 419
    float-to-double v0, p1

    const-wide/high16 v2, 0x3ff0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_11

    .line 420
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    .line 421
    iput v4, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    iput v4, p0, Landroid/graphics/Paint;->mCompatScaling:F

    .line 427
    :goto_10
    return-void

    .line 423
    :cond_11
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    .line 424
    iput p1, p0, Landroid/graphics/Paint;->mCompatScaling:F

    .line 425
    div-float v0, v4, p1

    iput v0, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    goto :goto_10
.end method

.method public native setDither(Z)V
.end method

.method public native setFakeBoldText(Z)V
.end method

.method public native setFilterBitmap(Z)V
.end method

.method public native setFlags(I)V
.end method

.method public native setHinting(I)V
.end method

.method public native setLinearText(Z)V
.end method

.method public setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;
    .registers 4
    .parameter "maskfilter"

    .prologue
    .line 926
    const/4 v0, 0x0

    .line 927
    .local v0, maskfilterNative:I
    if-eqz p1, :cond_5

    .line 928
    iget v0, p1, Landroid/graphics/MaskFilter;->native_instance:I

    .line 930
    :cond_5
    iget v1, p0, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v1, v0}, Landroid/graphics/Paint;->native_setMaskFilter(II)I

    .line 931
    iput-object p1, p0, Landroid/graphics/Paint;->mMaskFilter:Landroid/graphics/MaskFilter;

    .line 932
    return-object p1
.end method

.method public setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;
    .registers 4
    .parameter "effect"

    .prologue
    .line 897
    const/4 v0, 0x0

    .line 898
    .local v0, effectNative:I
    if-eqz p1, :cond_5

    .line 899
    iget v0, p1, Landroid/graphics/PathEffect;->native_instance:I

    .line 901
    :cond_5
    iget v1, p0, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v1, v0}, Landroid/graphics/Paint;->native_setPathEffect(II)I

    .line 902
    iput-object p1, p0, Landroid/graphics/Paint;->mPathEffect:Landroid/graphics/PathEffect;

    .line 903
    return-object p1
.end method

.method public setRasterizer(Landroid/graphics/Rasterizer;)Landroid/graphics/Rasterizer;
    .registers 4
    .parameter "rasterizer"

    .prologue
    .line 988
    const/4 v0, 0x0

    .line 989
    .local v0, rasterizerNative:I
    if-eqz p1, :cond_5

    .line 990
    iget v0, p1, Landroid/graphics/Rasterizer;->native_instance:I

    .line 992
    :cond_5
    iget v1, p0, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v1, v0}, Landroid/graphics/Paint;->native_setRasterizer(II)I

    .line 993
    iput-object p1, p0, Landroid/graphics/Paint;->mRasterizer:Landroid/graphics/Rasterizer;

    .line 994
    return-object p1
.end method

.method public setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;
    .registers 4
    .parameter "shader"

    .prologue
    .line 819
    const/4 v0, 0x0

    .line 820
    .local v0, shaderNative:I
    if-eqz p1, :cond_5

    .line 821
    iget v0, p1, Landroid/graphics/Shader;->native_instance:I

    .line 822
    :cond_5
    iget v1, p0, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v1, v0}, Landroid/graphics/Paint;->native_setShader(II)I

    .line 823
    iput-object p1, p0, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    .line 824
    return-object p1
.end method

.method public setShadowLayer(FFFI)V
    .registers 6
    .parameter "radius"
    .parameter "dx"
    .parameter "dy"
    .parameter "color"

    .prologue
    .line 1003
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_14

    const/4 v0, 0x1

    :goto_6
    iput-boolean v0, p0, Landroid/graphics/Paint;->hasShadow:Z

    .line 1004
    iput p1, p0, Landroid/graphics/Paint;->shadowRadius:F

    .line 1005
    iput p2, p0, Landroid/graphics/Paint;->shadowDx:F

    .line 1006
    iput p3, p0, Landroid/graphics/Paint;->shadowDy:F

    .line 1007
    iput p4, p0, Landroid/graphics/Paint;->shadowColor:I

    .line 1008
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/graphics/Paint;->nSetShadowLayer(FFFI)V

    .line 1009
    return-void

    .line 1003
    :cond_14
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public native setStrikeThruText(Z)V
.end method

.method public setStrokeCap(Landroid/graphics/Paint$Cap;)V
    .registers 4
    .parameter "cap"

    .prologue
    .line 763
    iget v0, p0, Landroid/graphics/Paint;->mNativePaint:I

    iget v1, p1, Landroid/graphics/Paint$Cap;->nativeInt:I

    invoke-static {v0, v1}, Landroid/graphics/Paint;->native_setStrokeCap(II)V

    .line 764
    return-void
.end method

.method public setStrokeJoin(Landroid/graphics/Paint$Join;)V
    .registers 4
    .parameter "join"

    .prologue
    .line 782
    iget v0, p0, Landroid/graphics/Paint;->mNativePaint:I

    iget v1, p1, Landroid/graphics/Paint$Join;->nativeInt:I

    invoke-static {v0, v1}, Landroid/graphics/Paint;->native_setStrokeJoin(II)V

    .line 783
    return-void
.end method

.method public native setStrokeMiter(F)V
.end method

.method public native setStrokeWidth(F)V
.end method

.method public setStyle(Landroid/graphics/Paint$Style;)V
    .registers 4
    .parameter "style"

    .prologue
    .line 653
    iget v0, p0, Landroid/graphics/Paint;->mNativePaint:I

    iget v1, p1, Landroid/graphics/Paint$Style;->nativeInt:I

    invoke-static {v0, v1}, Landroid/graphics/Paint;->native_setStyle(II)V

    .line 654
    return-void
.end method

.method public native setSubpixelText(Z)V
.end method

.method public setTextAlign(Landroid/graphics/Paint$Align;)V
    .registers 4
    .parameter "align"

    .prologue
    .line 1042
    iget v0, p0, Landroid/graphics/Paint;->mNativePaint:I

    iget v1, p1, Landroid/graphics/Paint$Align;->nativeInt:I

    invoke-static {v0, v1}, Landroid/graphics/Paint;->native_setTextAlign(II)V

    .line 1043
    return-void
.end method

.method public native setTextScaleX(F)V
.end method

.method public native setTextSize(F)V
.end method

.method public native setTextSkewX(F)V
.end method

.method public setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    .registers 4
    .parameter "typeface"

    .prologue
    .line 957
    const/4 v0, 0x0

    .line 958
    .local v0, typefaceNative:I
    if-eqz p1, :cond_5

    .line 959
    iget v0, p1, Landroid/graphics/Typeface;->native_instance:I

    .line 961
    :cond_5
    iget v1, p0, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v1, v0}, Landroid/graphics/Paint;->native_setTypeface(II)I

    .line 962
    iput-object p1, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    .line 963
    return-object p1
.end method

.method public native setUnderlineText(Z)V
.end method

.method public setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;
    .registers 4
    .parameter "xfermode"

    .prologue
    .line 870
    const/4 v0, 0x0

    .line 871
    .local v0, xfermodeNative:I
    if-eqz p1, :cond_5

    .line 872
    iget v0, p1, Landroid/graphics/Xfermode;->native_instance:I

    .line 873
    :cond_5
    iget v1, p0, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v1, v0}, Landroid/graphics/Paint;->native_setXfermode(II)I

    .line 874
    iput-object p1, p0, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    .line 875
    return-object p1
.end method