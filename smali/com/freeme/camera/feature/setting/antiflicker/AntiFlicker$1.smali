.class Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker$1;
.super Ljava/lang/Object;
.source "AntiFlicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;->refreshViewEntry()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker$1;->this$0:Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker$1;->this$0:Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;->access$000(Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;)Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker$1;->this$0:Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;->access$200(Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;)Lcom/freeme/camera/common/relation/DataStore;

    move-result-object v0

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker$1;->this$0:Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;

    invoke-virtual {v2}, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;->getKey()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker$1;->this$0:Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;

    invoke-static {v3}, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;->access$100(Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker$1;->this$0:Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;

    invoke-virtual {v4}, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;->getStoreScope()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/freeme/camera/common/relation/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker$1;->this$0:Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;

    invoke-static {v2}, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;->access$000(Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;)Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView;

    move-result-object v2

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker$1;->this$0:Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;

    invoke-virtual {v3}, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;->getEntryValues()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView;->setEntryValues(Ljava/util/List;)V

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker$1;->this$0:Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;

    invoke-static {v2}, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;->access$000(Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;)Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker$1;->this$0:Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;->access$000(Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;)Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView;

    move-result-object v0

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker$1;->this$0:Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;

    invoke-virtual {v2}, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;->getEntryValues()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView;->setEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker$1;->this$0:Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;->access$300(Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;)Lcom/freeme/camera/common/relation/DataStore;

    move-result-object v0

    const-string v2, "key_restore_settings"

    const-string v3, "off"

    const-string v4, "_global_scope"

    invoke-virtual {v0, v2, v3, v4}, Lcom/freeme/camera/common/relation/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "on"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker$1;->this$0:Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;->access$000(Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;)Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView;

    move-result-object v0

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker$1;->this$0:Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;

    invoke-static {v2}, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;->access$100(Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker$1;->this$0:Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;->access$100(Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker$1;->this$0:Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;->access$400(Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;)Lcom/freeme/camera/common/relation/DataStore;

    move-result-object v0

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker$1;->this$0:Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;

    invoke-virtual {v2}, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;->getKey()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker$1;->this$0:Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;

    invoke-static {v3}, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;->access$100(Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker$1;->this$0:Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;

    invoke-virtual {v4}, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;->getStoreScope()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/freeme/camera/common/relation/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker$1;->this$0:Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;->access$500(Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;)Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;->sendSettingChangeRequest()V

    :cond_2
    return-void
.end method
