.class public Lcom/google/android/youtube/app/honeycomb/Shell$WatchActivity;
.super Lcom/google/android/youtube/app/honeycomb/h;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/app/honeycomb/h;-><init>(B)V

    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/Class;
    .registers 2

    .prologue
    .line 100
    const-class v0, Lcom/google/android/youtube/app/honeycomb/tablet/WatchActivity;

    return-object v0
.end method

.method protected final b()Ljava/lang/Class;
    .registers 2

    .prologue
    .line 95
    const-class v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;

    return-object v0
.end method

.method public bridge synthetic onCreate(Landroid/os/Bundle;)V
    .registers 2
    .parameter

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/h;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method
