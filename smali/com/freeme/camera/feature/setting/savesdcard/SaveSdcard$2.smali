.class Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard$2;
.super Landroid/content/BroadcastReceiver;
.source "SaveSdcard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard$2;->this$0:Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard$2;->this$0:Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;->access$800(Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;)Lcom/freeme/camera/common/app/IApp;

    move-result-object p1

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/freeme/camera/CameraActivity;

    invoke-virtual {p1}, Lcom/freeme/camera/CameraActivity;->getMainHandler()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard$2;->this$0:Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;->access$1200(Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;)Lcom/freeme/camera/common/app/IApp;

    move-result-object p1

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/freeme/camera/CameraActivity;

    invoke-virtual {p1}, Lcom/freeme/camera/CameraActivity;->getMainHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard$2$1;

    invoke-direct {p2, p0}, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard$2$1;-><init>(Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard$2;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method
