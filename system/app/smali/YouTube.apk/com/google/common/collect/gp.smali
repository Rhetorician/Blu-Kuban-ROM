.class final Lcom/google/common/collect/gp;
.super Lcom/google/common/collect/gm;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/gg;


# instance fields
.field volatile e:J

.field f:Lcom/google/common/collect/gg;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field

.field g:Lcom/google/common/collect/gg;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field

.field h:Lcom/google/common/collect/gg;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field

.field i:Lcom/google/common/collect/gg;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;ILcom/google/common/collect/gg;)V
    .registers 6
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 1148
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/gm;-><init>(Ljava/lang/Object;ILcom/google/common/collect/gg;)V

    .line 1153
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/common/collect/gp;->e:J

    .line 1165
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->nullEntry()Lcom/google/common/collect/gg;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/gp;->f:Lcom/google/common/collect/gg;

    .line 1178
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->nullEntry()Lcom/google/common/collect/gg;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/gp;->g:Lcom/google/common/collect/gg;

    .line 1193
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->nullEntry()Lcom/google/common/collect/gg;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/gp;->h:Lcom/google/common/collect/gg;

    .line 1206
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->nullEntry()Lcom/google/common/collect/gg;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/gp;->i:Lcom/google/common/collect/gg;

    .line 1149
    return-void
.end method


# virtual methods
.method public final getExpirationTime()J
    .registers 3

    .prologue
    .line 1157
    iget-wide v0, p0, Lcom/google/common/collect/gp;->e:J

    return-wide v0
.end method

.method public final getNextEvictable()Lcom/google/common/collect/gg;
    .registers 2

    .prologue
    .line 1198
    iget-object v0, p0, Lcom/google/common/collect/gp;->h:Lcom/google/common/collect/gg;

    return-object v0
.end method

.method public final getNextExpirable()Lcom/google/common/collect/gg;
    .registers 2

    .prologue
    .line 1170
    iget-object v0, p0, Lcom/google/common/collect/gp;->f:Lcom/google/common/collect/gg;

    return-object v0
.end method

.method public final getPreviousEvictable()Lcom/google/common/collect/gg;
    .registers 2

    .prologue
    .line 1211
    iget-object v0, p0, Lcom/google/common/collect/gp;->i:Lcom/google/common/collect/gg;

    return-object v0
.end method

.method public final getPreviousExpirable()Lcom/google/common/collect/gg;
    .registers 2

    .prologue
    .line 1183
    iget-object v0, p0, Lcom/google/common/collect/gp;->g:Lcom/google/common/collect/gg;

    return-object v0
.end method

.method public final setExpirationTime(J)V
    .registers 3
    .parameter

    .prologue
    .line 1162
    iput-wide p1, p0, Lcom/google/common/collect/gp;->e:J

    .line 1163
    return-void
.end method

.method public final setNextEvictable(Lcom/google/common/collect/gg;)V
    .registers 2
    .parameter

    .prologue
    .line 1203
    iput-object p1, p0, Lcom/google/common/collect/gp;->h:Lcom/google/common/collect/gg;

    .line 1204
    return-void
.end method

.method public final setNextExpirable(Lcom/google/common/collect/gg;)V
    .registers 2
    .parameter

    .prologue
    .line 1175
    iput-object p1, p0, Lcom/google/common/collect/gp;->f:Lcom/google/common/collect/gg;

    .line 1176
    return-void
.end method

.method public final setPreviousEvictable(Lcom/google/common/collect/gg;)V
    .registers 2
    .parameter

    .prologue
    .line 1216
    iput-object p1, p0, Lcom/google/common/collect/gp;->i:Lcom/google/common/collect/gg;

    .line 1217
    return-void
.end method

.method public final setPreviousExpirable(Lcom/google/common/collect/gg;)V
    .registers 2
    .parameter

    .prologue
    .line 1188
    iput-object p1, p0, Lcom/google/common/collect/gp;->g:Lcom/google/common/collect/gg;

    .line 1189
    return-void
.end method
