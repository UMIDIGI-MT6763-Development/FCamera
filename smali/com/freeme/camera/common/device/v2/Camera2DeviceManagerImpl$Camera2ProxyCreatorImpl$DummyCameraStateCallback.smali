.class Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$DummyCameraStateCallback;
.super Lcom/freeme/camera/common/device/v2/Camera2Proxy$StateCallback;
.source "Camera2DeviceManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DummyCameraStateCallback"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;


# direct methods
.method private constructor <init>(Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$DummyCameraStateCallback;->this$1:Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;

    invoke-direct {p0}, Lcom/freeme/camera/common/device/v2/Camera2Proxy$StateCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$DummyCameraStateCallback;-><init>(Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;)V

    return-void
.end method


# virtual methods
.method public onDisconnected(Lcom/freeme/camera/common/device/v2/Camera2Proxy;)V
    .locals 0
    .param p1    # Lcom/freeme/camera/common/device/v2/Camera2Proxy;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    return-void
.end method

.method public onError(Lcom/freeme/camera/common/device/v2/Camera2Proxy;I)V
    .locals 0
    .param p1    # Lcom/freeme/camera/common/device/v2/Camera2Proxy;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    return-void
.end method

.method public onOpened(Lcom/freeme/camera/common/device/v2/Camera2Proxy;)V
    .locals 0
    .param p1    # Lcom/freeme/camera/common/device/v2/Camera2Proxy;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    return-void
.end method
