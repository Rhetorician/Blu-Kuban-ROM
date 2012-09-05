.class final Ltwitter4j/TweetJSONImpl;
.super Ljava/lang/Object;
.source "TweetJSONImpl.java"

# interfaces
.implements Ltwitter4j/Tweet;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x29e6a7eb8de21fb1L


# instance fields
.field private annotations:Ltwitter4j/Annotations;

.field private createdAt:Ljava/util/Date;

.field private fromUser:Ljava/lang/String;

.field private fromUserId:J

.field private geoLocation:Ltwitter4j/GeoLocation;

.field private id:J

.field private isoLanguageCode:Ljava/lang/String;

.field private location:Ljava/lang/String;

.field private place:Ltwitter4j/Place;

.field private profileImageUrl:Ljava/lang/String;

.field private source:Ljava/lang/String;

.field private text:Ljava/lang/String;

.field private toUser:Ljava/lang/String;

.field private toUserId:J


# direct methods
.method constructor <init>(Lorg/json/JSONObject;)V
    .registers 7
    .parameter "tweet"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Ltwitter4j/TweetJSONImpl;->toUserId:J

    .line 41
    iput-object v4, p0, Ltwitter4j/TweetJSONImpl;->toUser:Ljava/lang/String;

    .line 45
    iput-object v4, p0, Ltwitter4j/TweetJSONImpl;->isoLanguageCode:Ljava/lang/String;

    .line 52
    iput-object v4, p0, Ltwitter4j/TweetJSONImpl;->geoLocation:Ltwitter4j/GeoLocation;

    .line 53
    iput-object v4, p0, Ltwitter4j/TweetJSONImpl;->annotations:Ltwitter4j/Annotations;

    .line 56
    const-string v2, "text"

    invoke-static {v2, p1}, Ltwitter4j/internal/util/ParseUtil;->getUnescapedString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/TweetJSONImpl;->text:Ljava/lang/String;

    .line 57
    const-string v2, "to_user_id"

    invoke-static {v2, p1}, Ltwitter4j/internal/util/ParseUtil;->getLong(Ljava/lang/String;Lorg/json/JSONObject;)J

    move-result-wide v2

    iput-wide v2, p0, Ltwitter4j/TweetJSONImpl;->toUserId:J

    .line 58
    const-string v2, "to_user"

    invoke-static {v2, p1}, Ltwitter4j/internal/util/ParseUtil;->getRawString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/TweetJSONImpl;->toUser:Ljava/lang/String;

    .line 59
    const-string v2, "from_user"

    invoke-static {v2, p1}, Ltwitter4j/internal/util/ParseUtil;->getRawString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/TweetJSONImpl;->fromUser:Ljava/lang/String;

    .line 60
    const-string v2, "id"

    invoke-static {v2, p1}, Ltwitter4j/internal/util/ParseUtil;->getLong(Ljava/lang/String;Lorg/json/JSONObject;)J

    move-result-wide v2

    iput-wide v2, p0, Ltwitter4j/TweetJSONImpl;->id:J

    .line 61
    const-string v2, "from_user_id"

    invoke-static {v2, p1}, Ltwitter4j/internal/util/ParseUtil;->getLong(Ljava/lang/String;Lorg/json/JSONObject;)J

    move-result-wide v2

    iput-wide v2, p0, Ltwitter4j/TweetJSONImpl;->fromUserId:J

    .line 62
    const-string v2, "iso_language_code"

    invoke-static {v2, p1}, Ltwitter4j/internal/util/ParseUtil;->getRawString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/TweetJSONImpl;->isoLanguageCode:Ljava/lang/String;

    .line 63
    const-string v2, "source"

    invoke-static {v2, p1}, Ltwitter4j/internal/util/ParseUtil;->getUnescapedString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/TweetJSONImpl;->source:Ljava/lang/String;

    .line 64
    const-string v2, "profile_image_url"

    invoke-static {v2, p1}, Ltwitter4j/internal/util/ParseUtil;->getUnescapedString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/TweetJSONImpl;->profileImageUrl:Ljava/lang/String;

    .line 65
    const-string v2, "created_at"

    const-string v3, "EEE, dd MMM yyyy HH:mm:ss z"

    invoke-static {v2, p1, v3}, Ltwitter4j/internal/util/ParseUtil;->getDate(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/TweetJSONImpl;->createdAt:Ljava/util/Date;

    .line 66
    const-string v2, "location"

    invoke-static {v2, p1}, Ltwitter4j/internal/util/ParseUtil;->getRawString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/TweetJSONImpl;->location:Ljava/lang/String;

    .line 67
    invoke-static {p1}, Ltwitter4j/GeoLocation;->getInstance(Lorg/json/JSONObject;)Ltwitter4j/GeoLocation;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/TweetJSONImpl;->geoLocation:Ltwitter4j/GeoLocation;

    .line 68
    const-string v2, "annotations"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_85

    .line 70
    :try_start_78
    const-string v2, "annotations"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 71
    .local v0, annotationsArray:Lorg/json/JSONArray;
    new-instance v2, Ltwitter4j/Annotations;

    invoke-direct {v2, v0}, Ltwitter4j/Annotations;-><init>(Lorg/json/JSONArray;)V

    iput-object v2, p0, Ltwitter4j/TweetJSONImpl;->annotations:Ltwitter4j/Annotations;
    :try_end_85
    .catch Lorg/json/JSONException; {:try_start_78 .. :try_end_85} :catch_a5

    .line 75
    .end local v0           #annotationsArray:Lorg/json/JSONArray;
    :cond_85
    :goto_85
    const-string v2, "place"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a2

    .line 77
    :try_start_8d
    new-instance v2, Ltwitter4j/PlaceJSONImpl;

    const-string v3, "place"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v2, v3}, Ltwitter4j/PlaceJSONImpl;-><init>(Lorg/json/JSONObject;)V

    iput-object v2, p0, Ltwitter4j/TweetJSONImpl;->place:Ltwitter4j/Place;
    :try_end_9a
    .catch Lorg/json/JSONException; {:try_start_8d .. :try_end_9a} :catch_9b

    .line 84
    :goto_9a
    return-void

    .line 78
    :catch_9b
    move-exception v1

    .line 79
    .local v1, jsone:Lorg/json/JSONException;
    new-instance v2, Ltwitter4j/TwitterException;

    invoke-direct {v2, v1}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 82
    .end local v1           #jsone:Lorg/json/JSONException;
    :cond_a2
    iput-object v4, p0, Ltwitter4j/TweetJSONImpl;->place:Ltwitter4j/Place;

    goto :goto_9a

    .line 72
    :catch_a5
    move-exception v2

    goto :goto_85
