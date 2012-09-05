.class public Lcom/android/phone/CLIRListPreference;
.super Landroid/preference/ListPreference;
.source "CLIRListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CLIRListPreference$1;,
        Lcom/android/phone/CLIRListPreference$MyHandler;
    }
.end annotation


# instance fields
.field private final DBG:Z

.field clirArray:[I

.field private mHandler:Lcom/android/phone/CLIRListPreference$MyHandler;

.field private mTelMan:Landroid/telephony/TelephonyManager;

.field phone:Lcom/android/internal/telephony/Phone;

.field private prev_CLIR_value:I

.field tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CLIRListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/CLIRListPreference;->DBG:Z

    .line 40
    new-instance v0, Lcom/android/phone/CLIRListPreference$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/CLIRListPreference$MyHandler;-><init>(Lcom/android/phone/CLIRListPreference;Lcom/android/phone/CLIRListPreference$1;)V

    iput-object v0, p0, Lcom/android/phone/CLIRListPreference;->mHandler:Lcom/android/phone/CLIRListPreference$MyHandler;

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/CLIRListPreference;->prev_CLIR_value:I

    .line 52
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CLIRListPreference;->phone:Lcom/android/internal/telephony/Phone;

    .line 53
    return-void
.end method


# virtual methods
.method handleGetCLIRResult([I)V
    .registers 9
    .parameter "tmpClirArray"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 101
    iput-object p1, p0, Lcom/android/phone/CLIRListPreference;->clirArray:[I

    .line 102
    aget v5, p1, v4

    if-eq v5, v4, :cond_12

    aget v5, p1, v4

    const/4 v6, 0x3

    if-eq v5, v6, :cond_12

    aget v5, p1, v4

    const/4 v6, 0x4

    if-ne v5, v6, :cond_29

    :cond_12
    move v0, v4

    .line 106
    .local v0, enabled:Z
    :goto_13
    const/4 v2, 0x0

    .line 107
    .local v2, value:I
    aget v4, p1, v4

    packed-switch v4, :pswitch_data_42

    .line 127
    :pswitch_19
    const/4 v2, 0x0

    .line 130
    :goto_1a
    invoke-virtual {p0, v2}, Lcom/android/phone/CLIRListPreference;->setValueIndex(I)V

    .line 134
    iput v2, p0, Lcom/android/phone/CLIRListPreference;->prev_CLIR_value:I

    .line 137
    const v1, 0x7f0e0074

    .line 138
    .local v1, summary:I
    packed-switch v2, :pswitch_data_4e

    .line 149
    :goto_25
    invoke-virtual {p0, v1}, Lcom/android/phone/CLIRListPreference;->setSummary(I)V

    .line 150
    return-void

    .end local v0           #enabled:Z
    .end local v1           #summary:I
    .end local v2           #value:I
    :cond_29
    move v0, v3

    .line 102
    goto :goto_13

    .line 111
    .restart local v0       #enabled:Z
    .restart local v2       #value:I
    :pswitch_2b
    aget v3, p1, v3

    packed-switch v3, :pswitch_data_58

    .line 120
    const/4 v2, 0x0

    .line 121
    goto :goto_1a

    .line 113
    :pswitch_32
    const/4 v2, 0x1

    .line 114
    goto :goto_1a

    .line 116
    :pswitch_34
    const/4 v2, 0x2

    .line 117
    goto :goto_1a

    .line 140
    .restart local v1       #summary:I
    :pswitch_36
    const v1, 0x7f0e0073

    .line 141
    goto :goto_25

    .line 143
    :pswitch_3a
    const v1, 0x7f0e0072

    .line 144
    goto :goto_25

    .line 146
    :pswitch_3e
    const v1, 0x7f0e0074

    goto :goto_25

    .line 107
    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_19
        :pswitch_2b
        :pswitch_2b
    .end packed-switch

    .line 138
    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_3e
        :pswitch_3a
        :pswitch_36
    .end packed-switch

    .line 111
    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_32
        :pswitch_34
    .end packed-switch
.end method

.method init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V
    .registers 6
    .parameter "listener"
    .parameter "skipReading"

    .prologue
    const/4 v2, 0x0

    .line 77
    iput-object p1, p0, Lcom/android/phone/CLIRListPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    .line 78
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CLIRListPreference;->mTelMan:Landroid/telephony/TelephonyManager;

    .line 91
    if-nez p2, :cond_20

    .line 92
    iget-object v0, p0, Lcom/android/phone/CLIRListPreference;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/CLIRListPreference;->mHandler:Lcom/android/phone/CLIRListPreference$MyHandler;

    invoke-virtual {v1, v2, v2, v2}, Lcom/android/phone/CLIRListPreference$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getOutgoingCallerIdDisplay(Landroid/os/Message;)V

    .line 94
    iget-object v0, p0, Lcom/android/phone/CLIRListPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-eqz v0, :cond_20

    .line 95
    iget-object v0, p0, Lcom/android/phone/CLIRListPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/android/phone/TimeConsumingPreferenceListener;->onStarted(Landroid/preference/Preference;Z)V

    .line 98
    :cond_20
    return-void
.end method

.method protected onDialogClosed(Z)V
    .registers 6
    .parameter "positiveResult"

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onDialogClosed(Z)V

    .line 63
    iget v0, p0, Lcom/android/phone/CLIRListPreference;->prev_CLIR_value:I

    invoke-virtual {p0}, Lcom/android/phone/CLIRListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/phone/CLIRListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_17

    .line 65
    const-string v0, "CLIRListPreference"

    const-string v1, "CLIR value is not changed. Do not update CLIR value"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_16
    :goto_16
    return-void

    .line 69
    :cond_17
    iget-object v0, p0, Lcom/android/phone/CLIRListPreference;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/phone/CLIRListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/phone/CLIRListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/android/phone/CLIRListPreference;->mHandler:Lcom/android/phone/CLIRListPreference$MyHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/phone/CLIRListPreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->setOutgoingCallerIdDisplay(ILandroid/os/Message;)V

    .line 71
    iget-object v0, p0, Lcom/android/phone/CLIRListPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-eqz v0, :cond_16

    .line 72
    iget-object v0, p0, Lcom/android/phone/CLIRListPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/android/phone/TimeConsumingPreferenceListener;->onStarted(Landroid/preference/Preference;Z)V

    goto :goto_16
.end method
