.class public Leu/chainfire/supersu/Application;
.super Landroid/app/Application;


# static fields
.field public static a:Landroid/os/Handler;


# instance fields
.field private b:Ljava/util/Locale;

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Leu/chainfire/supersu/Application;->a:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/Application;->b:Ljava/util/Locale;

    const/4 v0, 0x0

    iput v0, p0, Leu/chainfire/supersu/Application;->c:I

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :try_start_3
    iget-object v0, p0, Leu/chainfire/supersu/Application;->b:Ljava/util/Locale;

    if-eqz v0, :cond_3d

    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v1, p0, Leu/chainfire/supersu/Application;->b:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iget-object v1, p0, Leu/chainfire/supersu/Application;->b:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    :cond_1d
    iget-object v0, p0, Leu/chainfire/supersu/Application;->b:Ljava/util/Locale;

    iput-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v0, p0, Leu/chainfire/supersu/Application;->b:Ljava/util/Locale;

    invoke-static {v0}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    invoke-virtual {p0}, Leu/chainfire/supersu/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Leu/chainfire/supersu/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3d} :catch_3e

    :cond_3d
    :goto_3d
    return-void

    :catch_3e
    move-exception v0

    goto :goto_3d
.end method

.method public onCreate()V
    .registers 6

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    :try_start_3
    const-string v0, "android.os.AsyncTask"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_8} :catch_99

    :goto_8
    :try_start_8
    iget-object v0, p0, Leu/chainfire/supersu/Application;->b:Ljava/util/Locale;

    if-nez v0, :cond_8e

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p0}, Leu/chainfire/supersu/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    const-string v2, "locale"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8e

    iget-object v2, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8e

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8f

    new-instance v2, Ljava/util/Locale;

    const/4 v3, 0x0

    const-string v4, "_"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Leu/chainfire/supersu/Application;->b:Ljava/util/Locale;

    :goto_5e
    iget-object v0, p0, Leu/chainfire/supersu/Application;->b:Ljava/util/Locale;

    if-eqz v0, :cond_8e

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iget-object v2, p0, Leu/chainfire/supersu/Application;->b:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8e

    iget-object v0, p0, Leu/chainfire/supersu/Application;->b:Ljava/util/Locale;

    invoke-static {v0}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    iget-object v0, p0, Leu/chainfire/supersu/Application;->b:Ljava/util/Locale;

    iput-object v0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0}, Leu/chainfire/supersu/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Leu/chainfire/supersu/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :cond_8e
    :goto_8e
    return-void

    :cond_8f
    new-instance v2, Ljava/util/Locale;

    invoke-direct {v2, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Leu/chainfire/supersu/Application;->b:Ljava/util/Locale;
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_96} :catch_97

    goto :goto_5e

    :catch_97
    move-exception v0

    goto :goto_8e

    :catch_99
    move-exception v0

    goto/16 :goto_8
.end method
