.class Lcom/android/mms/ui/MessagingPreferenceActivity$5;
.super Ljava/lang/Object;
.source "MessagingPreferenceActivity.java"

# interfaces
.implements Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessagingPreferenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 817
    iput-object p1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$5;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNumberSet(I)V
    .registers 4
    .parameter "limit"

    .prologue
    .line 819
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$5;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    #getter for: Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsRecycler:Lcom/android/mms/util/Recycler;
    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->access$400(Lcom/android/mms/ui/MessagingPreferenceActivity;)Lcom/android/mms/util/Recycler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$5;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-virtual {v0, v1, p1}, Lcom/android/mms/util/Recycler;->setMessageLimit(Landroid/content/Context;I)V

    .line 820
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$5;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    #calls: Lcom/android/mms/ui/MessagingPreferenceActivity;->setMmsDisplayLimit()V
    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->access$500(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    .line 821
    return-void
.end method
