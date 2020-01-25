.class public Lcom/freeme/camera/common/setting/SettingDevice2RequesterProxy;
.super Ljava/lang/Object;
.source "SettingDevice2RequesterProxy.java"

# interfaces
.implements Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;


# static fields
.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private mModeDevice2RequesterImpl:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/common/setting/SettingDevice2RequesterProxy;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/common/setting/SettingDevice2RequesterProxy;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createAndChangeRepeatingRequest()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingDevice2RequesterProxy;->mModeDevice2RequesterImpl:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingDevice2RequesterProxy;->mModeDevice2RequesterImpl:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;->createAndChangeRepeatingRequest()V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public createAndConfigRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingDevice2RequesterProxy;->mModeDevice2RequesterImpl:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingDevice2RequesterProxy;->mModeDevice2RequesterImpl:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;

    invoke-interface {v0, p1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;->createAndConfigRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    monitor-exit p0

    return-object p1

    :cond_0
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getCurrentCaptureSession()Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingDevice2RequesterProxy;->mModeDevice2RequesterImpl:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingDevice2RequesterProxy;->mModeDevice2RequesterImpl:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;->getCurrentCaptureSession()Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getModeSharedCaptureSurface()Lcom/freeme/camera/common/mode/photo/device/CaptureSurface;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingDevice2RequesterProxy;->mModeDevice2RequesterImpl:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;->getModeSharedCaptureSurface()Lcom/freeme/camera/common/mode/photo/device/CaptureSurface;

    move-result-object v0

    return-object v0
.end method

.method public getModeSharedPreviewSurface()Landroid/view/Surface;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingDevice2RequesterProxy;->mModeDevice2RequesterImpl:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;->getModeSharedPreviewSurface()Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public getModeSharedThumbnailSurface()Landroid/view/Surface;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingDevice2RequesterProxy;->mModeDevice2RequesterImpl:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;->getModeSharedThumbnailSurface()Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public getRepeatingTemplateType()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingDevice2RequesterProxy;->mModeDevice2RequesterImpl:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingDevice2RequesterProxy;->mModeDevice2RequesterImpl:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;->getRepeatingTemplateType()I

    move-result v0

    monitor-exit p0

    return v0

    :cond_0
    monitor-exit p0

    const/4 v0, -0x1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public requestRestartSession()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingDevice2RequesterProxy;->mModeDevice2RequesterImpl:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingDevice2RequesterProxy;->mModeDevice2RequesterImpl:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;->requestRestartSession()V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateModeDevice2Requester(Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;)V
    .locals 0
    .param p1    # Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/freeme/camera/common/setting/SettingDevice2RequesterProxy;->mModeDevice2RequesterImpl:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
