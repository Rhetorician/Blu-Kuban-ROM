.class Lcom/google/android/apps/books/app/BooksDeletedActivity$1;
.super Ljava/lang/Object;
.source "BooksDeletedActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/books/app/BooksDeletedActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/app/BooksDeletedActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/app/BooksDeletedActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/google/android/apps/books/app/BooksDeletedActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksDeletedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksDeletedActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksDeletedActivity;

    #calls: Lcom/google/android/apps/books/app/BooksDeletedActivity;->showHelp()V
    invoke-static {v0}, Lcom/google/android/apps/books/app/BooksDeletedActivity;->access$000(Lcom/google/android/apps/books/app/BooksDeletedActivity;)V

    .line 57
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksDeletedActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksDeletedActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/books/app/BooksDeletedActivity;->finish()V

    .line 58
    return-void
.end method