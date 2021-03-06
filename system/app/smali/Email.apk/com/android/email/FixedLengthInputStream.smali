.class public Lcom/android/email/FixedLengthInputStream;
.super Ljava/io/InputStream;
.source "FixedLengthInputStream.java"


# instance fields
.field private mCount:I

.field private final mIn:Ljava/io/InputStream;

.field private final mLength:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;I)V
    .registers 3
    .parameter "in"
    .parameter "length"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/email/FixedLengthInputStream;->mIn:Ljava/io/InputStream;

    .line 34
    iput p2, p0, Lcom/android/email/FixedLengthInputStream;->mLength:I

    .line 35
    return-void
.end method


# virtual methods
.method public available()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    iget v0, p0, Lcom/android/email/FixedLengthInputStream;->mLength:I

    iget v1, p0, Lcom/android/email/FixedLengthInputStream;->mCount:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getLength()I
    .registers 2

    .prologue
    .line 73
    iget v0, p0, Lcom/android/email/FixedLengthInputStream;->mLength:I

    return v0
.end method

.method public read()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    iget v0, p0, Lcom/android/email/FixedLengthInputStream;->mCount:I

    iget v1, p0, Lcom/android/email/FixedLengthInputStream;->mLength:I

    if-ge v0, v1, :cond_13

    .line 45
    iget v0, p0, Lcom/android/email/FixedLengthInputStream;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/email/FixedLengthInputStream;->mCount:I

    .line 46
    iget-object v0, p0, Lcom/android/email/FixedLengthInputStream;->mIn:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 48
    :goto_12
    return v0

    :cond_13
    const/4 v0, -0x1

    goto :goto_12
.end method

.method public read([B)I
    .registers 4
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/email/FixedLengthInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 9
    .parameter "b"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 54
    iget v2, p0, Lcom/android/email/FixedLengthInputStream;->mCount:I

    iget v3, p0, Lcom/android/email/FixedLengthInputStream;->mLength:I

    if-ge v2, v3, :cond_20

    .line 55
    iget-object v2, p0, Lcom/android/email/FixedLengthInputStream;->mIn:Ljava/io/InputStream;

    iget v3, p0, Lcom/android/email/FixedLengthInputStream;->mLength:I

    iget v4, p0, Lcom/android/email/FixedLengthInputStream;->mCount:I

    sub-int/2addr v3, v4

    invoke-static {v3, p3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v2, p1, p2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 56
    .local v0, d:I
    if-ne v0, v1, :cond_1a

    move v0, v1

    .line 63
    .end local v0           #d:I
    :goto_19
    return v0

    .line 59
    .restart local v0       #d:I
    :cond_1a
    iget v1, p0, Lcom/android/email/FixedLengthInputStream;->mCount:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/email/FixedLengthInputStream;->mCount:I

    goto :goto_19

    .end local v0           #d:I
    :cond_20
    move v0, v1

    .line 63
    goto :goto_19
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 78
    const-string v0, "FixedLengthInputStream(in=%s, length=%d)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/email/FixedLengthInputStream;->mIn:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/email/FixedLengthInputStream;->mLength:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
