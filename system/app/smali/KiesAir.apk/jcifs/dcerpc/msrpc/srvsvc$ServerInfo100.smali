.class public Ljcifs/dcerpc/msrpc/srvsvc$ServerInfo100;
.super Ljcifs/dcerpc/ndr/NdrObject;
.source "srvsvc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/dcerpc/msrpc/srvsvc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServerInfo100"
.end annotation


# instance fields
.field public name:Ljava/lang/String;

.field public platform_id:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 437
    invoke-direct {p0}, Ljcifs/dcerpc/ndr/NdrObject;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .registers 4
    .parameter "_src"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    .prologue
    .line 454
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 455
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v1

    iput v1, p0, Ljcifs/dcerpc/msrpc/srvsvc$ServerInfo100;->platform_id:I

    .line 456
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    .line 458
    .local v0, _namep:I
    if-eqz v0, :cond_18

    .line 459
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 460
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_string()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljcifs/dcerpc/msrpc/srvsvc$ServerInfo100;->name:Ljava/lang/String;

    .line 463
    :cond_18
    return-void
.end method

.method public encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .registers 4
    .parameter "_dst"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    .prologue
    .line 443
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 444
    iget v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ServerInfo100;->platform_id:I

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 445
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ServerInfo100;->name:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 447
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ServerInfo100;->name:Ljava/lang/String;

    if-eqz v0, :cond_1a

    .line 448
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 449
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ServerInfo100;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_string(Ljava/lang/String;)V

    .line 452
    :cond_1a
    return-void
.end method