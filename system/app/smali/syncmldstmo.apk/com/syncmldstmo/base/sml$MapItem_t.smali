.class public Lcom/syncmldstmo/base/sml$MapItem_t;
.super Ljava/lang/Object;
.source "sml.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syncmldstmo/base/sml;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MapItem_t"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public guid:Ljava/lang/String;

.field public luid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method