.class public Lcom/android/phone/PhoneInterfaceManagerExt;
.super Lcom/android/internal/telephony/ITelephonyExt$Stub;
.source "PhoneInterfaceManagerExt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/PhoneInterfaceManagerExt$CheckTimeInfo;,
        Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPin2;,
        Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPuk;
    }
.end annotation


# instance fields
.field mApp:Lcom/android/phone/PhoneApp;

.field mCM:Lcom/android/internal/telephony/CallManager;

.field mPhone:Lcom/android/internal/telephony/Phone;

.field private nitzString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/phone/PhoneApp;Lcom/android/internal/telephony/Phone;)V
    .registers 4
    .parameter "app"
    .parameter "phone"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mApp:Lcom/android/phone/PhoneApp;

    .line 54
    iput-object p2, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 55
    iget-object v0, p1, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 56
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManagerExt;->publish()V

    .line 57
    return-void
.end method

.method private enforceModifyPermission()V
    .registers 4

    .prologue
    .line 631
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mApp:Lcom/android/phone/PhoneApp;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneApp;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    return-void
.end method

.method private enforceReadPermission()V
    .registers 4

    .prologue
    .line 644
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mApp:Lcom/android/phone/PhoneApp;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneApp;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 648
    const-string v0, "PhoneInterfaceManagerExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PhoneIntfMgr] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    return-void
.end method

.method private publish()V
    .registers 3

    .prologue
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "publish: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/PhoneInterfaceManagerExt;->log(Ljava/lang/String;)V

    .line 62
    const-string v0, "phoneext"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 63
    return-void
.end method


# virtual methods
.method public checkNSRIUSIMstate_int()I
    .registers 2

    .prologue
    .line 850
    const/4 v0, 0x0

    .line 851
    .local v0, retValue:I
    return v0
.end method

.method public getActiveCallsCount()I
    .registers 2

    .prologue
    .line 694
    const/4 v0, 0x0

    return v0
.end method

.method public getCallBaseTime()J
    .registers 3

    .prologue
    .line 725
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getCallTime()J
    .registers 3

    .prologue
    .line 717
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getCallerName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 709
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHoldCallsCount()I
    .registers 2

    .prologue
    .line 701
    const/4 v0, 0x0

    return v0
.end method

.method public getMobileQualityInformation()Ljava/lang/String;
    .registers 2

    .prologue
    .line 861
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMsisdnavailable()Z
    .registers 2

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManagerExt;->enforceModifyPermission()V

    .line 85
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getMsisdnavailable()Z

    move-result v0

    return v0
.end method

.method public getMute()Z
    .registers 2

    .prologue
    .line 674
    const/4 v0, 0x1

    return v0
.end method

.method public getPin2LockKey()I
    .registers 3

    .prologue
    .line 99
    const-string v0, "PhoneInterfaceManagerExt"

    const-string v1, "getPinLockKey"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getSimLockInfoResult()Lcom/android/internal/telephony/SimLockInfoResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/SimLockInfoResult;->getLockPin2Key()I

    move-result v0

    return v0
.end method

.method public getPinLockKey()I
    .registers 3

    .prologue
    .line 89
    const-string v0, "PhoneInterfaceManagerExt"

    const-string v1, "getPinLockKey"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getSimLockInfoResult()Lcom/android/internal/telephony/SimLockInfoResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/SimLockInfoResult;->getLockPinKey()I

    move-result v0

    return v0
.end method

.method public getSimPin2Retry()I
    .registers 3

    .prologue
    .line 129
    const-string v0, "PhoneInterfaceManagerExt"

    const-string v1, "getSimPin2Retry"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getSimLockInfoResult()Lcom/android/internal/telephony/SimLockInfoResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/SimLockInfoResult;->getPin2Retry()I

    move-result v0

    return v0
.end method

.method public getSimPinRetry()I
    .registers 3

    .prologue
    .line 109
    const-string v0, "PhoneInterfaceManagerExt"

    const-string v1, "getSimPinRetry"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getSimLockInfoResult()Lcom/android/internal/telephony/SimLockInfoResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/SimLockInfoResult;->getPinRetry()I

    move-result v0

    return v0
.end method

.method public getSimPuk2Retry()I
    .registers 3

    .prologue
    .line 140
    const-string v0, "PhoneInterfaceManagerExt"

    const-string v1, "getSimPukRetry"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getSimLockInfoResult()Lcom/android/internal/telephony/SimLockInfoResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/SimLockInfoResult;->getPuk2Retry()I

    move-result v0

    return v0
.end method

.method public getSimPukRetry()I
    .registers 3

    .prologue
    .line 119
    const-string v0, "PhoneInterfaceManagerExt"

    const-string v1, "getSimPukRetry"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getSimLockInfoResult()Lcom/android/internal/telephony/SimLockInfoResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/SimLockInfoResult;->getPukRetry()I

    move-result v0

    return v0
.end method

.method public getTelephonyFeature()Ljava/util/Map;
    .registers 3

    .prologue
    .line 150
    const-string v0, "PhoneInterfaceManagerExt"

    const-string v1, "getTelephonyFeature"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTimeInfo()Ljava/lang/String;
    .registers 5

    .prologue
    .line 821
    new-instance v0, Lcom/android/phone/PhoneInterfaceManagerExt$CheckTimeInfo;

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v0, v1}, Lcom/android/phone/PhoneInterfaceManagerExt$CheckTimeInfo;-><init>(Lcom/android/internal/telephony/Phone;)V

    .line 822
    .local v0, checkTimeInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CheckTimeInfo;
    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManagerExt$CheckTimeInfo;->start()V

    .line 823
    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManagerExt$CheckTimeInfo;->checkTime()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->nitzString:Ljava/lang/String;

    .line 825
    const-string v1, "PhoneInterfaceManagerExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTimeInfo() - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->nitzString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->nitzString:Ljava/lang/String;

    return-object v1
