.class Lcom/estrongs/android/pop/ftp/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/pop/ftp/d;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/ftp/ESFtpService;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/ftp/ESFtpService;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/ftp/f;->a:Lcom/estrongs/android/pop/ftp/ESFtpService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .registers 5

    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/f;->a:Lcom/estrongs/android/pop/ftp/ESFtpService;

    iget-object v0, v0, Lcom/estrongs/android/pop/ftp/ESFtpService;->a:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/f;->a:Lcom/estrongs/android/pop/ftp/ESFtpService;

    iget-object v1, v1, Lcom/estrongs/android/pop/ftp/ESFtpService;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public a(JJ)V
    .registers 9

    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/f;->a:Lcom/estrongs/android/pop/ftp/ESFtpService;

    iget-object v0, v0, Lcom/estrongs/android/pop/ftp/ESFtpService;->a:Landroid/os/Handler;

    const/4 v1, 0x2

    long-to-int v2, p1

    long-to-int v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/f;->a:Lcom/estrongs/android/pop/ftp/ESFtpService;

    iget-object v1, v1, Lcom/estrongs/android/pop/ftp/ESFtpService;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
