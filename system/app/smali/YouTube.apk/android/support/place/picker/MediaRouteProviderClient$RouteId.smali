.class public abstract Landroid/support/place/picker/MediaRouteProviderClient$RouteId;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mType:I


# direct methods
.method constructor <init>(I)V
    .registers 2
    .parameter

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Landroid/support/place/picker/MediaRouteProviderClient$RouteId;->mType:I

    .line 39
    return-void
.end method


# virtual methods
.method public getRouteIdType()I
    .registers 2

    .prologue
    .line 42
    iget v0, p0, Landroid/support/place/picker/MediaRouteProviderClient$RouteId;->mType:I

    return v0
.end method

.method public abstract getRouteIdValue()Ljava/lang/String;
.end method
