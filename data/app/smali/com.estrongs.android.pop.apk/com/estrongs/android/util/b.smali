.class Lcom/estrongs/android/util/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/util/a;


# direct methods
.method constructor <init>(Lcom/estrongs/android/util/a;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/util/b;->a:Lcom/estrongs/android/util/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    iget-object v0, p0, Lcom/estrongs/android/util/b;->a:Lcom/estrongs/android/util/a;

    iget-object v1, p0, Lcom/estrongs/android/util/b;->a:Lcom/estrongs/android/util/a;

    iget-boolean v1, v1, Lcom/estrongs/android/util/a;->a:Z

    if-eqz v1, :cond_26

    :goto_8
    invoke-static {v0, p2}, Lcom/estrongs/android/util/a;->a(Lcom/estrongs/android/util/a;I)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Radio clicked - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/estrongs/android/util/b;->a:Lcom/estrongs/android/util/a;

    invoke-static {v2}, Lcom/estrongs/android/util/a;->a(Lcom/estrongs/android/util/a;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    :cond_26
    add-int/lit8 p2, p2, 0x1

    goto :goto_8
.end method
