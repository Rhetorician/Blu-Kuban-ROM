.class public Lcom/google/chrome/bookmarks/sync/api/data/Folder;
.super Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem;
.source "Folder.java"


# direct methods
.method public static newDeleteBuilder()Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$DeleteBuilder;
    .registers 1

    .prologue
    .line 32
    new-instance v0, Lcom/google/chrome/bookmarks/sync/api/data/Folder$3;

    invoke-direct {v0}, Lcom/google/chrome/bookmarks/sync/api/data/Folder$3;-><init>()V

    return-object v0
.end method

.method public static newInsertBuilder()Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$InsertBuilder;
    .registers 1

    .prologue
    .line 12
    new-instance v0, Lcom/google/chrome/bookmarks/sync/api/data/Folder$1;

    invoke-direct {v0}, Lcom/google/chrome/bookmarks/sync/api/data/Folder$1;-><init>()V

    return-object v0
.end method

.method public static newModifyBuilder()Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$ModifyBuilder;
    .registers 1

    .prologue
    .line 22
    new-instance v0, Lcom/google/chrome/bookmarks/sync/api/data/Folder$2;

    invoke-direct {v0}, Lcom/google/chrome/bookmarks/sync/api/data/Folder$2;-><init>()V

    return-object v0
.end method
