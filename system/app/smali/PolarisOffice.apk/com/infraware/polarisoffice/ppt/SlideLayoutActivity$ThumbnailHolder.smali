.class public Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity$ThumbnailHolder;
.super Ljava/lang/Object;
.source "SlideLayoutActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ThumbnailHolder"
.end annotation


# instance fields
.field mFrame:Landroid/widget/FrameLayout;

.field mThumbnail:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity;


# direct methods
.method public constructor <init>(Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity$ThumbnailHolder;->this$0:Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method