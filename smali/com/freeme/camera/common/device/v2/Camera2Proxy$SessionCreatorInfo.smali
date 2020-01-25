.class final Lcom/freeme/camera/common/device/v2/Camera2Proxy$SessionCreatorInfo;
.super Ljava/lang/Object;
.source "Camera2Proxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/common/device/v2/Camera2Proxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SessionCreatorInfo"
.end annotation


# instance fields
.field final mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

.field final mCallback:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$StateCallback;

.field final mHandler:Landroid/os/Handler;

.field final mInputConfiguration:Landroid/hardware/camera2/params/InputConfiguration;

.field final mOutputConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field final mSurfaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/freeme/camera/common/device/v2/Camera2Proxy;


# direct methods
.method constructor <init>(Lcom/freeme/camera/common/device/v2/Camera2Proxy;Ljava/util/List;Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$StateCallback;Landroid/os/Handler;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;",
            "Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$StateCallback;",
            "Landroid/os/Handler;",
            "Landroid/hardware/camera2/CaptureRequest$Builder;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/freeme/camera/common/device/v2/Camera2Proxy$SessionCreatorInfo;->this$0:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/freeme/camera/common/device/v2/Camera2Proxy$SessionCreatorInfo;->mSurfaces:Ljava/util/List;

    iput-object p3, p0, Lcom/freeme/camera/common/device/v2/Camera2Proxy$SessionCreatorInfo;->mCallback:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$StateCallback;

    iput-object p4, p0, Lcom/freeme/camera/common/device/v2/Camera2Proxy$SessionCreatorInfo;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/freeme/camera/common/device/v2/Camera2Proxy$SessionCreatorInfo;->mInputConfiguration:Landroid/hardware/camera2/params/InputConfiguration;

    iput-object p5, p0, Lcom/freeme/camera/common/device/v2/Camera2Proxy$SessionCreatorInfo;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iput-object p2, p0, Lcom/freeme/camera/common/device/v2/Camera2Proxy$SessionCreatorInfo;->mOutputConfigs:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Lcom/freeme/camera/common/device/v2/Camera2Proxy;Ljava/util/List;Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$StateCallback;Landroid/os/Handler;Landroid/hardware/camera2/params/InputConfiguration;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/Surface;",
            ">;",
            "Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$StateCallback;",
            "Landroid/os/Handler;",
            "Landroid/hardware/camera2/params/InputConfiguration;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/freeme/camera/common/device/v2/Camera2Proxy$SessionCreatorInfo;->this$0:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/freeme/camera/common/device/v2/Camera2Proxy$SessionCreatorInfo;->mSurfaces:Ljava/util/List;

    iput-object p3, p0, Lcom/freeme/camera/common/device/v2/Camera2Proxy$SessionCreatorInfo;->mCallback:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$StateCallback;

    iput-object p4, p0, Lcom/freeme/camera/common/device/v2/Camera2Proxy$SessionCreatorInfo;->mHandler:Landroid/os/Handler;

    iput-object p5, p0, Lcom/freeme/camera/common/device/v2/Camera2Proxy$SessionCreatorInfo;->mInputConfiguration:Landroid/hardware/camera2/params/InputConfiguration;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/freeme/camera/common/device/v2/Camera2Proxy$SessionCreatorInfo;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iput-object p1, p0, Lcom/freeme/camera/common/device/v2/Camera2Proxy$SessionCreatorInfo;->mOutputConfigs:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Lcom/freeme/camera/common/device/v2/Camera2Proxy;Ljava/util/List;Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$StateCallback;Landroid/os/Handler;Landroid/hardware/camera2/params/InputConfiguration;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/Surface;",
            ">;",
            "Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$StateCallback;",
            "Landroid/os/Handler;",
            "Landroid/hardware/camera2/params/InputConfiguration;",
            "Landroid/hardware/camera2/CaptureRequest$Builder;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/freeme/camera/common/device/v2/Camera2Proxy$SessionCreatorInfo;->this$0:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/freeme/camera/common/device/v2/Camera2Proxy$SessionCreatorInfo;->mSurfaces:Ljava/util/List;

    iput-object p3, p0, Lcom/freeme/camera/common/device/v2/Camera2Proxy$SessionCreatorInfo;->mCallback:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$StateCallback;

    iput-object p4, p0, Lcom/freeme/camera/common/device/v2/Camera2Proxy$SessionCreatorInfo;->mHandler:Landroid/os/Handler;

    iput-object p5, p0, Lcom/freeme/camera/common/device/v2/Camera2Proxy$SessionCreatorInfo;->mInputConfiguration:Landroid/hardware/camera2/params/InputConfiguration;

    iput-object p6, p0, Lcom/freeme/camera/common/device/v2/Camera2Proxy$SessionCreatorInfo;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/freeme/camera/common/device/v2/Camera2Proxy$SessionCreatorInfo;->mOutputConfigs:Ljava/util/List;

    return-void
.end method
