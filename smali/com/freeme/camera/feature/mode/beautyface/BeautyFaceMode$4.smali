.class Lcom/freeme/camera/feature/mode/beautyface/BeautyFaceMode$4;
.super Ljava/lang/Object;
.source "BeautyFaceMode.java"

# interfaces
.implements Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$DataBeautyHandleCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/mode/beautyface/BeautyFaceMode;->onDataReceived(Lcom/freeme/camera/feature/mode/beautyface/device/IDeviceController$DataCallbackInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/mode/beautyface/BeautyFaceMode;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/mode/beautyface/BeautyFaceMode;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/beautyface/BeautyFaceMode$4;->this$0:Lcom/freeme/camera/feature/mode/beautyface/BeautyFaceMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataBeautyCallback([B)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/beautyface/BeautyFaceMode$4;->this$0:Lcom/freeme/camera/feature/mode/beautyface/BeautyFaceMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/beautyface/BeautyFaceMode;->access$800(Lcom/freeme/camera/feature/mode/beautyface/BeautyFaceMode;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/freeme/camera/CameraActivity;->getWorkerHandler()Lcom/freeme/camera/CameraActivity$WorkerHandler;

    move-result-object v0

    new-instance v1, Lcom/freeme/camera/feature/mode/beautyface/BeautyFaceMode$4$1;

    invoke-direct {v1, p0, p1}, Lcom/freeme/camera/feature/mode/beautyface/BeautyFaceMode$4$1;-><init>(Lcom/freeme/camera/feature/mode/beautyface/BeautyFaceMode$4;[B)V

    invoke-virtual {v0, v1}, Lcom/freeme/camera/CameraActivity$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onNeedBeautyCallback([B)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/beautyface/BeautyFaceMode$4;->this$0:Lcom/freeme/camera/feature/mode/beautyface/BeautyFaceMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/beautyface/BeautyFaceMode;->access$900(Lcom/freeme/camera/feature/mode/beautyface/BeautyFaceMode;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/freeme/camera/CameraActivity;->getWorkerHandler()Lcom/freeme/camera/CameraActivity$WorkerHandler;

    move-result-object v0

    new-instance v1, Lcom/freeme/camera/feature/mode/beautyface/BeautyFaceMode$4$2;

    invoke-direct {v1, p0, p1}, Lcom/freeme/camera/feature/mode/beautyface/BeautyFaceMode$4$2;-><init>(Lcom/freeme/camera/feature/mode/beautyface/BeautyFaceMode$4;[B)V

    invoke-virtual {v0, v1}, Lcom/freeme/camera/CameraActivity$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onThumbCallback([B)V
    .locals 0

    return-void
.end method
