.class public final enum Lcom/google/common/base/CaseFormat;
.super Ljava/lang/Enum;
.source "CaseFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/CaseFormat$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/common/base/CaseFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/base/CaseFormat;

.field public static final enum LOWER_CAMEL:Lcom/google/common/base/CaseFormat;

.field public static final enum LOWER_HYPHEN:Lcom/google/common/base/CaseFormat;

.field public static final enum LOWER_UNDERSCORE:Lcom/google/common/base/CaseFormat;

.field public static final enum UPPER_CAMEL:Lcom/google/common/base/CaseFormat;

.field public static final enum UPPER_UNDERSCORE:Lcom/google/common/base/CaseFormat;


# instance fields
.field private final wordBoundary:Ljava/util/regex/Pattern;

.field private final wordSeparator:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 34
    new-instance v0, Lcom/google/common/base/CaseFormat;

    const-string v1, "LOWER_HYPHEN"

    const-string v2, "[-]"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    const-string v3, "-"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/google/common/base/CaseFormat;-><init>(Ljava/lang/String;ILjava/util/regex/Pattern;Ljava/lang/String;)V

    sput-object v0, Lcom/google/common/base/CaseFormat;->LOWER_HYPHEN:Lcom/google/common/base/CaseFormat;

    .line 39
    new-instance v0, Lcom/google/common/base/CaseFormat;

    const-string v1, "LOWER_UNDERSCORE"

    const-string v2, "[_]"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    const-string v3, "_"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/google/common/base/CaseFormat;-><init>(Ljava/lang/String;ILjava/util/regex/Pattern;Ljava/lang/String;)V

    sput-object v0, Lcom/google/common/base/CaseFormat;->LOWER_UNDERSCORE:Lcom/google/common/base/CaseFormat;

    .line 44
    new-instance v0, Lcom/google/common/base/CaseFormat;

    const-string v1, "LOWER_CAMEL"

    const-string v2, "[A-Z]"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    const-string v3, ""

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/google/common/base/CaseFormat;-><init>(Ljava/lang/String;ILjava/util/regex/Pattern;Ljava/lang/String;)V

    sput-object v0, Lcom/google/common/base/CaseFormat;->LOWER_CAMEL:Lcom/google/common/base/CaseFormat;

    .line 49
    new-instance v0, Lcom/google/common/base/CaseFormat;

    const-string v1, "UPPER_CAMEL"

    const-string v2, "[A-Z]"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    const-string v3, ""

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/google/common/base/CaseFormat;-><init>(Ljava/lang/String;ILjava/util/regex/Pattern;Ljava/lang/String;)V

    sput-object v0, Lcom/google/common/base/CaseFormat;->UPPER_CAMEL:Lcom/google/common/base/CaseFormat;

    .line 54
    new-instance v0, Lcom/google/common/base/CaseFormat;

    const-string v1, "UPPER_UNDERSCORE"

    const-string v2, "[_]"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    const-string v3, "_"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/google/common/base/CaseFormat;-><init>(Ljava/lang/String;ILjava/util/regex/Pattern;Ljava/lang/String;)V

    sput-object v0, Lcom/google/common/base/CaseFormat;->UPPER_UNDERSCORE:Lcom/google/common/base/CaseFormat;

    .line 29
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/common/base/CaseFormat;

    sget-object v1, Lcom/google/common/base/CaseFormat;->LOWER_HYPHEN:Lcom/google/common/base/CaseFormat;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/common/base/CaseFormat;->LOWER_UNDERSCORE:Lcom/google/common/base/CaseFormat;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/common/base/CaseFormat;->LOWER_CAMEL:Lcom/google/common/base/CaseFormat;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/common/base/CaseFormat;->UPPER_CAMEL:Lcom/google/common/base/CaseFormat;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/common/base/CaseFormat;->UPPER_UNDERSCORE:Lcom/google/common/base/CaseFormat;

    aput-object v1, v0, v8

    sput-object v0, Lcom/google/common/base/CaseFormat;->$VALUES:[Lcom/google/common/base/CaseFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/util/regex/Pattern;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter "wordBoundary"
    .parameter "wordSeparator"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/regex/Pattern;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 60
    iput-object p3, p0, Lcom/google/common/base/CaseFormat;->wordBoundary:Ljava/util/regex/Pattern;

    .line 61
    iput-object p4, p0, Lcom/google/common/base/CaseFormat;->wordSeparator:Ljava/lang/String;

    .line 62
    return-void
.end method

.method private normalizeFirstWord(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "word"

    .prologue
    .line 128
    sget-object v0, Lcom/google/common/base/CaseFormat$1;->$SwitchMap$com$google$common$base$CaseFormat:[I

    invoke-virtual {p0}, Lcom/google/common/base/CaseFormat;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_18

    .line 130
    invoke-direct {p0, p1}, Lcom/google/common/base/CaseFormat;->normalizeWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_f
    return-object v0

    .line 129
    :pswitch_10
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    .line 128
    nop

    :pswitch_data_18
    .packed-switch 0x4
        :pswitch_10
    .end packed-switch
.end method

.method private normalizeWord(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "word"

    .prologue
    .line 135
    sget-object v0, Lcom/google/common/base/CaseFormat$1;->$SwitchMap$com$google$common$base$CaseFormat:[I

    invoke-virtual {p0}, Lcom/google/common/base/CaseFormat;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_44

    .line 142
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown case: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :pswitch_24
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 140
    :goto_2a
    return-object v0

    .line 137
    :pswitch_2b
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2a

    .line 138
    :pswitch_32
    invoke-static {p1}, Lcom/google/common/base/CaseFormat;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2a

    .line 139
    :pswitch_37
    invoke-static {p1}, Lcom/google/common/base/CaseFormat;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2a

    .line 140
    :pswitch_3c
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2a

    .line 135
    nop

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_3c
        :pswitch_24
        :pswitch_32
        :pswitch_37
    .end packed-switch
.end method

.method private static toTitleCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "word"

    .prologue
    .line 146
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_e

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    :goto_d
    return-object v0

    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toTitleCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_d
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/base/CaseFormat;
    .registers 2
    .parameter "name"

    .prologue
    .line 29
    const-class v0, Lcom/google/common/base/CaseFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/CaseFormat;

    return-object v0
.end method

.method public static values()[Lcom/google/common/base/CaseFormat;
    .registers 1

    .prologue
    .line 29
    sget-object v0, Lcom/google/common/base/CaseFormat;->$VALUES:[Lcom/google/common/base/CaseFormat;

    invoke-virtual {v0}, [Lcom/google/common/base/CaseFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/base/CaseFormat;

    return-object v0
.end method


# virtual methods
.method public to(Lcom/google/common/base/CaseFormat;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter "format"
    .parameter "s"

    .prologue
    .line 71
    if-nez p1, :cond_8

    .line 72
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 74
    :cond_8
    if-nez p2, :cond_10

    .line 75
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 79
    :cond_10
    if-ne p1, p0, :cond_13

    .line 124
    .end local p2
    :goto_12
    return-object p2

    .line 84
    .restart local p2
    :cond_13
    sget-object v4, Lcom/google/common/base/CaseFormat$1;->$SwitchMap$com$google$common$base$CaseFormat:[I

    invoke-virtual {p0}, Lcom/google/common/base/CaseFormat;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_ea

    .line 106
    :goto_1e
    const/4 v3, 0x0

    .line 107
    .local v3, out:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 108
    .local v0, i:I
    iget-object v4, p0, Lcom/google/common/base/CaseFormat;->wordBoundary:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .local v2, matcher:Ljava/util/regex/Matcher;
    :goto_26
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_d0

    .line 109
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    .line 110
    .local v1, j:I
    if-nez v0, :cond_c4

    .line 112
    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3           #out:Ljava/lang/StringBuilder;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, p0, Lcom/google/common/base/CaseFormat;->wordSeparator:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    mul-int/lit8 v5, v5, 0x4

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 113
    .restart local v3       #out:Ljava/lang/StringBuilder;
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p1, v4}, Lcom/google/common/base/CaseFormat;->normalizeFirstWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    :goto_4f
    iget-object v4, p1, Lcom/google/common/base/CaseFormat;->wordSeparator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    iget-object v4, p0, Lcom/google/common/base/CaseFormat;->wordSeparator:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int v0, v1, v4

    .line 119
    goto :goto_26

    .line 86
    .end local v0           #i:I
    .end local v1           #j:I
    .end local v2           #matcher:Ljava/util/regex/Matcher;
    .end local v3           #out:Ljava/lang/StringBuilder;
    :pswitch_5d
    sget-object v4, Lcom/google/common/base/CaseFormat$1;->$SwitchMap$com$google$common$base$CaseFormat:[I

    invoke-virtual {p1}, Lcom/google/common/base/CaseFormat;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_f4

    goto :goto_1e

    .line 87
    :pswitch_69
    const-string v4, "-"

    const-string v5, "_"

    invoke-virtual {p2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    goto :goto_12

    .line 88
    :pswitch_72
    const-string v4, "-"

    const-string v5, "_"

    invoke-virtual {p2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    goto :goto_12

    .line 92
    :pswitch_81
    sget-object v4, Lcom/google/common/base/CaseFormat$1;->$SwitchMap$com$google$common$base$CaseFormat:[I

    invoke-virtual {p1}, Lcom/google/common/base/CaseFormat;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_fc

    goto :goto_1e

    .line 94
    :pswitch_8d
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_12

    .line 93
    :pswitch_95
    const-string v4, "_"

    const-string v5, "-"

    invoke-virtual {p2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_12

    .line 98
    :pswitch_9f
    sget-object v4, Lcom/google/common/base/CaseFormat$1;->$SwitchMap$com$google$common$base$CaseFormat:[I

    invoke-virtual {p1}, Lcom/google/common/base/CaseFormat;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_104

    :pswitch_aa
    goto/16 :goto_1e

    .line 100
    :pswitch_ac
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_12

    .line 99
    :pswitch_b4
    const-string v4, "_"

    const-string v5, "-"

    invoke-virtual {p2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_12

    .line 115
    .restart local v0       #i:I
    .restart local v1       #j:I
    .restart local v2       #matcher:Ljava/util/regex/Matcher;
    .restart local v3       #out:Ljava/lang/StringBuilder;
    :cond_c4
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p1, v4}, Lcom/google/common/base/CaseFormat;->normalizeWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4f

    .line 120
    .end local v1           #j:I
    :cond_d0
    if-nez v0, :cond_d8

    .line 121
    invoke-direct {p1, p2}, Lcom/google/common/base/CaseFormat;->normalizeFirstWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_12

    .line 123
    :cond_d8
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p1, v4}, Lcom/google/common/base/CaseFormat;->normalizeWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_12

    .line 84
    nop

    :pswitch_data_ea
    .packed-switch 0x1
        :pswitch_81
        :pswitch_9f
        :pswitch_5d
    .end packed-switch

    .line 86
    :pswitch_data_f4
    .packed-switch 0x1
        :pswitch_69
        :pswitch_72
    .end packed-switch

    .line 92
    :pswitch_data_fc
    .packed-switch 0x2
        :pswitch_8d
        :pswitch_95
    .end packed-switch

    .line 98
    :pswitch_data_104
    .packed-switch 0x1
        :pswitch_ac
        :pswitch_aa
        :pswitch_b4
    .end packed-switch
.end method
