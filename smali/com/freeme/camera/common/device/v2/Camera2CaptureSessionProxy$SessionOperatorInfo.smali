.class Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$SessionOperatorInfo;
.super Ljava/lang/Object;
.source "Camera2CaptureSessionProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SessionOperatorInfo"
.end annotation


# instance fields
.field mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

.field mCaptureRequest:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;"
        }
    .end annotation
.end field

.field mHandler:Landroid/os/Handler;

.field volatile mResultRequest:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;"
        }
    .end annotation
.end field

.field mSessionNum:[I

.field final synthetic this$0:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;


# direct methods
.method constructor <init>(Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;",
            "Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;",
            "Landroid/os/Handler;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$SessionOperatorInfo;->this$0:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$SessionOperatorInfo;->mCaptureRequest:Ljava/util/List;

    iput-object p3, p0, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$SessionOperatorInfo;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iput-object p4, p0, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$SessionOperatorInfo;->mHandler:Landroid/os/Handler;

    iput-object p5, p0, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$SessionOperatorInfo;->mResultRequest:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;[I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;",
            "Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;",
            "Landroid/os/Handler;",
            "[I)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$SessionOperatorInfo;->this$0:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$SessionOperatorInfo;->mCaptureRequest:Ljava/util/List;

    iput-object p3, p0, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$SessionOperatorInfo;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iput-object p4, p0, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$SessionOperatorInfo;->mHandler:Landroid/os/Handler;

    iput-object p5, p0, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$SessionOperatorInfo;->mSessionNum:[I

    return-void
.end method
