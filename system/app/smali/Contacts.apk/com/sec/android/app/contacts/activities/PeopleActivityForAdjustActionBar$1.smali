.class Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar$1;
.super Ljava/lang/Object;
.source "PeopleActivityForAdjustActionBar.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;->showDeleteContactsDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;)V
    .registers 2
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar$1;->this$0:Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar$1;->this$0:Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    check-cast v0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->onDeleteResult()V

    .line 189
    return-void
.end method