.end method

.method public isConferenceCall()Z
    .registers 2

    .prologue
    .line 745
    const/4 v0, 0x0

    return v0
.end method

.method public isFirstCallDialingAndSecondCallActive()Z
    .registers 2

    .prologue
    .line 753
    const/4 v0, 0x0

    return v0
.end method

.method public isHeadsetConnected()Z
    .registers 3

    .prologue
    .line 786
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getBluetoothHandsfree()Lcom/android/phone/BluetoothHandsfree;

    move-result-object v0

    .line 787
    .local v0, bluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;
    if-eqz v0, :cond_d

    .line 788
    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->isHeadsetConnected()Z

    move-result v1

    .line 791
    :goto_c
    return v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public isIdle()Z
    .registers 2

    .prologue
    .line 741
    const/4 v0, 0x0

    return v0
.end method

.method public isMultiCall()Z
    .registers 2

    .prologue
    .line 749
    const/4 v0, 0x0

    return v0
.end method

.method public isSimFDNEnabled()Z
    .registers 2

    .prologue
    .line 621
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManagerExt;->enforceReadPermission()V

    .line 622
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->isSimFDNEnabled()Z

    move-result v0

    return v0
.end method

.method public notifyVoIPCallStateChangeIntoBT()V
    .registers 4

    .prologue
    .line 795
    const-string v1, "PhoneInterfaceManagerExt"

    const-string v2, "notifyVoIPCallStateChangeIntoBT entered"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getBluetoothHandsfree()Lcom/android/phone/BluetoothHandsfree;

    move-result-object v0

    .line 797
    .local v0, bluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;
    if-eqz v0, :cond_19

    .line 798
    const-string v1, "PhoneInterfaceManagerExt"

    const-string v2, "notifyVoIPCallStateChangeIntoBT bluetoothHandsfree is not null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->handleVoipCallStateChange()V

    .line 801
    :cond_19
    return-void
.end method

.method public sendRequestToRIL([B[BI)I
    .registers 5
    .parameter "data"
    .parameter "response"
    .parameter "what"

    .prologue
    .line 733
    const/4 v0, 0x0

    return v0
.end method

.method public setBTUserWantsAudioOn(Z)V
    .registers 4
    .parameter "flag"

    .prologue
    .line 767
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getBluetoothHandsfree()Lcom/android/phone/BluetoothHandsfree;

    move-result-object v0

    .line 768
    .local v0, bluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;
    if-eqz v0, :cond_d

    .line 769
    if-eqz p1, :cond_e

    .line 770
    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->userWantsAudioOn()V

    .line 774
    :cond_d
    :goto_d
    return-void

    .line 772
    :cond_e
    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->userWantsAudioOff()V

    goto :goto_d
.end method

.method public setMute(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 667
    return-void
.end method

.method public showPopupCallScreen()Z
    .registers 2

    .prologue
    .line 737
    const/4 v0, 0x0

    return v0
.end method

.method public sms_NSRI_decryptsms(I[B)[B
    .registers 4
    .parameter "in_len"
    .parameter "message"

    .prologue
    .line 840
    const/4 v0, 0x0

    .line 841
    .local v0, retByte:[B
    return-object v0
.end method

.method public sms_NSRI_decryptsmsintxside(ILjava/lang/String;[B)[B
    .registers 5
    .parameter "in_len"
    .parameter "potherphonenumber"
    .parameter "message"

    .prologue
    .line 845
    const/4 v0, 0x0

    .line 846
    .local v0, retByte:[B
    return-object v0
.end method

.method public sms_NSRI_encryptsms(ILjava/lang/String;[B)[B
    .registers 5
    .parameter "in_len"
    .parameter "potherphonenumber"
    .parameter "message"

    .prologue
    .line 835
    const/4 v0, 0x0

    .line 836
    .local v0, retByte:[B
    return-object v0
.end method

.method public startMobileQualityInformation()V
    .registers 1

    .prologue
    .line 865
    return-void
.end method

.method public stopMobileQualityInformation()V
    .registers 1

    .prologue
    .line 868
    return-void
.end method

.method public supplyPerso(Ljava/lang/String;)Z
    .registers 3
    .parameter "passwd"

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public supplyPin2(Ljava/lang/String;)Z
    .registers 4
    .parameter "pin2"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManagerExt;->enforceModifyPermission()V

    .line 74
    new-instance v0, Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPin2;

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPin2;-><init>(Lcom/android/internal/telephony/IccCard;)V

    .line 75
    .local v0, checkSimPin2:Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPin2;
    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPin2;->start()V

    .line 76
    invoke-virtual {v0, p1}, Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPin2;->checkPin2(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public supplyPuk(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .parameter "puk"
    .parameter "newPin"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManagerExt;->enforceModifyPermission()V

    .line 67
    new-instance v0, Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPuk;

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPuk;-><init>(Lcom/android/internal/telephony/IccCard;)V

    .line 68
    .local v0, checkSimPuk:Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPuk;
    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPuk;->start()V

    .line 69
    invoke-virtual {v0, p1, p2}, Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPuk;->checkPuk(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public switchHoldingAndActive()V
    .registers 1

    .prologue
    .line 660
    return-void
.end method

.method public turnOnBluetooth()V
    .registers 1

    .prologue
    .line 688
    return-void
.end method

.method public turnOnSpeaker(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 681
    return-void
.end method

.method public updateRAFTproximity(I)V
    .registers 4
    .parameter "raft_phone_state"

    .prologue
    .line 760
    const-string v0, "PhoneInterfaceManagerExt"

    const-string v1, "updateRAFTproximity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    return-void
.end method
