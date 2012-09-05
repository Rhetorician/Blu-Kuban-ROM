.class public Lcom/android/phone/FileWriteThread;
.super Ljava/lang/Thread;
.source "FileWriteThread.java"


# static fields
.field private static final DBG:Z


# instance fields
.field private fosSleepCheck:Ljava/io/FileOutputStream;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 32
    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_d

    :goto_a
    sput-boolean v0, Lcom/android/phone/FileWriteThread;->DBG:Z

    return-void

    :cond_d
    move v0, v1

    goto :goto_a
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method private closeFile()V
    .registers 3

    .prologue
    .line 78
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/FileWriteThread;->fosSleepCheck:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_9

    .line 79
    iget-object v1, p0, Lcom/android/phone/FileWriteThread;->fosSleepCheck:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_a

    .line 85
    :cond_9
    :goto_9
    return-void

    .line 81
    :catch_a
    move-exception v0

    .line 83
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9
.end method

.method private log(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 107
    const-string v0, "FileWriteThread"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    return-void
.end method

.method private openFile()V
    .registers 4

    .prologue
    .line 57
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/class/sec/sec_key/wakeup_keys"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 59
    .local v1, fileSleepCheck:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_10

    .line 61
    :try_start_d
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_10} :catch_18

    .line 69
    :cond_10
    :goto_10
    :try_start_10
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Lcom/android/phone/FileWriteThread;->fosSleepCheck:Ljava/io/FileOutputStream;
    :try_end_17
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_17} :catch_1d

    .line 74
    :goto_17
    return-void

    .line 62
    :catch_18
    move-exception v0

    .line 64
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_10

    .line 70
    .end local v0           #e:Ljava/io/IOException;
    :catch_1d
    move-exception v0

    .line 72
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_17
.end method

.method private writeFile(Z)V
    .registers 6
    .parameter "duringCall"

    .prologue
    .line 88
    if-eqz p1, :cond_4a

    const-string v1, "102,114,115,116"

    .line 89
    .local v1, value:Ljava/lang/String;
    :goto_4
    sget-boolean v2, Lcom/android/phone/FileWriteThread;->DBG:Z

    if-eqz v2, :cond_1e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeFile: value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/FileWriteThread;->log(Ljava/lang/String;)V

    .line 92
    :cond_1e
    :try_start_1e
    iget-object v2, p0, Lcom/android/phone/FileWriteThread;->fosSleepCheck:Ljava/io/FileOutputStream;

    if-eqz v2, :cond_49

    .line 93
    sget-boolean v2, Lcom/android/phone/FileWriteThread;->DBG:Z

    if-eqz v2, :cond_40

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeFile: data "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/FileWriteThread;->log(Ljava/lang/String;)V

    .line 94
    :cond_40
    iget-object v2, p0, Lcom/android/phone/FileWriteThread;->fosSleepCheck:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_49} :catch_4d

    .line 99
    :cond_49
    :goto_49
    return-void

    .line 88
    .end local v1           #value:Ljava/lang/String;
    :cond_4a
    const-string v1, "102,116"

    goto :goto_4

    .line 96
    .restart local v1       #value:Ljava/lang/String;
    :catch_4d
    move-exception v0

    .line 97
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_49
.end method


# virtual methods
.method public run()V
    .registers 1

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/android/phone/FileWriteThread;->writeSleepCheckingFile()V

    .line 104
    return-void
.end method

.method writeSleepCheckingFile()V
    .registers 5

    .prologue
    .line 43
    const/4 v0, 0x0

    .line 44
    .local v0, duringCall:Z
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    .line 45
    .local v1, state:Lcom/android/internal/telephony/Phone$State;
    invoke-direct {p0}, Lcom/android/phone/FileWriteThread;->openFile()V

    .line 46
    sget-object v2, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v1, v2, :cond_13

    .line 47
    const/4 v0, 0x1

    .line 49
    :cond_13
    invoke-direct {p0, v0}, Lcom/android/phone/FileWriteThread;->writeFile(Z)V

    .line 50
    invoke-direct {p0}, Lcom/android/phone/FileWriteThread;->closeFile()V

    .line 51
    sget-boolean v2, Lcom/android/phone/FileWriteThread;->DBG:Z

    if-eqz v2, :cond_33

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeSleepCheckingFile end : state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/FileWriteThread;->log(Ljava/lang/String;)V

    .line 52
    :cond_33
    return-void
.end method
