.class Lcom/google/android/location/os/EventLog$2;
.super Lcom/google/android/location/os/EventLog$Entry;
.source "EventLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/location/os/EventLog;->addAirplaneModeChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/location/os/EventLog;

.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Lcom/google/android/location/os/EventLog;Lcom/google/android/location/os/Event;JZ)V
    .registers 6
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter

    .prologue
    .line 216
    iput-object p1, p0, Lcom/google/android/location/os/EventLog$2;->this$0:Lcom/google/android/location/os/EventLog;

    iput-boolean p5, p0, Lcom/google/android/location/os/EventLog$2;->val$enabled:Z

    invoke-direct {p0, p2, p3, p4}, Lcom/google/android/location/os/EventLog$Entry;-><init>(Lcom/google/android/location/os/Event;J)V

    return-void
.end method


# virtual methods
.method protected dumpExtras(Ljava/io/PrintWriter;)V
    .registers 3
    .parameter "out"

    .prologue
    .line 219
    iget-boolean v0, p0, Lcom/google/android/location/os/EventLog$2;->val$enabled:Z

    if-eqz v0, :cond_a

    const-string v0, "enabled"

    :goto_6
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 220
    return-void

    .line 219
    :cond_a
    const-string v0, "disabled"

    goto :goto_6
.end method
