.class Lcom/sprint/w/installer/PackInstaller$29;
.super Ljava/lang/Object;
.source "PackInstaller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/PackInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/PackInstaller;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/PackInstaller;)V
    .registers 2
    .parameter

    .prologue
    .line 2454
    iput-object p1, p0, Lcom/sprint/w/installer/PackInstaller$29;->this$0:Lcom/sprint/w/installer/PackInstaller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 2457
    iget-object v0, p0, Lcom/sprint/w/installer/PackInstaller$29;->this$0:Lcom/sprint/w/installer/PackInstaller;

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 2458
    iget-object v0, p0, Lcom/sprint/w/installer/PackInstaller$29;->this$0:Lcom/sprint/w/installer/PackInstaller;

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 2459
    iget-object v0, p0, Lcom/sprint/w/installer/PackInstaller$29;->this$0:Lcom/sprint/w/installer/PackInstaller;

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller;->mProgressBar:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/sprint/w/installer/PackInstaller$29;->this$0:Lcom/sprint/w/installer/PackInstaller;

    iget v1, v1, Lcom/sprint/w/installer/PackInstaller;->mPercentComplete:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 2460
    iget-object v0, p0, Lcom/sprint/w/installer/PackInstaller$29;->this$0:Lcom/sprint/w/installer/PackInstaller;

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->invalidate()V

    .line 2461
    iget-object v0, p0, Lcom/sprint/w/installer/PackInstaller$29;->this$0:Lcom/sprint/w/installer/PackInstaller;

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller;->mProgressText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sprint/w/installer/PackInstaller$29;->this$0:Lcom/sprint/w/installer/PackInstaller;

    iget v2, v2, Lcom/sprint/w/installer/PackInstaller;->mPercentComplete:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2462
    iget-object v0, p0, Lcom/sprint/w/installer/PackInstaller$29;->this$0:Lcom/sprint/w/installer/PackInstaller;

    iget-object v1, v0, Lcom/sprint/w/installer/PackInstaller;->mProgressText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sprint/w/installer/PackInstaller$29;->this$0:Lcom/sprint/w/installer/PackInstaller;

    iget v0, v0, Lcom/sprint/w/installer/PackInstaller;->mPercentComplete:I

    const/16 v2, 0x32

    if-ge v0, v2, :cond_5d

    const/4 v0, -0x1

    :goto_4e
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2463
    iget-object v0, p0, Lcom/sprint/w/installer/PackInstaller$29;->this$0:Lcom/sprint/w/installer/PackInstaller;

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller;->mCenter:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sprint/w/installer/PackInstaller$29;->this$0:Lcom/sprint/w/installer/PackInstaller;

    iget-object v1, v1, Lcom/sprint/w/installer/PackInstaller;->mStatusMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2464
    return-void

    .line 2462
    :cond_5d
    const/high16 v0, -0x100

    goto :goto_4e
.end method