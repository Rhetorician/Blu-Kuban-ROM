.class public interface abstract Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponseOrBuilder;
.super Ljava/lang/Object;
.source "Network.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GetStreamPhotosResponseOrBuilder"
.end annotation


# virtual methods
.method public abstract getPhoto(I)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
.end method

.method public abstract getPhotoCount()I
.end method

.method public abstract getPhotoList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;",
            ">;"
        }
    .end annotation
.end method
