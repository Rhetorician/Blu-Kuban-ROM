.class public Landroid/support/v4/view/s;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Landroid/support/v4/view/v;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 99
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_d

    .line 100
    new-instance v0, Landroid/support/v4/view/u;

    invoke-direct {v0}, Landroid/support/v4/view/u;-><init>()V

    sput-object v0, Landroid/support/v4/view/s;->a:Landroid/support/v4/view/v;

    .line 104
    :goto_c
    return-void

    .line 102
    :cond_d
    new-instance v0, Landroid/support/v4/view/t;

    invoke-direct {v0}, Landroid/support/v4/view/t;-><init>()V

    sput-object v0, Landroid/support/v4/view/s;->a:Landroid/support/v4/view/v;

    goto :goto_c
.end method

.method public static a(Landroid/view/MotionEvent;)I
    .registers 3
    .parameter

    .prologue
    .line 182
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public static a(Landroid/view/MotionEvent;I)I
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 192
    sget-object v0, Landroid/support/v4/view/s;->a:Landroid/support/v4/view/v;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/v;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/MotionEvent;I)I
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 201
    sget-object v0, Landroid/support/v4/view/s;->a:Landroid/support/v4/view/v;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/v;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    return v0
.end method

.method public static c(Landroid/view/MotionEvent;I)F
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 210
    sget-object v0, Landroid/support/v4/view/s;->a:Landroid/support/v4/view/v;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/v;->c(Landroid/view/MotionEvent;I)F

    move-result v0

    return v0
.end method

.method public static d(Landroid/view/MotionEvent;I)F
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 219
    sget-object v0, Landroid/support/v4/view/s;->a:Landroid/support/v4/view/v;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/v;->d(Landroid/view/MotionEvent;I)F

    move-result v0

    return v0
.end method
