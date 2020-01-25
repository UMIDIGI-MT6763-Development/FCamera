.class final Lcom/freeme/camera/common/device/v1/CameraProxy$CaptureCallbackGroup;
.super Ljava/lang/Object;
.source "CameraProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/common/device/v1/CameraProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CaptureCallbackGroup"
.end annotation


# instance fields
.field final mJpegCallback:Landroid/hardware/Camera$PictureCallback;

.field final mPostViewCallback:Landroid/hardware/Camera$PictureCallback;

.field final mRawCallback:Landroid/hardware/Camera$PictureCallback;

.field final mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

.field final synthetic this$0:Lcom/freeme/camera/common/device/v1/CameraProxy;


# direct methods
.method constructor <init>(Lcom/freeme/camera/common/device/v1/CameraProxy;Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/common/device/v1/CameraProxy$CaptureCallbackGroup;->this$0:Lcom/freeme/camera/common/device/v1/CameraProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/freeme/camera/common/device/v1/CameraProxy$CaptureCallbackGroup;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    iput-object p3, p0, Lcom/freeme/camera/common/device/v1/CameraProxy$CaptureCallbackGroup;->mRawCallback:Landroid/hardware/Camera$PictureCallback;

    iput-object p4, p0, Lcom/freeme/camera/common/device/v1/CameraProxy$CaptureCallbackGroup;->mPostViewCallback:Landroid/hardware/Camera$PictureCallback;

    iput-object p5, p0, Lcom/freeme/camera/common/device/v1/CameraProxy$CaptureCallbackGroup;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    return-void
.end method
