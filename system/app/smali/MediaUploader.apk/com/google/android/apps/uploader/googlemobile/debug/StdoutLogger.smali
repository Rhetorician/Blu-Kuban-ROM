.class public Lcom/google/android/apps/uploader/googlemobile/debug/StdoutLogger;
.super Lcom/google/android/apps/uploader/googlemobile/debug/SimpleLogger;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/apps/uploader/googlemobile/debug/SimpleLogger;-><init>()V

    return-void
.end method


# virtual methods
.method public flush()V
    .registers 2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    return-void
.end method

.method public log(Ljava/lang/String;)V
    .registers 3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method
