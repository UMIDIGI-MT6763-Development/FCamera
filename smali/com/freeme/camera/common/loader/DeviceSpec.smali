.class public Lcom/freeme/camera/common/loader/DeviceSpec;
.super Ljava/lang/Object;
.source "DeviceSpec.java"


# instance fields
.field private mDefaultCameraApi:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

.field private mDeviceDescriptions:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/freeme/camera/common/loader/DeviceDescription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultCameraApi()Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/loader/DeviceSpec;->mDefaultCameraApi:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    return-object v0
.end method

.method public getDeviceDescriptionMap()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/freeme/camera/common/loader/DeviceDescription;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/freeme/camera/common/loader/DeviceSpec;->mDeviceDescriptions:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public setDefaultCameraApi(Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;)V
    .locals 0
    .param p1    # Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/freeme/camera/common/loader/DeviceSpec;->mDefaultCameraApi:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    return-void
.end method

.method public setDeviceDescriptions(Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 0
    .param p1    # Ljava/util/concurrent/ConcurrentHashMap;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/freeme/camera/common/loader/DeviceDescription;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/freeme/camera/common/loader/DeviceSpec;->mDeviceDescriptions:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method
