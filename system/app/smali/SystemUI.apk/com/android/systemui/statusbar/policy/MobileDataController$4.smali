.class Lcom/android/systemui/statusbar/policy/MobileDataController$4;
.super Ljava/lang/Object;
.source "MobileDataController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/MobileDataController;->onDisplayMobileDataOffAlert()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/MobileDataController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/MobileDataController;)V
    .registers 2
    .parameter

    .prologue
    .line 293
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileDataController$4;->this$0:Lcom/android/systemui/statusbar/policy/MobileDataController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileDataController$4;->this$0:Lcom/android/systemui/statusbar/policy/MobileDataController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileDataController$4;->this$0:Lcom/android/systemui/statusbar/policy/MobileDataController;

    #getter for: Lcom/android/systemui/statusbar/policy/MobileDataController;->mMobileData:Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/MobileDataController;->access$200(Lcom/android/systemui/statusbar/policy/MobileDataController;)Z

    move-result v1

    #calls: Lcom/android/systemui/statusbar/policy/MobileDataController;->updateActivateStatus(Z)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/MobileDataController;->access$400(Lcom/android/systemui/statusbar/policy/MobileDataController;Z)V

    .line 296
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 297
    return-void
.end method