.class Lcom/android/email/adapter/SncAdapter$6;
.super Ljava/lang/Object;
.source "SncAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/adapter/SncAdapter;->sendPendingMessages(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/adapter/SncAdapter;

.field final synthetic val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

.field final synthetic val$sentboxId:J


# direct methods
.method constructor <init>(Lcom/android/email/adapter/SncAdapter;Lcom/android/emailcommon/provider/EmailContent$Account;J)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1104
    iput-object p1, p0, Lcom/android/email/adapter/SncAdapter$6;->this$0:Lcom/android/email/adapter/SncAdapter;

    iput-object p2, p0, Lcom/android/email/adapter/SncAdapter$6;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    iput-wide p3, p0, Lcom/android/email/adapter/SncAdapter$6;->val$sentboxId:J

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 1106
    iget-object v0, p0, Lcom/android/email/adapter/SncAdapter$6;->this$0:Lcom/android/email/adapter/SncAdapter;

    #getter for: Lcom/android/email/adapter/SncAdapter;->mMessagingController:Lcom/android/email/SncMessagingController;
    invoke-static {v0}, Lcom/android/email/adapter/SncAdapter;->access$200(Lcom/android/email/adapter/SncAdapter;)Lcom/android/email/SncMessagingController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/adapter/SncAdapter$6;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v2, p0, Lcom/android/email/adapter/SncAdapter$6;->val$sentboxId:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/SncMessagingController;->sendPendingMessages(Lcom/android/emailcommon/provider/EmailContent$Account;J)V

    .line 1107
    return-void
.end method