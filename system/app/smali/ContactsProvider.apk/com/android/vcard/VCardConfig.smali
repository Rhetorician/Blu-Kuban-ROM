.class public Lcom/android/vcard/VCardConfig;
.super Ljava/lang/Object;
.source "VCardConfig.java"


# static fields
.field public static VCARD_TYPE_DEFAULT:I

.field static VCARD_TYPE_V21_COREA_STR:Ljava/lang/String;

.field static VCARD_TYPE_V21_GENERIC_STR:Ljava/lang/String;

.field private static final sJapaneseMobileTypeSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sVCardTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const v6, 0x38000008

    const v5, 0x18000008

    const v4, -0x3ffffff7

    const v3, -0x3ffffff8

    const/high16 v2, -0x4000

    .line 286
    const-string v0, "v21_generic"

    sput-object v0, Lcom/android/vcard/VCardConfig;->VCARD_TYPE_V21_GENERIC_STR:Ljava/lang/String;

    .line 321
    const-string v0, "v21_corea"

    sput-object v0, Lcom/android/vcard/VCardConfig;->VCARD_TYPE_V21_COREA_STR:Ljava/lang/String;

    .line 404
    sput v2, Lcom/android/vcard/VCardConfig;->VCARD_TYPE_DEFAULT:I

    .line 410
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/vcard/VCardConfig;->sVCardTypeMap:Ljava/util/Map;

    .line 411
    sget-object v0, Lcom/android/vcard/VCardConfig;->sVCardTypeMap:Ljava/util/Map;

    sget-object v1, Lcom/android/vcard/VCardConfig;->VCARD_TYPE_V21_GENERIC_STR:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    sget-object v0, Lcom/android/vcard/VCardConfig;->sVCardTypeMap:Ljava/util/Map;

    const-string v1, "v30_generic"

    const v2, -0x3fffffff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    sget-object v0, Lcom/android/vcard/VCardConfig;->sVCardTypeMap:Ljava/util/Map;

    sget-object v1, Lcom/android/vcard/VCardConfig;->VCARD_TYPE_V21_COREA_STR:Ljava/lang/String;

    const/high16 v2, -0x3bf0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    sget-object v0, Lcom/android/vcard/VCardConfig;->sVCardTypeMap:Ljava/util/Map;

    const-string v1, "v21_europe"

    const v2, -0x3ffffffc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    sget-object v0, Lcom/android/vcard/VCardConfig;->sVCardTypeMap:Ljava/util/Map;

    const-string v1, "v30_europe"

    const v2, -0x3ffffffb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    sget-object v0, Lcom/android/vcard/VCardConfig;->sVCardTypeMap:Ljava/util/Map;

    const-string v1, "v21_japanese_utf8"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    sget-object v0, Lcom/android/vcard/VCardConfig;->sVCardTypeMap:Ljava/util/Map;

    const-string v1, "v30_japanese_utf8"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    sget-object v0, Lcom/android/vcard/VCardConfig;->sVCardTypeMap:Ljava/util/Map;

    const-string v1, "v21_japanese_mobile"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    sget-object v0, Lcom/android/vcard/VCardConfig;->sVCardTypeMap:Ljava/util/Map;

    const-string v1, "docomo"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/vcard/VCardConfig;->sJapaneseMobileTypeSet:Ljava/util/Set;

    .line 422
    sget-object v0, Lcom/android/vcard/VCardConfig;->sJapaneseMobileTypeSet:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 423
    sget-object v0, Lcom/android/vcard/VCardConfig;->sJapaneseMobileTypeSet:Ljava/util/Set;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 424
    sget-object v0, Lcom/android/vcard/VCardConfig;->sJapaneseMobileTypeSet:Ljava/util/Set;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 425
    sget-object v0, Lcom/android/vcard/VCardConfig;->sJapaneseMobileTypeSet:Ljava/util/Set;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 426
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 508
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 509
    return-void
.end method

.method public static appendTypeParamName(I)Z
    .registers 2
    .parameter "vcardType"

    .prologue
    .line 478
    invoke-static {p0}, Lcom/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result v0

    if-nez v0, :cond_b

    const/high16 v0, 0x400

    and-int/2addr v0, p0

    if-eqz v0, :cond_d

    :cond_b
    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public static getNameOrderType(I)I
    .registers 2
    .parameter "vcardType"

    .prologue
    .line 457
    and-int/lit8 v0, p0, 0xc

    return v0
.end method

.method public static isDoCoMo(I)Z
    .registers 2
    .parameter "vcardType"

    .prologue
    .line 505
    const/high16 v0, 0x2000

    and-int/2addr v0, p0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static isJapaneseDevice(I)Z
    .registers 3
    .parameter "vcardType"

    .prologue
    .line 489
    sget-object v0, Lcom/android/vcard/VCardConfig;->sJapaneseMobileTypeSet:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isVersion21(I)Z
    .registers 2
    .parameter "vcardType"

    .prologue
    .line 441
    and-int/lit8 v0, p0, 0x3

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static isVersion30(I)Z
    .registers 3
    .parameter "vcardType"

    .prologue
    const/4 v0, 0x1

    .line 445
    and-int/lit8 v1, p0, 0x3

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static isVersion40(I)Z
    .registers 3
    .parameter "vcardType"

    .prologue
    .line 449
    and-int/lit8 v0, p0, 0x3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static needsToConvertPhoneticString(I)Z
    .registers 2
    .parameter "vcardType"

    .prologue
    .line 497
    const/high16 v0, 0x800

    and-int/2addr v0, p0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static onlyOneNoteFieldIsAvailable(I)Z
    .registers 2
    .parameter "vcardType"

    .prologue
    .line 501
    const v0, 0x38000008

    if-ne p0, v0, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method static refrainPhoneNumberFormatting(I)Z
    .registers 2
    .parameter "vcardType"

    .prologue
    .line 493
    const/high16 v0, 0x200

    and-int/2addr v0, p0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static shouldRefrainQPToNameProperties(I)Z
    .registers 2
    .parameter "vcardType"

    .prologue
    .line 473
    invoke-static {p0}, Lcom/android/vcard/VCardConfig;->shouldUseQuotedPrintable(I)Z

    move-result v0

    if-eqz v0, :cond_b

    const/high16 v0, 0x1000

    and-int/2addr v0, p0

    if-eqz v0, :cond_d

    :cond_b
    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public static shouldUseQuotedPrintable(I)Z
    .registers 2
    .parameter "vcardType"

    .prologue
    .line 453
    invoke-static {p0}, Lcom/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static usesAndroidSpecificProperty(I)Z
    .registers 2
    .parameter "vcardType"

    .prologue
    .line 461
    const/high16 v0, -0x8000

    and-int/2addr v0, p0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static usesDefactProperty(I)Z
    .registers 2
    .parameter "vcardType"

    .prologue
    .line 465
    const/high16 v0, 0x4000

    and-int/2addr v0, p0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method