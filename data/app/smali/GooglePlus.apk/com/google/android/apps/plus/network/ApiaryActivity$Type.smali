.class public final enum Lcom/google/android/apps/plus/network/ApiaryActivity$Type;
.super Ljava/lang/Enum;
.source "ApiaryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/network/ApiaryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/apps/plus/network/ApiaryActivity$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/apps/plus/network/ApiaryActivity$Type;

.field public static final enum ARTICLE:Lcom/google/android/apps/plus/network/ApiaryActivity$Type;

.field public static final enum AUDIO:Lcom/google/android/apps/plus/network/ApiaryActivity$Type;

.field public static final enum NONE:Lcom/google/android/apps/plus/network/ApiaryActivity$Type;

.field public static final enum PHOTOALBUM:Lcom/google/android/apps/plus/network/ApiaryActivity$Type;

.field public static final enum VIDEO:Lcom/google/android/apps/plus/network/ApiaryActivity$Type;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    new-instance v0, Lcom/google/android/apps/plus/network/ApiaryActivity$Type;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/plus/network/ApiaryActivity$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/network/ApiaryActivity$Type;->NONE:Lcom/google/android/apps/plus/network/ApiaryActivity$Type;

    .line 28
    new-instance v0, Lcom/google/android/apps/plus/network/ApiaryActivity$Type;

    const-string v1, "ARTICLE"

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/plus/network/ApiaryActivity$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/network/ApiaryActivity$Type;->ARTICLE:Lcom/google/android/apps/plus/network/ApiaryActivity$Type;

    .line 29
    new-instance v0, Lcom/google/android/apps/plus/network/ApiaryActivity$Type;

    const-string v1, "PHOTOALBUM"

    invoke-direct {v0, v1, v4}, Lcom/google/android/apps/plus/network/ApiaryActivity$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/network/ApiaryActivity$Type;->PHOTOALBUM:Lcom/google/android/apps/plus/network/ApiaryActivity$Type;

    .line 30
    new-instance v0, Lcom/google/android/apps/plus/network/ApiaryActivity$Type;

    const-string v1, "VIDEO"

    invoke-direct {v0, v1, v5}, Lcom/google/android/apps/plus/network/ApiaryActivity$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/network/ApiaryActivity$Type;->VIDEO:Lcom/google/android/apps/plus/network/ApiaryActivity$Type;

    .line 31
    new-instance v0, Lcom/google/android/apps/plus/network/ApiaryActivity$Type;

    const-string v1, "AUDIO"

    invoke-direct {v0, v1, v6}, Lcom/google/android/apps/plus/network/ApiaryActivity$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/network/ApiaryActivity$Type;->AUDIO:Lcom/google/android/apps/plus/network/ApiaryActivity$Type;

    .line 26
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/android/apps/plus/network/ApiaryActivity$Type;

    sget-object v1, Lcom/google/android/apps/plus/network/ApiaryActivity$Type;->NONE:Lcom/google/android/apps/plus/network/ApiaryActivity$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/apps/plus/network/ApiaryActivity$Type;->ARTICLE:Lcom/google/android/apps/plus/network/ApiaryActivity$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/apps/plus/network/ApiaryActivity$Type;->PHOTOALBUM:Lcom/google/android/apps/plus/network/ApiaryActivity$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/apps/plus/network/ApiaryActivity$Type;->VIDEO:Lcom/google/android/apps/plus/network/ApiaryActivity$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/apps/plus/network/ApiaryActivity$Type;->AUDIO:Lcom/google/android/apps/plus/network/ApiaryActivity$Type;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/apps/plus/network/ApiaryActivity$Type;->$VALUES:[Lcom/google/android/apps/plus/network/ApiaryActivity$Type;

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
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/plus/network/ApiaryActivity$Type;
    .registers 2
    .parameter "name"

    .prologue
    .line 26
    const-class v0, Lcom/google/android/apps/plus/network/ApiaryActivity$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/network/ApiaryActivity$Type;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/plus/network/ApiaryActivity$Type;
    .registers 1

    .prologue
    .line 26
    sget-object v0, Lcom/google/android/apps/plus/network/ApiaryActivity$Type;->$VALUES:[Lcom/google/android/apps/plus/network/ApiaryActivity$Type;

    invoke-virtual {v0}, [Lcom/google/android/apps/plus/network/ApiaryActivity$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/plus/network/ApiaryActivity$Type;

    return-object v0
.end method
