.class Lcom/google/android/maps/driveabout/app/aL;
.super Lcom/google/android/maps/driveabout/app/aJ;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/aH;

.field private final c:F

.field private final d:I


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/app/aH;FIF)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 546
    float-to-int v0, p2

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/google/android/maps/driveabout/app/aL;-><init>(Lcom/google/android/maps/driveabout/app/aH;IIF)V

    .line 547
    return-void
.end method

.method public constructor <init>(Lcom/google/android/maps/driveabout/app/aH;IIF)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 539
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/aL;->a:Lcom/google/android/maps/driveabout/app/aH;

    .line 540
    invoke-direct {p0, p2}, Lcom/google/android/maps/driveabout/app/aJ;-><init>(I)V

    .line 541
    iput p4, p0, Lcom/google/android/maps/driveabout/app/aL;->c:F

    .line 542
    iput p3, p0, Lcom/google/android/maps/driveabout/app/aL;->d:I

    .line 543
    return-void
.end method


# virtual methods
.method protected a(ILjava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 551
    int-to-float v0, p1

    iget v1, p0, Lcom/google/android/maps/driveabout/app/aL;->c:F

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 552
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/aL;->a:Lcom/google/android/maps/driveabout/app/aH;

    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/aH;->a(Lcom/google/android/maps/driveabout/app/aH;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/google/android/maps/driveabout/app/aL;->d:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
