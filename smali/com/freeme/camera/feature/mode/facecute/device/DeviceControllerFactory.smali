.class public Lcom/freeme/camera/feature/mode/facecute/device/DeviceControllerFactory;
.super Ljava/lang/Object;
.source "DeviceControllerFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createDeviceController(Landroid/app/Activity;Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;Lcom/freeme/camera/common/ICameraContext;)Lcom/freeme/camera/feature/mode/facecute/device/IDeviceController;
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Lcom/freeme/camera/common/ICameraContext;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    sget-object v0, Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;->API1:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    if-ne v0, p2, :cond_0

    new-instance p2, Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDeviceController;

    invoke-direct {p2, p1, p3}, Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDeviceController;-><init>(Landroid/app/Activity;Lcom/freeme/camera/common/ICameraContext;)V

    return-object p2

    :cond_0
    new-instance p2, Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller;

    invoke-direct {p2, p1, p3}, Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller;-><init>(Landroid/app/Activity;Lcom/freeme/camera/common/ICameraContext;)V

    return-object p2
.end method
