.class Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;
.super Ljava/lang/Object;
.source "AgendaWindowAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/AgendaWindowAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QuerySpec"
.end annotation


# instance fields
.field end:I

.field goToTime:Landroid/text/format/Time;

.field queryStartMillis:J

.field queryType:I

.field start:I


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .parameter "queryType"

    .prologue
    .line 252
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 253
    iput p1, p0, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->queryType:I

    .line 254
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 9
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 273
    if-ne p0, p1, :cond_5

    .line 293
    :cond_4
    :goto_4
    return v1

    .line 275
    :cond_5
    if-nez p1, :cond_9

    move v1, v2

    .line 276
    goto :goto_4

    .line 277
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_15

    move v1, v2

    .line 278
    goto :goto_4

    :cond_15
    move-object v0, p1

    .line 279
    check-cast v0, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;

    .line 280
    .local v0, other:Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;
    iget v3, p0, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->end:I

    iget v4, v0, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->end:I

    if-ne v3, v4, :cond_32

    iget-wide v3, p0, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->queryStartMillis:J

    iget-wide v5, v0, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->queryStartMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_32

    iget v3, p0, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->queryType:I

    iget v4, v0, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->queryType:I

    if-ne v3, v4, :cond_32

    iget v3, p0, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->start:I

    iget v4, v0, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->start:I

    if-eq v3, v4, :cond_34

    :cond_32
    move v1, v2

    .line 282
    goto :goto_4

    .line 284
    :cond_34
    iget-object v3, p0, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->goToTime:Landroid/text/format/Time;

    if-eqz v3, :cond_4a

    .line 285
    iget-object v3, p0, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->goToTime:Landroid/text/format/Time;

    invoke-virtual {v3, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    iget-object v5, v0, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->goToTime:Landroid/text/format/Time;

    invoke-virtual {v5, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    move v1, v2

    .line 286
    goto :goto_4

    .line 289
    :cond_4a
    iget-object v3, v0, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->goToTime:Landroid/text/format/Time;

    if-eqz v3, :cond_4

    move v1, v2

    .line 290
    goto :goto_4
.end method

.method public hashCode()I
    .registers 11

    .prologue
    const/16 v9, 0x20

    .line 258
    const/16 v2, 0x1f

    .line 259
    .local v2, prime:I
    const/4 v3, 0x1

    .line 260
    .local v3, result:I
    iget v4, p0, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->end:I

    add-int/lit8 v3, v4, 0x1f

    .line 261
    mul-int/lit8 v4, v3, 0x1f

    iget-wide v5, p0, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->queryStartMillis:J

    iget-wide v7, p0, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->queryStartMillis:J

    ushr-long/2addr v7, v9

    xor-long/2addr v5, v7

    long-to-int v5, v5

    add-int v3, v4, v5

    .line 262
    mul-int/lit8 v4, v3, 0x1f

    iget v5, p0, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->queryType:I

    add-int v3, v4, v5

    .line 263
    mul-int/lit8 v4, v3, 0x1f

    iget v5, p0, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->start:I

    add-int v3, v4, v5

    .line 264
    iget-object v4, p0, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->goToTime:Landroid/text/format/Time;

    if-eqz v4, :cond_33

    .line 265
    iget-object v4, p0, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->goToTime:Landroid/text/format/Time;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    .line 266
    .local v0, goToTimeMillis:J
    mul-int/lit8 v4, v3, 0x1f

    ushr-long v5, v0, v9

    xor-long/2addr v5, v0

    long-to-int v5, v5

    add-int v3, v4, v5

    .line 268
    .end local v0           #goToTimeMillis:J
    :cond_33
    return v3
.end method