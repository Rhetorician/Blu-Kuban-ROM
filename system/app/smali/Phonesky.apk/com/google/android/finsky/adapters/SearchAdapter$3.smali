.class Lcom/google/android/finsky/adapters/SearchAdapter$3;
.super Ljava/lang/Object;
.source "SearchAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/adapters/SearchAdapter;->makeSuggestionClickListener(Ljava/lang/String;)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/adapters/SearchAdapter;

.field final synthetic val$suggestionString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/adapters/SearchAdapter;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 242
    iput-object p1, p0, Lcom/google/android/finsky/adapters/SearchAdapter$3;->this$0:Lcom/google/android/finsky/adapters/SearchAdapter;

    iput-object p2, p0, Lcom/google/android/finsky/adapters/SearchAdapter$3;->val$suggestionString:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    .line 246
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getRecentSuggestions()Landroid/provider/SearchRecentSuggestions;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/adapters/SearchAdapter$3;->val$suggestionString:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/provider/SearchRecentSuggestions;->saveRecentQuery(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/google/android/finsky/adapters/SearchAdapter$3;->this$0:Lcom/google/android/finsky/adapters/SearchAdapter;

    iget-object v0, v0, Lcom/google/android/finsky/adapters/SearchAdapter;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v1, p0, Lcom/google/android/finsky/adapters/SearchAdapter$3;->val$suggestionString:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/finsky/adapters/SearchAdapter$3;->this$0:Lcom/google/android/finsky/adapters/SearchAdapter;

    #getter for: Lcom/google/android/finsky/adapters/SearchAdapter;->mDfeSearch:Lcom/google/android/finsky/api/model/DfeSearch;
    invoke-static {v2}, Lcom/google/android/finsky/adapters/SearchAdapter;->access$000(Lcom/google/android/finsky/adapters/SearchAdapter;)Lcom/google/android/finsky/api/model/DfeSearch;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/DfeSearch;->getBackendId()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/finsky/adapters/SearchAdapter$3;->this$0:Lcom/google/android/finsky/adapters/SearchAdapter;

    iget-object v3, v3, Lcom/google/android/finsky/adapters/SearchAdapter;->mCurrentPageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->searchFromSuggestion(Ljava/lang/String;ILjava/lang/String;)V

    .line 249
    return-void
.end method
