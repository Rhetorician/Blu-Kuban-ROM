.class public final Lcom/coremobility/integration/i/l;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:I

.field public g:Z

.field public h:[I

.field public i:[I


# direct methods
.method constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/coremobility/integration/i/l;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/coremobility/integration/i/l;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/coremobility/integration/i/l;->c:Ljava/lang/String;

    iput v1, p0, Lcom/coremobility/integration/i/l;->f:I

    iput-boolean v1, p0, Lcom/coremobility/integration/i/l;->g:Z

    iput-object v0, p0, Lcom/coremobility/integration/i/l;->h:[I

    iput-object v0, p0, Lcom/coremobility/integration/i/l;->i:[I

    iput-object v0, p0, Lcom/coremobility/integration/i/l;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/coremobility/integration/i/l;->e:Ljava/lang/String;

    return-void
.end method

.method private static a(Ljava/lang/String;)[I
    .registers 9

    const/4 v0, 0x0

    const/16 v7, 0x17

    const/4 v1, 0x0

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_d

    :cond_c
    :goto_c
    return-object v0

    :cond_d
    const-string v2, "\\."

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v2, v4

    const/4 v3, 0x2

    if-eq v2, v3, :cond_23

    array-length v2, v4

    const/4 v3, 0x4

    if-eq v2, v3, :cond_23

    const-string v2, "Error: invalid version format"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v7, v2, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_c

    :cond_23
    array-length v0, v4

    new-array v2, v0, [I

    move v0, v1

    :goto_27
    array-length v3, v4

    if-ge v0, v3, :cond_53

    :try_start_2a
    aget-object v3, v4, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v0
    :try_end_36
    .catch Ljava/lang/NumberFormatException; {:try_start_2a .. :try_end_36} :catch_39

    :goto_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    :catch_39
    move-exception v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Version Error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v7, v3, v5}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_36

    :cond_53
    move-object v0, v2

    goto :goto_c
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/coremobility/integration/i/l;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/coremobility/integration/i/l;->a(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/integration/i/l;->h:[I

    iget-object v0, p0, Lcom/coremobility/integration/i/l;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/coremobility/integration/i/l;->a(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/integration/i/l;->i:[I

    return-void
.end method

.method public final b()V
    .registers 6

    const/16 v4, 0x17

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coremobility/integration/i/l;->g:Z

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->c()[I

    move-result-object v1

    if-eqz v1, :cond_f

    iget-object v2, p0, Lcom/coremobility/integration/i/l;->h:[I

    if-nez v2, :cond_22

    :cond_f
    const-string v2, "versionNumber is null"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v4, v2, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_16
    iget-object v2, p0, Lcom/coremobility/integration/i/l;->i:[I

    invoke-static {v2, v1}, Lcom/coremobility/integration/i/f;->a([I[I)Z

    move-result v1

    if-eqz v1, :cond_1f

    const/4 v0, 0x1

    :cond_1f
    iput v0, p0, Lcom/coremobility/integration/i/l;->f:I

    return-void

    :cond_22
    array-length v2, v1

    iget-object v3, p0, Lcom/coremobility/integration/i/l;->h:[I

    array-length v3, v3

    if-eq v2, v3, :cond_30

    const-string v2, "versionNumber length mismatch"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v4, v2, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_16

    :cond_30
    iget-object v2, p0, Lcom/coremobility/integration/i/l;->h:[I

    invoke-static {v2, v1}, Lcom/coremobility/integration/i/f;->a([I[I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/coremobility/integration/i/l;->g:Z

    goto :goto_16
.end method
