.class public Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;
.super Ljava/lang/Object;
.source "AttachmentDownloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/service/AttachmentDownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DownloadRequest"
.end annotation


# instance fields
.field final accountId:J

.field final attachmentId:J

.field inProgress:Z

.field lastCallbackTime:J

.field lastProgress:I

.field lastStatusCode:I

.field final messageId:J

.field final priority:I

.field startTime:J

.field final time:J


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
    .registers 6
    .parameter "context"
    .parameter "attachment"

    .prologue
    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->inProgress:Z

    .line 178
    iget-wide v1, p2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mId:J

    iput-wide v1, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->attachmentId:J

    .line 179
    iget-wide v1, p2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    invoke-static {p1, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    .line 180
    .local v0, msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-eqz v0, :cond_27

    .line 181
    iget-wide v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    iput-wide v1, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->accountId:J

    .line 182
    iget-wide v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    iput-wide v1, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->messageId:J

    .line 186
    :goto_1a
    #calls: Lcom/android/email/service/AttachmentDownloadService;->getPriority(Lcom/android/emailcommon/provider/EmailContent$Attachment;)I
    invoke-static {p2}, Lcom/android/email/service/AttachmentDownloadService;->access$100(Lcom/android/emailcommon/provider/EmailContent$Attachment;)I

    move-result v1

    iput v1, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->priority:I

    .line 187
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->time:J

    .line 188
    return-void

    .line 184
    :cond_27
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->messageId:J

    iput-wide v1, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->accountId:J

    goto :goto_1a
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;Lcom/android/email/service/AttachmentDownloadService$1;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 165
    invoke-direct {p0, p1, p2}, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "object"

    .prologue
    const/4 v1, 0x0

    .line 200
    instance-of v2, p1, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;

    if-nez v2, :cond_6

    .line 202
    :cond_5
    :goto_5
    return v1

    :cond_6
    move-object v0, p1

    .line 201
    check-cast v0, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;

    .line 202
    .local v0, req:Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;
    iget-wide v2, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->attachmentId:J

    iget-wide v4, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->attachmentId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    const/4 v1, 0x1

    goto :goto_5
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 192
    iget-wide v0, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->attachmentId:J

    long-to-int v0, v0

    return v0
.end method
