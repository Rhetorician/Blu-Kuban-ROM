.class Lcom/google/android/opengl/carousel/CarouselView$19;
.super Ljava/lang/Object;
.source "CarouselView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/opengl/carousel/CarouselView;->setGeometryForItem(ILcom/google/android/opengl/carousel/Mesh;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/opengl/carousel/CarouselView;

.field final synthetic val$mesh:Lcom/google/android/opengl/carousel/Mesh;

.field final synthetic val$n:I


# direct methods
.method constructor <init>(Lcom/google/android/opengl/carousel/CarouselView;ILcom/google/android/opengl/carousel/Mesh;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1382
    iput-object p1, p0, Lcom/google/android/opengl/carousel/CarouselView$19;->this$0:Lcom/google/android/opengl/carousel/CarouselView;

    iput p2, p0, Lcom/google/android/opengl/carousel/CarouselView$19;->val$n:I

    iput-object p3, p0, Lcom/google/android/opengl/carousel/CarouselView$19;->val$mesh:Lcom/google/android/opengl/carousel/Mesh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1385
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView$19;->this$0:Lcom/google/android/opengl/carousel/CarouselView;

    #getter for: Lcom/google/android/opengl/carousel/CarouselView;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;
    invoke-static {v0}, Lcom/google/android/opengl/carousel/CarouselView;->access$000(Lcom/google/android/opengl/carousel/CarouselView;)Lcom/google/android/opengl/carousel/CarouselScene;

    move-result-object v0

    iget v1, p0, Lcom/google/android/opengl/carousel/CarouselView$19;->val$n:I

    iget-object v2, p0, Lcom/google/android/opengl/carousel/CarouselView$19;->val$mesh:Lcom/google/android/opengl/carousel/Mesh;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/opengl/carousel/CarouselScene;->setGeometry(ILcom/google/android/opengl/carousel/Mesh;)V

    .line 1386
    return-void
.end method
