.class Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$AutoRejectAdapter;
.super Landroid/widget/BaseAdapter;
.source "BlackListNumber.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoRejectAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$AutoRejectAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private autoRejectList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$AutoRejectItem;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/app/Activity;

.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;Landroid/app/Activity;Ljava/util/ArrayList;)V
    .registers 5
    .parameter
    .parameter "_context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$AutoRejectItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 866
    .local p3, _autoRejectList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$AutoRejectItem;>;"
    iput-object p1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$AutoRejectAdapter;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 868
    iput-object p2, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$AutoRejectAdapter;->context:Landroid/app/Activity;

    .line 869
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$AutoRejectAdapter;->context:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$AutoRejectAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 870
    iput-object p3, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$AutoRejectAdapter;->autoRejectList:Ljava/util/ArrayList;

    .line 872
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 876
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$AutoRejectAdapter;->autoRejectList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$AutoRejectItem;
    .registers 3
    .parameter "arg0"

    .prologue
    .line 881
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$AutoRejectAdapter;->autoRejectList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$AutoRejectItem;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 857
    invoke-virtual {p0, p1}, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$AutoRejectAdapter;->getItem(I)Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$AutoRejectItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "arg0"

    .prologue
    .line 886
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v6, 0x0

    .line 893
    new-instance v2, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$AutoRejectAdapter$ViewHolder;

    invoke-direct {v2, p0}, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$AutoRejectAdapter$ViewHolder;-><init>(Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$AutoRejectAdapter;)V

    .line 894
    .local v2, viewHolder:Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$AutoRejectAdapter$ViewHolder;
    move-object v1, p2

    .line 896
    .local v1, v:Landroid/view/View;
    const-string v4, "getView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "autoreject idx : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " rejectNum = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$AutoRejectAdapter;->autoRejectList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$AutoRejectItem;

    iget-object v3, v3, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$AutoRejectItem;->reject_num:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$AutoRejectAdapter;->autoRejectList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$AutoRejectItem;

    .line 901
    .local v0, item:Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$AutoRejectItem;
    if-eqz v0, :cond_83

    .line 903
    if-nez p1, :cond_ba

    .line 904
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$AutoRejectAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f03000b

    invoke-virtual {v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 906
    const v3, 0x7f080014

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$AutoRejectAdapter$ViewHolder;->text:Landroid/widget/TextView;

    .line 908
    const v3, 0x7f080015

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$AutoRejectAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    .line 910
    const v3, 0x7f08002a

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, v2, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$AutoRejectAdapter$ViewHolder;->text_layout:Landroid/widget/LinearLayout;

    .line 913
    iget-object v3, v2, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$AutoRejectAdapter$ViewHolder;->text_layout:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$AutoRejectAdapter$1;

    invoke-direct {v4, p0}, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$AutoRejectAdapter$1;-><init>(Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$AutoRejectAdapter;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 923
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$AutoRejectAdapter;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->mMatchCriteria:I
    invoke-static {v3}, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->access$1200(Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;)I

    move-result v3

    if-nez v3, :cond_84

    .line 924
    iget-object v3, v2, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$AutoRejectAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const v4, 0x7f070020

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 962
    :cond_83
    :goto_83
    return-object v1

    .line 926
    :cond_84
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$AutoRejectAdapter;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->mMatchCriteria:I
    invoke-static {v3}, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->access$1200(Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_96

    .line 927
    iget-object v3, v2, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$AutoRejectAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const v4, 0x7f070021

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_83

    .line 928
    :cond_96
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$AutoRejectAdapter;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->mMatchCriteria:I
    invoke-static {v3}, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->access$1200(Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_a8

    .line 929
    iget-object v3, v2, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$AutoRejectAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const v4, 0x7f070022

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_83

    .line 930
    :cond_a8
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$AutoRejectAdapter;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->mMatchCriteria:I
    invoke-static {v3}, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->access$1200(Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_83

    .line 931
    iget-object v3, v2, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$AutoRejectAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const v4, 0x7f070023

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_83

    .line 933
    :cond_ba
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$AutoRejectAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030004

    invoke-virtual {v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_83
.end method
