.class Lcom/google/googlenav/appwidget/traffic/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Landroid/net/Uri;

.field private static final b:Landroid/net/Uri;

.field private static final c:Landroid/net/Uri;

.field private static final d:Landroid/net/Uri;

.field private static final e:Landroid/net/Uri;

.field private static final f:Ljava/util/Map;

.field private static final g:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/16 v2, 0x14

    .line 59
    const-string v0, "appwidgets://com.google.googlenav.appwidget.Traffic"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/appwidget/traffic/k;->a:Landroid/net/Uri;

    .line 64
    sget-object v0, Lcom/google/googlenav/appwidget/traffic/k;->a:Landroid/net/Uri;

    const-string v1, "update"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/appwidget/traffic/k;->b:Landroid/net/Uri;

    .line 69
    sget-object v0, Lcom/google/googlenav/appwidget/traffic/k;->a:Landroid/net/Uri;

    const-string v1, "wakeup"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/appwidget/traffic/k;->c:Landroid/net/Uri;

    .line 74
    sget-object v0, Lcom/google/googlenav/appwidget/traffic/k;->a:Landroid/net/Uri;

    const-string v1, "cancelUpdate"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/appwidget/traffic/k;->d:Landroid/net/Uri;

    .line 79
    sget-object v0, Lcom/google/googlenav/appwidget/traffic/k;->a:Landroid/net/Uri;

    const-string v1, "updateLocation"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/appwidget/traffic/k;->e:Landroid/net/Uri;

    .line 92
    invoke-static {v2}, Lcom/google/googlenav/appwidget/traffic/k;->e(I)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/appwidget/traffic/k;->f:Ljava/util/Map;

    .line 97
    invoke-static {v2}, Lcom/google/googlenav/appwidget/traffic/k;->e(I)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/appwidget/traffic/k;->g:Ljava/util/Map;

    return-void
.end method

.method static a(Landroid/net/Uri;)I
    .registers 2
    .parameter

    .prologue
    .line 198
    const-string v0, "id"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 199
    return v0
.end method

.method private static a(Landroid/net/Uri$Builder;I)Landroid/net/Uri$Builder;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->encodedQuery(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    return-object v0
.end method

.method static a()Landroid/net/Uri;
    .registers 1

    .prologue
    .line 118
    sget-object v0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetProvider;->a:Landroid/net/Uri;

    return-object v0
.end method

.method static a(I)Landroid/net/Uri;
    .registers 5
    .parameter

    .prologue
    .line 129
    sget-object v1, Lcom/google/googlenav/appwidget/traffic/k;->f:Ljava/util/Map;

    monitor-enter v1

    .line 130
    :try_start_3
    sget-object v0, Lcom/google/googlenav/appwidget/traffic/k;->f:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 131
    if-eqz v0, :cond_13

    .line 132
    monitor-exit v1

    .line 137
    :goto_12
    return-object v0

    .line 134
    :cond_13
    sget-object v0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetProvider;->a:Landroid/net/Uri;

    int-to-long v2, p0

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 136
    sget-object v2, Lcom/google/googlenav/appwidget/traffic/k;->f:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    monitor-exit v1

    goto :goto_12

    .line 138
    :catchall_25
    move-exception v0

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v0
.end method

.method private static a(Landroid/net/Uri;Ljava/lang/String;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 255
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static b()Landroid/net/Uri;
    .registers 1

    .prologue
    .line 188
    sget-object v0, Lcom/google/googlenav/appwidget/traffic/k;->e:Landroid/net/Uri;

    return-object v0
.end method

.method static b(I)Landroid/net/Uri;
    .registers 5
    .parameter

    .prologue
    .line 149
    sget-object v1, Lcom/google/googlenav/appwidget/traffic/k;->g:Ljava/util/Map;

    monitor-enter v1

    .line 150
    :try_start_3
    sget-object v0, Lcom/google/googlenav/appwidget/traffic/k;->g:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 151
    if-eqz v0, :cond_13

    .line 152
    monitor-exit v1

    .line 158
    :goto_12
    return-object v0

    .line 154
    :cond_13
    sget-object v0, Lcom/google/googlenav/appwidget/traffic/k;->b:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 156
    invoke-static {v0, p0}, Lcom/google/googlenav/appwidget/traffic/k;->a(Landroid/net/Uri$Builder;I)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 157
    sget-object v2, Lcom/google/googlenav/appwidget/traffic/k;->g:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    monitor-exit v1

    goto :goto_12

    .line 159
    :catchall_2c
    move-exception v0

    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw v0
.end method

.method static b(Landroid/net/Uri;)Z
    .registers 3
    .parameter

    .prologue
    .line 209
    if-eqz p0, :cond_1c

    const-string v0, "appwidgets"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string v0, "com.google.googlenav.appwidget.Traffic"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method static c(I)Landroid/net/Uri;
    .registers 2
    .parameter

    .prologue
    .line 167
    sget-object v0, Lcom/google/googlenav/appwidget/traffic/k;->c:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 169
    invoke-static {v0, p0}, Lcom/google/googlenav/appwidget/traffic/k;->a(Landroid/net/Uri$Builder;I)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 170
    return-object v0
.end method

.method static c(Landroid/net/Uri;)Z
    .registers 2
    .parameter

    .prologue
    .line 216
    invoke-static {p0}, Lcom/google/googlenav/appwidget/traffic/k;->b(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "update"

    invoke-static {p0, v0}, Lcom/google/googlenav/appwidget/traffic/k;->a(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method static d(I)Landroid/net/Uri;
    .registers 2
    .parameter

    .prologue
    .line 178
    sget-object v0, Lcom/google/googlenav/appwidget/traffic/k;->d:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 179
    invoke-static {v0, p0}, Lcom/google/googlenav/appwidget/traffic/k;->a(Landroid/net/Uri$Builder;I)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 180
    return-object v0
.end method

.method static d(Landroid/net/Uri;)Z
    .registers 2
    .parameter

    .prologue
    .line 223
    invoke-static {p0}, Lcom/google/googlenav/appwidget/traffic/k;->b(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "wakeup"

    invoke-static {p0, v0}, Lcom/google/googlenav/appwidget/traffic/k;->a(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private static e(I)Ljava/util/Map;
    .registers 2
    .parameter

    .prologue
    .line 111
    new-instance v0, Lcom/google/googlenav/appwidget/traffic/a;

    invoke-direct {v0, p0}, Lcom/google/googlenav/appwidget/traffic/a;-><init>(I)V

    return-object v0
.end method

.method static e(Landroid/net/Uri;)Z
    .registers 2
    .parameter

    .prologue
    .line 230
    invoke-static {p0}, Lcom/google/googlenav/appwidget/traffic/k;->b(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "cancelUpdate"

    invoke-static {p0, v0}, Lcom/google/googlenav/appwidget/traffic/k;->a(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method static f(Landroid/net/Uri;)Z
    .registers 2
    .parameter

    .prologue
    .line 238
    invoke-static {p0}, Lcom/google/googlenav/appwidget/traffic/k;->b(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "updateLocation"

    invoke-static {p0, v0}, Lcom/google/googlenav/appwidget/traffic/k;->a(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method
