.class Lcom/android/calendar/EditEvent$38;
.super Ljava/lang/Object;
.source "EditEvent.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/EditEvent;->createRepeatCustomizeDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/EditEvent;


# direct methods
.method constructor <init>(Lcom/android/calendar/EditEvent;)V
    .registers 2
    .parameter

    .prologue
    .line 1631
    iput-object p1, p0, Lcom/android/calendar/EditEvent$38;->this$0:Lcom/android/calendar/EditEvent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "arg0"

    .prologue
    .line 1634
    iget-object v0, p0, Lcom/android/calendar/EditEvent$38;->this$0:Lcom/android/calendar/EditEvent;

    iget-object v1, p0, Lcom/android/calendar/EditEvent$38;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mRepeatUntilDayDialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/android/calendar/EditEvent;->access$4600(Lcom/android/calendar/EditEvent;)Landroid/app/Dialog;

    move-result-object v1

    #calls: Lcom/android/calendar/EditEvent;->hideSoftInput(Landroid/app/Dialog;)V
    invoke-static {v0, v1}, Lcom/android/calendar/EditEvent;->access$4000(Lcom/android/calendar/EditEvent;Landroid/app/Dialog;)V

    .line 1635
    iget-object v0, p0, Lcom/android/calendar/EditEvent$38;->this$0:Lcom/android/calendar/EditEvent;

    const/4 v1, 0x0

    #setter for: Lcom/android/calendar/EditEvent;->mRepeatUntilDayDialog:Landroid/app/Dialog;
    invoke-static {v0, v1}, Lcom/android/calendar/EditEvent;->access$4602(Lcom/android/calendar/EditEvent;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 1636
    iget-object v0, p0, Lcom/android/calendar/EditEvent$38;->this$0:Lcom/android/calendar/EditEvent;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/android/calendar/EditEvent;->removeDialog(I)V

    .line 1637
    return-void
.end method