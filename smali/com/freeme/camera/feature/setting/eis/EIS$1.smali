.class Lcom/freeme/camera/feature/setting/eis/EIS$1;
.super Ljava/lang/Object;
.source "EIS.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/setting/eis/EIS;->refreshViewEntry()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/eis/EIS;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/eis/EIS;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/eis/EIS$1;->this$0:Lcom/freeme/camera/feature/setting/eis/EIS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/eis/EIS$1;->this$0:Lcom/freeme/camera/feature/setting/eis/EIS;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/eis/EIS;->access$000(Lcom/freeme/camera/feature/setting/eis/EIS;)Lcom/freeme/camera/feature/setting/eis/EISSettingView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/eis/EIS$1;->this$0:Lcom/freeme/camera/feature/setting/eis/EIS;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/eis/EIS;->access$000(Lcom/freeme/camera/feature/setting/eis/EIS;)Lcom/freeme/camera/feature/setting/eis/EISSettingView;

    move-result-object v0

    const-string v1, "on"

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/eis/EIS$1;->this$0:Lcom/freeme/camera/feature/setting/eis/EIS;

    invoke-virtual {v2}, Lcom/freeme/camera/feature/setting/eis/EIS;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/eis/EISSettingView;->setChecked(Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/eis/EIS$1;->this$0:Lcom/freeme/camera/feature/setting/eis/EIS;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/eis/EIS;->access$000(Lcom/freeme/camera/feature/setting/eis/EIS;)Lcom/freeme/camera/feature/setting/eis/EISSettingView;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/eis/EIS$1;->this$0:Lcom/freeme/camera/feature/setting/eis/EIS;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/setting/eis/EIS;->getEntryValues()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/eis/EISSettingView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/eis/EIS$1;->this$0:Lcom/freeme/camera/feature/setting/eis/EIS;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/eis/EIS;->access$100(Lcom/freeme/camera/feature/setting/eis/EIS;)Lcom/freeme/camera/common/relation/DataStore;

    move-result-object v0

    const-string v1, "key_restore_settings"

    const-string v4, "off"

    const-string v5, "_global_scope"

    invoke-virtual {v0, v1, v4, v5}, Lcom/freeme/camera/common/relation/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/eis/EIS$1;->this$0:Lcom/freeme/camera/feature/setting/eis/EIS;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/eis/EIS;->access$000(Lcom/freeme/camera/feature/setting/eis/EIS;)Lcom/freeme/camera/feature/setting/eis/EISSettingView;

    move-result-object v0

    const-string v1, "on"

    iget-object v4, p0, Lcom/freeme/camera/feature/setting/eis/EIS$1;->this$0:Lcom/freeme/camera/feature/setting/eis/EIS;

    invoke-static {v4}, Lcom/freeme/camera/feature/setting/eis/EIS;->access$200(Lcom/freeme/camera/feature/setting/eis/EIS;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/eis/EISSettingView;->setChecked(Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/eis/EIS$1;->this$0:Lcom/freeme/camera/feature/setting/eis/EIS;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/eis/EIS;->access$000(Lcom/freeme/camera/feature/setting/eis/EIS;)Lcom/freeme/camera/feature/setting/eis/EISSettingView;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/eis/EIS$1;->this$0:Lcom/freeme/camera/feature/setting/eis/EIS;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/setting/eis/EIS;->getEntryValues()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v3, :cond_1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Lcom/freeme/camera/feature/setting/eis/EISSettingView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/eis/EIS$1;->this$0:Lcom/freeme/camera/feature/setting/eis/EIS;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/eis/EIS;->access$300(Lcom/freeme/camera/feature/setting/eis/EIS;)Lcom/freeme/camera/common/relation/DataStore;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/eis/EIS$1;->this$0:Lcom/freeme/camera/feature/setting/eis/EIS;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/setting/eis/EIS;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/eis/EIS$1;->this$0:Lcom/freeme/camera/feature/setting/eis/EIS;

    invoke-static {v3}, Lcom/freeme/camera/feature/setting/eis/EIS;->access$200(Lcom/freeme/camera/feature/setting/eis/EIS;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/freeme/camera/feature/setting/eis/EIS$1;->this$0:Lcom/freeme/camera/feature/setting/eis/EIS;

    invoke-virtual {v4}, Lcom/freeme/camera/feature/setting/eis/EIS;->getStoreScope()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/freeme/camera/common/relation/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/eis/EIS$1;->this$0:Lcom/freeme/camera/feature/setting/eis/EIS;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/eis/EIS;->access$400(Lcom/freeme/camera/feature/setting/eis/EIS;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getCurrentCameraMode()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/eis/EIS$1;->this$0:Lcom/freeme/camera/feature/setting/eis/EIS;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/eis/EIS;->access$500(Lcom/freeme/camera/feature/setting/eis/EIS;)Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;->sendSettingChangeRequest()V

    :cond_2
    return-void
.end method
