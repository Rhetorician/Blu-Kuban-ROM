.class Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$4;
.super Ljava/lang/Object;
.source "PrefixDialingList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->PrefixDialingEventInit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;


# direct methods
.method constructor <init>(Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;)V
    .registers 2
    .parameter

    .prologue
    .line 269
    iput-object p1, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$4;->this$0:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .parameter "arg0"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 273
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$4;->this$0:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;

    iget-object v2, v2, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->selectAllCheck:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 275
    .local v0, checked:Z
    const/4 v1, 0x1

    .local v1, i:I
    :goto_b
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$4;->this$0:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;

    iget-object v2, v2, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->listView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_24

    .line 277
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$4;->this$0:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;

    iget-object v5, v2, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->listView:Landroid/widget/ListView;

    if-nez v0, :cond_22

    move v2, v3

    :goto_1c
    invoke-virtual {v5, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 275
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_22
    move v2, v4

    .line 277
    goto :goto_1c

    .line 280
    :cond_24
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$4;->this$0:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;

    iget-object v5, v2, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->selectAllCheck:Landroid/widget/CheckBox;

    if-nez v0, :cond_36

    move v2, v3

    :goto_2b
    invoke-virtual {v5, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 282
    sget-object v2, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->mLeftSoftkey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    if-nez v0, :cond_38

    :goto_32
    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    .line 283
    return-void

    :cond_36
    move v2, v4

    .line 280
    goto :goto_2b

    :cond_38
    move v3, v4

    .line 282
    goto :goto_32
.end method
