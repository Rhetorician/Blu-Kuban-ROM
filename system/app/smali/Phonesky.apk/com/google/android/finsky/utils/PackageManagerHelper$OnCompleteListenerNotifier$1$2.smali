.class Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier$1$2;
.super Ljava/lang/Object;
.source "PackageManagerHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier$1;->packageInstalled(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier$1;

.field final synthetic val$returnCode:I


# direct methods
.method constructor <init>(Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier$1;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier$1$2;->this$1:Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier$1;

    iput p2, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier$1$2;->val$returnCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 215
    iget-object v0, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier$1$2;->this$1:Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier$1;

    iget-object v0, v0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier$1;->this$0:Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;

    #getter for: Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mPostInstallCallback:Lcom/google/android/finsky/utils/PackageManagerHelper$InstallPackageListener;
    invoke-static {v0}, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->access$600(Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;)Lcom/google/android/finsky/utils/PackageManagerHelper$InstallPackageListener;

    move-result-object v0

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier$1$2;->val$returnCode:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/finsky/utils/PackageManagerHelper$InstallPackageListener;->installCompleted(ZLjava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier$1$2;->this$1:Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier$1;

    iget-object v0, v0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier$1;->val$asset:Lcom/google/android/finsky/local/LocalAsset;

    invoke-interface {v0}, Lcom/google/android/finsky/local/LocalAsset;->cleanupInstallFailure()V

    .line 218
    return-void
.end method