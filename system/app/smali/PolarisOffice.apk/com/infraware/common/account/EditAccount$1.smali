.class Lcom/infraware/common/account/EditAccount$1;
.super Ljava/lang/Object;
.source "EditAccount.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/common/account/EditAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/common/account/EditAccount;


# direct methods
.method constructor <init>(Lcom/infraware/common/account/EditAccount;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/common/account/EditAccount$1;->this$0:Lcom/infraware/common/account/EditAccount;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 89
    iget-object v0, p0, Lcom/infraware/common/account/EditAccount$1;->this$0:Lcom/infraware/common/account/EditAccount;

    #getter for: Lcom/infraware/common/account/EditAccount;->m_oToastMsg:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/infraware/common/account/EditAccount;->access$0(Lcom/infraware/common/account/EditAccount;)Landroid/widget/Toast;

    move-result-object v0

    if-nez v0, :cond_24

    .line 90
    iget-object v0, p0, Lcom/infraware/common/account/EditAccount$1;->this$0:Lcom/infraware/common/account/EditAccount;

    iget-object v1, p0, Lcom/infraware/common/account/EditAccount$1;->this$0:Lcom/infraware/common/account/EditAccount;

    iget-object v2, p0, Lcom/infraware/common/account/EditAccount$1;->this$0:Lcom/infraware/common/account/EditAccount;

    #getter for: Lcom/infraware/common/account/EditAccount;->m_strToastMsg:Ljava/lang/String;
    invoke-static {v2}, Lcom/infraware/common/account/EditAccount;->access$1(Lcom/infraware/common/account/EditAccount;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    #setter for: Lcom/infraware/common/account/EditAccount;->m_oToastMsg:Landroid/widget/Toast;
    invoke-static {v0, v1}, Lcom/infraware/common/account/EditAccount;->access$2(Lcom/infraware/common/account/EditAccount;Landroid/widget/Toast;)V

    .line 94
    :goto_1a
    iget-object v0, p0, Lcom/infraware/common/account/EditAccount$1;->this$0:Lcom/infraware/common/account/EditAccount;

    #getter for: Lcom/infraware/common/account/EditAccount;->m_oToastMsg:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/infraware/common/account/EditAccount;->access$0(Lcom/infraware/common/account/EditAccount;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 95
    return-void

    .line 92
    :cond_24
    iget-object v0, p0, Lcom/infraware/common/account/EditAccount$1;->this$0:Lcom/infraware/common/account/EditAccount;

    #getter for: Lcom/infraware/common/account/EditAccount;->m_oToastMsg:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/infraware/common/account/EditAccount;->access$0(Lcom/infraware/common/account/EditAccount;)Landroid/widget/Toast;

    move-result-object v0

    iget-object v1, p0, Lcom/infraware/common/account/EditAccount$1;->this$0:Lcom/infraware/common/account/EditAccount;

    #getter for: Lcom/infraware/common/account/EditAccount;->m_strToastMsg:Ljava/lang/String;
    invoke-static {v1}, Lcom/infraware/common/account/EditAccount;->access$1(Lcom/infraware/common/account/EditAccount;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1a
.end method