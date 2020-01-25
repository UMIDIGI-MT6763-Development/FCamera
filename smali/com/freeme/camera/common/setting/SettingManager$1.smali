.class Lcom/freeme/camera/common/setting/SettingManager$1;
.super Ljava/lang/Object;
.source "SettingManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/common/setting/SettingManager;->refreshViewEntry()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/common/setting/SettingManager;

.field final synthetic val$settings:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/freeme/camera/common/setting/SettingManager;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/common/setting/SettingManager$1;->this$0:Lcom/freeme/camera/common/setting/SettingManager;

    iput-object p2, p0, Lcom/freeme/camera/common/setting/SettingManager$1;->val$settings:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingManager$1;->this$0:Lcom/freeme/camera/common/setting/SettingManager;

    invoke-static {v0}, Lcom/freeme/camera/common/setting/SettingManager;->access$000(Lcom/freeme/camera/common/setting/SettingManager;)Lcom/freeme/camera/common/setting/SettingAccessManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshViewEntry"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/setting/SettingAccessManager;->getAccess(Ljava/lang/String;)Lcom/freeme/camera/common/setting/SettingAccessManager$Access;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/common/setting/SettingManager$1;->this$0:Lcom/freeme/camera/common/setting/SettingManager;

    invoke-static {v1}, Lcom/freeme/camera/common/setting/SettingManager;->access$000(Lcom/freeme/camera/common/setting/SettingManager;)Lcom/freeme/camera/common/setting/SettingAccessManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/freeme/camera/common/setting/SettingAccessManager;->activeAccess(Lcom/freeme/camera/common/setting/SettingAccessManager$Access;)Z

    move-result v1

    iget-object v2, p0, Lcom/freeme/camera/common/setting/SettingManager$1;->this$0:Lcom/freeme/camera/common/setting/SettingManager;

    invoke-static {v2}, Lcom/freeme/camera/common/setting/SettingManager;->access$100(Lcom/freeme/camera/common/setting/SettingManager;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/freeme/camera/common/setting/SettingManager$1;->val$settings:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/freeme/camera/common/setting/ICameraSetting;

    invoke-virtual {v0}, Lcom/freeme/camera/common/setting/SettingAccessManager$Access;->isValid()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v2}, Lcom/freeme/camera/common/setting/ICameraSetting;->refreshViewEntry()V

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/freeme/camera/common/setting/SettingManager$1;->this$0:Lcom/freeme/camera/common/setting/SettingManager;

    invoke-static {v1}, Lcom/freeme/camera/common/setting/SettingManager;->access$200(Lcom/freeme/camera/common/setting/SettingManager;)Lcom/freeme/camera/common/IAppUi;

    move-result-object v1

    invoke-interface {v1}, Lcom/freeme/camera/common/IAppUi;->updateSettingIconVisibility()V

    :cond_2
    iget-object v1, p0, Lcom/freeme/camera/common/setting/SettingManager$1;->this$0:Lcom/freeme/camera/common/setting/SettingManager;

    invoke-static {v1}, Lcom/freeme/camera/common/setting/SettingManager;->access$000(Lcom/freeme/camera/common/setting/SettingManager;)Lcom/freeme/camera/common/setting/SettingAccessManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/freeme/camera/common/setting/SettingAccessManager;->recycleAccess(Lcom/freeme/camera/common/setting/SettingAccessManager$Access;)V

    return-void
.end method
