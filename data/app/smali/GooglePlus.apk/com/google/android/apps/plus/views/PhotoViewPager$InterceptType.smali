.class public final enum Lcom/google/android/apps/plus/views/PhotoViewPager$InterceptType;
.super Ljava/lang/Enum;
.source "PhotoViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/views/PhotoViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InterceptType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/apps/plus/views/PhotoViewPager$InterceptType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/apps/plus/views/PhotoViewPager$InterceptType;

.field public static final enum BOTH:Lcom/google/android/apps/plus/views/PhotoViewPager$InterceptType;

.field public static final enum LEFT:Lcom/google/android/apps/plus/views/PhotoViewPager$InterceptType;

.field public static final enum NONE:Lcom/google/android/apps/plus/views/PhotoViewPager$InterceptType;

.field public static final enum RIGHT:Lcom/google/android/apps/plus/views/PhotoViewPager$InterceptType;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 21
    new-instance v0, Lcom/google/android/apps/plus/views/PhotoViewPager$InterceptType;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/plus/views/PhotoViewPager$InterceptType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/views/PhotoViewPager$InterceptType;->NONE:Lcom/google/android/apps/plus/views/PhotoViewPager$InterceptType;

    new-instance v0, Lcom/google/android/apps/plus/views/PhotoViewPager$InterceptType;

    const-string v1, "LEFT"

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/plus/views/PhotoViewPager$InterceptType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/views/PhotoViewPager$InterceptType;->LEFT:Lcom/google/android/apps/plus/views/PhotoViewPager$InterceptType;

    new-instance v0, Lcom/google/android/apps/plus/views/PhotoViewPager$InterceptType;

    const-string v1, "RIGHT"

    invoke-direct {v0, v1, v4}, Lcom/google/android/apps/plus/views/PhotoViewPager$InterceptType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/views/PhotoViewPager$InterceptType;->RIGHT:Lcom/google/android/apps/plus/views/PhotoViewPager$InterceptType;

    new-instance v0, Lcom/google/android/apps/plus/views/PhotoViewPager$InterceptType;

    const-string v1, "BOTH"

    invoke-direct {v0, v1, v5}, Lcom/google/android/apps/plus/views/PhotoViewPager$InterceptType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/views/PhotoViewPager$InterceptType;->BOTH:Lcom/google/android/apps/plus/views/PhotoViewPager$InterceptType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/apps/plus/views/PhotoViewPager$InterceptType;

    sget-object v1, Lcom/google/android/apps/plus/views/PhotoViewPager$InterceptType;->NONE:Lcom/google/android/apps/plus/views/PhotoViewPager$InterceptType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/apps/plus/views/PhotoViewPager$InterceptType;->LEFT:Lcom/google/android/apps/plus/views/PhotoViewPager$InterceptType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/apps/plus/views/PhotoViewPager$InterceptType;->RIGHT:Lcom/google/android/apps/plus/views/PhotoViewPager$InterceptType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/apps/plus/views/PhotoViewPager$InterceptType;->BOTH:Lcom/google/android/apps/plus/views/PhotoViewPager$InterceptType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/apps/plus/views/PhotoViewPager$InterceptType;->$VALUES:[Lcom/google/android/apps/plus/views/PhotoViewPager$InterceptType;

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
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/plus/views/PhotoViewPager$InterceptType;
    .registers 2
    .parameter "name"

    .prologue
    .line 21
    const-class v0, Lcom/google/android/apps/plus/views/PhotoViewPager$InterceptType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/PhotoViewPager$InterceptType;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/plus/views/PhotoViewPager$InterceptType;
    .registers 1

    .prologue
    .line 21
    sget-object v0, Lcom/google/android/apps/plus/views/PhotoViewPager$InterceptType;->$VALUES:[Lcom/google/android/apps/plus/views/PhotoViewPager$InterceptType;

    invoke-virtual {v0}, [Lcom/google/android/apps/plus/views/PhotoViewPager$InterceptType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/plus/views/PhotoViewPager$InterceptType;

    return-object v0
.end method
