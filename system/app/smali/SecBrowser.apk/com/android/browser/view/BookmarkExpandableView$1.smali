.class Lcom/android/browser/view/BookmarkExpandableView$1;
.super Ljava/lang/Object;
.source "BookmarkExpandableView.java"

# interfaces
.implements Lcom/android/browser/BookmarkDragHandler$BookmarkDragAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/view/BookmarkExpandableView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/view/BookmarkExpandableView;


# direct methods
.method constructor <init>(Lcom/android/browser/view/BookmarkExpandableView;)V
    .registers 2
    .parameter

    .prologue
    .line 264
    iput-object p1, p0, Lcom/android/browser/view/BookmarkExpandableView$1;->this$0:Lcom/android/browser/view/BookmarkExpandableView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemForView(Landroid/view/View;)Landroid/database/Cursor;
    .registers 5
    .parameter "v"

    .prologue
    .line 273
    const/high16 v2, 0x7f0d

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 274
    .local v1, groupPosition:I
    const v2, 0x7f0d0001

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 275
    .local v0, childPosition:I
    iget-object v2, p0, Lcom/android/browser/view/BookmarkExpandableView$1;->this$0:Lcom/android/browser/view/BookmarkExpandableView;

    invoke-virtual {v2, v1}, Lcom/android/browser/view/BookmarkExpandableView;->getChildAdapter(I)Lcom/android/browser/BrowserBookmarksAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/browser/BrowserBookmarksAdapter;->getItem(I)Landroid/database/Cursor;

    move-result-object v2

    return-object v2
.end method

.method public setBookmarkDragHandler(Lcom/android/browser/BookmarkDragHandler;)V
    .registers 3
    .parameter "handler"

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/browser/view/BookmarkExpandableView$1;->this$0:Lcom/android/browser/view/BookmarkExpandableView;

    #setter for: Lcom/android/browser/view/BookmarkExpandableView;->mDragHandler:Lcom/android/browser/BookmarkDragHandler;
    invoke-static {v0, p1}, Lcom/android/browser/view/BookmarkExpandableView;->access$102(Lcom/android/browser/view/BookmarkExpandableView;Lcom/android/browser/BookmarkDragHandler;)Lcom/android/browser/BookmarkDragHandler;

    .line 269
    return-void
.end method