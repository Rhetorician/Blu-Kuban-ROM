.class Lcom/google/googlenav/provider/c;
.super Lcom/google/googlenav/provider/b;
.source "SourceFile"


# instance fields
.field private final b:I

.field private final c:I

.field private final d:I


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .registers 4
    .parameter

    .prologue
    .line 270
    invoke-direct {p0, p1}, Lcom/google/googlenav/provider/b;-><init>(Landroid/database/Cursor;)V

    .line 273
    iget-object v0, p0, Lcom/google/googlenav/provider/c;->a:Landroid/database/Cursor;

    const-string v1, "contacts_accessor_contact_display_name"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/provider/c;->b:I

    .line 275
    iget-object v0, p0, Lcom/google/googlenav/provider/c;->a:Landroid/database/Cursor;

    const-string v1, "contacts_accessor_formatted_address"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/provider/c;->c:I

    .line 277
    iget-object v0, p0, Lcom/google/googlenav/provider/c;->a:Landroid/database/Cursor;

    const-string v1, "contacts_accessor_contact_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/provider/c;->d:I

    .line 278
    return-void
.end method


# virtual methods
.method public getInt(I)I
    .registers 3
    .parameter

    .prologue
    .line 337
    const v0, 0xbebc200

    return v0
.end method

.method public getLong(I)J
    .registers 4
    .parameter

    .prologue
    .line 283
    iget v0, p0, Lcom/google/googlenav/provider/c;->mPos:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_17

    .line 286
    iget-object v0, p0, Lcom/google/googlenav/provider/c;->a:Landroid/database/Cursor;

    iget v1, p0, Lcom/google/googlenav/provider/c;->mPos:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 289
    if-nez p1, :cond_17

    .line 290
    iget-object v0, p0, Lcom/google/googlenav/provider/c;->a:Landroid/database/Cursor;

    iget v1, p0, Lcom/google/googlenav/provider/c;->d:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 293
    :goto_16
    return-wide v0

    :cond_17
    const-wide/16 v0, 0x0

    goto :goto_16
.end method

.method public getString(I)Ljava/lang/String;
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 298
    .line 301
    iget v0, p0, Lcom/google/googlenav/provider/c;->mPos:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_5a

    .line 304
    iget-object v0, p0, Lcom/google/googlenav/provider/c;->a:Landroid/database/Cursor;

    iget v2, p0, Lcom/google/googlenav/provider/c;->mPos:I

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 305
    const/4 v0, 0x1

    if-ne p1, v0, :cond_23

    .line 307
    iget-object v0, p0, Lcom/google/googlenav/provider/c;->a:Landroid/database/Cursor;

    iget v1, p0, Lcom/google/googlenav/provider/c;->b:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 327
    :cond_18
    :goto_18
    if-eqz v0, :cond_22

    .line 328
    const-string v1, "\\s"

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 330
    :cond_22
    :goto_22
    return-object v0

    .line 308
    :cond_23
    const/4 v0, 0x2

    if-ne p1, v0, :cond_44

    .line 309
    iget-object v0, p0, Lcom/google/googlenav/provider/c;->a:Landroid/database/Cursor;

    iget v2, p0, Lcom/google/googlenav/provider/c;->b:I

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 312
    if-eqz v2, :cond_5a

    .line 314
    iget-object v0, p0, Lcom/google/googlenav/provider/c;->a:Landroid/database/Cursor;

    iget v3, p0, Lcom/google/googlenav/provider/c;->c:I

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 315
    if-eqz v2, :cond_42

    if-eqz v0, :cond_18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    :cond_42
    move-object v0, v1

    .line 316
    goto :goto_18

    .line 319
    :cond_44
    const/4 v0, 0x3

    if-ne p1, v0, :cond_50

    .line 321
    iget-object v0, p0, Lcom/google/googlenav/provider/c;->a:Landroid/database/Cursor;

    iget v1, p0, Lcom/google/googlenav/provider/c;->c:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    .line 322
    :cond_50
    const/4 v0, 0x4

    if-ne p1, v0, :cond_5a

    .line 323
    sget-object v0, Landroid/provider/Contacts$ContactMethods;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_22

    :cond_5a
    move-object v0, v1

    goto :goto_18
.end method
