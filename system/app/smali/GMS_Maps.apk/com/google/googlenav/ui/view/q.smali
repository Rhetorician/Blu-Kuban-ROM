.class synthetic Lcom/google/googlenav/ui/view/q;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 215
    invoke-static {}, Lcom/google/googlenav/ui/view/r;->values()[Lcom/google/googlenav/ui/view/r;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/googlenav/ui/view/q;->a:[I

    :try_start_9
    sget-object v0, Lcom/google/googlenav/ui/view/q;->a:[I

    sget-object v1, Lcom/google/googlenav/ui/view/r;->a:Lcom/google/googlenav/ui/view/r;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/r;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_49

    :goto_14
    :try_start_14
    sget-object v0, Lcom/google/googlenav/ui/view/q;->a:[I

    sget-object v1, Lcom/google/googlenav/ui/view/r;->b:Lcom/google/googlenav/ui/view/r;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/r;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_47

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/google/googlenav/ui/view/q;->a:[I

    sget-object v1, Lcom/google/googlenav/ui/view/r;->d:Lcom/google/googlenav/ui/view/r;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/r;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_45

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/google/googlenav/ui/view/q;->a:[I

    sget-object v1, Lcom/google/googlenav/ui/view/r;->c:Lcom/google/googlenav/ui/view/r;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/r;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_43

    :goto_35
    :try_start_35
    sget-object v0, Lcom/google/googlenav/ui/view/q;->a:[I

    sget-object v1, Lcom/google/googlenav/ui/view/r;->e:Lcom/google/googlenav/ui/view/r;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/r;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_41

    :goto_40
    return-void

    :catch_41
    move-exception v0

    goto :goto_40

    :catch_43
    move-exception v0

    goto :goto_35

    :catch_45
    move-exception v0

    goto :goto_2a

    :catch_47
    move-exception v0

    goto :goto_1f

    :catch_49
    move-exception v0

    goto :goto_14
.end method
