.class abstract Lgnu/inet/ftp/DTPOutputStream;
.super Ljava/io/FilterOutputStream;
.source "DTPOutputStream.java"


# instance fields
.field dtp:Lgnu/inet/ftp/DTP;

.field transferComplete:Z


# direct methods
.method constructor <init>(Lgnu/inet/ftp/DTP;Ljava/io/OutputStream;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 65
    iput-object p1, p0, Lgnu/inet/ftp/DTPOutputStream;->dtp:Lgnu/inet/ftp/DTP;

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgnu/inet/ftp/DTPOutputStream;->transferComplete:Z

    .line 67
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lgnu/inet/ftp/DTPOutputStream;->dtp:Lgnu/inet/ftp/DTP;

    invoke-interface {v0}, Lgnu/inet/ftp/DTP;->transferComplete()V

    .line 85
    return-void
.end method

.method setTransferComplete(Z)V
    .registers 2
    .parameter

    .prologue
    .line 75
    iput-boolean p1, p0, Lgnu/inet/ftp/DTPOutputStream;->transferComplete:Z

    .line 76
    return-void
.end method