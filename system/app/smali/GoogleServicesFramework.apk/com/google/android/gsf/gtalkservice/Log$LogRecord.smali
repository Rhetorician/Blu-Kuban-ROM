.class Lcom/google/android/gsf/gtalkservice/Log$LogRecord;
.super Ljava/lang/Object;
.source "Log.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/gtalkservice/Log;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LogRecord"
.end annotation


# instance fields
.field final level:I

.field final levelString:Ljava/lang/String;

.field final message:Ljava/lang/String;

.field final tag:Ljava/lang/String;

.field final tid:I

.field final time:J


# direct methods
.method constructor <init>(IIJLjava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "tid"
    .parameter "level"
    .parameter "time"
    .parameter "tag"
    .parameter "message"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput p1, p0, Lcom/google/android/gsf/gtalkservice/Log$LogRecord;->tid:I

    .line 43
    iput p2, p0, Lcom/google/android/gsf/gtalkservice/Log$LogRecord;->level:I

    .line 44
    iput-wide p3, p0, Lcom/google/android/gsf/gtalkservice/Log$LogRecord;->time:J

    .line 45
    iput-object p5, p0, Lcom/google/android/gsf/gtalkservice/Log$LogRecord;->tag:Ljava/lang/String;

    .line 46
    iput-object p6, p0, Lcom/google/android/gsf/gtalkservice/Log$LogRecord;->message:Ljava/lang/String;

    .line 47
    packed-switch p2, :pswitch_data_34

    .line 67
    const-string v0, "?"

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/Log$LogRecord;->levelString:Ljava/lang/String;

    .line 70
    :goto_14
    return-void

    .line 49
    :pswitch_15
    const-string v0, "D"

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/Log$LogRecord;->levelString:Ljava/lang/String;

    goto :goto_14

    .line 52
    :pswitch_1a
    const-string v0, "W"

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/Log$LogRecord;->levelString:Ljava/lang/String;

    goto :goto_14

    .line 55
    :pswitch_1f
    const-string v0, "I"

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/Log$LogRecord;->levelString:Ljava/lang/String;

    goto :goto_14

    .line 58
    :pswitch_24
    const-string v0, "V"

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/Log$LogRecord;->levelString:Ljava/lang/String;

    goto :goto_14

    .line 61
    :pswitch_29
    const-string v0, "E"

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/Log$LogRecord;->levelString:Ljava/lang/String;

    goto :goto_14

    .line 64
    :pswitch_2e
    const-string v0, "A"

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/Log$LogRecord;->levelString:Ljava/lang/String;

    goto :goto_14

    .line 47
    nop

    :pswitch_data_34
    .packed-switch 0x2
        :pswitch_24
        :pswitch_15
        :pswitch_1f
        :pswitch_1a
        :pswitch_29
        :pswitch_2e
    .end packed-switch
.end method
