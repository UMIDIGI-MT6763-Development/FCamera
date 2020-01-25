.class public interface abstract Lcom/freeme/camera/common/setting/ISettingManager;
.super Ljava/lang/Object;
.source "ISettingManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;,
        Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;,
        Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Configurator;,
        Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceConfigurator;,
        Lcom/freeme/camera/common/setting/ISettingManager$SettingController;
    }
.end annotation


# virtual methods
.method public abstract createAllSettings()V
.end method

.method public abstract createSettingsByStage(I)V
.end method

.method public abstract getSettingController()Lcom/freeme/camera/common/setting/ISettingManager$SettingController;
.end method

.method public abstract getSettingDevice2Configurator()Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Configurator;
.end method

.method public abstract getSettingDeviceConfigurator()Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceConfigurator;
.end method

.method public abstract updateModeDevice2Requester(Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;)V
    .param p1    # Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
.end method

.method public abstract updateModeDeviceRequester(Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;)V
    .param p1    # Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
.end method

.method public abstract updateModeDeviceStateToSetting(Ljava/lang/String;Ljava/lang/String;)V
.end method
