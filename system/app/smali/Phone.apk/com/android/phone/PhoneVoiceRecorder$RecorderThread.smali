.class Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;
.super Ljava/lang/Thread;
.source "PhoneVoiceRecorder.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnErrorListener;
.implements Landroid/media/MediaRecorder$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneVoiceRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecorderThread"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/PhoneVoiceRecorder$RecorderThread$FileEndWithFilter;
    }
.end annotation


# instance fields
.field private mFileName:Ljava/lang/String;

.field private mFilePath:Ljava/lang/String;

.field private mSaveFilePath:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/phone/PhoneVoiceRecorder;


# direct methods
.method private constructor <init>(Lcom/android/phone/PhoneVoiceRecorder;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 236
    iput-object p1, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 238
    iput-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->mFilePath:Ljava/lang/String;

    .line 239
    iput-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->mSaveFilePath:Ljava/lang/String;

    .line 240
    iput-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->mFileName:Ljava/lang/String;

    .line 464
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/PhoneVoiceRecorder;Lcom/android/phone/PhoneVoiceRecorder$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 236
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;-><init>(Lcom/android/phone/PhoneVoiceRecorder;)V

    return-void
.end method

.method private buildFileNumber(Ljava/lang/String;I)Ljava/lang/String;
    .registers 6
    .parameter "prefix"
    .parameter "num"

    .prologue
    .line 410
    const/16 v1, 0xa

    if-ge p2, v1, :cond_22

    .line 411
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "00"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 417
    .local v0, t:Ljava/lang/String;
    :goto_21
    return-object v0

    .line 412
    .end local v0           #t:Ljava/lang/String;
    :cond_22
    const/16 v1, 0x64

    if-ge p2, v1, :cond_44

    .line 413
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #t:Ljava/lang/String;
    goto :goto_21

    .line 415
    .end local v0           #t:Ljava/lang/String;
    :cond_44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #t:Ljava/lang/String;
    goto :goto_21
.end method

.method private createFilePath()Ljava/lang/String;
    .registers 5

    .prologue
    .line 379
    invoke-virtual {p0}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->createNewFileName()Ljava/lang/String;

    move-result-object v0

    .line 380
    .local v0, fileName:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/phone/PhoneVoiceRecorder;->PHONE_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".amr"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->mFilePath:Ljava/lang/String;

    .line 381
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/phone/PhoneVoiceRecorder;->PHONE_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".amr"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->mSaveFilePath:Ljava/lang/String;

    .line 382
    invoke-static {}, Lcom/android/phone/PhoneVoiceRecorder;->access$700()Z

    move-result v1

    if-eqz v1, :cond_6c

    const-string v1, "PhoneVoiceRecorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createFilePath : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->mFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :cond_6c
    iget-object v1, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->mFilePath:Ljava/lang/String;

    return-object v1
.end method

.method private isPhoneNumberChar(C)Z
    .registers 3
    .parameter "c"

    .prologue
    .line 461
    const/16 v0, 0x30

    if-lt p1, v0, :cond_8

    const/16 v0, 0x39

    if-le p1, v0, :cond_c

    :cond_8
    const/16 v0, 0x2d

    if-ne p1, v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private stripNonPhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "phoneNumber"

    .prologue
    .line 438
    if-nez p1, :cond_4

    .line 439
    const/4 p1, 0x0

    .line 457
    .end local p1
    :cond_3
    :goto_3
    return-object p1

    .line 441
    .restart local p1
    :cond_4
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0007

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0008

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0009

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 447
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 448
    .local v2, len:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 450
    .local v3, ret:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_4d
    if-ge v1, v2, :cond_5f

    .line 451
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 452
    .local v0, c:C
    invoke-direct {p0, v0}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->isPhoneNumberChar(C)Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 453
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 450
    :cond_5c
    add-int/lit8 v1, v1, 0x1

    goto :goto_4d

    .line 457
    .end local v0           #c:C
    :cond_5f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3
.end method


# virtual methods
.method public cancelRecording()V
    .registers 1

    .prologue
    .line 480
    return-void
.end method

.method public checkFileNumber(Ljava/lang/String;Landroid/content/Context;)Z
    .registers 8
    .parameter "title"
    .parameter "context"

    .prologue
    .line 421
    const/4 v0, 0x0

    .line 422
    .local v0, dir:Ljava/io/File;
    const/4 v2, 0x0

    .line 424
    .local v2, files:[Ljava/io/File;
    new-instance v1, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread$FileEndWithFilter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".amr"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread$FileEndWithFilter;-><init>(Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;Ljava/lang/String;)V

    .line 426
    .local v1, filenameFilter:Ljava/io/FilenameFilter;
    new-instance v0, Ljava/io/File;

    .end local v0           #dir:Ljava/io/File;
    sget-object v3, Lcom/android/phone/PhoneVoiceRecorder;->PHONE_PATH:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 428
    .restart local v0       #dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2a

    .line 429
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 432
    :cond_2a
    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    .line 434
    if-eqz v2, :cond_33

    array-length v3, v2

    if-nez v3, :cond_35

    :cond_33
    const/4 v3, 0x1

    :goto_34
    return v3

    :cond_35
    const/4 v3, 0x0

    goto :goto_34
.end method

.method public createNewFileName()Ljava/lang/String;
    .registers 6

    .prologue
    .line 387
    const-string v3, "PhoneVoiceRecorder"

    const-string v4, "createNewFileName()"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 390
    .local v0, fileName:Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e03b4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    iget-object v3, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v3}, Lcom/android/phone/PhoneVoiceRecorder;->access$800(Lcom/android/phone/PhoneVoiceRecorder;)Lcom/android/internal/telephony/CallManager;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->getCallerNumber(Lcom/android/internal/telephony/CallManager;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->stripNonPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    const/4 v1, 0x1

    .line 395
    .local v1, num:I
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 397
    .local v2, prefix:Ljava/lang/String;
    :goto_39
    invoke-direct {p0, v2, v1}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->buildFileNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->mFileName:Ljava/lang/String;

    .line 398
    iget-object v3, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->mFileName:Ljava/lang/String;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->checkFileNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_4e

    .line 399
    add-int/lit8 v1, v1, 0x1

    .line 400
    goto :goto_39

    .line 404
    :cond_4e
    iget-object v3, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->mFileName:Ljava/lang/String;

    return-object v3
.end method

.method public onError(Landroid/media/MediaRecorder;II)V
    .registers 7
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 296
    invoke-static {}, Lcom/android/phone/PhoneVoiceRecorder;->access$700()Z

    move-result v0

    if-eqz v0, :cond_28

    const-string v0, "PhoneVoiceRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError arg1="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " arg2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_28
    invoke-virtual {p0}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->cancelRecording()V

    .line 298
    return-void
.end method

.method public onInfo(Landroid/media/MediaRecorder;II)V
    .registers 7
    .parameter "mr"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 301
    invoke-static {}, Lcom/android/phone/PhoneVoiceRecorder;->access$700()Z

    move-result v0

    if-eqz v0, :cond_32

    const-string v0, "PhoneVoiceRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInfo mr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " extra="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_32
    const/16 v0, 0x321

    if-ne p2, v0, :cond_40

    .line 304
    const-string v0, "PhoneVoiceRecorder"

    const-string v1, "onInfo - MediaRecorder.MEDIA_RECORDER_INFO_MAX_FILESIZE_REACHED"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-virtual {p0}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->stopRecording()V

    .line 307
    :cond_40
    return-void
.end method

.method public releaseMediaRecorder()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 365
    const-string v0, "PhoneVoiceRecorder"

    const-string v1, "releaseMediaRecorder..."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static {v0}, Lcom/android/phone/PhoneVoiceRecorder;->access$100(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/media/MediaRecorder;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 368
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static {v0}, Lcom/android/phone/PhoneVoiceRecorder;->access$100(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/media/MediaRecorder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 369
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static {v0}, Lcom/android/phone/PhoneVoiceRecorder;->access$100(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/media/MediaRecorder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 370
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static {v0}, Lcom/android/phone/PhoneVoiceRecorder;->access$100(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/media/MediaRecorder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 371
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static {v0}, Lcom/android/phone/PhoneVoiceRecorder;->access$100(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/media/MediaRecorder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 372
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #setter for: Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static {v0, v2}, Lcom/android/phone/PhoneVoiceRecorder;->access$102(Lcom/android/phone/PhoneVoiceRecorder;Landroid/media/MediaRecorder;)Landroid/media/MediaRecorder;

    .line 375
    :cond_39
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    const-wide/16 v1, 0x0

    #setter for: Lcom/android/phone/PhoneVoiceRecorder;->mRecordingTimeInMiliSecond:J
    invoke-static {v0, v1, v2}, Lcom/android/phone/PhoneVoiceRecorder;->access$202(Lcom/android/phone/PhoneVoiceRecorder;J)J

    .line 376
    return-void
.end method

.method public run()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 244
    const-string v3, "voice_call_recording"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 293
    :goto_9
    return-void

    .line 246
    :cond_a
    const-string v3, "PhoneVoiceRecorder"

    const-string v4, "run"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/phone/PhoneVoiceRecorder;->PHONE_PATH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 248
    .local v0, CallRecordingDir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 250
    iget-object v3, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    new-instance v4, Landroid/media/MediaRecorder;

    invoke-direct {v4}, Landroid/media/MediaRecorder;-><init>()V

    #setter for: Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static {v3, v4}, Lcom/android/phone/PhoneVoiceRecorder;->access$102(Lcom/android/phone/PhoneVoiceRecorder;Landroid/media/MediaRecorder;)Landroid/media/MediaRecorder;

    .line 253
    :try_start_38
    iget-object v3, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static {v3}, Lcom/android/phone/PhoneVoiceRecorder;->access$100(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/media/MediaRecorder;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 254
    iget-object v3, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static {v3}, Lcom/android/phone/PhoneVoiceRecorder;->access$100(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/media/MediaRecorder;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 257
    iget-object v3, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static {v3}, Lcom/android/phone/PhoneVoiceRecorder;->access$100(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/media/MediaRecorder;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 258
    iget-object v3, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static {v3}, Lcom/android/phone/PhoneVoiceRecorder;->access$100(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/media/MediaRecorder;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 259
    iget-object v3, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static {v3}, Lcom/android/phone/PhoneVoiceRecorder;->access$100(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/media/MediaRecorder;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->createFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 262
    iget-object v3, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static {v3}, Lcom/android/phone/PhoneVoiceRecorder;->access$100(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/media/MediaRecorder;

    move-result-object v3

    const/16 v4, 0x2fa8

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 263
    iget-object v3, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static {v3}, Lcom/android/phone/PhoneVoiceRecorder;->access$100(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/media/MediaRecorder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    .line 264
    iget-object v3, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static {v3}, Lcom/android/phone/PhoneVoiceRecorder;->access$100(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/media/MediaRecorder;

    move-result-object v3

    const/16 v4, 0x1f40

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 265
    iget-object v3, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static {v3}, Lcom/android/phone/PhoneVoiceRecorder;->access$100(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/media/MediaRecorder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 268
    iget-object v3, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static {v3}, Lcom/android/phone/PhoneVoiceRecorder;->access$100(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/media/MediaRecorder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->prepare()V

    .line 270
    iget-object v3, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    const-wide/16 v4, 0x0

    #setter for: Lcom/android/phone/PhoneVoiceRecorder;->mRecordingTimeInMiliSecond:J
    invoke-static {v3, v4, v5}, Lcom/android/phone/PhoneVoiceRecorder;->access$202(Lcom/android/phone/PhoneVoiceRecorder;J)J

    .line 271
    const-string v3, "PhoneVoiceRecorder"

    const-string v4, "RecorderThread started"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object v3, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static {v3}, Lcom/android/phone/PhoneVoiceRecorder;->access$100(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/media/MediaRecorder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->start()V

    .line 273
    iget-object v3, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/phone/PhoneVoiceRecorder;->isRecording:Z
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_ba} :catch_f8

    .line 284
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sput-wide v3, Lcom/android/phone/PhoneVoiceRecorder;->mStartRecordTime:J

    .line 286
    iget-object v3, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mCallCard:Lcom/android/phone/CallCard;
    invoke-static {v3}, Lcom/android/phone/PhoneVoiceRecorder;->access$500(Lcom/android/phone/PhoneVoiceRecorder;)Lcom/android/phone/CallCard;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/CallCard;->visibleRecInfoView()V

    .line 287
    invoke-static {}, Lcom/android/phone/PhoneVoiceRecorder;->access$600()Lcom/android/phone/PhoneApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->updateInCallScreen()V

    .line 290
    iget-object v3, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/phone/PhoneVoiceRecorder;->access$300(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x64

    iget-object v5, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/phone/PhoneVoiceRecorder;->access$400(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e03bb

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v3, v4, v7, v7, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 292
    .local v2, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/phone/PhoneVoiceRecorder;->access$300(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_9

    .line 274
    .end local v2           #msg:Landroid/os/Message;
    :catch_f8
    move-exception v1

    .line 275
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "PhoneVoiceRecorder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v3, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/phone/PhoneVoiceRecorder;->access$300(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x66

    iget-object v5, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/phone/PhoneVoiceRecorder;->access$400(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e03b7

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v3, v4, v7, v7, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 278
    .restart local v2       #msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/phone/PhoneVoiceRecorder;->access$300(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 279
    iget-object v3, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    iput-boolean v7, v3, Lcom/android/phone/PhoneVoiceRecorder;->isRecording:Z

    goto/16 :goto_9
.end method

.method public stopRecording()V
    .registers 16

    .prologue
    .line 310
    const-string v9, "PhoneVoiceRecorder"

    const-string v10, "stopRecording"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :try_start_7
    iget-object v9, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static {v9}, Lcom/android/phone/PhoneVoiceRecorder;->access$100(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/media/MediaRecorder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/media/MediaRecorder;->stop()V

    .line 314
    iget-object v9, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/android/phone/PhoneVoiceRecorder;->isRecording:Z

    .line 315
    invoke-virtual {p0}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->releaseMediaRecorder()V

    .line 317
    new-instance v5, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v5}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 318
    .local v5, retriever:Landroid/media/MediaMetadataRetriever;
    iget-object v9, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->mFilePath:Ljava/lang/String;

    invoke-virtual {v5, v9}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 319
    const/4 v8, 0x0

    .line 320
    .local v8, value:Ljava/lang/String;
    const/16 v9, 0x9

    invoke-virtual {v5, v9}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v8

    .line 321
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    int-to-long v1, v9

    .line 322
    .local v1, fileDuration:J
    const-wide/16 v9, 0x3e8

    cmp-long v9, v1, v9

    if-gez v9, :cond_6d

    .line 323
    iget-object v9, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mCallCard:Lcom/android/phone/CallCard;
    invoke-static {v9}, Lcom/android/phone/PhoneVoiceRecorder;->access$500(Lcom/android/phone/PhoneVoiceRecorder;)Lcom/android/phone/CallCard;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/phone/CallCard;->invisibleRecInfoView()V

    .line 324
    invoke-static {}, Lcom/android/phone/PhoneVoiceRecorder;->access$600()Lcom/android/phone/PhoneApp;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/phone/PhoneApp;->updateInCallScreen()V

    .line 325
    iget-object v9, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/phone/PhoneVoiceRecorder;->access$300(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x66

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/android/phone/PhoneVoiceRecorder;->access$400(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0e03b7

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-static {v9, v10, v11, v12, v13}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 327
    .local v4, msg:Landroid/os/Message;
    iget-object v9, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/phone/PhoneVoiceRecorder;->access$300(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 362
    .end local v1           #fileDuration:J
    .end local v5           #retriever:Landroid/media/MediaMetadataRetriever;
    .end local v8           #value:Ljava/lang/String;
    :goto_6c
    return-void

    .line 330
    .end local v4           #msg:Landroid/os/Message;
    .restart local v1       #fileDuration:J
    .restart local v5       #retriever:Landroid/media/MediaMetadataRetriever;
    .restart local v8       #value:Ljava/lang/String;
    :cond_6d
    new-instance v7, Ljava/io/File;

    iget-object v9, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->mFilePath:Ljava/lang/String;

    invoke-direct {v7, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 331
    .local v7, tempFile:Ljava/io/File;
    new-instance v6, Ljava/io/File;

    iget-object v9, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->mSaveFilePath:Ljava/lang/String;

    invoke-direct {v6, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 332
    .local v6, saveFile:Ljava/io/File;
    invoke-virtual {v7, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 333
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 334
    .local v3, mediaStore:Landroid/content/ContentValues;
    const-string v9, "title"

    iget-object v10, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->mFileName:Ljava/lang/String;

    invoke-virtual {v3, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    const-string v9, "mime_type"

    const-string v10, "audio/amr"

    invoke-virtual {v3, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    const-string v9, "_data"

    iget-object v10, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->mSaveFilePath:Ljava/lang/String;

    invoke-virtual {v3, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    const-string v9, "duration"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 338
    const-string v9, "_size"

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 339
    const-string v9, "date_modified"

    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 340
    const-string v9, "is_sound"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 341
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v9, v10, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_d5
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_d5} :catch_10f

    .line 354
    iget-object v9, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mCallCard:Lcom/android/phone/CallCard;
    invoke-static {v9}, Lcom/android/phone/PhoneVoiceRecorder;->access$500(Lcom/android/phone/PhoneVoiceRecorder;)Lcom/android/phone/CallCard;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/phone/CallCard;->invisibleRecInfoView()V

    .line 355
    invoke-static {}, Lcom/android/phone/PhoneVoiceRecorder;->access$600()Lcom/android/phone/PhoneApp;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/phone/PhoneApp;->updateInCallScreen()V

    .line 359
    iget-object v9, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/phone/PhoneVoiceRecorder;->access$300(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x65

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/android/phone/PhoneVoiceRecorder;->access$400(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0e03b6

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-static {v9, v10, v11, v12, v13}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 361
    .restart local v4       #msg:Landroid/os/Message;
    iget-object v9, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/phone/PhoneVoiceRecorder;->access$300(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_6c

    .line 342
    .end local v1           #fileDuration:J
    .end local v3           #mediaStore:Landroid/content/ContentValues;
    .end local v4           #msg:Landroid/os/Message;
    .end local v5           #retriever:Landroid/media/MediaMetadataRetriever;
    .end local v6           #saveFile:Ljava/io/File;
    .end local v7           #tempFile:Ljava/io/File;
    .end local v8           #value:Ljava/lang/String;
    :catch_10f
    move-exception v0

    .line 343
    .local v0, e:Ljava/lang/Exception;
    const-string v9, "PhoneVoiceRecorder"

    const-string v10, "Exception"

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 344
    iget-object v9, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mCallCard:Lcom/android/phone/CallCard;
    invoke-static {v9}, Lcom/android/phone/PhoneVoiceRecorder;->access$500(Lcom/android/phone/PhoneVoiceRecorder;)Lcom/android/phone/CallCard;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/phone/CallCard;->invisibleRecInfoView()V

    .line 345
    invoke-static {}, Lcom/android/phone/PhoneVoiceRecorder;->access$600()Lcom/android/phone/PhoneApp;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/phone/PhoneApp;->updateInCallScreen()V

    .line 346
    iget-object v9, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/phone/PhoneVoiceRecorder;->access$300(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x66

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/android/phone/PhoneVoiceRecorder;->access$400(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0e03b7

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-static {v9, v10, v11, v12, v13}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 348
    .restart local v4       #msg:Landroid/os/Message;
    iget-object v9, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/phone/PhoneVoiceRecorder;->access$300(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_6c
.end method
