.class Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment$SuggestedPeopleCursorAdapter;
.super Landroid/support/v4/widget/CursorAdapter;
.source "SuggestedPeopleFragment.java"

# interfaces
.implements Lcom/google/android/apps/plus/views/PeopleListItemView$OnActionButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SuggestedPeopleCursorAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment;Landroid/content/Context;)V
    .registers 5
    .parameter
    .parameter "context"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment$SuggestedPeopleCursorAdapter;->this$0:Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment;

    .line 72
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1}, Landroid/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 73
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 8
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v3, 0x1

    .line 88
    move-object v0, p1

    check-cast v0, Lcom/google/android/apps/plus/views/PeopleListItemView;

    .line 89
    .local v0, item:Lcom/google/android/apps/plus/views/PeopleListItemView;
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment$SuggestedPeopleCursorAdapter;->this$0:Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment;

    iget-object v2, v2, Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment;->mCircleNameResolver:Lcom/google/android/apps/plus/fragments/CircleNameResolver;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/views/PeopleListItemView;->setCircleNameResolver(Lcom/google/android/apps/plus/fragments/CircleNameResolver;)V

    .line 90
    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/views/PeopleListItemView;->setPersonId(Ljava/lang/String;)V

    .line 91
    const/4 v2, 0x2

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/views/PeopleListItemView;->setGaiaId(Ljava/lang/String;)V

    .line 92
    const/4 v2, 0x3

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, name:Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/PeopleListItemView;->setContactName(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v0, v3}, Lcom/google/android/apps/plus/views/PeopleListItemView;->setAddButtonVisible(Z)V

    .line 95
    invoke-virtual {v0, v3}, Lcom/google/android/apps/plus/views/PeopleListItemView;->setRemoveButtonVisible(Z)V

    .line 96
    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/views/PeopleListItemView;->setOnActionButtonClickListener(Lcom/google/android/apps/plus/views/PeopleListItemView$OnActionButtonClickListener;)V

    .line 97
    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/PeopleListItemView;->updateContentDescription()V

    .line 98
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .parameter "context"
    .parameter "cursor"
    .parameter "viewGroup"

    .prologue
    .line 80
    invoke-static {p1}, Lcom/google/android/apps/plus/views/PeopleListItemView;->createInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/views/PeopleListItemView;

    move-result-object v0

    return-object v0
.end method

.method public onActionButtonClick(Lcom/google/android/apps/plus/views/PeopleListItemView;I)V
    .registers 7
    .parameter "view"
    .parameter "action"

    .prologue
    .line 105
    if-nez p2, :cond_d

    .line 106
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment$SuggestedPeopleCursorAdapter;->this$0:Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment;

    invoke-virtual {p1}, Lcom/google/android/apps/plus/views/PeopleListItemView;->getPersonId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment;->showCircleMembershipDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :cond_c
    :goto_c
    return-void

    .line 107
    :cond_d
    const/4 v1, 0x1

    if-ne p2, v1, :cond_c

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .local v0, personIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/google/android/apps/plus/views/PeopleListItemView;->getPersonId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment$SuggestedPeopleCursorAdapter;->this$0:Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment;->onDismissSuggestedPeople(Ljava/util/ArrayList;)V

    goto :goto_c
.end method
