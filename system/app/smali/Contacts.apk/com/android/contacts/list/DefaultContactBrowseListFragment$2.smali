.class Lcom/android/contacts/list/DefaultContactBrowseListFragment$2;
.super Ljava/lang/Object;
.source "DefaultContactBrowseListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/list/DefaultContactBrowseListFragment;->createCustomSearchbar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 323
    iput-object p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$2;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "view"

    .prologue
    .line 326
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 330
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$2;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 331
    return-void
.end method