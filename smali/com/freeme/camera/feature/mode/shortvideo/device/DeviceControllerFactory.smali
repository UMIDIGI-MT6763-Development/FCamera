.class public Lcom/freeme/camera/feature/mode/shortvideo/device/DeviceControllerFactory;
.super Ljava/lang/Object;
.source "DeviceControllerFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDeviceCtroller(Landroid/app/Activity;Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;Lcom/freeme/camera/common/ICameraContext;)Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController;
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1    # Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/freeme/camera/common/ICameraContext;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    sget-object v0, Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;->API1:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    if-ne v0, p1, :cond_0

    new-instance p1, Lcom/freeme/camera/feature/mode/shortvideo/device/v1/VideoDeviceController;

    invoke-direct {p1, p0, p2}, Lcom/freeme/camera/feature/mode/shortvideo/device/v1/VideoDeviceController;-><init>(Landroid/app/Activity;Lcom/freeme/camera/common/ICameraContext;)V

    return-object p1

    :cond_0
    new-instance p1, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;

    invoke-direct {p1, p0, p2}, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;-><init>(Landroid/app/Activity;Lcom/freeme/camera/common/ICameraContext;)V

    return-object p1
.end method
