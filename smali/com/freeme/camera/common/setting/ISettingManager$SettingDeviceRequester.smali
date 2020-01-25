.class public interface abstract Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;
.super Ljava/lang/Object;
.source "ISettingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/common/setting/ISettingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SettingDeviceRequester"
.end annotation


# virtual methods
.method public abstract requestChangeCommand(Ljava/lang/String;)V
.end method

.method public abstract requestChangeCommandImmediately(Ljava/lang/String;)V
.end method

.method public abstract requestChangeSettingValue(Ljava/lang/String;)V
.end method

.method public abstract requestChangeSettingValueJustSelf(Ljava/lang/String;)V
.end method
