.class Leu/chainfire/supersu/MainActivity$4$1;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Leu/chainfire/supersu/MainActivity$4;

.field private b:Landroid/app/ProgressDialog;

.field private final synthetic c:Landroid/content/Context;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/MainActivity$4;Landroid/content/Context;)V
    .registers 4

    iput-object p1, p0, Leu/chainfire/supersu/MainActivity$4$1;->a:Leu/chainfire/supersu/MainActivity$4;

    iput-object p2, p0, Leu/chainfire/supersu/MainActivity$4$1;->c:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/MainActivity$4$1;->b:Landroid/app/ProgressDialog;

    return-void
.end method

.method private static varargs a()Ljava/lang/Integer;
    .registers 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-wide/16 v0, 0x1f4

    :try_start_4
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_22

    :goto_7
    const-string v0, "su"

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "rm /data/data/eu.chainfire.supersu/logs/*"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Leu/chainfire/supersu/SuperUser;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    const-string v0, "/system/bin/.ext/.su"

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "rm /data/data/eu.chainfire.supersu/logs/*"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Leu/chainfire/supersu/SuperUser;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :catch_22
    move-exception v0

    goto :goto_7
.end method


# virtual methods
.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-static {}, Leu/chainfire/supersu/MainActivity$4$1;->a()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$4$1;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$4$1;->a:Leu/chainfire/supersu/MainActivity$4;

    invoke-static {v0}, Leu/chainfire/supersu/MainActivity$4;->a(Leu/chainfire/supersu/MainActivity$4;)Leu/chainfire/supersu/MainActivity;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Leu/chainfire/supersu/MainActivity;->a:Z

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$4$1;->a:Leu/chainfire/supersu/MainActivity$4;

    invoke-static {v0}, Leu/chainfire/supersu/MainActivity$4;->a(Leu/chainfire/supersu/MainActivity$4;)Leu/chainfire/supersu/MainActivity;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/supersu/MainActivity;->b(Leu/chainfire/supersu/MainActivity;)Leu/chainfire/supersu/LogsFragment;

    move-result-object v0

    invoke-virtual {v0}, Leu/chainfire/supersu/LogsFragment;->a()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1c

    :goto_1b
    return-void

    :catch_1c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1b
.end method

.method protected onPreExecute()V
    .registers 4

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_3d

    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Leu/chainfire/supersu/MainActivity$4$1;->c:Landroid/content/Context;

    const v2, 0x7f0a0043

    invoke-direct {v0, v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Leu/chainfire/supersu/MainActivity$4$1;->b:Landroid/app/ProgressDialog;

    :goto_12
    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$4$1;->b:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$4$1;->b:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$4$1;->b:Landroid/app/ProgressDialog;

    const-string v1, "SuperSU"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$4$1;->b:Landroid/app/ProgressDialog;

    iget-object v1, p0, Leu/chainfire/supersu/MainActivity$4$1;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090042

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$4$1;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    :goto_3c
    return-void

    :cond_3d
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Leu/chainfire/supersu/MainActivity$4$1;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Leu/chainfire/supersu/MainActivity$4$1;->b:Landroid/app/ProgressDialog;
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_46} :catch_47

    goto :goto_12

    :catch_47
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3c
.end method
