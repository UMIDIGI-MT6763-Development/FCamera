.class Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode$7;
.super Ljava/lang/Object;
.source "VideoBeautyFaceMode.java"

# interfaces
.implements Lcom/freeme/camera/feature/mode/videobeautyface/device/IDeviceController$SettingConfigCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode$7;->this$0:Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfig(Lcom/freeme/camera/common/utils/Size;)V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode$7;->this$0:Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;

    iget-object v0, v0, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;->mVideoHelper:Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceHelper;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceHelper;->releasePreviewFrameData()V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode$7;->this$0:Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;

    iget-object v0, v0, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;->mVideoHelper:Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceHelper;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceHelper;->updatePreviewSize(Lcom/freeme/camera/common/utils/Size;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode$7;->this$0:Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;

    iget-object v0, v0, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    invoke-virtual {p1}, Lcom/freeme/camera/common/utils/Size;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/freeme/camera/common/utils/Size;->getHeight()I

    move-result p1

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode$7;->this$0:Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;

    iget-object v2, v2, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;->mVideoHelper:Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceHelper;

    invoke-virtual {v2}, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceHelper;->getSurfaceListener()Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceHelper$SurfaceChangeListener;

    move-result-object v2

    invoke-interface {v0, v1, p1, v2}, Lcom/freeme/camera/common/IAppUi;->setPreviewSize(IILcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode$7;->this$0:Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;->access$1000(Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;)V

    return-void
.end method
