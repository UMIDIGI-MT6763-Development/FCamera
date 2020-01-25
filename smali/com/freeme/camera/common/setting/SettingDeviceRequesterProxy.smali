.class public Lcom/freeme/camera/common/setting/SettingDeviceRequesterProxy;
.super Ljava/lang/Object;
.source "SettingDeviceRequesterProxy.java"

# interfaces
.implements Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;


# static fields
.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mModeDeviceRequesterImpl:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/common/setting/SettingDeviceRequesterProxy;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/common/setting/SettingDeviceRequesterProxy;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "API1-Setting-Change-Request-Handler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/freeme/camera/common/setting/SettingDeviceRequesterProxy;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/freeme/camera/common/setting/SettingDeviceRequesterProxy;)Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/common/setting/SettingDeviceRequesterProxy;->mModeDeviceRequesterImpl:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;

    return-object p0
.end method


# virtual methods
.method public requestChangeCommand(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/freeme/camera/common/setting/SettingDeviceRequesterProxy;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[requestChangeCommand] key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingDeviceRequesterProxy;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/freeme/camera/common/setting/SettingDeviceRequesterProxy$3;

    invoke-direct {v1, p0, p1}, Lcom/freeme/camera/common/setting/SettingDeviceRequesterProxy$3;-><init>(Lcom/freeme/camera/common/setting/SettingDeviceRequesterProxy;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public requestChangeCommandImmediately(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/freeme/camera/common/setting/SettingDeviceRequesterProxy;->requestChangeCommand(Ljava/lang/String;)V

    return-void
.end method

.method public requestChangeSettingValue(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/freeme/camera/common/setting/SettingDeviceRequesterProxy;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[requestChangeSettingValue] key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingDeviceRequesterProxy;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/freeme/camera/common/setting/SettingDeviceRequesterProxy$1;

    invoke-direct {v1, p0, p1}, Lcom/freeme/camera/common/setting/SettingDeviceRequesterProxy$1;-><init>(Lcom/freeme/camera/common/setting/SettingDeviceRequesterProxy;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public requestChangeSettingValueJustSelf(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/freeme/camera/common/setting/SettingDeviceRequesterProxy;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[requestChangeSettingValueJustSelf] key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingDeviceRequesterProxy;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/freeme/camera/common/setting/SettingDeviceRequesterProxy$2;

    invoke-direct {v1, p0, p1}, Lcom/freeme/camera/common/setting/SettingDeviceRequesterProxy$2;-><init>(Lcom/freeme/camera/common/setting/SettingDeviceRequesterProxy;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public unInit()V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingDeviceRequesterProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    return-void
.end method

.method public updateModeDeviceRequester(Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;)V
    .locals 0
    .param p1    # Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/freeme/camera/common/setting/SettingDeviceRequesterProxy;->mModeDeviceRequesterImpl:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
