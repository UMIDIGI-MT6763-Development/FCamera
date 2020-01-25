.class Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker$2;
.super Ljava/lang/Object;
.source "AntiFlicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;->onValueChanged(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;

.field final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker$2;->this$0:Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker$2;->val$value:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;->access$600()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onValueChanged], value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker$2;->val$value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker$2;->this$0:Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker$2;->val$value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker$2;->this$0:Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker$2;->val$value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker$2;->this$0:Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;->access$700(Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;)Lcom/freeme/camera/common/relation/DataStore;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker$2;->this$0:Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker$2;->val$value:Ljava/lang/String;

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker$2;->this$0:Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;

    invoke-virtual {v3}, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;->getStoreScope()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/freeme/camera/common/relation/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker$2;->this$0:Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;->access$500(Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;)Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;->sendSettingChangeRequest()V

    :cond_0
    return-void
.end method
