.class public abstract Lcom/google/android/music/dl/cache/CacheStrategy;
.super Ljava/lang/Object;
.source "CacheStrategy.java"


# instance fields
.field protected final LOGV:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, "MusicCache"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/music/dl/cache/CacheStrategy;->LOGV:Z

    return-void
.end method


# virtual methods
.method public abstract findSpaceForCacheFile(Lcom/google/android/music/dl/DownloadOrder;Lcom/google/android/music/dl/cache/CacheLocation;)J
.end method
