.class public Lcom/estrongs/android/pop/app/dh;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/app/ProgressDialog;

.field private static b:Z

.field private static c:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/pop/app/dh;->a:Landroid/app/ProgressDialog;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/estrongs/android/pop/app/dh;->b:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/estrongs/android/pop/app/dh;->c:Landroid/os/Handler;

    return-void
.end method

.method public static final a()V
    .registers 2

    sget-boolean v0, Lcom/estrongs/android/pop/app/dh;->b:Z

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    sget-object v0, Lcom/estrongs/android/pop/app/dh;->c:Landroid/os/Handler;

    new-instance v1, Lcom/estrongs/android/pop/app/di;

    invoke-direct {v1}, Lcom/estrongs/android/pop/app/di;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4
.end method

.method static synthetic a(Landroid/app/ProgressDialog;)V
    .registers 1

    sput-object p0, Lcom/estrongs/android/pop/app/dh;->a:Landroid/app/ProgressDialog;

    return-void
.end method

.method public static final a(Landroid/content/Context;)V
    .registers 4

    const/4 v2, 0x1

    sput-boolean v2, Lcom/estrongs/android/pop/app/dh;->b:Z

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/estrongs/android/pop/app/dh;->a:Landroid/app/ProgressDialog;

    sget-object v0, Lcom/estrongs/android/pop/app/dh;->a:Landroid/app/ProgressDialog;

    const v1, 0x7f09005b

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/estrongs/android/pop/app/dh;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    sget-object v0, Lcom/estrongs/android/pop/app/dh;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    sget-object v0, Lcom/estrongs/android/pop/app/dh;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

.method static synthetic a(Z)V
    .registers 1

    sput-boolean p0, Lcom/estrongs/android/pop/app/dh;->b:Z

    return-void
.end method

.method static synthetic b()Landroid/app/ProgressDialog;
    .registers 1

    sget-object v0, Lcom/estrongs/android/pop/app/dh;->a:Landroid/app/ProgressDialog;

    return-object v0
.end method