.end method

.method constructor <init>(Lorg/json/JSONObject;Ltwitter4j/conf/Configuration;)V
    .registers 4
    .parameter "tweet"
    .parameter "conf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-direct {p0, p1}, Ltwitter4j/TweetJSONImpl;-><init>(Lorg/json/JSONObject;)V

    .line 88
    invoke-interface {p2}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 89
    invoke-static {p0, p1}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    :cond_c
    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 37
    check-cast p1, Ltwitter4j/Tweet;

    .end local p1
    invoke-virtual {p0, p1}, Ltwitter4j/TweetJSONImpl;->compareTo(Ltwitter4j/Tweet;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ltwitter4j/Tweet;)I
    .registers 8
    .parameter "that"

    .prologue
    .line 94
    iget-wide v2, p0, Ltwitter4j/TweetJSONImpl;->id:J

    invoke-interface {p1}, Ltwitter4j/Tweet;->getId()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 95
    .local v0, delta:J
    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-gez v2, :cond_12

    .line 96
    const/high16 v2, -0x8000

    .line 100
    :goto_11
    return v2

    .line 97
    :cond_12
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_1d

    .line 98
    const v2, 0x7fffffff

    goto :goto_11

    .line 100
    :cond_1d
    long-to-int v2, v0

    goto :goto_11
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 203
    if-ne p0, p1, :cond_5

    .line 210
    :cond_4
    :goto_4
    return v1

    .line 204
    :cond_5
    instance-of v3, p1, Ltwitter4j/Tweet;

    if-nez v3, :cond_b

    move v1, v2

    goto :goto_4

    :cond_b
    move-object v0, p1

    .line 206
    check-cast v0, Ltwitter4j/Tweet;

    .line 208
    .local v0, tweet:Ltwitter4j/Tweet;
    iget-wide v3, p0, Ltwitter4j/TweetJSONImpl;->id:J

    invoke-interface {v0}, Ltwitter4j/Tweet;->getId()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    move v1, v2

    goto :goto_4
.end method

