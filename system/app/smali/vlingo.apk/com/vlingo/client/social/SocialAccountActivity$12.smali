.class Lcom/vlingo/client/social/SocialAccountActivity$12;
.super Ljava/lang/Object;
.source "SocialAccountActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/social/SocialAccountActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/social/SocialAccountActivity;


# direct methods
.method constructor <init>(Lcom/vlingo/client/social/SocialAccountActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 367
    iput-object p1, p0, Lcom/vlingo/client/social/SocialAccountActivity$12;->this$0:Lcom/vlingo/client/social/SocialAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter "dialog"

    .prologue
    .line 369
    iget-object v0, p0, Lcom/vlingo/client/social/SocialAccountActivity$12;->this$0:Lcom/vlingo/client/social/SocialAccountActivity;

    invoke-virtual {v0}, Lcom/vlingo/client/social/SocialAccountActivity;->finish()V

    .line 370
    return-void
.end method