.class Lcom/android/calendar/DeleteEventHelper$5;
.super Ljava/lang/Object;
.source "DeleteEventHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/DeleteEventHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/DeleteEventHelper;


# direct methods
.method constructor <init>(Lcom/android/calendar/DeleteEventHelper;)V
    .registers 2
    .parameter

    .prologue
    .line 186
    iput-object p1, p0, Lcom/android/calendar/DeleteEventHelper$5;->this$0:Lcom/android/calendar/DeleteEventHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "button"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/calendar/DeleteEventHelper$5;->this$0:Lcom/android/calendar/DeleteEventHelper;

    #calls: Lcom/android/calendar/DeleteEventHelper;->deleteStarted()V
    invoke-static {v0}, Lcom/android/calendar/DeleteEventHelper;->access$300(Lcom/android/calendar/DeleteEventHelper;)V

    .line 189
    iget-object v0, p0, Lcom/android/calendar/DeleteEventHelper$5;->this$0:Lcom/android/calendar/DeleteEventHelper;

    #getter for: Lcom/android/calendar/DeleteEventHelper;->mWhichDelete:I
    invoke-static {v0}, Lcom/android/calendar/DeleteEventHelper;->access$200(Lcom/android/calendar/DeleteEventHelper;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_19

    .line 190
    iget-object v0, p0, Lcom/android/calendar/DeleteEventHelper$5;->this$0:Lcom/android/calendar/DeleteEventHelper;

    iget-object v1, p0, Lcom/android/calendar/DeleteEventHelper$5;->this$0:Lcom/android/calendar/DeleteEventHelper;

    #getter for: Lcom/android/calendar/DeleteEventHelper;->mWhichDelete:I
    invoke-static {v1}, Lcom/android/calendar/DeleteEventHelper;->access$200(Lcom/android/calendar/DeleteEventHelper;)I

    move-result v1

    #calls: Lcom/android/calendar/DeleteEventHelper;->deleteRepeatingEvent(I)V
    invoke-static {v0, v1}, Lcom/android/calendar/DeleteEventHelper;->access$1200(Lcom/android/calendar/DeleteEventHelper;I)V

    .line 192
    :cond_19
    return-void
.end method
