.class public final enum Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/model/q;


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

.field public static final enum ACTION_AND_ADVENTURE:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

.field public static final enum ANIMATION_AND_CARTOONS:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

.field public static final enum BEAUTY_AND_FASHION:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

.field public static final enum CELEBRITY_AND_ENTERTAINMENT:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

.field public static final enum CLASSIC_TV:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

.field public static final enum COMEDY:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

.field public static final enum DOCUMENTARY_AND_BIOGRAPHY:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

.field public static final enum DRAMA:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

.field public static final enum FOOD:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

.field public static final enum GAMING:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

.field public static final enum HEALTH_AND_FITNESS:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

.field public static final enum HOME_AND_GARDEN:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

.field public static final enum LEARNING_AND_EDUCATION:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

.field public static final enum NATURE:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

.field public static final enum NEWS:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

.field public static final enum REALITY_AND_GAMES:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

.field public static final enum SCIENCE_AND_TECHNOLOGY:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

.field public static final enum SCIENCE_FICTION:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

.field public static final enum SOAPS:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

.field public static final enum SPORTS:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

.field public static final enum TRAVEL:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

.field public static final enum UNSPECIFIED:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

.field public static final enum WEB_ORIGINALS:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;


# instance fields
.field private final stringId:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 215
    new-instance v0, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    const-string v1, "UNSPECIFIED"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->UNSPECIFIED:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    .line 216
    new-instance v0, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    const-string v1, "ACTION_AND_ADVENTURE"

    const v2, 0x7f0b0085

    invoke-direct {v0, v1, v5, v2}, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->ACTION_AND_ADVENTURE:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    .line 217
    new-instance v0, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    const-string v1, "ANIMATION_AND_CARTOONS"

    const v2, 0x7f0b0086

    invoke-direct {v0, v1, v6, v2}, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->ANIMATION_AND_CARTOONS:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    .line 218
    new-instance v0, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    const-string v1, "COMEDY"

    const v2, 0x7f0b0087

    invoke-direct {v0, v1, v7, v2}, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->COMEDY:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    .line 219
    new-instance v0, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    const-string v1, "DRAMA"

    const v2, 0x7f0b0088

    invoke-direct {v0, v1, v8, v2}, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->DRAMA:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    .line 220
    new-instance v0, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    const-string v1, "SPORTS"

    const/4 v2, 0x5

    const v3, 0x7f0b0089

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->SPORTS:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    .line 221
    new-instance v0, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    const-string v1, "DOCUMENTARY_AND_BIOGRAPHY"

    const/4 v2, 0x6

    const v3, 0x7f0b008a

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->DOCUMENTARY_AND_BIOGRAPHY:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    .line 222
    new-instance v0, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    const-string v1, "SCIENCE_FICTION"

    const/4 v2, 0x7

    const v3, 0x7f0b008b

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->SCIENCE_FICTION:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    .line 223
    new-instance v0, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    const-string v1, "CLASSIC_TV"

    const/16 v2, 0x8

    const v3, 0x7f0b0093

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->CLASSIC_TV:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    .line 224
    new-instance v0, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    const-string v1, "HOME_AND_GARDEN"

    const/16 v2, 0x9

    const v3, 0x7f0b0094

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->HOME_AND_GARDEN:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    .line 225
    new-instance v0, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    const-string v1, "NEWS"

    const/16 v2, 0xa

    const v3, 0x7f0b0095

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->NEWS:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    .line 226
    new-instance v0, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    const-string v1, "REALITY_AND_GAMES"

    const/16 v2, 0xb

    const v3, 0x7f0b0096

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->REALITY_AND_GAMES:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    .line 227
    new-instance v0, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    const-string v1, "SCIENCE_AND_TECHNOLOGY"

    const/16 v2, 0xc

    const v3, 0x7f0b0097

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->SCIENCE_AND_TECHNOLOGY:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    .line 228
    new-instance v0, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    const-string v1, "SOAPS"

    const/16 v2, 0xd

    const v3, 0x7f0b0098

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->SOAPS:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    .line 229
    new-instance v0, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    const-string v1, "TRAVEL"

    const/16 v2, 0xe

    const v3, 0x7f0b0099

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->TRAVEL:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    .line 230
    new-instance v0, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    const-string v1, "WEB_ORIGINALS"

    const/16 v2, 0xf

    const v3, 0x7f0b009a

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->WEB_ORIGINALS:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    .line 231
    new-instance v0, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    const-string v1, "CELEBRITY_AND_ENTERTAINMENT"

    const/16 v2, 0x10

    const v3, 0x7f0b009b

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->CELEBRITY_AND_ENTERTAINMENT:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    .line 232
    new-instance v0, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    const-string v1, "NATURE"

    const/16 v2, 0x11

    const v3, 0x7f0b009c

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->NATURE:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    .line 233
    new-instance v0, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    const-string v1, "BEAUTY_AND_FASHION"

    const/16 v2, 0x12

    const v3, 0x7f0b009d

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->BEAUTY_AND_FASHION:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    .line 234
    new-instance v0, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    const-string v1, "FOOD"

    const/16 v2, 0x13

    const v3, 0x7f0b009e

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->FOOD:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    .line 235
    new-instance v0, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    const-string v1, "GAMING"

    const/16 v2, 0x14

    const v3, 0x7f0b009f

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->GAMING:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    .line 236
    new-instance v0, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    const-string v1, "HEALTH_AND_FITNESS"

    const/16 v2, 0x15

    const v3, 0x7f0b00a0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->HEALTH_AND_FITNESS:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    .line 237
    new-instance v0, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    const-string v1, "LEARNING_AND_EDUCATION"

    const/16 v2, 0x16

    const v3, 0x7f0b00a1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->LEARNING_AND_EDUCATION:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    .line 214
    const/16 v0, 0x17

    new-array v0, v0, [Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    sget-object v1, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->UNSPECIFIED:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->ACTION_AND_ADVENTURE:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->ANIMATION_AND_CARTOONS:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->COMEDY:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->DRAMA:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->SPORTS:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->DOCUMENTARY_AND_BIOGRAPHY:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->SCIENCE_FICTION:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->CLASSIC_TV:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->HOME_AND_GARDEN:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->NEWS:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->REALITY_AND_GAMES:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->SCIENCE_AND_TECHNOLOGY:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->SOAPS:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->TRAVEL:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->WEB_ORIGINALS:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->CELEBRITY_AND_ENTERTAINMENT:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->NATURE:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->BEAUTY_AND_FASHION:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->FOOD:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->GAMING:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->HEALTH_AND_FITNESS:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->LEARNING_AND_EDUCATION:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->$VALUES:[Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 245
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 246
    iput p3, p0, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->stringId:I

    .line 247
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;
    .registers 2
    .parameter

    .prologue
    .line 214
    const-class v0, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    return-object v0
.end method

.method public static values()[Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;
    .registers 1

    .prologue
    .line 214
    sget-object v0, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->$VALUES:[Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    invoke-virtual {v0}, [Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    return-object v0
.end method


# virtual methods
.method public final stringId()I
    .registers 2

    .prologue
    .line 242
    iget v0, p0, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->stringId:I

    return v0
.end method
