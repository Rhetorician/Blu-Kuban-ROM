.class Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$6;
.super Ljava/lang/Object;
.source "MenuChangeOrderIndices.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;)V
    .registers 2
    .parameter

    .prologue
    .line 211
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$6;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 214
    const/16 v0, 0x17

    if-eq p2, v0, :cond_8

    const/16 v0, 0x42

    if-ne p2, v0, :cond_a

    .line 215
    :cond_8
    const/4 v0, 0x1

    .line 217
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method