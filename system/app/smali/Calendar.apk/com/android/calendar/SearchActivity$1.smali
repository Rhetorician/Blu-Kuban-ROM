.class Lcom/android/calendar/SearchActivity$1;
.super Landroid/database/ContentObserver;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/SearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/SearchActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/SearchActivity;Landroid/os/Handler;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/calendar/SearchActivity$1;->this$0:Lcom/android/calendar/SearchActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .registers 2

    .prologue
    .line 82
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .registers 3
    .parameter "selfChange"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/calendar/SearchActivity$1;->this$0:Lcom/android/calendar/SearchActivity;

    invoke-virtual {v0}, Lcom/android/calendar/SearchActivity;->eventsChanged()V

    .line 88
    return-void
.end method
