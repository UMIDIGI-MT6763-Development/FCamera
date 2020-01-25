.class Lcom/mediatek/camera/portability/WifiDisplayStatusEx$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiDisplayStatusEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/camera/portability/WifiDisplayStatusEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/camera/portability/WifiDisplayStatusEx;


# direct methods
.method constructor <init>(Lcom/mediatek/camera/portability/WifiDisplayStatusEx;)V
    .locals 0

    iput-object p1, p0, Lcom/mediatek/camera/portability/WifiDisplayStatusEx$1;->this$0:Lcom/mediatek/camera/portability/WifiDisplayStatusEx;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string p1, "WifiDisplayStatusEx"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onReceive]("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mediatek/camera/portability/WifiDisplayStatusEx$1;->this$0:Lcom/mediatek/camera/portability/WifiDisplayStatusEx;

    invoke-static {p1}, Lcom/mediatek/camera/portability/WifiDisplayStatusEx;->access$000(Lcom/mediatek/camera/portability/WifiDisplayStatusEx;)Z

    move-result p2

    invoke-static {p1, p2}, Lcom/mediatek/camera/portability/WifiDisplayStatusEx;->access$100(Lcom/mediatek/camera/portability/WifiDisplayStatusEx;Z)V

    :cond_0
    return-void
.end method
