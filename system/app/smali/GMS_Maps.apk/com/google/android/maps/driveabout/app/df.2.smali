.class Lcom/google/android/maps/driveabout/app/dF;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/dD;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/dD;)V
    .registers 2
    .parameter

    .prologue
    .line 784
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/dF;->a:Lcom/google/android/maps/driveabout/app/dD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    .line 787
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dF;->a:Lcom/google/android/maps/driveabout/app/dD;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/dD;->d(Lcom/google/android/maps/driveabout/app/dD;)Lcom/google/android/maps/driveabout/app/cK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cK;->b()Lo/I;

    move-result-object v0

    .line 788
    if-eqz v0, :cond_16

    .line 789
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dF;->a:Lcom/google/android/maps/driveabout/app/dD;

    invoke-virtual {v0}, Lo/I;->k()Lo/I;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/google/android/maps/driveabout/app/dD;->a(Lo/I;Z)V

    .line 791
    :cond_16
    return-void
.end method
