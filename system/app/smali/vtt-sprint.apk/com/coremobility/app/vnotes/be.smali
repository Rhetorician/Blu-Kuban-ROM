.class public final Lcom/coremobility/app/vnotes/be;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# static fields
.field public static c:I

.field public static d:I

.field public static e:I


# instance fields
.field a:Ljava/util/Vector;

.field b:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput v0, Lcom/coremobility/app/vnotes/be;->c:I

    const/4 v0, 0x5

    sput v0, Lcom/coremobility/app/vnotes/be;->d:I

    const/16 v0, 0xa

    sput v0, Lcom/coremobility/app/vnotes/be;->e:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coremobility/app/vnotes/be;->b:Landroid/app/Activity;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/coremobility/app/vnotes/be;->a:Ljava/util/Vector;

    return-void
.end method

.method private b(II)V
    .registers 8

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/coremobility/app/vnotes/be;->c(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    :goto_8
    return-void

    :cond_9
    move v1, v2

    :goto_a
    iget-object v0, p0, Lcom/coremobility/app/vnotes/be;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_24

    iget-object v0, p0, Lcom/coremobility/app/vnotes/be;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/bf;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/bf;->c()I

    move-result v0

    if-gt p2, v0, :cond_24

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a

    :cond_24
    const/4 v0, 0x6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "add to queue dialog ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/be;->a:Ljava/util/Vector;

    new-instance v2, Lcom/coremobility/app/vnotes/bf;

    invoke-direct {v2, p0, p1, p2}, Lcom/coremobility/app/vnotes/bf;-><init>(Lcom/coremobility/app/vnotes/be;II)V

    invoke-virtual {v0, v2, v1}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    goto :goto_8
.end method

.method private c(I)I
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/coremobility/app/vnotes/be;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1d

    iget-object v0, p0, Lcom/coremobility/app/vnotes/be;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/bf;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/bf;->b()I

    move-result v0

    if-ne p1, v0, :cond_19

    :goto_18
    return v1

    :cond_19
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_1d
    const/4 v1, -0x1

    goto :goto_18
.end method


# virtual methods
.method public final a(I)V
    .registers 3

    sget v0, Lcom/coremobility/app/vnotes/be;->c:I

    invoke-virtual {p0, p1, v0}, Lcom/coremobility/app/vnotes/be;->a(II)V

    return-void
.end method

.method public final a(II)V
    .registers 7

    const/4 v3, 0x6

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showDialog "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/coremobility/app/vnotes/be;->c(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "duplicate dialog ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_39
    :goto_39
    return-void

    :cond_3a
    invoke-direct {p0, p1, p2}, Lcom/coremobility/app/vnotes/be;->b(II)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/be;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_39

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "displaying dialog: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/be;->b:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_39
.end method

.method public final a(ILandroid/app/Dialog;)V
    .registers 5

    if-nez p2, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    invoke-virtual {p2, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_8
    iget-object v0, p0, Lcom/coremobility/app/vnotes/be;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/coremobility/app/vnotes/be;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/bf;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/bf;->b()I

    move-result v0

    if-ne p1, v0, :cond_2a

    iget-object v0, p0, Lcom/coremobility/app/vnotes/be;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/bf;

    invoke-virtual {v0, p2}, Lcom/coremobility/app/vnotes/bf;->a(Landroid/content/DialogInterface;)V

    goto :goto_2

    :cond_2a
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8
.end method

.method public final b(I)V
    .registers 7

    const/4 v2, 0x0

    move v1, v2

    :goto_2
    iget-object v0, p0, Lcom/coremobility/app/vnotes/be;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_36

    iget-object v0, p0, Lcom/coremobility/app/vnotes/be;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/bf;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/bf;->b()I

    move-result v0

    if-ne p1, v0, :cond_3c

    const/4 v0, 0x6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "remove from queue dialog ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/be;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    :cond_36
    iget-object v0, p0, Lcom/coremobility/app/vnotes/be;->b:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->removeDialog(I)V

    return-void

    :cond_3c
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .registers 7

    const/4 v4, 0x6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/be;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/bf;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/bf;->a()Landroid/content/DialogInterface;

    move-result-object v2

    if-ne v2, p1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDismiss removing from queue dialog ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/bf;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v4, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/coremobility/app/vnotes/be;->a:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    :cond_3b
    iget-object v0, p0, Lcom/coremobility/app/vnotes/be;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_44

    :cond_43
    :goto_43
    return-void

    :cond_44
    iget-object v0, p0, Lcom/coremobility/app/vnotes/be;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/coremobility/app/vnotes/be;->a:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/bf;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showNextDialog ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/bf;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v4, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/coremobility/app/vnotes/be;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/bf;->b()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_43
.end method
