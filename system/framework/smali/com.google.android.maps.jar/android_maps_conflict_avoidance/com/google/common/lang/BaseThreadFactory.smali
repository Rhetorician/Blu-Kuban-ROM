.class public Landroid_maps_conflict_avoidance/com/google/common/lang/BaseThreadFactory;
.super Ljava/lang/Object;
.source "BaseThreadFactory.java"

# interfaces
.implements Landroid_maps_conflict_avoidance/com/google/common/lang/ThreadFactory;


# instance fields
.field private created:I

.field private running:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/common/lang/BaseThreadFactory;->created:I

    .line 27
    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/common/lang/BaseThreadFactory;->running:I

    .line 73
    return-void
.end method
