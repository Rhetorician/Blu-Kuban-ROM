.class final Lcom/coremobility/app/vnotes/fl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/coremobility/app/vnotes/CM_VnoteInbox;


# direct methods
.method constructor <init>(Lcom/coremobility/app/vnotes/CM_VnoteInbox;)V
    .registers 2

    iput-object p1, p0, Lcom/coremobility/app/vnotes/fl;->a:Lcom/coremobility/app/vnotes/CM_VnoteInbox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .registers 5

    check-cast p1, Lcom/coremobility/app/customui/b;

    invoke-virtual {p1}, Lcom/coremobility/app/customui/b;->b()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/coremobility/app/vnotes/fl;->a:Lcom/coremobility/app/vnotes/CM_VnoteInbox;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "preference_vnotes_show_personalize"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1f
    return-void
.end method
