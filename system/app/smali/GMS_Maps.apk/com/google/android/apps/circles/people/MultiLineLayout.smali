.class public Lcom/google/android/apps/circles/people/MultiLineLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method

.method static synthetic a(Lcom/google/android/apps/circles/people/MultiLineLayout;II)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/circles/people/MultiLineLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/apps/circles/people/MultiLineLayout;Landroid/view/View;II)V
    .registers 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/apps/circles/people/MultiLineLayout;->measureChild(Landroid/view/View;II)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    new-instance v0, Lcom/google/android/apps/circles/people/a;

    invoke-direct {v0, p0}, Lcom/google/android/apps/circles/people/a;-><init>(Lcom/google/android/apps/circles/people/MultiLineLayout;)V

    sub-int v1, p4, p2

    invoke-virtual {v0, v1}, Lcom/google/android/apps/circles/people/a;->a(I)V

    .line 34
    return-void
.end method

.method protected onMeasure(II)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 38
    new-instance v0, Lcom/google/android/apps/circles/people/b;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/apps/circles/people/b;-><init>(Lcom/google/android/apps/circles/people/MultiLineLayout;II)V

    const v1, 0x7fffffff

    invoke-static {v1, p1}, Lcom/google/android/apps/circles/people/MultiLineLayout;->resolveSize(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/circles/people/b;->a(I)V

    .line 65
    return-void
.end method
