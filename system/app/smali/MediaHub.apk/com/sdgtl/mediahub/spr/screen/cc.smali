.class final Lcom/sdgtl/mediahub/spr/screen/cc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/cc;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cc;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->C(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cc;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/cc;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->C(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method