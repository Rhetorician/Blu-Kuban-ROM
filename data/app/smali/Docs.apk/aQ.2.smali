.class public LaQ;
.super Ljava/lang/Object;
.source "ViewConfigurationCompat.java"


# static fields
.field static final a:LaT;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 58
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_e

    .line 59
    new-instance v0, LaS;

    invoke-direct {v0}, LaS;-><init>()V

    sput-object v0, LaQ;->a:LaT;

    .line 63
    :goto_d
    return-void

    .line 61
    :cond_e
    new-instance v0, LaR;

    invoke-direct {v0}, LaR;-><init>()V

    sput-object v0, LaQ;->a:LaT;

    goto :goto_d
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method public static a(Landroid/view/ViewConfiguration;)I
    .registers 2
    .parameter

    .prologue
    .line 73
    sget-object v0, LaQ;->a:LaT;

    invoke-interface {v0, p0}, LaT;->a(Landroid/view/ViewConfiguration;)I

    move-result v0

    return v0
.end method
