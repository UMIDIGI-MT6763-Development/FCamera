.class Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler$DummyCameraStateCallback;
.super Lcom/freeme/camera/common/device/v1/CameraProxy$StateCallback;
.source "CameraDeviceManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DummyCameraStateCallback"
.end annotation


# instance fields
.field final synthetic this$2:Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;


# direct methods
.method private constructor <init>(Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler$DummyCameraStateCallback;->this$2:Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;

    invoke-direct {p0}, Lcom/freeme/camera/common/device/v1/CameraProxy$StateCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler$DummyCameraStateCallback;-><init>(Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;)V

    return-void
.end method


# virtual methods
.method public onClosed(Lcom/freeme/camera/common/device/v1/CameraProxy;)V
    .locals 0
    .param p1    # Lcom/freeme/camera/common/device/v1/CameraProxy;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    return-void
.end method

.method public onDisconnected(Lcom/freeme/camera/common/device/v1/CameraProxy;)V
    .locals 0
    .param p1    # Lcom/freeme/camera/common/device/v1/CameraProxy;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    return-void
.end method

.method public onError(Lcom/freeme/camera/common/device/v1/CameraProxy;I)V
    .locals 0
    .param p1    # Lcom/freeme/camera/common/device/v1/CameraProxy;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    return-void
.end method

.method public onOpened(Lcom/freeme/camera/common/device/v1/CameraProxy;)V
    .locals 0
    .param p1    # Lcom/freeme/camera/common/device/v1/CameraProxy;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    return-void
.end method
