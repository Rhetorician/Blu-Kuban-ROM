.class public final enum Lcom/google/android/apps/plus/service/Hangout$SupportStatus;
.super Ljava/lang/Enum;
.source "Hangout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/service/Hangout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SupportStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/apps/plus/service/Hangout$SupportStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

.field public static final enum ACCOUNT_NOT_CONFIGURED:Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

.field public static final enum CHILD_NOT_SUPPORTED:Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

.field public static final enum DEVICE_NOT_SUPPORTED:Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

.field public static final enum OS_NOT_SUPPORTED:Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

.field public static final enum SUPPORTED:Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

.field public static final enum TYPE_NOT_SUPPORTED:Lcom/google/android/apps/plus/service/Hangout$SupportStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 216
    new-instance v0, Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

    const-string v1, "OS_NOT_SUPPORTED"

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/plus/service/Hangout$SupportStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/service/Hangout$SupportStatus;->OS_NOT_SUPPORTED:Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

    .line 217
    new-instance v0, Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

    const-string v1, "DEVICE_NOT_SUPPORTED"

    invoke-direct {v0, v1, v4}, Lcom/google/android/apps/plus/service/Hangout$SupportStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/service/Hangout$SupportStatus;->DEVICE_NOT_SUPPORTED:Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

    .line 220
    new-instance v0, Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

    const-string v1, "CHILD_NOT_SUPPORTED"

    invoke-direct {v0, v1, v5}, Lcom/google/android/apps/plus/service/Hangout$SupportStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/service/Hangout$SupportStatus;->CHILD_NOT_SUPPORTED:Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

    .line 221
    new-instance v0, Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

    const-string v1, "ACCOUNT_NOT_CONFIGURED"

    invoke-direct {v0, v1, v6}, Lcom/google/android/apps/plus/service/Hangout$SupportStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/service/Hangout$SupportStatus;->ACCOUNT_NOT_CONFIGURED:Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

    .line 222
    new-instance v0, Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

    const-string v1, "TYPE_NOT_SUPPORTED"

    invoke-direct {v0, v1, v7}, Lcom/google/android/apps/plus/service/Hangout$SupportStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/service/Hangout$SupportStatus;->TYPE_NOT_SUPPORTED:Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

    .line 223
    new-instance v0, Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

    const-string v1, "SUPPORTED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/plus/service/Hangout$SupportStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/service/Hangout$SupportStatus;->SUPPORTED:Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

    .line 213
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

    sget-object v1, Lcom/google/android/apps/plus/service/Hangout$SupportStatus;->OS_NOT_SUPPORTED:Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/apps/plus/service/Hangout$SupportStatus;->DEVICE_NOT_SUPPORTED:Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/apps/plus/service/Hangout$SupportStatus;->CHILD_NOT_SUPPORTED:Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/apps/plus/service/Hangout$SupportStatus;->ACCOUNT_NOT_CONFIGURED:Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/apps/plus/service/Hangout$SupportStatus;->TYPE_NOT_SUPPORTED:Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/apps/plus/service/Hangout$SupportStatus;->SUPPORTED:Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/plus/service/Hangout$SupportStatus;->$VALUES:[Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 213
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/plus/service/Hangout$SupportStatus;
    .registers 2
    .parameter "name"

    .prologue
    .line 213
    const-class v0, Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/plus/service/Hangout$SupportStatus;
    .registers 1

    .prologue
    .line 213
    sget-object v0, Lcom/google/android/apps/plus/service/Hangout$SupportStatus;->$VALUES:[Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

    invoke-virtual {v0}, [Lcom/google/android/apps/plus/service/Hangout$SupportStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

    return-object v0
.end method


# virtual methods
.method public getErrorMessage(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .parameter "context"

    .prologue
    .line 230
    sget-object v0, Lcom/google/android/apps/plus/service/Hangout$1;->$SwitchMap$com$google$android$apps$plus$service$Hangout$SupportStatus:[I

    invoke-virtual {p0}, Lcom/google/android/apps/plus/service/Hangout$SupportStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_48

    .line 235
    :pswitch_b
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08034d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 241
    :goto_16
    return-object v0

    .line 232
    :pswitch_17
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08034c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    .line 237
    :pswitch_23
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08034f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    .line 239
    :pswitch_2f
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08034e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    .line 241
    :pswitch_3b
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080350

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    .line 230
    nop

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_17
        :pswitch_b
        :pswitch_23
        :pswitch_2f
        :pswitch_3b
    .end packed-switch
.end method
