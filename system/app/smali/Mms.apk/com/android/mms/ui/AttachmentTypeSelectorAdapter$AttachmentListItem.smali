.class public Lcom/android/mms/ui/AttachmentTypeSelectorAdapter$AttachmentListItem;
.super Lcom/android/mms/ui/IconListAdapter$IconListItem;
.source "AttachmentTypeSelectorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AttachmentListItem"
.end annotation


# instance fields
.field private mCommand:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .parameter "title"
    .parameter "resource"
    .parameter "command"

    .prologue
    .line 163
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/IconListAdapter$IconListItem;-><init>(Ljava/lang/String;I)V

    .line 165
    iput p3, p0, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter$AttachmentListItem;->mCommand:I

    .line 166
    return-void
.end method


# virtual methods
.method public getCommand()I
    .registers 2

    .prologue
    .line 169
    iget v0, p0, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter$AttachmentListItem;->mCommand:I

    return v0
.end method