.class public Lcom/coremobility/integration/message/CM_SMSReceiver;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static a:Ljava/util/Vector;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/coremobility/integration/message/CM_SMSReceiver;->a:Ljava/util/Vector;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static a(Lcom/coremobility/integration/message/e;)Landroid/os/Bundle;
    .registers 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "sms_message_body"

    invoke-virtual {p0}, Lcom/coremobility/integration/message/e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sms_message_sender"

    invoke-virtual {p0}, Lcom/coremobility/integration/message/e;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sms_message_timestmap"

    invoke-virtual {p0}, Lcom/coremobility/integration/message/e;->c()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object v0
.end method

.method private static a(Landroid/telephony/SmsMessage;)Lcom/coremobility/integration/message/e;
    .registers 6

    new-instance v1, Lcom/coremobility/integration/message/e;

    invoke-direct {v1}, Lcom/coremobility/integration/message/e;-><init>()V

    :try_start_5
    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coremobility/j/r;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/coremobility/integration/message/e;->a(Ljava/lang/String;)V

    :cond_16
    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coremobility/j/r;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_27

    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/coremobility/integration/message/e;->b(Ljava/lang/String;)V

    :cond_27
    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->getTimestampMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/coremobility/integration/message/e;->a(J)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2e} :catch_2f

    :goto_2e
    return-object v1

    :catch_2f
    move-exception v0

    const/16 v2, 0x17

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createNotificationMessage # "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2e
.end method

.method public static a()V
    .registers 3

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    sget-object v0, Lcom/coremobility/integration/message/CM_SMSReceiver;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1f

    sget-object v0, Lcom/coremobility/integration/message/CM_SMSReceiver;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/integration/message/e;

    invoke-static {v0}, Lcom/coremobility/integration/message/CM_SMSReceiver;->a(Lcom/coremobility/integration/message/e;)Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "com.coremobility.app.vnotes.SERVICE_SMS_RECEIVE"

    invoke-static {v2, v0}, Lcom/coremobility/integration/app/CM_Service;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_1f
    sget-object v0, Lcom/coremobility/integration/message/CM_SMSReceiver;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    return-void
.end method

.method private static a(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;
    .registers 7

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    :try_start_6
    const-string v1, "pdus"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    if-nez v0, :cond_12

    move-object v0, v2

    :goto_11
    return-object v0

    :cond_12
    array-length v1, v0

    new-array v3, v1, [Landroid/telephony/SmsMessage;

    move v4, v5

    :goto_16
    array-length v1, v0

    if-ge v4, v1, :cond_4c

    aget-object v1, v0, v4

    check-cast v1, [B

    invoke-static {v1}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v1

    if-nez v1, :cond_25

    move-object v0, v2

    goto :goto_11

    :cond_25
    aput-object v1, v3, v4
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_27} :catch_2b

    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_16

    :catch_2b
    move-exception v0

    const/16 v1, 0x17

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fail "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v0, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v2

    goto :goto_11

    :cond_4c
    move-object v0, v3

    goto :goto_11
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10

    const/16 v6, 0x17

    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-static {p2}, Lcom/coremobility/integration/message/CM_SMSReceiver;->a(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v2

    if-nez v2, :cond_23

    const-string v0, "CM_SMSReceiver Could not extract SMS Message(s)"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v6, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_22
    return-void

    :cond_23
    invoke-static {}, Lcom/coremobility/integration/app/CM_Service;->a()Lcom/coremobility/integration/app/CM_Service;

    move-result-object v3

    if-eqz v3, :cond_4e

    invoke-static {}, Lcom/coremobility/integration/app/CM_Service;->f()Z

    move-result v0

    if-nez v0, :cond_4e

    const-string v0, "com.coremobility.app.vnotes.START_NOW"

    invoke-static {v0}, Lcom/coremobility/integration/app/CM_Service;->a(Ljava/lang/String;)V

    :goto_34
    move v0, v1

    :goto_35
    array-length v4, v2

    if-ge v0, v4, :cond_22

    aget-object v4, v2, v0

    if-eqz v4, :cond_58

    invoke-static {v4}, Lcom/coremobility/integration/message/CM_SMSReceiver;->a(Landroid/telephony/SmsMessage;)Lcom/coremobility/integration/message/e;

    move-result-object v4

    invoke-static {v4}, Lcom/coremobility/integration/message/CM_SMSReceiver;->a(Lcom/coremobility/integration/message/e;)Landroid/os/Bundle;

    move-result-object v5

    if-eqz v3, :cond_52

    const-string v4, "com.coremobility.app.vnotes.SERVICE_SMS_RECEIVE"

    invoke-static {v4, v5}, Lcom/coremobility/integration/app/CM_Service;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_4b
    add-int/lit8 v0, v0, 0x1

    goto :goto_35

    :cond_4e
    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->i()V

    goto :goto_34

    :cond_52
    sget-object v5, Lcom/coremobility/integration/message/CM_SMSReceiver;->a:Ljava/util/Vector;

    invoke-virtual {v5, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_4b

    :cond_58
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CM_SMSReceiver Could not extract SMS Message # "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v6, v4, v5}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4b
.end method
