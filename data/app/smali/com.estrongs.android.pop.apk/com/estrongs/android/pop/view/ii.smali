.class Lcom/estrongs/android/pop/view/ii;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/MultiFilesProperty;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/MultiFilesProperty;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/ii;->a:Lcom/estrongs/android/pop/view/MultiFilesProperty;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ii;->a:Lcom/estrongs/android/pop/view/MultiFilesProperty;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/view/MultiFilesProperty;->a(Lcom/estrongs/android/pop/view/MultiFilesProperty;Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ii;->a:Lcom/estrongs/android/pop/view/MultiFilesProperty;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/view/MultiFilesProperty;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ii;->a:Lcom/estrongs/android/pop/view/MultiFilesProperty;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/MultiFilesProperty;->finish()V

    return-void
.end method
