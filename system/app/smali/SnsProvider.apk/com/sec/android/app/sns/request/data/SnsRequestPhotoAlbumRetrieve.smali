.class public Lcom/sec/android/app/sns/request/data/SnsRequestPhotoAlbumRetrieve;
.super Lcom/sec/android/app/sns/request/data/SnsRequest;
.source "SnsRequestPhotoAlbumRetrieve.java"


# instance fields
.field private mAlbumID:Ljava/lang/String;

.field private mMaxCount:I

.field private mPeopleID:Ljava/lang/String;

.field private mStartContext:Ljava/lang/String;

.field private mStartOffset:I


# virtual methods
.method public getAlbumID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoAlbumRetrieve;->mAlbumID:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxCount()I
    .registers 2

    .prologue
    .line 68
    iget v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoAlbumRetrieve;->mMaxCount:I

    return v0
.end method

.method public getPeopleID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoAlbumRetrieve;->mPeopleID:Ljava/lang/String;

    return-object v0
.end method

.method public getStartContext()Ljava/lang/String;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoAlbumRetrieve;->mStartContext:Ljava/lang/String;

    return-object v0
.end method

.method public getStartOffset()I
    .registers 2

    .prologue
    .line 64
    iget v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoAlbumRetrieve;->mStartOffset:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 77
    invoke-static {}, Lcom/sec/android/app/sns/util/SnsUtil;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_76

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": mAlbumID = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoAlbumRetrieve;->mAlbumID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "],"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mPeopleID = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoAlbumRetrieve;->mPeopleID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "],"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mStartOffset = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoAlbumRetrieve;->mStartOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "],"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mMaxCount = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoAlbumRetrieve;->mMaxCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "],"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mStartContext = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoAlbumRetrieve;->mStartContext:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 82
    :goto_75
    return-object v0

    :cond_76
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_75
.end method