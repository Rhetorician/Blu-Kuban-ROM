.class final Lcom/wssnps/database/smlBackupRestoreItem$3;
.super Ljava/lang/Object;
.source "smlBackupRestoreItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wssnps/database/smlBackupRestoreItem;->smlBRBackupReady(Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 757
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .prologue
    .line 760
    invoke-static {}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRMessageBackup()V

    .line 761
    return-void
.end method