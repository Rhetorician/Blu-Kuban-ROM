.class Lcom/android/email/Controller$15$1;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Lcom/android/email/Controller$ServiceCallbackWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/Controller$15;->loadAttachmentStatus(JJII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/email/Controller$15;

.field final synthetic val$attachmentId:J

.field final synthetic val$messageId:J

.field final synthetic val$progress:I

.field final synthetic val$status:I


# direct methods
.method constructor <init>(Lcom/android/email/Controller$15;JJII)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1757
    iput-object p1, p0, Lcom/android/email/Controller$15$1;->this$1:Lcom/android/email/Controller$15;

    iput-wide p2, p0, Lcom/android/email/Controller$15$1;->val$messageId:J

    iput-wide p4, p0, Lcom/android/email/Controller$15$1;->val$attachmentId:J

    iput p6, p0, Lcom/android/email/Controller$15$1;->val$status:I

    iput p7, p0, Lcom/android/email/Controller$15$1;->val$progress:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/android/emailcommon/service/IEmailServiceCallback;)V
    .registers 9
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1760
    iget-wide v1, p0, Lcom/android/email/Controller$15$1;->val$messageId:J

    iget-wide v3, p0, Lcom/android/email/Controller$15$1;->val$attachmentId:J

    iget v5, p0, Lcom/android/email/Controller$15$1;->val$status:I

    iget v6, p0, Lcom/android/email/Controller$15$1;->val$progress:I

    move-object v0, p1

    invoke-interface/range {v0 .. v6}, Lcom/android/emailcommon/service/IEmailServiceCallback;->loadAttachmentStatus(JJII)V

    .line 1761
    return-void
.end method
