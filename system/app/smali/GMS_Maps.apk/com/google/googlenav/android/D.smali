.class public Lcom/google/googlenav/android/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/aA;
.implements Lcom/google/googlenav/android/h;


# instance fields
.field private a:Lcom/google/googlenav/android/i;

.field private final b:Lcom/google/googlenav/android/h;

.field private c:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/android/i;)V
    .registers 3
    .parameter

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/android/d;->c:Ljava/lang/Boolean;

    .line 85
    iput-object p1, p0, Lcom/google/googlenav/android/d;->a:Lcom/google/googlenav/android/i;

    .line 86
    iput-object p0, p0, Lcom/google/googlenav/android/d;->b:Lcom/google/googlenav/android/h;

    .line 87
    return-void
.end method

.method private static a(Lcom/google/googlenav/android/i;Ljava/lang/String;)Landroid/content/Intent;
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 430
    .line 433
    :try_start_1
    invoke-virtual {p0}, Lcom/google/googlenav/android/i;->f()Lcom/google/android/maps/MapsActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/MapsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "contact_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "lookup"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_4d

    move-result-object v1

    .line 438
    if-eqz v1, :cond_47

    :try_start_29
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 439
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 440
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 441
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 442
    invoke-static {v2, v3, v0}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 443
    new-instance v6, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v6, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_47
    .catchall {:try_start_29 .. :try_end_47} :catchall_55

    .line 446
    :cond_47
    if-eqz v1, :cond_4c

    .line 447
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 450
    :cond_4c
    return-object v6

    .line 446
    :catchall_4d
    move-exception v0

    move-object v1, v6

    :goto_4f
    if-eqz v1, :cond_54

    .line 447
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_54
    throw v0

    .line 446
    :catchall_55
    move-exception v0

    goto :goto_4f
.end method

.method static synthetic a(Lcom/google/googlenav/android/d;)Lcom/google/googlenav/android/i;
    .registers 2
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/googlenav/android/d;->a:Lcom/google/googlenav/android/i;

    return-object v0
.end method

.method public static b(Landroid/content/Intent;)Landroid/content/Intent;
    .registers 2
    .parameter

    .prologue
    .line 275
    invoke-static {}, Lcom/google/googlenav/common/c;->b()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 276
    const-string v0, "com.google.android.maps.IntentCatcher.CATEGORY"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    :cond_b
    return-object p0
.end method

.method private f(Ljava/lang/String;)Landroid/content/Intent;
    .registers 5
    .parameter

    .prologue
    .line 318
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 319
    const-string v1, "com.android.im.category.GTALK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 320
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "im:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 321
    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/googlenav/android/d;->a:Lcom/google/googlenav/android/i;

    invoke-virtual {v0}, Lcom/google/googlenav/android/i;->f()Lcom/google/android/maps/MapsActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/MapsActivity;->finish()V

    .line 132
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .registers 6
    .parameter

    .prologue
    .line 622
    const-string v0, "market://details?id=com.google.android.apps.maps&hl="

    .line 624
    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.android.vending"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_c} :catch_25

    .line 631
    :goto_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/google/googlenav/common/Config;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/android/d;->a(Ljava/lang/String;)V

    .line 632
    return-void

    .line 626
    :catch_25
    move-exception v0

    .line 629
    const-string v0, "http://market.android.com/details?id=com.google.android.apps.maps&hl="

    goto :goto_c
.end method

.method public a(Landroid/content/Intent;)V
    .registers 3
    .parameter

    .prologue
    .line 265
    iget-object v0, p0, Lcom/google/googlenav/android/d;->a:Lcom/google/googlenav/android/i;

    invoke-virtual {v0}, Lcom/google/googlenav/android/i;->f()Lcom/google/android/maps/MapsActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/maps/MapsActivity;->startActivity(Landroid/content/Intent;)V

    .line 266
    return-void
.end method

