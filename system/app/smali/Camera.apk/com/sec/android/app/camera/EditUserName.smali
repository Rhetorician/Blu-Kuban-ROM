.class public Lcom/sec/android/app/camera/EditUserName;
.super Landroid/app/Activity;
.source "EditUserName.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field private mName:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public getSharedPrefsFile(Ljava/lang/String;)Ljava/io/File;
    .registers 3
    .parameter "arg0"

    .prologue
    .line 50
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const v1, 0x7f030009

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/EditUserName;->setContentView(I)V

    .line 31
    const v1, 0x7f080034

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/EditUserName;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/sec/android/app/camera/EditUserName;->mName:Landroid/widget/EditText;

    .line 32
    iget-object v1, p0, Lcom/sec/android/app/camera/EditUserName;->mName:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/EditUserName;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "user_name"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 33
    iget-object v1, p0, Lcom/sec/android/app/camera/EditUserName;->mName:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 34
    iget-object v1, p0, Lcom/sec/android/app/camera/EditUserName;->mName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/EditUserName;->mName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-static {v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 35
    iget-object v1, p0, Lcom/sec/android/app/camera/EditUserName;->mName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->selectAll()V

    .line 36
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 37
    .local v0, timer:Ljava/util/Timer;
    new-instance v1, Lcom/sec/android/app/camera/EditUserName$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/EditUserName$1;-><init>(Lcom/sec/android/app/camera/EditUserName;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 46
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 8
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    .line 55
    const/4 v1, 0x6

    if-ne p2, v1, :cond_28

    .line 56
    const-string v1, ""

    iget-object v2, p0, Lcom/sec/android/app/camera/EditUserName;->mName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    iget-object v1, p0, Lcom/sec/android/app/camera/EditUserName;->mName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-nez v1, :cond_29

    .line 57
    :cond_1e
    const v1, 0x7f090113

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 67
    :cond_28
    :goto_28
    return v3

    .line 59
    :cond_29
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 60
    .local v0, i:Landroid/content/Intent;
    const-string v1, "user_name_changed"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 61
    const-string v1, "user_name"

    iget-object v2, p0, Lcom/sec/android/app/camera/EditUserName;->mName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    const/16 v1, 0x7d5

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/camera/EditUserName;->setResult(ILandroid/content/Intent;)V

    .line 63
    invoke-virtual {p0}, Lcom/sec/android/app/camera/EditUserName;->finish()V

    goto :goto_28
.end method
