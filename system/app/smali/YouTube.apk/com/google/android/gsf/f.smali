.class public Lcom/google/android/gsf/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroid/net/Uri;

.field public static final b:Landroid/net/Uri;

.field private static c:Landroid/content/ContentResolver;

.field private static d:Ljava/util/HashMap;

.field private static e:Ljava/lang/Object;

.field private static final f:Ljava/util/regex/Pattern;

.field private static final g:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x2

    .line 44
    const-string v0, "content://com.google.android.gsf.gservices"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/f;->a:Landroid/net/Uri;

    .line 46
    const-string v0, "content://com.google.android.gsf.gservices/prefix"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/f;->b:Landroid/net/Uri;

    .line 160
    const-string v0, "^(1|true|t|on|yes|y)$"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/f;->f:Ljava/util/regex/Pattern;

    .line 162
    const-string v0, "^(0|false|f|off|no|n)$"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/f;->g:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 133
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/android/gsf/f;->a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 136
    if-eqz v0, :cond_b

    :try_start_7
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_a} :catch_c

    move-result p2

    .line 140
    :cond_b
    :goto_b
    return p2

    .line 138
    :catch_c
    move-exception v0

    goto :goto_b
.end method

.method public static a(Landroid/content/ContentResolver;Ljava/lang/String;J)J
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 150
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/android/gsf/f;->a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 153
    if-eqz v0, :cond_b

    :try_start_7
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_a} :catch_c

    move-result-wide p2

    .line 157
    :cond_b
    :goto_b
    return-wide p2

    .line 155
    :catch_c
    move-exception v0

    goto :goto_b
.end method

.method public static a(Landroid/content/ContentResolver;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 208
    const-class v1, Lcom/google/android/gsf/f;

    monitor-enter v1

    .line 211
    :try_start_3
    invoke-static {p0}, Lcom/google/android/gsf/f;->b(Landroid/content/ContentResolver;)V

    .line 212
    sget-object v0, Lcom/google/android/gsf/f;->e:Ljava/lang/Object;

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_a

    return-object v0

    .line 213
    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1
    .parameter

    .prologue
    .line 36
    sput-object p0, Lcom/google/android/gsf/f;->e:Ljava/lang/Object;

    return-object p0
.end method

.method public static a(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 123
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/android/gsf/f;->a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 88
    const-class v1, Lcom/google/android/gsf/f;

    monitor-enter v1

    .line 89
    :try_start_5
    invoke-static {p0}, Lcom/google/android/gsf/f;->b(Landroid/content/ContentResolver;)V

    .line 90
    sget-object v6, Lcom/google/android/gsf/f;->e:Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/google/android/gsf/f;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 92
    sget-object v0, Lcom/google/android/gsf/f;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 93
    if-eqz v0, :cond_1d

    move-object p2, v0

    :cond_1d
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_4d

    .line 112
    :cond_1e
    :goto_1e
    return-object p2

    .line 95
    :cond_1f
    monitor-exit v1

    .line 96
    sget-object v0, Lcom/google/android/gsf/f;->c:Landroid/content/ContentResolver;

    sget-object v1, Lcom/google/android/gsf/f;->a:Landroid/net/Uri;

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v4, v3

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 97
    if-eqz v1, :cond_1e

    .line 100
    :try_start_31
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 101
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 102
    const-class v2, Lcom/google/android/gsf/f;

    monitor-enter v2
    :try_end_3c
    .catchall {:try_start_31 .. :try_end_3c} :catchall_53

    .line 106
    :try_start_3c
    sget-object v3, Lcom/google/android/gsf/f;->e:Ljava/lang/Object;

    if-ne v6, v3, :cond_45

    .line 107
    sget-object v3, Lcom/google/android/gsf/f;->d:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    :cond_45
    monitor-exit v2
    :try_end_46
    .catchall {:try_start_3c .. :try_end_46} :catchall_50

    .line 110
    if-eqz v0, :cond_49

    move-object p2, v0

    .line 112
    :cond_49
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1e

    .line 95
    :catchall_4d
    move-exception v0

    monitor-exit v1

    throw v0

    .line 109
    :catchall_50
    move-exception v0

    :try_start_51
    monitor-exit v2

    throw v0
    :try_end_53
    .catchall {:try_start_51 .. :try_end_53} :catchall_53

    .line 112
    :catchall_53
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method static synthetic a()Ljava/util/HashMap;
    .registers 1

    .prologue
    .line 36
    sget-object v0, Lcom/google/android/gsf/f;->d:Ljava/util/HashMap;

    return-object v0
.end method

.method public static varargs a(Landroid/content/ContentResolver;[Ljava/lang/String;)Ljava/util/Map;
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 188
    sget-object v1, Lcom/google/android/gsf/f;->b:Landroid/net/Uri;

    move-object v0, p0

    move-object v3, v2

    move-object v4, p1

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 189
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 190
    if-nez v1, :cond_13

    .line 199
    :goto_12
    return-object v0

    .line 193
    :cond_13
    :goto_13
    :try_start_13
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 194
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_26
    .catchall {:try_start_13 .. :try_end_26} :catchall_27

    goto :goto_13

    .line 197
    :catchall_27
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2c
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_12
.end method

.method public static a(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 166
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/android/gsf/f;->a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 167
    if-eqz v0, :cond_f

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 177
    :cond_f
    :goto_f
    return p2

    .line 169
    :cond_10
    sget-object v1, Lcom/google/android/gsf/f;->f:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 170
    const/4 p2, 0x1

    goto :goto_f

    .line 171
    :cond_1e
    sget-object v1, Lcom/google/android/gsf/f;->g:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 172
    const/4 p2, 0x0

    goto :goto_f

    .line 175
    :cond_2c
    const-string v1, "Gservices"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "attempt to read gservices key "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (value \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\") as boolean"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method

.method private static b(Landroid/content/ContentResolver;)V
    .registers 2
    .parameter

    .prologue
    .line 54
    sget-object v0, Lcom/google/android/gsf/f;->d:Ljava/util/HashMap;

    if-nez v0, :cond_1c

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gsf/f;->d:Ljava/util/HashMap;

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gsf/f;->e:Ljava/lang/Object;

    .line 57
    sput-object p0, Lcom/google/android/gsf/f;->c:Landroid/content/ContentResolver;

    .line 62
    new-instance v0, Lcom/google/android/gsf/g;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/g;-><init>(Landroid/content/ContentResolver;)V

    invoke-virtual {v0}, Lcom/google/android/gsf/g;->start()V

    .line 77
    :cond_1c
    return-void
.end method
