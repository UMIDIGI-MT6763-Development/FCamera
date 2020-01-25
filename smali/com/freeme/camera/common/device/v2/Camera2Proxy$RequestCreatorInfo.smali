.class final Lcom/freeme/camera/common/device/v2/Camera2Proxy$RequestCreatorInfo;
.super Ljava/lang/Object;
.source "Camera2Proxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/common/device/v2/Camera2Proxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "RequestCreatorInfo"
.end annotation


# instance fields
.field mResult:Landroid/hardware/camera2/TotalCaptureResult;

.field final synthetic this$0:Lcom/freeme/camera/common/device/v2/Camera2Proxy;


# direct methods
.method constructor <init>(Lcom/freeme/camera/common/device/v2/Camera2Proxy;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/common/device/v2/Camera2Proxy$RequestCreatorInfo;->this$0:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/freeme/camera/common/device/v2/Camera2Proxy$RequestCreatorInfo;->mResult:Landroid/hardware/camera2/TotalCaptureResult;

    return-void
.end method


# virtual methods
.method setCaptureRequestBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2Proxy$RequestCreatorInfo;->this$0:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    invoke-static {v0, p1}, Lcom/freeme/camera/common/device/v2/Camera2Proxy;->access$002(Lcom/freeme/camera/common/device/v2/Camera2Proxy;Landroid/hardware/camera2/CaptureRequest$Builder;)Landroid/hardware/camera2/CaptureRequest$Builder;

    return-void
.end method

.method setReprocessRequestBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2Proxy$RequestCreatorInfo;->this$0:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    invoke-static {v0, p1}, Lcom/freeme/camera/common/device/v2/Camera2Proxy;->access$102(Lcom/freeme/camera/common/device/v2/Camera2Proxy;Landroid/hardware/camera2/CaptureRequest$Builder;)Landroid/hardware/camera2/CaptureRequest$Builder;

    return-void
.end method
