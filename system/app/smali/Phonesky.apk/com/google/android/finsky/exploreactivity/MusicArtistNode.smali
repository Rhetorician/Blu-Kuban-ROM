.class public Lcom/google/android/finsky/exploreactivity/MusicArtistNode;
.super Lcom/google/android/finsky/exploreactivity/DocumentNode;
.source "MusicArtistNode.java"

# interfaces
.implements Lcom/google/android/finsky/exploreactivity/DocWrapper$DocWrapperListener;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/exploreactivity/DocumentNode;Lcom/google/android/finsky/exploreactivity/DocWrapper;Lcom/google/android/finsky/exploreactivity/NodeController;Lcom/google/android/finsky/exploreactivity/DrawingUtils;Landroid/view/ViewGroup;)V
    .registers 6
    .parameter "parent"
    .parameter "doc"
    .parameter "nodeController"
    .parameter "drawingUtils"
    .parameter "uiComponents"

    .prologue
    .line 11
    invoke-direct/range {p0 .. p5}, Lcom/google/android/finsky/exploreactivity/DocumentNode;-><init>(Lcom/google/android/finsky/exploreactivity/DocumentNode;Lcom/google/android/finsky/exploreactivity/DocWrapper;Lcom/google/android/finsky/exploreactivity/NodeController;Lcom/google/android/finsky/exploreactivity/DrawingUtils;Landroid/view/ViewGroup;)V

    .line 12
    return-void
.end method
