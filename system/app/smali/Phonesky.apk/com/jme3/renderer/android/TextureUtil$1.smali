.class synthetic Lcom/jme3/renderer/android/TextureUtil$1;
.super Ljava/lang/Object;
.source "TextureUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/renderer/android/TextureUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$jme3$texture$Image$Format:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 16
    invoke-static {}, Lcom/jme3/texture/Image$Format;->values()[Lcom/jme3/texture/Image$Format;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/jme3/renderer/android/TextureUtil$1;->$SwitchMap$com$jme3$texture$Image$Format:[I

    :try_start_9
    sget-object v0, Lcom/jme3/renderer/android/TextureUtil$1;->$SwitchMap$com$jme3$texture$Image$Format:[I

    sget-object v1, Lcom/jme3/texture/Image$Format;->Alpha16:Lcom/jme3/texture/Image$Format;

    invoke-virtual {v1}, Lcom/jme3/texture/Image$Format;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_131

    :goto_14
    :try_start_14
    sget-object v0, Lcom/jme3/renderer/android/TextureUtil$1;->$SwitchMap$com$jme3$texture$Image$Format:[I

    sget-object v1, Lcom/jme3/texture/Image$Format;->Alpha8:Lcom/jme3/texture/Image$Format;

    invoke-virtual {v1}, Lcom/jme3/texture/Image$Format;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_12e

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/jme3/renderer/android/TextureUtil$1;->$SwitchMap$com$jme3$texture$Image$Format:[I

    sget-object v1, Lcom/jme3/texture/Image$Format;->Luminance8Alpha8:Lcom/jme3/texture/Image$Format;

    invoke-virtual {v1}, Lcom/jme3/texture/Image$Format;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_12b

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/jme3/renderer/android/TextureUtil$1;->$SwitchMap$com$jme3$texture$Image$Format:[I

    sget-object v1, Lcom/jme3/texture/Image$Format;->Luminance16Alpha16:Lcom/jme3/texture/Image$Format;

    invoke-virtual {v1}, Lcom/jme3/texture/Image$Format;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_128

    :goto_35
    :try_start_35
    sget-object v0, Lcom/jme3/renderer/android/TextureUtil$1;->$SwitchMap$com$jme3$texture$Image$Format:[I

    sget-object v1, Lcom/jme3/texture/Image$Format;->Luminance8:Lcom/jme3/texture/Image$Format;

    invoke-virtual {v1}, Lcom/jme3/texture/Image$Format;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_125

    :goto_40
    :try_start_40
    sget-object v0, Lcom/jme3/renderer/android/TextureUtil$1;->$SwitchMap$com$jme3$texture$Image$Format:[I

    sget-object v1, Lcom/jme3/texture/Image$Format;->Luminance16:Lcom/jme3/texture/Image$Format;

    invoke-virtual {v1}, Lcom/jme3/texture/Image$Format;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4b} :catch_122

    :goto_4b
    :try_start_4b
    sget-object v0, Lcom/jme3/renderer/android/TextureUtil$1;->$SwitchMap$com$jme3$texture$Image$Format:[I

    sget-object v1, Lcom/jme3/texture/Image$Format;->RGB10:Lcom/jme3/texture/Image$Format;

    invoke-virtual {v1}, Lcom/jme3/texture/Image$Format;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_56} :catch_11f

    :goto_56
    :try_start_56
    sget-object v0, Lcom/jme3/renderer/android/TextureUtil$1;->$SwitchMap$com$jme3$texture$Image$Format:[I

    sget-object v1, Lcom/jme3/texture/Image$Format;->RGB16:Lcom/jme3/texture/Image$Format;

    invoke-virtual {v1}, Lcom/jme3/texture/Image$Format;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_62} :catch_11c

    :goto_62
    :try_start_62
    sget-object v0, Lcom/jme3/renderer/android/TextureUtil$1;->$SwitchMap$com$jme3$texture$Image$Format:[I

    sget-object v1, Lcom/jme3/texture/Image$Format;->BGR8:Lcom/jme3/texture/Image$Format;

    invoke-virtual {v1}, Lcom/jme3/texture/Image$Format;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_6e} :catch_119

    :goto_6e
    :try_start_6e
    sget-object v0, Lcom/jme3/renderer/android/TextureUtil$1;->$SwitchMap$com$jme3$texture$Image$Format:[I

    sget-object v1, Lcom/jme3/texture/Image$Format;->RGB8:Lcom/jme3/texture/Image$Format;

    invoke-virtual {v1}, Lcom/jme3/texture/Image$Format;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_7a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6e .. :try_end_7a} :catch_116

    :goto_7a
    :try_start_7a
    sget-object v0, Lcom/jme3/renderer/android/TextureUtil$1;->$SwitchMap$com$jme3$texture$Image$Format:[I

    sget-object v1, Lcom/jme3/texture/Image$Format;->RGB565:Lcom/jme3/texture/Image$Format;

    invoke-virtual {v1}, Lcom/jme3/texture/Image$Format;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_86
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7a .. :try_end_86} :catch_113

    :goto_86
    :try_start_86
    sget-object v0, Lcom/jme3/renderer/android/TextureUtil$1;->$SwitchMap$com$jme3$texture$Image$Format:[I

    sget-object v1, Lcom/jme3/texture/Image$Format;->RGB5A1:Lcom/jme3/texture/Image$Format;

    invoke-virtual {v1}, Lcom/jme3/texture/Image$Format;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_92
    .catch Ljava/lang/NoSuchFieldError; {:try_start_86 .. :try_end_92} :catch_111

    :goto_92
    :try_start_92
    sget-object v0, Lcom/jme3/renderer/android/TextureUtil$1;->$SwitchMap$com$jme3$texture$Image$Format:[I

    sget-object v1, Lcom/jme3/texture/Image$Format;->RGBA16:Lcom/jme3/texture/Image$Format;

    invoke-virtual {v1}, Lcom/jme3/texture/Image$Format;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_9e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_92 .. :try_end_9e} :catch_10f

    :goto_9e
    :try_start_9e
    sget-object v0, Lcom/jme3/renderer/android/TextureUtil$1;->$SwitchMap$com$jme3$texture$Image$Format:[I

    sget-object v1, Lcom/jme3/texture/Image$Format;->RGBA8:Lcom/jme3/texture/Image$Format;

    invoke-virtual {v1}, Lcom/jme3/texture/Image$Format;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_aa
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9e .. :try_end_aa} :catch_10d

    :goto_aa
    :try_start_aa
    sget-object v0, Lcom/jme3/renderer/android/TextureUtil$1;->$SwitchMap$com$jme3$texture$Image$Format:[I

    sget-object v1, Lcom/jme3/texture/Image$Format;->Depth:Lcom/jme3/texture/Image$Format;

    invoke-virtual {v1}, Lcom/jme3/texture/Image$Format;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_b6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_aa .. :try_end_b6} :catch_10b

    :goto_b6
    :try_start_b6
    sget-object v0, Lcom/jme3/renderer/android/TextureUtil$1;->$SwitchMap$com$jme3$texture$Image$Format:[I

    sget-object v1, Lcom/jme3/texture/Image$Format;->Depth16:Lcom/jme3/texture/Image$Format;

    invoke-virtual {v1}, Lcom/jme3/texture/Image$Format;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_c2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b6 .. :try_end_c2} :catch_109

    :goto_c2
    :try_start_c2
    sget-object v0, Lcom/jme3/renderer/android/TextureUtil$1;->$SwitchMap$com$jme3$texture$Image$Format:[I

    sget-object v1, Lcom/jme3/texture/Image$Format;->Depth24:Lcom/jme3/texture/Image$Format;

    invoke-virtual {v1}, Lcom/jme3/texture/Image$Format;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_ce
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c2 .. :try_end_ce} :catch_107

    :goto_ce
    :try_start_ce
    sget-object v0, Lcom/jme3/renderer/android/TextureUtil$1;->$SwitchMap$com$jme3$texture$Image$Format:[I

    sget-object v1, Lcom/jme3/texture/Image$Format;->Depth32:Lcom/jme3/texture/Image$Format;

    invoke-virtual {v1}, Lcom/jme3/texture/Image$Format;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_da
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ce .. :try_end_da} :catch_105

    :goto_da
    :try_start_da
    sget-object v0, Lcom/jme3/renderer/android/TextureUtil$1;->$SwitchMap$com$jme3$texture$Image$Format:[I

    sget-object v1, Lcom/jme3/texture/Image$Format;->Depth32F:Lcom/jme3/texture/Image$Format;

    invoke-virtual {v1}, Lcom/jme3/texture/Image$Format;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_e6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_da .. :try_end_e6} :catch_103

    :goto_e6
    :try_start_e6
    sget-object v0, Lcom/jme3/renderer/android/TextureUtil$1;->$SwitchMap$com$jme3$texture$Image$Format:[I

    sget-object v1, Lcom/jme3/texture/Image$Format;->DXT1A:Lcom/jme3/texture/Image$Format;

    invoke-virtual {v1}, Lcom/jme3/texture/Image$Format;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_f2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e6 .. :try_end_f2} :catch_101

    :goto_f2
    :try_start_f2
    sget-object v0, Lcom/jme3/renderer/android/TextureUtil$1;->$SwitchMap$com$jme3$texture$Image$Format:[I

    sget-object v1, Lcom/jme3/texture/Image$Format;->ARGB4444:Lcom/jme3/texture/Image$Format;

    invoke-virtual {v1}, Lcom/jme3/texture/Image$Format;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_fe
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f2 .. :try_end_fe} :catch_ff

    :goto_fe
    return-void

    :catch_ff
    move-exception v0

    goto :goto_fe

    :catch_101
    move-exception v0

    goto :goto_f2

    :catch_103
    move-exception v0

    goto :goto_e6

    :catch_105
    move-exception v0

    goto :goto_da

    :catch_107
    move-exception v0

    goto :goto_ce

    :catch_109
    move-exception v0

    goto :goto_c2

    :catch_10b
    move-exception v0

    goto :goto_b6

    :catch_10d
    move-exception v0

    goto :goto_aa

    :catch_10f
    move-exception v0

    goto :goto_9e

    :catch_111
    move-exception v0

    goto :goto_92

    :catch_113
    move-exception v0

    goto/16 :goto_86

    :catch_116
    move-exception v0

    goto/16 :goto_7a

    :catch_119
    move-exception v0

    goto/16 :goto_6e

    :catch_11c
    move-exception v0

    goto/16 :goto_62

    :catch_11f
    move-exception v0

    goto/16 :goto_56

    :catch_122
    move-exception v0

    goto/16 :goto_4b

    :catch_125
    move-exception v0

    goto/16 :goto_40

    :catch_128
    move-exception v0

    goto/16 :goto_35

    :catch_12b
    move-exception v0

    goto/16 :goto_2a

    :catch_12e
    move-exception v0

    goto/16 :goto_1f

    :catch_131
    move-exception v0

    goto/16 :goto_14
.end method
