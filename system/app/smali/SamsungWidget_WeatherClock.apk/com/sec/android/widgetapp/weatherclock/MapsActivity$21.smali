.class Lcom/sec/android/widgetapp/weatherclock/MapsActivity$21;
.super Lcom/sec/android/widgetapp/weatherclock/http/HttpResponseHandler;
.source "MapsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->perform_Acity(Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 956
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$21;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/http/HttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(IILjava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "position"
    .parameter "responseCode"
    .parameter "responseStatus"
    .parameter "responseBody"

    .prologue
    .line 959
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/android/widgetapp/weatherclock/http/HttpResponseHandler;->onReceive(IILjava/lang/String;Ljava/lang/String;)V

    .line 961
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 962
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 963
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "RESPONSE_CODE"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 964
    const-string v2, "RESPONSE_BODY"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 965
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 966
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$21;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    iget-object v2, v2, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->dataHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 967
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$21;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    invoke-virtual {v2, p1}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->deleteMe(I)V

    .line 968
    return-void
.end method