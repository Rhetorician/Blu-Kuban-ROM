.class public final enum Lcom/sec/print/mobileprint/pagedata/ImageData$EnumCroppingMode;
.super Ljava/lang/Enum;
.source "ImageData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/print/mobileprint/pagedata/ImageData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EnumCroppingMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/print/mobileprint/pagedata/ImageData$EnumCroppingMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/print/mobileprint/pagedata/ImageData$EnumCroppingMode;

.field public static final enum CROPPING_OFF:Lcom/sec/print/mobileprint/pagedata/ImageData$EnumCroppingMode;

.field public static final enum CROPPING_ON:Lcom/sec/print/mobileprint/pagedata/ImageData$EnumCroppingMode;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 47
    new-instance v0, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumCroppingMode;

    const-string v1, "CROPPING_OFF"

    invoke-direct {v0, v1, v3, v2}, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumCroppingMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumCroppingMode;->CROPPING_OFF:Lcom/sec/print/mobileprint/pagedata/ImageData$EnumCroppingMode;

    .line 49
    new-instance v0, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumCroppingMode;

    const-string v1, "CROPPING_ON"

    invoke-direct {v0, v1, v2, v4}, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumCroppingMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumCroppingMode;->CROPPING_ON:Lcom/sec/print/mobileprint/pagedata/ImageData$EnumCroppingMode;

    .line 44
    new-array v0, v4, [Lcom/sec/print/mobileprint/pagedata/ImageData$EnumCroppingMode;

    sget-object v1, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumCroppingMode;->CROPPING_OFF:Lcom/sec/print/mobileprint/pagedata/ImageData$EnumCroppingMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumCroppingMode;->CROPPING_ON:Lcom/sec/print/mobileprint/pagedata/ImageData$EnumCroppingMode;

    aput-object v1, v0, v2

    sput-object v0, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumCroppingMode;->$VALUES:[Lcom/sec/print/mobileprint/pagedata/ImageData$EnumCroppingMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .parameter
    .parameter
    .parameter "val"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 55
    iput p3, p0, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumCroppingMode;->mValue:I

    .line 56
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/print/mobileprint/pagedata/ImageData$EnumCroppingMode;
    .registers 2
    .parameter "name"

    .prologue
    .line 44
    const-class v0, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumCroppingMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumCroppingMode;

    return-object v0
.end method

.method public static values()[Lcom/sec/print/mobileprint/pagedata/ImageData$EnumCroppingMode;
    .registers 1

    .prologue
    .line 44
    sget-object v0, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumCroppingMode;->$VALUES:[Lcom/sec/print/mobileprint/pagedata/ImageData$EnumCroppingMode;

    invoke-virtual {v0}, [Lcom/sec/print/mobileprint/pagedata/ImageData$EnumCroppingMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/print/mobileprint/pagedata/ImageData$EnumCroppingMode;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 2

    .prologue
    .line 60
    iget v0, p0, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumCroppingMode;->mValue:I

    return v0
.end method