.class Lcom/android/launcher2/AppWidgetResizeFrame$2;
.super Ljava/lang/Object;
.source "AppWidgetResizeFrame.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/AppWidgetResizeFrame;->snapToWidget(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/AppWidgetResizeFrame;


# direct methods
.method constructor <init>(Lcom/android/launcher2/AppWidgetResizeFrame;)V
    .registers 2
    .parameter

    .prologue
    .line 351
    iput-object p1, p0, Lcom/android/launcher2/AppWidgetResizeFrame$2;->this$0:Lcom/android/launcher2/AppWidgetResizeFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3
    .parameter "animation"

    .prologue
    .line 353
    iget-object v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame$2;->this$0:Lcom/android/launcher2/AppWidgetResizeFrame;

    invoke-virtual {v0}, Lcom/android/launcher2/AppWidgetResizeFrame;->requestLayout()V

    .line 354
    return-void
.end method