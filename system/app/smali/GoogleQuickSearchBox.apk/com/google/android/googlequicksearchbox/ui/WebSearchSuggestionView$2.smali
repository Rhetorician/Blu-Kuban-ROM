.class Lcom/google/android/googlequicksearchbox/ui/WebSearchSuggestionView$2;
.super Ljava/lang/Object;
.source "WebSearchSuggestionView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/googlequicksearchbox/ui/WebSearchSuggestionView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/ui/WebSearchSuggestionView;


# direct methods
.method constructor <init>(Lcom/google/android/googlequicksearchbox/ui/WebSearchSuggestionView;)V
    .registers 2
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/ui/WebSearchSuggestionView$2;->this$0:Lcom/google/android/googlequicksearchbox/ui/WebSearchSuggestionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/WebSearchSuggestionView$2;->this$0:Lcom/google/android/googlequicksearchbox/ui/WebSearchSuggestionView;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/ui/WebSearchSuggestionView;->onRemoveFromHistoryClicked()V

    .line 65
    return-void
.end method
