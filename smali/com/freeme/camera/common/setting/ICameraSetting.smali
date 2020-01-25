.class public interface abstract Lcom/freeme/camera/common/setting/ICameraSetting;
.super Ljava/lang/Object;
.source "ICameraSetting.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/common/setting/ICameraSetting$ICaptureRequestConfigure;,
        Lcom/freeme/camera/common/setting/ICameraSetting$PreviewStateCallback;,
        Lcom/freeme/camera/common/setting/ICameraSetting$IParametersConfigure;,
        Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;,
        Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;
    }
.end annotation


# virtual methods
.method public abstract addViewEntry()V
.end method

.method public abstract getCaptureRequestConfigure()Lcom/freeme/camera/common/setting/ICameraSetting$ICaptureRequestConfigure;
.end method

.method public abstract getEntryValues()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getKey()Ljava/lang/String;
.end method

.method public abstract getParametersConfigure()Lcom/freeme/camera/common/setting/ICameraSetting$IParametersConfigure;
.end method

.method public abstract getPreviewStateCallback()Lcom/freeme/camera/common/setting/ICameraSetting$PreviewStateCallback;
.end method

.method public abstract getSettingType()Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;
.end method

.method public abstract getSupportedPlatformValues()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getValue()Ljava/lang/String;
.end method

.method public abstract init(Lcom/freeme/camera/common/app/IApp;Lcom/freeme/camera/common/ICameraContext;Lcom/freeme/camera/common/setting/ISettingManager$SettingController;)V
.end method

.method public abstract onModeClosed(Ljava/lang/String;)V
.end method

.method public abstract onModeOpened(Ljava/lang/String;Lcom/freeme/camera/common/mode/ICameraMode$ModeType;)V
.end method

.method public abstract overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract postRestrictionAfterInitialized()V
.end method

.method public abstract refreshViewEntry()V
.end method

.method public abstract removeViewEntry()V
.end method

.method public abstract setSettingDeviceRequester(Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;)V
    .param p1    # Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
.end method

.method public abstract unInit()V
.end method

.method public abstract updateModeDeviceState(Ljava/lang/String;)V
.end method
