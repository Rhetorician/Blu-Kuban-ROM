.class Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$1;
.super Ljava/lang/Object;
.source "SearchActivityView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;


# direct methods
.method constructor <init>(Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;)V
    .registers 2
    .parameter

    .prologue
    .line 204
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$1;->this$0:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$1;->this$0:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

    #calls: Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->showPopupMenu()V
    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->access$200(Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;)V

    .line 207
    return-void
.end method
