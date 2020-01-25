.class Lcom/freeme/camera/feature/setting/ais/AIS$2;
.super Ljava/lang/Object;
.source "AIS.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/setting/ais/AIS;->refreshViewEntry()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/ais/AIS;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/ais/AIS;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/ais/AIS$2;->this$0:Lcom/freeme/camera/feature/setting/ais/AIS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ais/AIS$2;->this$0:Lcom/freeme/camera/feature/setting/ais/AIS;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/ais/AIS;->access$000(Lcom/freeme/camera/feature/setting/ais/AIS;)Lcom/freeme/camera/feature/setting/ais/AISSettingView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ais/AIS$2;->this$0:Lcom/freeme/camera/feature/setting/ais/AIS;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/ais/AIS;->access$200(Lcom/freeme/camera/feature/setting/ais/AIS;)Lcom/freeme/camera/common/relation/DataStore;

    move-result-object v0

    const-string v1, "key_restore_settings"

    const-string v2, "off"

    const-string v3, "_global_scope"

    invoke-virtual {v0, v1, v2, v3}, Lcom/freeme/camera/common/relation/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ais/AIS$2;->this$0:Lcom/freeme/camera/feature/setting/ais/AIS;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/ais/AIS;->access$000(Lcom/freeme/camera/feature/setting/ais/AIS;)Lcom/freeme/camera/feature/setting/ais/AISSettingView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/ais/AISSettingView;->setChecked(Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ais/AIS$2;->this$0:Lcom/freeme/camera/feature/setting/ais/AIS;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/ais/AIS;->access$300(Lcom/freeme/camera/feature/setting/ais/AIS;)Lcom/freeme/camera/common/relation/DataStore;

    move-result-object v0

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/ais/AIS$2;->this$0:Lcom/freeme/camera/feature/setting/ais/AIS;

    invoke-virtual {v2}, Lcom/freeme/camera/feature/setting/ais/AIS;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "off"

    iget-object v4, p0, Lcom/freeme/camera/feature/setting/ais/AIS$2;->this$0:Lcom/freeme/camera/feature/setting/ais/AIS;

    invoke-virtual {v4}, Lcom/freeme/camera/feature/setting/ais/AIS;->getStoreScope()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/freeme/camera/common/relation/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ais/AIS$2;->this$0:Lcom/freeme/camera/feature/setting/ais/AIS;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/ais/AIS;->access$000(Lcom/freeme/camera/feature/setting/ais/AIS;)Lcom/freeme/camera/feature/setting/ais/AISSettingView;

    move-result-object v0

    const-string v2, "on"

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/ais/AIS$2;->this$0:Lcom/freeme/camera/feature/setting/ais/AIS;

    invoke-virtual {v3}, Lcom/freeme/camera/feature/setting/ais/AIS;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/freeme/camera/feature/setting/ais/AISSettingView;->setChecked(Z)V

    :goto_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ais/AIS$2;->this$0:Lcom/freeme/camera/feature/setting/ais/AIS;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/ais/AIS;->access$000(Lcom/freeme/camera/feature/setting/ais/AIS;)Lcom/freeme/camera/feature/setting/ais/AISSettingView;

    move-result-object v0

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/ais/AIS$2;->this$0:Lcom/freeme/camera/feature/setting/ais/AIS;

    invoke-virtual {v2}, Lcom/freeme/camera/feature/setting/ais/AIS;->getEntryValues()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    move v1, v3

    :cond_1
    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/ais/AISSettingView;->setEnabled(Z)V

    :cond_2
    return-void
.end method
