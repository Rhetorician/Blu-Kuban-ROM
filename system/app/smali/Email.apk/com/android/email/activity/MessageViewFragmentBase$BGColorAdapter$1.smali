.class Lcom/android/email/activity/MessageViewFragmentBase$BGColorAdapter$1;
.super Ljava/lang/Object;
.source "MessageViewFragmentBase.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageViewFragmentBase$BGColorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/email/activity/MessageViewFragmentBase$BGColorAdapter;

.field final synthetic val$check:Landroid/widget/RadioButton;

.field final synthetic val$position:I

.field final synthetic val$settingValue:Lcom/android/email/Preferences;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageViewFragmentBase$BGColorAdapter;ILandroid/widget/RadioButton;Lcom/android/email/Preferences;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 8506
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$BGColorAdapter$1;->this$1:Lcom/android/email/activity/MessageViewFragmentBase$BGColorAdapter;

    iput p2, p0, Lcom/android/email/activity/MessageViewFragmentBase$BGColorAdapter$1;->val$position:I

    iput-object p3, p0, Lcom/android/email/activity/MessageViewFragmentBase$BGColorAdapter$1;->val$check:Landroid/widget/RadioButton;

    iput-object p4, p0, Lcom/android/email/activity/MessageViewFragmentBase$BGColorAdapter$1;->val$settingValue:Lcom/android/email/Preferences;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    .line 8508
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$BGColorAdapter$1;->this$1:Lcom/android/email/activity/MessageViewFragmentBase$BGColorAdapter;

    iget-object v1, v1, Lcom/android/email/activity/MessageViewFragmentBase$BGColorAdapter;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mList:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$6500(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/ListView;

    move-result-object v1

    iget v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$BGColorAdapter$1;->val$position:I

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$BGColorAdapter$1;->val$check:Landroid/widget/RadioButton;

    invoke-virtual {v3}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 8509
    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$BGColorAdapter$1;->val$position:I

    .line 8515
    .local v0, realColor:I
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$BGColorAdapter$1;->this$1:Lcom/android/email/activity/MessageViewFragmentBase$BGColorAdapter;

    iget-object v1, v1, Lcom/android/email/activity/MessageViewFragmentBase$BGColorAdapter;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/email/activity/MessageViewFragmentBase;->ControlBgColor(IZ)V

    .line 8524
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$BGColorAdapter$1;->val$settingValue:Lcom/android/email/Preferences;

    invoke-virtual {v1, v0}, Lcom/android/email/Preferences;->setBGColor(I)V

    .line 8526
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$BGColorAdapter$1;->this$1:Lcom/android/email/activity/MessageViewFragmentBase$BGColorAdapter;

    iget-object v1, v1, Lcom/android/email/activity/MessageViewFragmentBase$BGColorAdapter;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v1, v1, Lcom/android/email/activity/MessageViewFragmentBase;->BgColorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 8527
    return-void
.end method