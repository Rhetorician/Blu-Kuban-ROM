.class public Lcom/vlingo/client/car/asr/CarRecognizerFlowPolicyFactory;
.super Lcom/vlingo/client/android/core/asr/policy/AndroidRecognitionFlowPolicyFactory;
.source "CarRecognizerFlowPolicyFactory.java"


# instance fields
.field carFlowPolicy:Lcom/vlingo/client/car/asr/CarRecoFlowPolicy;


# direct methods
.method public constructor <init>(Lcom/vlingo/client/core/asr/RecognitionManager;)V
    .registers 4
    .parameter "recoManager"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/vlingo/client/android/core/asr/policy/AndroidRecognitionFlowPolicyFactory;-><init>(Lcom/vlingo/client/core/asr/RecognitionManager;)V

    .line 20
    new-instance v0, Lcom/vlingo/client/car/asr/CarRecoFlowPolicy;

    invoke-virtual {p1}, Lcom/vlingo/client/core/asr/RecognitionManager;->getDefaultRecognitionFlowActor()Lcom/vlingo/client/core/asr/policy/RecognitionFlowActor;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vlingo/client/car/asr/CarRecoFlowPolicy;-><init>(Lcom/vlingo/client/core/asr/policy/RecognitionFlowActor;)V

    iput-object v0, p0, Lcom/vlingo/client/car/asr/CarRecognizerFlowPolicyFactory;->carFlowPolicy:Lcom/vlingo/client/car/asr/CarRecoFlowPolicy;

    .line 21
    invoke-virtual {p0}, Lcom/vlingo/client/car/asr/CarRecognizerFlowPolicyFactory;->getTonePlayer()Lcom/vlingo/client/android/core/audio/TonePlayer;

    .line 22
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/vlingo/client/car/asr/CarRecognizerFlowPolicyFactory;->carFlowPolicy:Lcom/vlingo/client/car/asr/CarRecoFlowPolicy;

    invoke-virtual {v0}, Lcom/vlingo/client/car/asr/CarRecoFlowPolicy;->close()V

    .line 26
    return-void
.end method

.method protected createBluetoothFlowPolicy()Lcom/vlingo/client/android/core/asr/policy/BluetoothRecoFlowPolicy;
    .registers 3

    .prologue
    .line 34
    new-instance v0, Lcom/vlingo/client/car/asr/CarRecoBluetoothFlowPolicy;

    iget-object v1, p0, Lcom/vlingo/client/car/asr/CarRecognizerFlowPolicyFactory;->recoManager:Lcom/vlingo/client/core/asr/RecognitionManager;

    invoke-virtual {v1}, Lcom/vlingo/client/core/asr/RecognitionManager;->getDefaultRecognitionFlowActor()Lcom/vlingo/client/core/asr/policy/RecognitionFlowActor;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vlingo/client/car/asr/CarRecoBluetoothFlowPolicy;-><init>(Lcom/vlingo/client/core/asr/policy/RecognitionFlowActor;)V

    return-object v0
.end method

.method protected createDefaultFlowPolicy()Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/vlingo/client/car/asr/CarRecognizerFlowPolicyFactory;->carFlowPolicy:Lcom/vlingo/client/car/asr/CarRecoFlowPolicy;

    return-object v0
.end method

.method public getTonePlayer()Lcom/vlingo/client/android/core/audio/TonePlayer;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/vlingo/client/car/asr/CarRecognizerFlowPolicyFactory;->carFlowPolicy:Lcom/vlingo/client/car/asr/CarRecoFlowPolicy;

    invoke-virtual {v0}, Lcom/vlingo/client/car/asr/CarRecoFlowPolicy;->getTonePlayer()Lcom/vlingo/client/android/core/audio/TonePlayer;

    move-result-object v0

    return-object v0
.end method