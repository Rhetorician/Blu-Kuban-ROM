.class Lcom/sec/android/app/shareapp/ShareApp$4;
.super Ljava/lang/Object;
.source "ShareApp.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/shareapp/ShareApp;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/shareapp/ShareApp;


# direct methods
.method constructor <init>(Lcom/sec/android/app/shareapp/ShareApp;)V
    .registers 2
    .parameter

    .prologue
    .line 278
    iput-object p1, p0, Lcom/sec/android/app/shareapp/ShareApp$4;->this$0:Lcom/sec/android/app/shareapp/ShareApp;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 281
    iget-object v0, p0, Lcom/sec/android/app/shareapp/ShareApp$4;->this$0:Lcom/sec/android/app/shareapp/ShareApp;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/shareapp/ShareApp;->setResult(I)V

    .line 282
    iget-object v0, p0, Lcom/sec/android/app/shareapp/ShareApp$4;->this$0:Lcom/sec/android/app/shareapp/ShareApp;

    invoke-virtual {v0}, Lcom/sec/android/app/shareapp/ShareApp;->finish()V

    .line 283
    return-void
.end method
