.class public Lcom/google/googlenav/ui/view/android/rideabout/j;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/text/style/CharacterStyle;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/j;->a:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/j;->a:Ljava/util/ArrayList;

    new-instance v1, Lcom/google/googlenav/ui/view/android/rideabout/k;

    invoke-direct {v1, p1, p2}, Lcom/google/googlenav/ui/view/android/rideabout/k;-><init>(Ljava/lang/String;Landroid/text/style/CharacterStyle;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public a(Landroid/text/SpannableStringBuilder;)V
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/j;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_36

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/j;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/rideabout/k;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/rideabout/k;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/j;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/rideabout/k;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/rideabout/k;->b()Landroid/text/style/CharacterStyle;

    move-result-object v0

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_36
    return-void
.end method

.method public a(Lcom/google/googlenav/ui/view/android/rideabout/j;)V
    .registers 5

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p1, Lcom/google/googlenav/ui/view/android/rideabout/j;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/j;->a:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/google/googlenav/ui/view/android/rideabout/j;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    return-void
.end method