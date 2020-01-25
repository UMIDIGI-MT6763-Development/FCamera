.class public Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaDeviceInfo;
.super Ljava/lang/Object;
.source "PanoramaDeviceInfo.java"


# instance fields
.field private mCameraId:Ljava/lang/String;

.field private mNeedFastStartPreview:Z

.field private mNeedSync:Z

.field private mSettingManager:Lcom/freeme/camera/common/setting/ISettingManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCameraId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaDeviceInfo;->mCameraId:Ljava/lang/String;

    return-object v0
.end method

.method public getNeedFastStartPreview()Z
    .locals 1

    iget-boolean v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaDeviceInfo;->mNeedFastStartPreview:Z

    return v0
.end method

.method public getNeedOpenCameraSync()Z
    .locals 1

    iget-boolean v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaDeviceInfo;->mNeedSync:Z

    return v0
.end method

.method public getSettingManager()Lcom/freeme/camera/common/setting/ISettingManager;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaDeviceInfo;->mSettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

    return-object v0
.end method

.method public setCameraId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaDeviceInfo;->mCameraId:Ljava/lang/String;

    return-void
.end method

.method public setNeedFastStartPreview(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaDeviceInfo;->mNeedFastStartPreview:Z

    return-void
.end method

.method public setNeedOpenCameraSync(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaDeviceInfo;->mNeedSync:Z

    return-void
.end method

.method public setSettingManager(Lcom/freeme/camera/common/setting/ISettingManager;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaDeviceInfo;->mSettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

    return-void
.end method
