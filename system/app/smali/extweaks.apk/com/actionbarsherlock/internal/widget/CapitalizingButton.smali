.class public Lcom/actionbarsherlock/internal/widget/CapitalizingButton;
.super Landroid/widget/Button;
.source "CapitalizingButton.java"


# static fields
.field private static final IS_GINGERBREAD:Z

.field private static final R_styleable_Button:[I

.field private static final R_styleable_Button_textAllCaps:I

.field private static final SANS_ICE_CREAM:Z


# instance fields
.field private mAllCaps:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-ge v0, v3, :cond_1e

    move v0, v1

    :goto_9
    sput-boolean v0, Lcom/actionbarsherlock/internal/widget/CapitalizingButton;->SANS_ICE_CREAM:Z

    .line 12
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-lt v0, v3, :cond_20

    move v0, v1

    :goto_12
    sput-boolean v0, Lcom/actionbarsherlock/internal/widget/CapitalizingButton;->IS_GINGERBREAD:Z

    .line 14
    new-array v0, v1, [I

    .line 15
    const v1, 0x101038c

    aput v1, v0, v2

    .line 14
    sput-object v0, Lcom/actionbarsherlock/internal/widget/CapitalizingButton;->R_styleable_Button:[I

    .line 10
    return-void

    :cond_1e
    move v0, v2

    .line 11
    goto :goto_9

    :cond_20
    move v0, v2

    .line 12
    goto :goto_12
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    sget-object v0, Lcom/actionbarsherlock/internal/widget/CapitalizingButton;->R_styleable_Button:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 25
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/actionbarsherlock/internal/widget/CapitalizingButton;->mAllCaps:Z

    .line 26
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 27
    return-void
.end method


# virtual methods
.method public setTextCompat(Ljava/lang/CharSequence;)V
    .registers 4
    .parameter

    .prologue
    .line 30
    sget-boolean v0, Lcom/actionbarsherlock/internal/widget/CapitalizingButton;->SANS_ICE_CREAM:Z

    if-eqz v0, :cond_28

    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/widget/CapitalizingButton;->mAllCaps:Z

    if-eqz v0, :cond_28

    if-eqz p1, :cond_28

    .line 31
    sget-boolean v0, Lcom/actionbarsherlock/internal/widget/CapitalizingButton;->IS_GINGERBREAD:Z

    if-eqz v0, :cond_1c

    .line 32
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/widget/CapitalizingButton;->setText(Ljava/lang/CharSequence;)V

    .line 39
    :goto_1b
    return-void

    .line 34
    :cond_1c
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/widget/CapitalizingButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1b

    .line 37
    :cond_28
    invoke-virtual {p0, p1}, Lcom/actionbarsherlock/internal/widget/CapitalizingButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1b
.end method
