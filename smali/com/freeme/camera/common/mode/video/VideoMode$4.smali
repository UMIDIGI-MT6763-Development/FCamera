.class Lcom/freeme/camera/common/mode/video/VideoMode$4;
.super Ljava/lang/Object;
.source "VideoMode.java"

# interfaces
.implements Lcom/freeme/camera/common/mode/video/device/IDeviceController$SettingConfigCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/common/mode/video/VideoMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/common/mode/video/VideoMode;


# direct methods
.method constructor <init>(Lcom/freeme/camera/common/mode/video/VideoMode;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/common/mode/video/VideoMode$4;->this$0:Lcom/freeme/camera/common/mode/video/VideoMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfig(Lcom/freeme/camera/common/utils/Size;)V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/common/mode/video/VideoMode$4;->this$0:Lcom/freeme/camera/common/mode/video/VideoMode;

    iget-object v0, v0, Lcom/freeme/camera/common/mode/video/VideoMode;->mVideoHelper:Lcom/freeme/camera/common/mode/video/VideoHelper;

    invoke-virtual {v0}, Lcom/freeme/camera/common/mode/video/VideoHelper;->releasePreviewFrameData()V

    iget-object v0, p0, Lcom/freeme/camera/common/mode/video/VideoMode$4;->this$0:Lcom/freeme/camera/common/mode/video/VideoMode;

    iget-object v0, v0, Lcom/freeme/camera/common/mode/video/VideoMode;->mVideoHelper:Lcom/freeme/camera/common/mode/video/VideoHelper;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/common/mode/video/VideoHelper;->updatePreviewSize(Lcom/freeme/camera/common/utils/Size;)V

    iget-object v0, p0, Lcom/freeme/camera/common/mode/video/VideoMode$4;->this$0:Lcom/freeme/camera/common/mode/video/VideoMode;

    iget-object v0, v0, Lcom/freeme/camera/common/mode/video/VideoMode;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    invoke-virtual {p1}, Lcom/freeme/camera/common/utils/Size;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/freeme/camera/common/utils/Size;->getHeight()I

    move-result p1

    iget-object v2, p0, Lcom/freeme/camera/common/mode/video/VideoMode$4;->this$0:Lcom/freeme/camera/common/mode/video/VideoMode;

    iget-object v2, v2, Lcom/freeme/camera/common/mode/video/VideoMode;->mVideoHelper:Lcom/freeme/camera/common/mode/video/VideoHelper;

    invoke-virtual {v2}, Lcom/freeme/camera/common/mode/video/VideoHelper;->getSurfaceListener()Lcom/freeme/camera/common/mode/video/VideoHelper$SurfaceChangeListener;

    move-result-object v2

    invoke-interface {v0, v1, p1, v2}, Lcom/freeme/camera/common/IAppUi;->setPreviewSize(IILcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;)V

    iget-object p1, p0, Lcom/freeme/camera/common/mode/video/VideoMode$4;->this$0:Lcom/freeme/camera/common/mode/video/VideoMode;

    invoke-static {p1}, Lcom/freeme/camera/common/mode/video/VideoMode;->access$300(Lcom/freeme/camera/common/mode/video/VideoMode;)V

    return-void
.end method