.method public getAnnotations()Ltwitter4j/Annotations;
    .registers 2

    .prologue
    .line 198
    iget-object v0, p0, Ltwitter4j/TweetJSONImpl;->annotations:Ltwitter4j/Annotations;

    return-object v0
.end method

.method public getCreatedAt()Ljava/util/Date;
    .registers 2

    .prologue
    .line 170
    iget-object v0, p0, Ltwitter4j/TweetJSONImpl;->createdAt:Ljava/util/Date;

    return-object v0
.end method

.method public getFromUser()Ljava/lang/String;
    .registers 2

    .prologue
    .line 128
    iget-object v0, p0, Ltwitter4j/TweetJSONImpl;->fromUser:Ljava/lang/String;

    return-object v0
.end method

.method public getFromUserId()J
    .registers 3

    .prologue
    .line 142
    iget-wide v0, p0, Ltwitter4j/TweetJSONImpl;->fromUserId:J

    return-wide v0
.end method

.method public getGeoLocation()Ltwitter4j/GeoLocation;
    .registers 2

    .prologue
    .line 177
    iget-object v0, p0, Ltwitter4j/TweetJSONImpl;->geoLocation:Ltwitter4j/GeoLocation;

    return-object v0
.end method

.method public getId()J
    .registers 3

    .prologue
    .line 135
    iget-wide v0, p0, Ltwitter4j/TweetJSONImpl;->id:J

    return-wide v0
.end method

.method public getIsoLanguageCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 149
    iget-object v0, p0, Ltwitter4j/TweetJSONImpl;->isoLanguageCode:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .registers 2

    .prologue
    .line 184
    iget-object v0, p0, Ltwitter4j/TweetJSONImpl;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getPlace()Ltwitter4j/Place;
    .registers 2

    .prologue
    .line 191
    iget-object v0, p0, Ltwitter4j/TweetJSONImpl;->place:Ltwitter4j/Place;

    return-object v0
.end method

.method public getProfileImageUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 163
    iget-object v0, p0, Ltwitter4j/TweetJSONImpl;->profileImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .registers 2

    .prologue
    .line 156
    iget-object v0, p0, Ltwitter4j/TweetJSONImpl;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Ltwitter4j/TweetJSONImpl;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getToUser()Ljava/lang/String;
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Ltwitter4j/TweetJSONImpl;->toUser:Ljava/lang/String;

    return-object v0
.end method

