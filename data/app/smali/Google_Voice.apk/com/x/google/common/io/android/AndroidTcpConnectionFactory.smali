.class public Lcom/x/google/common/io/android/AndroidTcpConnectionFactory;
.super Lcom/x/google/common/io/android/J2SeTcpConnectionFactory;


# instance fields
.field private cm:Landroid/net/ConnectivityManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Lcom/x/google/common/io/android/J2SeTcpConnectionFactory;-><init>()V

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/x/google/common/io/android/AndroidTcpConnectionFactory;->cm:Landroid/net/ConnectivityManager;

    return-void
.end method


# virtual methods
.method public isNetworkAvailable()I
    .registers 3

    iget-object v0, p0, Lcom/x/google/common/io/android/AndroidTcpConnectionFactory;->cm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v0, v1, :cond_16

    const/4 v0, 0x2

    goto :goto_f

    :cond_16
    const/4 v0, 0x0

    goto :goto_f
.end method