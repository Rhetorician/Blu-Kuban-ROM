.class final enum Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentBulkAction$2;
.super Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentBulkAction;
.source "MyAppsInstalledAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentBulkAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 250
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentBulkAction;-><init>(Ljava/lang/String;ILcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$1;)V

    return-void
.end method


# virtual methods
.method public getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 4
    .parameter "context"

    .prologue
    .line 264
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02007c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getLabelId()I
    .registers 2

    .prologue
    .line 259
    const v0, 0x7f0700f1

    return v0
.end method

.method public isVisible(Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;)Z
    .registers 8
    .parameter "downloadsAdapter"

    .prologue
    .line 269
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/FinskyApp;->getInstaller()Lcom/google/android/finsky/receivers/Installer;

    move-result-object v2

    .line 270
    .local v2, installer:Lcom/google/android/finsky/receivers/Installer;
    #getter for: Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mUnsortedDocuments:Ljava/util/List;
    invoke-static {p1}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->access$1000(Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/Document;

    .line 271
    .local v0, doc:Lcom/google/android/finsky/api/model/Document;
    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 272
    .local v4, packageName:Ljava/lang/String;
    invoke-interface {v2, v4}, Lcom/google/android/finsky/receivers/Installer;->getState(Ljava/lang/String;)Lcom/google/android/finsky/receivers/Installer$InstallerState;

    move-result-object v3

    .line 273
    .local v3, installerState:Lcom/google/android/finsky/receivers/Installer$InstallerState;
    invoke-virtual {v3}, Lcom/google/android/finsky/receivers/Installer$InstallerState;->isDownloadingOrInstalling()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 274
    const/4 v5, 0x1

    .line 277
    .end local v0           #doc:Lcom/google/android/finsky/api/model/Document;
    .end local v3           #installerState:Lcom/google/android/finsky/receivers/Installer$InstallerState;
    .end local v4           #packageName:Ljava/lang/String;
    :goto_2f
    return v5

    :cond_30
    const/4 v5, 0x0

    goto :goto_2f
.end method

.method public isWaiting(Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;)Z
    .registers 3
    .parameter "downloadsAdapter"

    .prologue
    .line 282
    const/4 v0, 0x0

    return v0
.end method

.method public run(Landroid/content/Context;Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;)V
    .registers 4
    .parameter "ctx"
    .parameter "downloadsAdapter"

    .prologue
    .line 254
    #getter for: Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mInstaller:Lcom/google/android/finsky/receivers/Installer;
    invoke-static {p2}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->access$800(Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;)Lcom/google/android/finsky/receivers/Installer;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/finsky/receivers/Installer;->cancelAll()V

    .line 255
    return-void
.end method
