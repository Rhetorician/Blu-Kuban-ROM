.class public final Lcom/sec/android/widgetapp/apnews/engine/APNewsEngine$APNewsColumns;
.super Ljava/lang/Object;
.source "APNewsEngine.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/apnews/engine/APNewsEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "APNewsColumns"
.end annotation


# static fields
.field public static final TABLE_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    const-string v0, "content://ApNews/APNEWS_TABLE_AP_NEWS"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/widgetapp/apnews/engine/APNewsEngine$APNewsColumns;->TABLE_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method