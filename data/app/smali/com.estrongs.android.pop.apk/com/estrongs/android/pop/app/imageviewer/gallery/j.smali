.class Lcom/estrongs/android/pop/app/imageviewer/gallery/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/pop/app/imageviewer/gallery/e;


# instance fields
.field private final a:Landroid/net/Uri;

.field private final b:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

.field private final c:Landroid/content/ContentResolver;

.field private d:J

.field private e:I


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/imageviewer/gallery/f;Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .registers 10

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/pop/app/imageviewer/gallery/j;-><init>(Lcom/estrongs/android/pop/app/imageviewer/gallery/f;Landroid/content/ContentResolver;Landroid/net/Uri;J)V

    return-void
.end method

.method constructor <init>(Lcom/estrongs/android/pop/app/imageviewer/gallery/f;Landroid/content/ContentResolver;Landroid/net/Uri;J)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/j;->e:I

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/j;->b:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/j;->c:Landroid/content/ContentResolver;

    iput-object p3, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/j;->a:Landroid/net/Uri;

    iput-wide p4, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/j;->d:J

    return-void
.end method

.method private b()Ljava/io/InputStream;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/j;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/j;->a:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    :goto_19
    return-object v0

    :cond_1a
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/j;->c:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/j;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_21
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_21} :catch_23

    move-result-object v0

    goto :goto_19

    :catch_23
    move-exception v0

    const/4 v0, 0x0

    goto :goto_19
.end method

.method private h()Landroid/os/ParcelFileDescriptor;
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/j;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/j;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x1000

    invoke-static {v1, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    :goto_1f
    return-object v0

    :cond_20
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/j;->c:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/j;->a:Landroid/net/Uri;

    const-string v2, "r"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_29
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_29} :catch_2b

    move-result-object v0

    goto :goto_1f

    :catch_2b
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1f
.end method

.method private l()Landroid/graphics/BitmapFactory$Options;
    .registers 5

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/j;->h()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    if-nez v1, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    :try_start_8
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {}, Lcom/estrongs/android/pop/app/imageviewer/BitmapManager;->a()Lcom/estrongs/android/pop/app/imageviewer/BitmapManager;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/estrongs/android/pop/app/imageviewer/BitmapManager;->a(Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_1f

    invoke-static {v1}, Lcom/estrongs/android/pop/app/imageviewer/as;->a(Landroid/os/ParcelFileDescriptor;)V

    goto :goto_7

    :catchall_1f
    move-exception v0

    invoke-static {v1}, Lcom/estrongs/android/pop/app/imageviewer/as;->a(Landroid/os/ParcelFileDescriptor;)V

    throw v0
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/j;->e:I

    return v0
.end method

.method public a(II)Landroid/graphics/Bitmap;
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/j;->a(IIZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public a(IIZ)Landroid/graphics/Bitmap;
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/j;->a(IIZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public a(IIZZ)Landroid/graphics/Bitmap;
    .registers 8

    :try_start_0
    invoke-direct {p0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/j;->h()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-static {p1, p2, v0, p4}, Lcom/estrongs/android/pop/app/imageviewer/as;->a(IILandroid/os/ParcelFileDescriptor;Z)Landroid/graphics/Bitmap;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v0

    :goto_8
    return-object v0

    :catch_9
    move-exception v0

    const-string v1, "UriImage"

    const-string v2, "got exception decoding bitmap "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_8
.end method

.method public a(Z)Landroid/graphics/Bitmap;
    .registers 4

    const/16 v0, 0x140

    const v1, 0x17700

    invoke-virtual {p0, v0, v1, p1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/j;->a(IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/j;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/j;->a:Landroid/net/Uri;

    return-object v0
.end method

.method public e()Ljava/io/InputStream;
    .registers 2

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/j;->b()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public f()Landroid/graphics/Bitmap;
    .registers 4

    const/16 v0, 0x60

    const/16 v1, 0x2584

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/estrongs/android/pop/app/imageviewer/gallery/j;->a(IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/j;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .registers 3

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/j;->l()Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v1, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    if-eqz v1, :cond_d

    iget-object v0, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    :goto_c
    return-object v0

    :cond_d
    const-string v0, ""

    goto :goto_c
.end method

.method public j()I
    .registers 2

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/j;->l()Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    if-eqz v0, :cond_9

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public k()I
    .registers 2

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/j;->l()Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    if-eqz v0, :cond_9

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public m()J
    .registers 3

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/j;->d:J

    return-wide v0
.end method
