.class Landroid/webkit/WebViewCore$TextSelectionData;
.super Ljava/lang/Object;
.source "WebViewCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TextSelectionData"
.end annotation


# instance fields
.field mEnd:I

.field mStart:I


# direct methods
.method public constructor <init>(II)V
    .registers 3
    .parameter "start"
    .parameter "end"

    .prologue
    .line 886
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 887
    iput p1, p0, Landroid/webkit/WebViewCore$TextSelectionData;->mStart:I

    .line 888
    iput p2, p0, Landroid/webkit/WebViewCore$TextSelectionData;->mEnd:I

    .line 889
    return-void
.end method
