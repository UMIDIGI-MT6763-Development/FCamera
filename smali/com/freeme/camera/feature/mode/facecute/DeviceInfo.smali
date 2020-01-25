.class public Lcom/freeme/camera/feature/mode/facecute/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


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

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/DeviceInfo;->mCameraId:Ljava/lang/String;

    return-object v0
.end method

.method public getNeedFastStartPreview()Z
    .locals 1

    iget-boolean v0, p0, Lcom/freeme/camera/feature/mode/facecute/DeviceInfo;->mNeedFastStartPreview:Z

    return v0
.end method

.method public getNeedOpenCameraSync()Z
    .locals 1

    iget-boolean v0, p0, Lcom/freeme/camera/feature/mode/facecute/DeviceInfo;->mNeedSync:Z

    return v0
.end method

.method public getSettingManager()Lcom/freeme/camera/common/setting/ISettingManager;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/DeviceInfo;->mSettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

    return-object v0
.end method

.method setCameraId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/DeviceInfo;->mCameraId:Ljava/lang/String;

    return-void
.end method

.method setNeedFastStartPreview(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/freeme/camera/feature/mode/facecute/DeviceInfo;->mNeedFastStartPreview:Z

    return-void
.end method

.method setNeedOpenCameraSync(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/freeme/camera/feature/mode/facecute/DeviceInfo;->mNeedSync:Z

    return-void
.end method

.method setSettingManager(Lcom/freeme/camera/common/setting/ISettingManager;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/DeviceInfo;->mSettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

    return-void
.end method
