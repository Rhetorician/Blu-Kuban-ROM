.class public final Lcom/google/android/partnersetup/RlzProtocol$Events;
.super Ljava/lang/Object;
.source "RlzProtocol.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/partnersetup/RlzProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Events"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 231
    const-string v0, "content://com.google.android.partnersetup.rlzprovider/events"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/partnersetup/RlzProtocol$Events;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getResourceIdForStatus(I)I
    .registers 2
    .parameter "id"

    .prologue
    .line 272
    packed-switch p0, :pswitch_data_10

    .line 278
    const v0, 0x7f030003

    :goto_6
    return v0

    .line 274
    :pswitch_7
    const v0, 0x7f030020

    goto :goto_6

    .line 276
    :pswitch_b
    const v0, 0x7f030021

    goto :goto_6

    .line 272
    nop

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_7
        :pswitch_b
    .end packed-switch
.end method
