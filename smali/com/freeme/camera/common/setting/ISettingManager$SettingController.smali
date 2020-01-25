.class public interface abstract Lcom/freeme/camera/common/setting/ISettingManager$SettingController;
.super Ljava/lang/Object;
.source "ISettingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/common/setting/ISettingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SettingController"
.end annotation


# virtual methods
.method public abstract addViewEntry()V
.end method

.method public abstract getCameraId()Ljava/lang/String;
.end method

.method public abstract getStatusMonitor()Lcom/freeme/camera/common/relation/StatusMonitor;
.end method

.method public abstract postRestriction(Lcom/freeme/camera/common/relation/Relation;)V
.end method

.method public abstract querySupportedPlatformValues(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryValue(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract refreshViewEntry()V
.end method

.method public abstract registerSettingItem(Lcom/freeme/camera/common/setting/ICameraSetting;)V
.end method

.method public abstract removeViewEntry()V
.end method

.method public abstract unRegisterSettingItem(Lcom/freeme/camera/common/setting/ICameraSetting;)V
.end method
