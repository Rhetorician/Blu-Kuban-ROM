.class synthetic LN/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 281
    invoke-static {}, LN/d;->values()[LN/d;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, LN/b;->b:[I

    :try_start_9
    sget-object v0, LN/b;->b:[I

    sget-object v1, LN/d;->b:LN/d;

    invoke-virtual {v1}, LN/d;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_86

    :goto_14
    :try_start_14
    sget-object v0, LN/b;->b:[I

    sget-object v1, LN/d;->a:LN/d;

    invoke-virtual {v1}, LN/d;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_84

    :goto_1f
    :try_start_1f
    sget-object v0, LN/b;->b:[I

    sget-object v1, LN/d;->c:LN/d;

    invoke-virtual {v1}, LN/d;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_82

    :goto_2a
    :try_start_2a
    sget-object v0, LN/b;->b:[I

    sget-object v1, LN/d;->d:LN/d;

    invoke-virtual {v1}, LN/d;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_80

    :goto_35
    :try_start_35
    sget-object v0, LN/b;->b:[I

    sget-object v1, LN/d;->e:LN/d;

    invoke-virtual {v1}, LN/d;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_7e

    .line 238
    :goto_40
    invoke-static {}, Lcom/google/googlenav/settings/e;->values()[Lcom/google/googlenav/settings/e;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, LN/b;->a:[I

    :try_start_49
    sget-object v0, LN/b;->a:[I

    sget-object v1, Lcom/google/googlenav/settings/e;->c:Lcom/google/googlenav/settings/e;

    invoke-virtual {v1}, Lcom/google/googlenav/settings/e;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_7c

    :goto_54
    :try_start_54
    sget-object v0, LN/b;->a:[I

    sget-object v1, Lcom/google/googlenav/settings/e;->a:Lcom/google/googlenav/settings/e;

    invoke-virtual {v1}, Lcom/google/googlenav/settings/e;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_5f} :catch_7a

    :goto_5f
    :try_start_5f
    sget-object v0, LN/b;->a:[I

    sget-object v1, Lcom/google/googlenav/settings/e;->b:Lcom/google/googlenav/settings/e;

    invoke-virtual {v1}, Lcom/google/googlenav/settings/e;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_6a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5f .. :try_end_6a} :catch_78

    :goto_6a
    :try_start_6a
    sget-object v0, LN/b;->a:[I

    sget-object v1, Lcom/google/googlenav/settings/e;->d:Lcom/google/googlenav/settings/e;

    invoke-virtual {v1}, Lcom/google/googlenav/settings/e;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_75
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6a .. :try_end_75} :catch_76

    :goto_75
    return-void

    :catch_76
    move-exception v0

    goto :goto_75

    :catch_78
    move-exception v0

    goto :goto_6a

    :catch_7a
    move-exception v0

    goto :goto_5f

    :catch_7c
    move-exception v0

    goto :goto_54

    .line 281
    :catch_7e
    move-exception v0

    goto :goto_40

    :catch_80
    move-exception v0

    goto :goto_35

    :catch_82
    move-exception v0

    goto :goto_2a

    :catch_84
    move-exception v0

    goto :goto_1f

    :catch_86
    move-exception v0

    goto :goto_14
.end method
