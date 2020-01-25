.class Lcom/freeme/camera/feature/setting/ais/AIS$3;
.super Ljava/lang/Object;
.source "AIS.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/setting/ais/AIS;->onAisClicked(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/ais/AIS;

.field final synthetic val$isOn:Z


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/ais/AIS;Z)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/ais/AIS$3;->this$0:Lcom/freeme/camera/feature/setting/ais/AIS;

    iput-boolean p2, p0, Lcom/freeme/camera/feature/setting/ais/AIS$3;->val$isOn:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lcom/freeme/camera/feature/setting/ais/AIS;->access$400()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onItemViewClick], isOn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/freeme/camera/feature/setting/ais/AIS$3;->val$isOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/ais/AIS$3;->val$isOn:Z

    if-eqz v0, :cond_0

    const-string v0, "on"

    goto :goto_0

    :cond_0
    const-string v0, "off"

    :goto_0
    iget-object v1, p0, Lcom/freeme/camera/feature/setting/ais/AIS$3;->this$0:Lcom/freeme/camera/feature/setting/ais/AIS;

    invoke-virtual {v1, v0}, Lcom/freeme/camera/feature/setting/ais/AIS;->setValue(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/ais/AIS$3;->this$0:Lcom/freeme/camera/feature/setting/ais/AIS;

    invoke-static {v1}, Lcom/freeme/camera/feature/setting/ais/AIS;->access$500(Lcom/freeme/camera/feature/setting/ais/AIS;)Lcom/freeme/camera/common/relation/DataStore;

    move-result-object v1

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/ais/AIS$3;->this$0:Lcom/freeme/camera/feature/setting/ais/AIS;

    invoke-virtual {v2}, Lcom/freeme/camera/feature/setting/ais/AIS;->getKey()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/ais/AIS$3;->this$0:Lcom/freeme/camera/feature/setting/ais/AIS;

    invoke-virtual {v3}, Lcom/freeme/camera/feature/setting/ais/AIS;->getStoreScope()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/freeme/camera/common/relation/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/freeme/camera/feature/setting/ais/AISRestriction;->getRestrictionGroup()Lcom/freeme/camera/common/relation/RelationGroup;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/freeme/camera/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/freeme/camera/common/relation/Relation;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/ais/AIS$3;->this$0:Lcom/freeme/camera/feature/setting/ais/AIS;

    invoke-static {v1}, Lcom/freeme/camera/feature/setting/ais/AIS;->access$600(Lcom/freeme/camera/feature/setting/ais/AIS;)Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/freeme/camera/common/relation/Relation;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ais/AIS$3;->this$0:Lcom/freeme/camera/feature/setting/ais/AIS;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/ais/AIS;->access$700(Lcom/freeme/camera/feature/setting/ais/AIS;)Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->refreshViewEntry()V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ais/AIS$3;->this$0:Lcom/freeme/camera/feature/setting/ais/AIS;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/ais/AIS;->access$800(Lcom/freeme/camera/feature/setting/ais/AIS;)Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/IAppUi;->refreshSettingView()V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ais/AIS$3;->this$0:Lcom/freeme/camera/feature/setting/ais/AIS;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/ais/AIS;->access$900(Lcom/freeme/camera/feature/setting/ais/AIS;)Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;->sendSettingChangeRequest()V

    return-void
.end method
