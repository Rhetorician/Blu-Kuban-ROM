.class public final Lcom/google/android/apps/maps/b;
.super Ljava/lang/Object;


# static fields
.field public static final a:[I

.field public static final b:[I

.field public static final c:[I

.field public static final d:[I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x2

    new-array v0, v3, [I

    fill-array-data v0, :array_22

    sput-object v0, Lcom/google/android/apps/maps/b;->a:[I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/high16 v2, 0x7f01

    aput v2, v0, v1

    sput-object v0, Lcom/google/android/apps/maps/b;->b:[I

    new-array v0, v3, [I

    fill-array-data v0, :array_2a

    sput-object v0, Lcom/google/android/apps/maps/b;->c:[I

    new-array v0, v3, [I

    fill-array-data v0, :array_32

    sput-object v0, Lcom/google/android/apps/maps/b;->d:[I

    return-void

    nop

    :array_22
    .array-data 0x4
        0x1t 0x0t 0x1t 0x7ft
        0x2t 0x0t 0x1t 0x7ft
    .end array-data

    :array_2a
    .array-data 0x4
        0x4t 0x0t 0x1t 0x7ft
        0x5t 0x0t 0x1t 0x7ft
    .end array-data

    :array_32
    .array-data 0x4
        0x6t 0x0t 0x1t 0x7ft
        0x7t 0x0t 0x1t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method