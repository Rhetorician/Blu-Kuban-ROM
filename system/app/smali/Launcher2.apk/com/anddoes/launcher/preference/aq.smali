.class final Lcom/anddoes/launcher/preference/aq;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field a:Z

.field final synthetic b:Lcom/anddoes/launcher/preference/PreferencesActivity;


# direct methods
.method private constructor <init>(Lcom/anddoes/launcher/preference/PreferencesActivity;)V
    .registers 3
    .parameter

    .prologue
    .line 1851
    iput-object p1, p0, Lcom/anddoes/launcher/preference/aq;->b:Lcom/anddoes/launcher/preference/PreferencesActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1853
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anddoes/launcher/preference/aq;->a:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/anddoes/launcher/preference/PreferencesActivity;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1851
    invoke-direct {p0, p1}, Lcom/anddoes/launcher/preference/aq;-><init>(Lcom/anddoes/launcher/preference/PreferencesActivity;)V

    return-void
.end method

.method private varargs a()Ljava/lang/Void;
    .registers 2

    .prologue
    .line 1865
    :try_start_0
    iget-object v0, p0, Lcom/anddoes/launcher/preference/aq;->b:Lcom/anddoes/launcher/preference/PreferencesActivity;

    invoke-static {v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->a(Lcom/anddoes/launcher/preference/PreferencesActivity;)Lcom/anddoes/launcher/preference/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/b;->c()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    .line 1870
    :goto_9
    const/4 v0, 0x0

    return-object v0

    .line 1867
    :catch_b
    move-exception v0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anddoes/launcher/preference/aq;->a:Z

    goto :goto_9
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/anddoes/launcher/preference/aq;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1
    iget-object v0, p0, Lcom/anddoes/launcher/preference/aq;->b:Lcom/anddoes/launcher/preference/PreferencesActivity;

    invoke-static {v0, v4}, Lcom/anddoes/launcher/preference/PreferencesActivity;->a(Lcom/anddoes/launcher/preference/PreferencesActivity;Z)V

    iget-object v0, p0, Lcom/anddoes/launcher/preference/aq;->b:Lcom/anddoes/launcher/preference/PreferencesActivity;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->b()V

    iget-boolean v0, p0, Lcom/anddoes/launcher/preference/aq;->a:Z

    if-eqz v0, :cond_70

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/anddoes/launcher/preference/aq;->b:Lcom/anddoes/launcher/preference/PreferencesActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x108009b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x7f06

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/anddoes/launcher/preference/aq;->b:Lcom/anddoes/launcher/preference/PreferencesActivity;

    const v3, 0x7f06013e

    invoke-virtual {v2, v3}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/anddoes/launcher/preference/aq;->b:Lcom/anddoes/launcher/preference/PreferencesActivity;

    const v3, 0x7f06015b

    invoke-virtual {v2, v3}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f06000e

    new-instance v2, Lcom/anddoes/launcher/preference/ar;

    invoke-direct {v2, p0}, Lcom/anddoes/launcher/preference/ar;-><init>(Lcom/anddoes/launcher/preference/aq;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f06000f

    new-instance v2, Lcom/anddoes/launcher/preference/as;

    invoke-direct {v2, p0}, Lcom/anddoes/launcher/preference/as;-><init>(Lcom/anddoes/launcher/preference/aq;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_6f
    return-void

    :cond_70
    iget-object v0, p0, Lcom/anddoes/launcher/preference/aq;->b:Lcom/anddoes/launcher/preference/PreferencesActivity;

    const v1, 0x7f060145

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_6f
.end method

.method protected final onPreExecute()V
    .registers 3

    .prologue
    .line 1857
    iget-object v0, p0, Lcom/anddoes/launcher/preference/aq;->b:Lcom/anddoes/launcher/preference/PreferencesActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/anddoes/launcher/preference/PreferencesActivity;->a(Lcom/anddoes/launcher/preference/PreferencesActivity;Z)V

    .line 1858
    iget-object v0, p0, Lcom/anddoes/launcher/preference/aq;->b:Lcom/anddoes/launcher/preference/PreferencesActivity;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->a()V

    .line 1859
    return-void
.end method
