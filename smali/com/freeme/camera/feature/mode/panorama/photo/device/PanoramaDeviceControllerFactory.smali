.class public Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceControllerFactory;
.super Ljava/lang/Object;
.source "PanoramaDeviceControllerFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createDeviceController(Landroid/app/Activity;Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;Lcom/freeme/camera/common/ICameraContext;)Lcom/freeme/camera/feature/mode/panorama/photo/device/IPanoramaDeviceController;
    .locals 0
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

    new-instance p2, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;

    invoke-direct {p2, p1, p3}, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;-><init>(Landroid/app/Activity;Lcom/freeme/camera/common/ICameraContext;)V

    return-object p2
.end method
