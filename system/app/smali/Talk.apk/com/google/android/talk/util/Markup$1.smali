.class Lcom/google/android/talk/util/Markup$1;
.super Ljava/lang/Object;
.source "Markup.java"

# interfaces
.implements Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/util/Markup;-><init>(Landroid/content/Context;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/util/Markup;

.field final synthetic val$lines:I

.field final synthetic val$shiftAmount:I


# direct methods
.method constructor <init>(Lcom/google/android/talk/util/Markup;II)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcom/google/android/talk/util/Markup$1;->this$0:Lcom/google/android/talk/util/Markup;

    iput p2, p0, Lcom/google/android/talk/util/Markup$1;->val$shiftAmount:I

    iput p3, p0, Lcom/google/android/talk/util/Markup$1;->val$lines:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V
    .registers 13
    .parameter "c"
    .parameter "p"
    .parameter "x"
    .parameter "dir"
    .parameter "top"
    .parameter "baseline"
    .parameter "bottom"
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "first"
    .parameter "layout"

    .prologue
    .line 159
    return-void
.end method

.method public getLeadingMargin(Z)I
    .registers 3
    .parameter "first"

    .prologue
    .line 162
    if-eqz p1, :cond_5

    iget v0, p0, Lcom/google/android/talk/util/Markup$1;->val$shiftAmount:I

    :goto_4
    return v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public getLeadingMarginLineCount()I
    .registers 2

    .prologue
    .line 166
    iget v0, p0, Lcom/google/android/talk/util/Markup$1;->val$lines:I

    return v0
.end method
