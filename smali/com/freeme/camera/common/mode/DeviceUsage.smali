.class public Lcom/freeme/camera/common/mode/DeviceUsage;
.super Ljava/lang/Object;
.source "DeviceUsage.java"


# static fields
.field public static final DEVICE_TYPE_NORMAL:Ljava/lang/String; = "normal"

.field public static final DEVICE_TYPE_STEREO:Ljava/lang/String; = "stereo"

.field public static final DEVICE_TYPE_STEREO_VSDOF:Ljava/lang/String; = "vsdof"


# instance fields
.field private final mCameraApi:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

.field private mDeviceType:Ljava/lang/String;

.field private final mNeedOpenedCameraIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;Ljava/util/ArrayList;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Ljava/util/ArrayList;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/freeme/camera/common/mode/DeviceUsage;->mDeviceType:Ljava/lang/String;

    iput-object p2, p0, Lcom/freeme/camera/common/mode/DeviceUsage;->mCameraApi:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/freeme/camera/common/mode/DeviceUsage;->mNeedOpenedCameraIdList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getCameraApi()Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/mode/DeviceUsage;->mCameraApi:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    return-object v0
.end method

.method public getCameraIdList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/freeme/camera/common/mode/DeviceUsage;->mNeedOpenedCameraIdList:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getDeviceType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/mode/DeviceUsage;->mDeviceType:Ljava/lang/String;

    return-object v0
.end method

.method public getNeedClosedCameraIds(Lcom/freeme/camera/common/mode/DeviceUsage;)Ljava/util/ArrayList;
    .locals 6
    .param p1    # Lcom/freeme/camera/common/mode/DeviceUsage;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/freeme/camera/common/mode/DeviceUsage;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/freeme/camera/common/mode/DeviceUsage;->getCameraIdList()Ljava/util/ArrayList;

    move-result-object v0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/freeme/camera/common/mode/DeviceUsage;->mCameraApi:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    invoke-virtual {p1}, Lcom/freeme/camera/common/mode/DeviceUsage;->getCameraApi()Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/freeme/camera/common/mode/DeviceUsage;->mDeviceType:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/freeme/camera/common/mode/DeviceUsage;->getDeviceType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1}, Lcom/freeme/camera/common/mode/DeviceUsage;->getCameraIdList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v4

    :goto_0
    if-nez v1, :cond_3

    return-object v0

    :cond_3
    move v1, v4

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    invoke-virtual {p1}, Lcom/freeme/camera/common/mode/DeviceUsage;->getCameraIdList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v3, v4

    goto :goto_2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    if-eqz v3, :cond_6

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    :cond_6
    return-object v0

    :cond_7
    :goto_3
    return-object v0
.end method

.method public updateDeviceType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/common/mode/DeviceUsage;->mDeviceType:Ljava/lang/String;

    return-void
.end method
