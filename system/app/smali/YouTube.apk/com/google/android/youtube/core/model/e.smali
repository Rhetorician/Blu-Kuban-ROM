.class public final Lcom/google/android/youtube/core/model/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/google/android/youtube/core/model/e;->a:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcom/google/android/youtube/core/model/e;->b:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lcom/google/android/youtube/core/model/e;->c:Ljava/lang/String;

    .line 42
    iput-object p4, p0, Lcom/google/android/youtube/core/model/e;->d:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 47
    instance-of v0, p1, Lcom/google/android/youtube/core/model/e;

    if-eqz v0, :cond_36

    move-object v0, p1

    .line 48
    check-cast v0, Lcom/google/android/youtube/core/model/e;

    .line 49
    if-eq p1, p0, :cond_32

    iget-object v2, p0, Lcom/google/android/youtube/core/model/e;->a:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/youtube/core/model/e;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_34

    iget-object v2, p0, Lcom/google/android/youtube/core/model/e;->b:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/youtube/core/model/e;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_34

    iget-object v2, p0, Lcom/google/android/youtube/core/model/e;->c:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/youtube/core/model/e;->c:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_34

    iget-object v2, p0, Lcom/google/android/youtube/core/model/e;->d:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/e;->d:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_34

    :cond_32
    const/4 v0, 0x1

    .line 55
    :goto_33
    return v0

    :cond_34
    move v0, v1

    .line 49
    goto :goto_33

    :cond_36
    move v0, v1

    .line 55
    goto :goto_33
.end method

.method public final hashCode()I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 60
    iget-object v0, p0, Lcom/google/android/youtube/core/model/e;->a:Ljava/lang/String;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/google/android/youtube/core/model/e;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_b
    add-int/lit16 v0, v0, -0x275

    .line 62
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/google/android/youtube/core/model/e;->b:Ljava/lang/String;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/google/android/youtube/core/model/e;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_19
    add-int/2addr v0, v2

    .line 63
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/google/android/youtube/core/model/e;->c:Ljava/lang/String;

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/google/android/youtube/core/model/e;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_26
    add-int/2addr v0, v2

    .line 64
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/google/android/youtube/core/model/e;->d:Ljava/lang/String;

    if-eqz v2, :cond_33

    iget-object v1, p0, Lcom/google/android/youtube/core/model/e;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_33
    add-int/2addr v0, v1

    .line 65
    return v0

    :cond_35
    move v0, v1

    .line 60
    goto :goto_b

    :cond_37
    move v0, v1

    .line 62
    goto :goto_19

    :cond_39
    move v0, v1

    .line 63
    goto :goto_26
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{domain:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/youtube/core/model/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",location:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/e;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",internalReason:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/e;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
