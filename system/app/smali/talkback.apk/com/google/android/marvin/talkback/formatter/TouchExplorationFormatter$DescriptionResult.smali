.class final enum Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter$DescriptionResult;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter$DescriptionResult;

.field public static final enum b:Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter$DescriptionResult;

.field public static final enum c:Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter$DescriptionResult;

.field private static final synthetic d:[Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter$DescriptionResult;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter$DescriptionResult;

    const-string v1, "HANDLED"

    invoke-direct {v0, v1, v2}, Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter$DescriptionResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter$DescriptionResult;->a:Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter$DescriptionResult;

    new-instance v0, Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter$DescriptionResult;

    const-string v1, "CONTINUE"

    invoke-direct {v0, v1, v3}, Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter$DescriptionResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter$DescriptionResult;->b:Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter$DescriptionResult;

    new-instance v0, Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter$DescriptionResult;

    const-string v1, "ABORTED"

    invoke-direct {v0, v1, v4}, Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter$DescriptionResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter$DescriptionResult;->c:Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter$DescriptionResult;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter$DescriptionResult;

    sget-object v1, Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter$DescriptionResult;->a:Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter$DescriptionResult;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter$DescriptionResult;->b:Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter$DescriptionResult;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter$DescriptionResult;->c:Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter$DescriptionResult;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter$DescriptionResult;->d:[Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter$DescriptionResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter$DescriptionResult;
    .registers 2

    const-class v0, Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter$DescriptionResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter$DescriptionResult;

    return-object v0
.end method

.method public static values()[Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter$DescriptionResult;
    .registers 4

    const/4 v3, 0x0

    sget-object v0, Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter$DescriptionResult;->d:[Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter$DescriptionResult;

    array-length v1, v0

    new-array v2, v1, [Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter$DescriptionResult;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