.method public getToUserId()J
    .registers 3

    .prologue
    .line 114
    iget-wide v0, p0, Ltwitter4j/TweetJSONImpl;->toUserId:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 9

    .prologue
    const/16 v7, 0x20

    const/4 v1, 0x0

    .line 215
    iget-object v2, p0, Ltwitter4j/TweetJSONImpl;->text:Ljava/lang/String;

    if-eqz v2, :cond_bb

    iget-object v2, p0, Ltwitter4j/TweetJSONImpl;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 216
    .local v0, result:I
    :goto_d
    mul-int/lit8 v2, v0, 0x1f

    iget-wide v3, p0, Ltwitter4j/TweetJSONImpl;->toUserId:J

    iget-wide v5, p0, Ltwitter4j/TweetJSONImpl;->toUserId:J

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int v0, v2, v3

    .line 217
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/TweetJSONImpl;->toUser:Ljava/lang/String;

    if-eqz v2, :cond_be

    iget-object v2, p0, Ltwitter4j/TweetJSONImpl;->toUser:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_24
    add-int v0, v3, v2

    .line 218
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/TweetJSONImpl;->fromUser:Ljava/lang/String;

    if-eqz v2, :cond_c1

    iget-object v2, p0, Ltwitter4j/TweetJSONImpl;->fromUser:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_32
    add-int v0, v3, v2

    .line 219
    mul-int/lit8 v2, v0, 0x1f

    iget-wide v3, p0, Ltwitter4j/TweetJSONImpl;->id:J

    iget-wide v5, p0, Ltwitter4j/TweetJSONImpl;->id:J

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int v0, v2, v3

    .line 220
    mul-int/lit8 v2, v0, 0x1f

    iget-wide v3, p0, Ltwitter4j/TweetJSONImpl;->fromUserId:J

    iget-wide v5, p0, Ltwitter4j/TweetJSONImpl;->fromUserId:J

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int v0, v2, v3

    .line 221
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/TweetJSONImpl;->isoLanguageCode:Ljava/lang/String;

    if-eqz v2, :cond_c4

    iget-object v2, p0, Ltwitter4j/TweetJSONImpl;->isoLanguageCode:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_56
    add-int v0, v3, v2

    .line 222
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/TweetJSONImpl;->source:Ljava/lang/String;

    if-eqz v2, :cond_c6

    iget-object v2, p0, Ltwitter4j/TweetJSONImpl;->source:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_64
    add-int v0, v3, v2

    .line 223
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/TweetJSONImpl;->profileImageUrl:Ljava/lang/String;

    if-eqz v2, :cond_c8

    iget-object v2, p0, Ltwitter4j/TweetJSONImpl;->profileImageUrl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_72
    add-int v0, v3, v2

    .line 224
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/TweetJSONImpl;->createdAt:Ljava/util/Date;

    if-eqz v2, :cond_ca

    iget-object v2, p0, Ltwitter4j/TweetJSONImpl;->createdAt:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->hashCode()I

    move-result v2

    :goto_80
    add-int v0, v3, v2

    .line 225
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/TweetJSONImpl;->location:Ljava/lang/String;

    if-eqz v2, :cond_cc

    iget-object v2, p0, Ltwitter4j/TweetJSONImpl;->location:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_8e
    add-int v0, v3, v2

    .line 226
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/TweetJSONImpl;->place:Ltwitter4j/Place;

    if-eqz v2, :cond_ce

    iget-object v2, p0, Ltwitter4j/TweetJSONImpl;->place:Ltwitter4j/Place;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_9c
    add-int v0, v3, v2

    .line 227
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/TweetJSONImpl;->geoLocation:Ltwitter4j/GeoLocation;

    if-eqz v2, :cond_d0

    iget-object v2, p0, Ltwitter4j/TweetJSONImpl;->geoLocation:Ltwitter4j/GeoLocation;

    invoke-virtual {v2}, Ltwitter4j/GeoLocation;->hashCode()I

    move-result v2

    :goto_aa
    add-int v0, v3, v2

    .line 228
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Ltwitter4j/TweetJSONImpl;->annotations:Ltwitter4j/Annotations;

    if-eqz v3, :cond_b8

    iget-object v1, p0, Ltwitter4j/TweetJSONImpl;->annotations:Ltwitter4j/Annotations;

    invoke-virtual {v1}, Ltwitter4j/Annotations;->hashCode()I

    move-result v1

    :cond_b8
    add-int v0, v2, v1

    .line 229
    return v0

    .end local v0           #result:I
    :cond_bb
    move v0, v1

    .line 215
    goto/16 :goto_d

    .restart local v0       #result:I
    :cond_be
    move v2, v1

    .line 217
    goto/16 :goto_24

    :cond_c1
    move v2, v1

    .line 218
    goto/16 :goto_32

    :cond_c4
    move v2, v1

    .line 221
    goto :goto_56

    :cond_c6
    move v2, v1

    .line 222
    goto :goto_64

    :cond_c8
    move v2, v1

    .line 223
    goto :goto_72

    :cond_ca
    move v2, v1

    .line 224
    goto :goto_80

    :cond_cc
    move v2, v1

    .line 225
    goto :goto_8e

    :cond_ce
    move v2, v1

    .line 226
    goto :goto_9c

    :cond_d0
    move v2, v1

    .line 227
    goto :goto_aa
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    const/16 v3, 0x27

    .line 234
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "TweetJSONImpl{text=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TweetJSONImpl;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", toUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v1, p0, Ltwitter4j/TweetJSONImpl;->toUserId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", toUser=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TweetJSONImpl;->toUser:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", fromUser=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TweetJSONImpl;->fromUser:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v1, p0, Ltwitter4j/TweetJSONImpl;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", fromUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v1, p0, Ltwitter4j/TweetJSONImpl;->fromUserId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", isoLanguageCode=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TweetJSONImpl;->isoLanguageCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", source=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TweetJSONImpl;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", profileImageUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TweetJSONImpl;->profileImageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", createdAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TweetJSONImpl;->createdAt:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", location=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TweetJSONImpl;->location:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", place="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TweetJSONImpl;->place:Ltwitter4j/Place;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", geoLocation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TweetJSONImpl;->geoLocation:Ltwitter4j/GeoLocation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", annotations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TweetJSONImpl;->annotations:Ltwitter4j/Annotations;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
