.class Leu/chainfire/supersu/SettingsFragment$15;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Leu/chainfire/supersu/SettingsFragment;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/SettingsFragment;)V
    .registers 2

    iput-object p1, p0, Leu/chainfire/supersu/SettingsFragment$15;->a:Leu/chainfire/supersu/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    if-nez p2, :cond_21

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "http://www.twitter.com/ChainfireXDA"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v1, p0, Leu/chainfire/supersu/SettingsFragment$15;->a:Leu/chainfire/supersu/SettingsFragment;

    invoke-virtual {v1, v0}, Leu/chainfire/supersu/SettingsFragment;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment$15;->a:Leu/chainfire/supersu/SettingsFragment;

    invoke-virtual {v0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    :cond_20
    :goto_20
    return-void

    :cond_21
    const/4 v0, 0x1

    if-ne p2, v0, :cond_20

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "http://plus.google.com/b/113517319477420052449/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v1, p0, Leu/chainfire/supersu/SettingsFragment$15;->a:Leu/chainfire/supersu/SettingsFragment;

    invoke-virtual {v1, v0}, Leu/chainfire/supersu/SettingsFragment;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment$15;->a:Leu/chainfire/supersu/SettingsFragment;

    invoke-virtual {v0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_20
.end method
