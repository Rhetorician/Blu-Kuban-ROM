.class public Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;
.super Lcom/coremobility/integration/app/CM_PreferenceForm;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/coremobility/k/dg;


# instance fields
.field private a:Landroid/preference/CheckBoxPreference;

.field private b:Landroid/preference/Preference;

.field private c:Landroid/preference/CheckBoxPreference;

.field private d:Landroid/preference/CheckBoxPreference;

.field private e:Ljava/lang/String;

.field private f:Landroid/preference/Preference$OnPreferenceChangeListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/coremobility/integration/app/CM_PreferenceForm;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;->e:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(ZZZ)I
    .registers 4

    invoke-static {p0, p1, p2}, Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;->b(ZZZ)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;)Landroid/preference/CheckBoxPreference;
    .registers 2

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;->a:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic a(Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;->e:Ljava/lang/String;

    return-object p1
.end method

.method private static b(ZZZ)I
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    if-eqz p1, :cond_9

    if-eqz p2, :cond_9

    const/4 v0, 0x3

    :cond_8
    :goto_8
    return v0

    :cond_9
    if-eqz p1, :cond_f

    if-nez p2, :cond_f

    const/4 v0, 0x2

    goto :goto_8

    :cond_f
    if-nez p1, :cond_8

    if-eqz p2, :cond_8

    const/4 v0, 0x1

    goto :goto_8
.end method

.method static synthetic b(Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;)Landroid/preference/CheckBoxPreference;
    .registers 2

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;->c:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic c(Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;)Landroid/preference/CheckBoxPreference;
    .registers 2

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;->d:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private c()V
    .registers 5

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8d

    const v0, 0x7f0c01ab

    move v2, v0

    :goto_c
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v3, 0x7f030014

    const v1, 0x7f0b004b

    invoke-virtual {p0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v0, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0b004c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c00f2

    invoke-virtual {p0, v2}, Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/coremobility/app/vnotes/cy;

    invoke-direct {v3, p0, v0}, Lcom/coremobility/app/vnotes/cy;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c00f3

    invoke-virtual {p0, v2}, Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/coremobility/app/vnotes/cx;

    invoke-direct {v3, p0}, Lcom/coremobility/app/vnotes/cx;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/coremobility/app/vnotes/cw;

    invoke-direct {v2, p0}, Lcom/coremobility/app/vnotes/cw;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;->e:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_93

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_77
    new-instance v2, Lcom/coremobility/app/vnotes/cz;

    invoke-direct {v2, p0, v1}, Lcom/coremobility/app/vnotes/cz;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_8c

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_8c
    return-void

    :cond_8d
    const v0, 0x7f0c01aa

    move v2, v0

    goto/16 :goto_c

    :cond_93
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_77
.end method

.method static synthetic d(Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;->e:Ljava/lang/String;

    return-object v0
.end method

.method private d()V
    .registers 7

    const/4 v4, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->H()I

    move-result v0

    if-eq v0, v4, :cond_c

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2b

    :cond_c
    move v3, v2

    :goto_d
    if-eq v0, v4, :cond_11

    if-ne v0, v2, :cond_2d

    :cond_11
    move v0, v2

    :goto_12
    iget-object v4, p0, Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;->a:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->H()I

    move-result v5

    if-lez v5, :cond_2f

    :goto_1a
    invoke-virtual {v4, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;->c:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;->d:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;->a()V

    return-void

    :cond_2b
    move v3, v1

    goto :goto_d

    :cond_2d
    move v0, v1

    goto :goto_12

    :cond_2f
    move v2, v1

    goto :goto_1a
.end method

.method static synthetic e(Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;)V
    .registers 5

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;->a:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;->c:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;->d:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    iget-object v3, p0, Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;->b(ZZZ)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v3, v0, v1}, Lcom/coremobility/app/vnotes/cf;->a(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;->c:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;->d:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;->a:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;->c:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;->d:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;->a:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_22
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3a

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;->b:Landroid/preference/Preference;

    const v1, 0x7f0c01aa

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;->b:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_39
    return-void

    :cond_3a
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;->b:Landroid/preference/Preference;

    const v1, 0x7f0c01ab

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;->b:Landroid/preference/Preference;

    const v1, 0x7f0c01ac

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_39
.end method

.method public final a(IJJLjava/lang/Object;)Z
    .registers 8

    packed-switch p1, :pswitch_data_a

    :goto_3
    const/4 v0, 0x0

    return v0

    :pswitch_5
    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;->d()V

    goto :goto_3

    nop

    :pswitch_data_a
    .packed-switch 0x81
        :pswitch_5
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/coremobility/integration/app/CM_PreferenceForm;->onCreate(Landroid/os/Bundle;)V

    if-nez p1, :cond_d

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    :cond_d
    new-instance v0, Lcom/coremobility/app/vnotes/cv;

    invoke-direct {v0, p0}, Lcom/coremobility/app/vnotes/cv;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;)V

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;->f:Landroid/preference/Preference$OnPreferenceChangeListener;

    const v0, 0x7f050002

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;->addPreferencesFromResource(I)V

    const-string v0, "preference_autofwd"

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;->a:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;->a:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;->f:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;->a:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v0, "preference_autofwd_email_address"

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;->b:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;->b:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;->f:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;->b:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v0, "preference_autofwd_audio"

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;->c:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;->c:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;->f:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;->c:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v0, "preference_autofwd_text"

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;->d:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;->d:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;->f:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;->d:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->G()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;->e:Ljava/lang/String;

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;->d()V

    if-eqz p1, :cond_83

    const-string v0, "carbon_copy_email_addr"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;->e:Ljava/lang/String;

    :cond_83
    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->G()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_90

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;->c()V

    :cond_90
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/coremobility/integration/app/CM_PreferenceForm;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    packed-switch p1, :pswitch_data_a

    :goto_7
    return v0

    :pswitch_8
    const/4 v0, 0x1

    goto :goto_7

    :pswitch_data_a
    .packed-switch 0x4
        :pswitch_8
    .end packed-switch
.end method

.method protected onPause()V
    .registers 1

    invoke-super {p0}, Lcom/coremobility/integration/app/CM_PreferenceForm;->onPause()V

    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;->b:Landroid/preference/Preference;

    if-ne p1, v2, :cond_a

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;->c()V

    :goto_9
    return v0

    :cond_a
    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;->a:Landroid/preference/CheckBoxPreference;

    if-ne p1, v2, :cond_47

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;->a:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_32

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;->c:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_32

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;->d:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_32

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;->c:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;->d:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    move v0, v1

    goto :goto_9

    :cond_32
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;->a:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_52

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;->c()V

    move v0, v1

    goto :goto_9

    :cond_47
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;->c:Landroid/preference/CheckBoxPreference;

    if-eq p1, v0, :cond_4f

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;->d:Landroid/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_52

    :cond_4f
    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;->a()V

    :cond_52
    move v0, v1

    goto :goto_9
.end method

.method protected onResume()V
    .registers 1

    invoke-super {p0}, Lcom/coremobility/integration/app/CM_PreferenceForm;->onResume()V

    return-void
.end method

.method protected onStart()V
    .registers 1

    invoke-super {p0}, Lcom/coremobility/integration/app/CM_PreferenceForm;->onStart()V

    invoke-static {p0}, Lcom/coremobility/app/vnotes/cf;->a(Lcom/coremobility/k/dg;)V

    return-void
.end method

.method protected onStop()V
    .registers 1

    invoke-super {p0}, Lcom/coremobility/integration/app/CM_PreferenceForm;->onStop()V

    invoke-static {p0}, Lcom/coremobility/app/vnotes/cf;->b(Lcom/coremobility/k/dg;)V

    return-void
.end method