.method public a(Lcom/google/googlenav/android/R;)V
    .registers 4
    .parameter

    .prologue
    .line 518
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 519
    const-string v1, "vnd.android.cursor.dir/postal-address_v2"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 520
    invoke-static {}, Lcom/google/googlenav/android/Q;->a()Lcom/google/googlenav/android/Q;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/google/googlenav/android/Q;->a(Landroid/content/Intent;Lcom/google/googlenav/android/R;)V

    .line 521
    return-void
.end method

.method public a(Lcom/google/googlenav/ui/ap;)V
    .registers 4
    .parameter

    .prologue
    .line 456
    if-nez p1, :cond_d

    .line 457
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 466
    :goto_9
    :try_start_9
    invoke-virtual {p0, v0}, Lcom/google/googlenav/android/d;->a(Landroid/content/Intent;)V
    :try_end_c
    .catch Landroid/content/ActivityNotFoundException; {:try_start_9 .. :try_end_c} :catch_23

    .line 477
    :goto_c
    return-void

    .line 459
    :cond_d
    invoke-virtual {p1}, Lcom/google/googlenav/ui/ap;->t()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 460
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_9

    .line 462
    :cond_1b
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_9

    .line 467
    :catch_23
    move-exception v0

    .line 470
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 472
    :try_start_2b
    invoke-virtual {p0, v0}, Lcom/google/googlenav/android/d;->a(Landroid/content/Intent;)V
    :try_end_2e
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2b .. :try_end_2e} :catch_2f

    goto :goto_c

    .line 473
    :catch_2f
    move-exception v0

    goto :goto_c
.end method

