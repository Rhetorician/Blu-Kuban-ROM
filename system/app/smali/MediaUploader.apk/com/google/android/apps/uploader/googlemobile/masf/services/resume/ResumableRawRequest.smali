.class public Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumableRawRequest;
.super Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumableRequest;


# instance fields
.field private inputStreamProvider:Lcom/google/android/apps/uploader/googlemobile/masf/InputStreamProvider;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/uploader/googlemobile/masf/InputStreamProvider;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumableRequest;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumableRawRequest;->inputStreamProvider:Lcom/google/android/apps/uploader/googlemobile/masf/InputStreamProvider;

    return-void
.end method

.method public constructor <init>([B)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumableRequest;-><init>()V

    new-instance v0, Lcom/google/android/apps/uploader/googlemobile/masf/ByteArrayInputStreamProvider;

    invoke-direct {v0, p1}, Lcom/google/android/apps/uploader/googlemobile/masf/ByteArrayInputStreamProvider;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumableRawRequest;->inputStreamProvider:Lcom/google/android/apps/uploader/googlemobile/masf/InputStreamProvider;

    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumableRawRequest;->inputStreamProvider:Lcom/google/android/apps/uploader/googlemobile/masf/InputStreamProvider;

    invoke-interface {v0}, Lcom/google/android/apps/uploader/googlemobile/masf/InputStreamProvider;->dispose()V

    return-void
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumableRawRequest;->inputStreamProvider:Lcom/google/android/apps/uploader/googlemobile/masf/InputStreamProvider;

    invoke-interface {v0}, Lcom/google/android/apps/uploader/googlemobile/masf/InputStreamProvider;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getStreamLength()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumableRawRequest;->inputStreamProvider:Lcom/google/android/apps/uploader/googlemobile/masf/InputStreamProvider;

    invoke-interface {v0}, Lcom/google/android/apps/uploader/googlemobile/masf/InputStreamProvider;->getStreamLength()I

    move-result v0

    return v0
.end method
