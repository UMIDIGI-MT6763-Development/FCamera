.class Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$4;
.super Ljava/lang/Object;
.source "ShortVideoMode.java"

# interfaces
.implements Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController$SettingConfigCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$4;->this$0:Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfig(Lcom/freeme/camera/common/utils/Size;)V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$4;->this$0:Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;

    iget-object v0, v0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mVideoHelper:Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->releasePreviewFrameData()V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$4;->this$0:Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;

    iget-object v0, v0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mVideoHelper:Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->updatePreviewSize(Lcom/freeme/camera/common/utils/Size;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$4;->this$0:Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;

    iget-object v0, v0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    invoke-virtual {p1}, Lcom/freeme/camera/common/utils/Size;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/freeme/camera/common/utils/Size;->getHeight()I

    move-result p1

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$4;->this$0:Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;

    iget-object v2, v2, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mVideoHelper:Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;

    invoke-virtual {v2}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->getSurfaceListener()Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper$SurfaceChangeListener;

    move-result-object v2

    invoke-interface {v0, v1, p1, v2}, Lcom/freeme/camera/common/IAppUi;->setPreviewSize(IILcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$4;->this$0:Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->access$300(Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;)V

    return-void
.end method
