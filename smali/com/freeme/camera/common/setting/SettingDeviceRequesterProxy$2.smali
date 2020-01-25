.class Lcom/freeme/camera/common/setting/SettingDeviceRequesterProxy$2;
.super Ljava/lang/Object;
.source "SettingDeviceRequesterProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/common/setting/SettingDeviceRequesterProxy;->requestChangeSettingValueJustSelf(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/common/setting/SettingDeviceRequesterProxy;

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/freeme/camera/common/setting/SettingDeviceRequesterProxy;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/common/setting/SettingDeviceRequesterProxy$2;->this$0:Lcom/freeme/camera/common/setting/SettingDeviceRequesterProxy;

    iput-object p2, p0, Lcom/freeme/camera/common/setting/SettingDeviceRequesterProxy$2;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingDeviceRequesterProxy$2;->this$0:Lcom/freeme/camera/common/setting/SettingDeviceRequesterProxy;

    invoke-static {v0}, Lcom/freeme/camera/common/setting/SettingDeviceRequesterProxy;->access$000(Lcom/freeme/camera/common/setting/SettingDeviceRequesterProxy;)Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingDeviceRequesterProxy$2;->this$0:Lcom/freeme/camera/common/setting/SettingDeviceRequesterProxy;

    invoke-static {v0}, Lcom/freeme/camera/common/setting/SettingDeviceRequesterProxy;->access$000(Lcom/freeme/camera/common/setting/SettingDeviceRequesterProxy;)Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/common/setting/SettingDeviceRequesterProxy$2;->val$key:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValueJustSelf(Ljava/lang/String;)V

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
