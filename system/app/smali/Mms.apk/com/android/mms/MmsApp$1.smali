.class Lcom/android/mms/MmsApp$1;
.super Ljava/lang/Object;
.source "MmsApp.java"

# interfaces
.implements Landroid/location/CountryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/MmsApp;->initCountryIso()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/MmsApp;


# direct methods
.method constructor <init>(Lcom/android/mms/MmsApp;)V
    .registers 2
    .parameter

    .prologue
    .line 186
    iput-object p1, p0, Lcom/android/mms/MmsApp$1;->this$0:Lcom/android/mms/MmsApp;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onCountryDetected(Landroid/location/Country;)V
    .registers 4
    .parameter "country"

    .prologue
    .line 189
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/mms/MmsApp$1;->this$0:Lcom/android/mms/MmsApp;

    invoke-virtual {p1}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/mms/MmsApp;->mCountryIso:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/mms/MmsApp;->access$002(Lcom/android/mms/MmsApp;Ljava/lang/String;)Ljava/lang/String;

    .line 190
    const-string v0, "Mms/MmsApp"

    const-string v1, "country detected"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 192
    monitor-exit p0

    return-void

    .line 189
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method