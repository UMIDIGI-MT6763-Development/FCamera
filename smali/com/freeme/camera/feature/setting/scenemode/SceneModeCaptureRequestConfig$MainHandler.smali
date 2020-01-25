.class Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig$MainHandler;
.super Landroid/os/Handler;
.source "SceneModeCaptureRequestConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig;


# direct methods
.method public constructor <init>(Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig$ModeEnum;->HDR:Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig$ModeEnum;

    invoke-virtual {p1}, Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig$ModeEnum;->getName()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig;->access$400(Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig;)Lcom/freeme/camera/feature/setting/scenemode/SceneMode;

    move-result-object p1

    const-string v0, "hdr-detection"

    invoke-virtual {p1, v0}, Lcom/freeme/camera/feature/setting/scenemode/SceneMode;->onSceneDetected(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig;->access$400(Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig;)Lcom/freeme/camera/feature/setting/scenemode/SceneMode;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/freeme/camera/feature/setting/scenemode/SceneMode;->onSceneDetected(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
