.class Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode$SurfaceChangeListener$2;
.super Ljava/lang/Object;
.source "CameraWaterMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode$SurfaceChangeListener;->surfaceChanged(Ljava/lang/Object;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode$SurfaceChangeListener;

.field final synthetic val$surfaceObject:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode$SurfaceChangeListener;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode$SurfaceChangeListener$2;->this$1:Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode$SurfaceChangeListener;

    iput-object p2, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode$SurfaceChangeListener$2;->val$surfaceObject:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode$SurfaceChangeListener$2;->this$1:Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode$SurfaceChangeListener;

    iget-object v0, v0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode$SurfaceChangeListener;->this$0:Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;

    iget-object v0, v0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mIDeviceController:Lcom/freeme/camera/feature/mode/camerawater/device/IDeviceController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode$SurfaceChangeListener$2;->this$1:Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode$SurfaceChangeListener;

    iget-object v0, v0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode$SurfaceChangeListener;->this$0:Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;

    iget-boolean v0, v0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mIsResumed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode$SurfaceChangeListener$2;->this$1:Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode$SurfaceChangeListener;

    iget-object v0, v0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode$SurfaceChangeListener;->this$0:Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;

    iget-object v0, v0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mIDeviceController:Lcom/freeme/camera/feature/mode/camerawater/device/IDeviceController;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode$SurfaceChangeListener$2;->val$surfaceObject:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/freeme/camera/feature/mode/camerawater/device/IDeviceController;->updatePreviewSurface(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
