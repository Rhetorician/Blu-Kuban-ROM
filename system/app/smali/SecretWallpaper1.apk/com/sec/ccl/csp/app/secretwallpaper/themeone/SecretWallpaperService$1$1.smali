.class Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$1$1;
.super Ljava/lang/Object;
.source "SecretWallpaperService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$1;


# direct methods
.method constructor <init>(Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$1;)V
    .registers 2
    .parameter

    .prologue
    .line 1119
    iput-object p1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$1$1;->this$1:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 1121
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 1122
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$1$1;->this$1:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$1;

    iget-object v0, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$1;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;

    #calls: Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->checkWeather()V
    invoke-static {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->access$500(Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;)V

    .line 1123
    return-void
.end method