.method public a(Ljava/lang/Class;)V
    .registers 5
    .parameter

    .prologue
    .line 568
    iget-object v0, p0, Lcom/google/googlenav/android/d;->a:Lcom/google/googlenav/android/i;

    invoke-virtual {v0}, Lcom/google/googlenav/android/i;->f()Lcom/google/android/maps/MapsActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/google/googlenav/android/d;->a:Lcom/google/googlenav/android/i;

    invoke-virtual {v2}, Lcom/google/googlenav/android/i;->f()Lcom/google/android/maps/MapsActivity;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/MapsActivity;->startActivity(Landroid/content/Intent;)V

    .line 569
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 9
    .parameter

    .prologue
    .line 155
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 156
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {v0}, Lcom/google/googlenav/android/d;->b(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 160
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 161
    const-string v3, "referer"

    const-string v4, "http://maps.google.com"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v3, "com.android.browser.headers"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 165
    :try_start_20
    iget-object v2, p0, Lcom/google/googlenav/android/d;->b:Lcom/google/googlenav/android/h;

    invoke-interface {v2, v0}, Lcom/google/googlenav/android/h;->a(Landroid/content/Intent;)V
    :try_end_25
    .catch Landroid/content/ActivityNotFoundException; {:try_start_20 .. :try_end_25} :catch_39

    .line 173
    :goto_25
    invoke-static {}, Lcom/google/googlenav/common/c;->a()Z

    move-result v0

    if-eqz v0, :cond_38

    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 174
    const-string v0, "launchUrl"

    invoke-static {v0, p1}, LaT/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :cond_38
    return-void

    .line 166
    :catch_39
    move-exception v0

    .line 167
    iget-object v2, p0, Lcom/google/googlenav/android/d;->a:Lcom/google/googlenav/android/i;

    invoke-virtual {v2}, Lcom/google/googlenav/android/i;->i()Lcom/google/googlenav/ui/v;

    move-result-object v2

    const/16 v3, 0x1f

    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/googlenav/ui/v;->b(Ljava/lang/String;)V

    .line 169
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "APS-URL"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, LaT/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_25
.end method

.method public a(Ljava/lang/String;Lcom/google/googlenav/aB;Z)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 355
    const-string v0, "tel"

    invoke-static {v0, p1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 356
    if-eqz p2, :cond_11

    .line 357
    new-instance v0, Lcom/google/googlenav/android/g;

    invoke-direct {v0, p0, p1, p2, v2}, Lcom/google/googlenav/android/g;-><init>(Lcom/google/googlenav/android/d;Ljava/lang/String;Lcom/google/googlenav/aB;Lcom/google/googlenav/android/e;)V

    invoke-static {v0}, Lcom/google/googlenav/android/g;->a(Lcom/google/googlenav/android/g;)V

    .line 359
    :cond_11
    new-instance v2, Landroid/content/Intent;

    if-eqz p3, :cond_24

    const-string v0, "android.intent.action.CALL"

    :goto_17
    invoke-direct {v2, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {v2}, Lcom/google/googlenav/android/d;->b(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 361
    iget-object v1, p0, Lcom/google/googlenav/android/d;->b:Lcom/google/googlenav/android/h;

    invoke-interface {v1, v0}, Lcom/google/googlenav/android/h;->a(Landroid/content/Intent;)V

    .line 362
    return-void

    .line 359
    :cond_24
    const-string v0, "android.intent.action.DIAL"

    goto :goto_17
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sms:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 482
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 483
    const-string v0, "sms_body"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 484
    iget-object v0, p0, Lcom/google/googlenav/android/d;->b:Lcom/google/googlenav/android/h;

    invoke-interface {v0, v1}, Lcom/google/googlenav/android/h;->a(Landroid/content/Intent;)V

    .line 485
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 489
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 490
    if-eqz p3, :cond_c

    .line 491
    const-string v1, "searchUiSource"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    :cond_c
    if-eqz p2, :cond_13

    .line 497
    const-string v1, "searchNearBy"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    :cond_13
    iget-object v1, p0, Lcom/google/googlenav/android/d;->a:Lcom/google/googlenav/android/i;

    invoke-virtual {v1}, Lcom/google/googlenav/android/i;->f()Lcom/google/android/maps/MapsActivity;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v0, v3}, Lcom/google/android/maps/MapsActivity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 500
    return-void
.end method

.method public a([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 330
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 331
    const-string v1, "message/rfc822"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 332
    const-string v1, "android.intent.extra.EMAIL"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 333
    const-string v1, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 334
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 340
    iget-object v1, p0, Lcom/google/googlenav/android/d;->b:Lcom/google/googlenav/android/h;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/googlenav/android/h;->a(Landroid/content/Intent;)V

    .line 342
    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 137
    invoke-static {}, Lcom/google/googlenav/common/Config;->E()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 9
    .parameter

    .prologue
    .line 213
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 214
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {v0}, Lcom/google/googlenav/android/d;->b(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 217
    :try_start_f
    iget-object v2, p0, Lcom/google/googlenav/android/d;->b:Lcom/google/googlenav/android/h;

    invoke-interface {v2, v0}, Lcom/google/googlenav/android/h;->a(Landroid/content/Intent;)V
    :try_end_14
    .catch Landroid/content/ActivityNotFoundException; {:try_start_f .. :try_end_14} :catch_15

    .line 228
    :goto_14
    return-void

    .line 218
    :catch_15
    move-exception v0

    .line 219
    invoke-static {}, Lcom/google/googlenav/common/c;->a()Z

    move-result v2

    if-eqz v2, :cond_42

    .line 220
    iget-object v2, p0, Lcom/google/googlenav/android/d;->a:Lcom/google/googlenav/android/i;

    invoke-virtual {v2}, Lcom/google/googlenav/android/i;->i()Lcom/google/googlenav/ui/v;

    move-result-object v2

    const-string v3, "Using Navigation requires a build that includes DriveAbout."

    invoke-virtual {v2, v3}, Lcom/google/googlenav/ui/v;->b(Ljava/lang/String;)V

    .line 226
    :goto_27
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "APS-URL"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, LaT/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_14

    .line 223
    :cond_42
    iget-object v2, p0, Lcom/google/googlenav/android/d;->a:Lcom/google/googlenav/android/i;

    invoke-virtual {v2}, Lcom/google/googlenav/android/i;->i()Lcom/google/googlenav/ui/v;

    move-result-object v2

    const/16 v3, 0x1f

    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/googlenav/ui/v;->b(Ljava/lang/String;)V

    goto :goto_27
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 286
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    sget-object v2, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 288
    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 289
    const-string v1, "full_mode"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 290
    const-string v1, "postal"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    const-string v1, "postal_type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 293
    const-string v1, "phone"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    const-string v1, "phone_type"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 297
    const-string v1, "finishActivityOnSaveCompleted"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 298
    iget-object v1, p0, Lcom/google/googlenav/android/d;->b:Lcom/google/googlenav/android/h;

    invoke-interface {v1, v0}, Lcom/google/googlenav/android/h;->a(Landroid/content/Intent;)V

    .line 299
    return-void
.end method

.method public c()V
    .registers 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/googlenav/android/d;->a:Lcom/google/googlenav/android/i;

    invoke-virtual {v0}, Lcom/google/googlenav/android/i;->f()Lcom/google/android/maps/MapsActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/MapsActivity;->finish()V

    .line 151
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 9
    .parameter

    .prologue
    .line 234
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 235
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {v0}, Lcom/google/googlenav/android/d;->b(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 237
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    .line 239
    const-string v4, "instrumentation_entrance_time"

    invoke-virtual {v0, v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 242
    :try_start_1c
    iget-object v2, p0, Lcom/google/googlenav/android/d;->b:Lcom/google/googlenav/android/h;

    invoke-interface {v2, v0}, Lcom/google/googlenav/android/h;->a(Landroid/content/Intent;)V
    :try_end_21
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1c .. :try_end_21} :catch_22

    .line 248
    :goto_21
    return-void

    .line 243
    :catch_22
    move-exception v0

    .line 244
    iget-object v2, p0, Lcom/google/googlenav/android/d;->a:Lcom/google/googlenav/android/i;

    invoke-virtual {v2}, Lcom/google/googlenav/android/i;->i()Lcom/google/googlenav/ui/v;

    move-result-object v2

    const/16 v3, 0x1f

    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/googlenav/ui/v;->b(Ljava/lang/String;)V

    .line 246
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "APS-SV"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, LaT/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_21
.end method

.method public d()V
    .registers 1

    .prologue
    .line 114
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 413
    iget-object v0, p0, Lcom/google/googlenav/android/d;->a:Lcom/google/googlenav/android/i;

    invoke-static {v0, p1}, Lcom/google/googlenav/android/d;->a(Lcom/google/googlenav/android/i;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 414
    if-eqz v0, :cond_c

    .line 415
    invoke-virtual {p0, v0}, Lcom/google/googlenav/android/d;->a(Landroid/content/Intent;)V

    .line 422
    :goto_b
    return-void

    .line 417
    :cond_c
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 418
    const-string v1, "com.android.contacts.action.SHOW_OR_CREATE_CONTACT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 419
    const-string v1, "mailto"

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 420
    invoke-virtual {p0, v0}, Lcom/google/googlenav/android/d;->a(Landroid/content/Intent;)V

    goto :goto_b
.end method

.method public e(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 313
    invoke-direct {p0, p1}, Lcom/google/googlenav/android/d;->f(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 314
    iget-object v1, p0, Lcom/google/googlenav/android/d;->b:Lcom/google/googlenav/android/h;

    invoke-interface {v1, v0}, Lcom/google/googlenav/android/h;->a(Landroid/content/Intent;)V

    .line 315
    return-void
.end method

.method public e()Z
    .registers 3

    .prologue
    .line 346
    iget-object v0, p0, Lcom/google/googlenav/android/d;->c:Ljava/lang/Boolean;

    if-nez v0, :cond_18

    .line 347
    invoke-static {}, Lcom/google/googlenav/capabilities/a;->a()Lcom/google/googlenav/capabilities/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/android/d;->a:Lcom/google/googlenav/android/i;

    invoke-virtual {v1}, Lcom/google/googlenav/android/i;->f()Lcom/google/android/maps/MapsActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/capabilities/a;->b(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/android/d;->c:Ljava/lang/Boolean;

    .line 350
    :cond_18
    iget-object v0, p0, Lcom/google/googlenav/android/d;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public f()V
    .registers 3

    .prologue
    .line 504
    iget-object v0, p0, Lcom/google/googlenav/android/d;->a:Lcom/google/googlenav/android/i;

    invoke-virtual {v0}, Lcom/google/googlenav/android/i;->d()Lcom/google/googlenav/android/AndroidGmmApplication;

    move-result-object v0

    const-string v1, "search"

    invoke-virtual {v0, v1}, Lcom/google/googlenav/android/AndroidGmmApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 506
    if-eqz v0, :cond_13

    .line 508
    invoke-virtual {v0}, Landroid/app/SearchManager;->stopSearch()V

    .line 510
    :cond_13
    return-void
.end method

.method public g()Z
    .registers 2

    .prologue
    .line 530
    iget-object v0, p0, Lcom/google/googlenav/android/d;->a:Lcom/google/googlenav/android/i;

    invoke-virtual {v0}, Lcom/google/googlenav/android/i;->d()Lcom/google/googlenav/android/AndroidGmmApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/AndroidGmmApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/android/U;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public h()V
    .registers 6

    .prologue
    .line 574
    :try_start_0
    iget-object v0, p0, Lcom/google/googlenav/android/d;->b:Lcom/google/googlenav/android/h;

    const-class v1, Lcom/google/googlenav/settings/SettingsPreferenceActivity;

    invoke-interface {v0, v1}, Lcom/google/googlenav/android/h;->a(Ljava/lang/Class;)V
    :try_end_7
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_7} :catch_8

    .line 580
    :goto_7
    return-void

    .line 575
    :catch_8
    move-exception v0

    .line 576
    iget-object v0, p0, Lcom/google/googlenav/android/d;->a:Lcom/google/googlenav/android/i;

    invoke-virtual {v0}, Lcom/google/googlenav/android/i;->i()Lcom/google/googlenav/ui/v;

    move-result-object v0

    const/16 v1, 0x1f

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-class v4, Lcom/google/googlenav/settings/SettingsPreferenceActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/v;->b(Ljava/lang/String;)V

    goto :goto_7
.end method

.method public i()V
    .registers 5

    .prologue
    .line 596
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.BUG_REPORT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 599
    new-instance v1, Lcom/google/googlenav/android/f;

    invoke-direct {v1, p0}, Lcom/google/googlenav/android/f;-><init>(Lcom/google/googlenav/android/d;)V

    .line 617
    iget-object v2, p0, Lcom/google/googlenav/android/d;->a:Lcom/google/googlenav/android/i;

    invoke-virtual {v2}, Lcom/google/googlenav/android/i;->f()Lcom/google/android/maps/MapsActivity;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v1, v3}, Lcom/google/android/maps/MapsActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 618
    return-void
.end method

.method public j()V
    .registers 3

    .prologue
    .line 636
    iget-object v0, p0, Lcom/google/googlenav/android/d;->a:Lcom/google/googlenav/android/i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/android/i;->a(Lcom/google/android/maps/A;)V

    .line 637
    return-void
.end method

.method public k()V
    .registers 5

    .prologue
    .line 252
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/googlenav/android/d;->b(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 253
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.google.android.apps.maps"

    const-string v3, "com.google.android.maps.driveabout.app.DestinationActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 256
    :try_start_17
    iget-object v1, p0, Lcom/google/googlenav/android/d;->b:Lcom/google/googlenav/android/h;

    invoke-interface {v1, v0}, Lcom/google/googlenav/android/h;->a(Landroid/content/Intent;)V
    :try_end_1c
    .catch Landroid/content/ActivityNotFoundException; {:try_start_17 .. :try_end_1c} :catch_1d

    .line 261
    :goto_1c
    return-void

    .line 257
    :catch_1d
    move-exception v0

    .line 258
    iget-object v0, p0, Lcom/google/googlenav/android/d;->a:Lcom/google/googlenav/android/i;

    invoke-virtual {v0}, Lcom/google/googlenav/android/i;->i()Lcom/google/googlenav/ui/v;

    move-result-object v0

    const-string v1, "Using Navigation requires a build that includes DriveAbout."

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/v;->b(Ljava/lang/String;)V

    goto :goto_1c
.end method
