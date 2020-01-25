.class Lcom/freeme/camera/feature/setting/eis/EIS$2;
.super Ljava/lang/Object;
.source "EIS.java"

# interfaces
.implements Lcom/freeme/camera/feature/setting/eis/EISSettingView$OnEISViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/setting/eis/EIS;
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

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/eis/EIS$2;->this$0:Lcom/freeme/camera/feature/setting/eis/EIS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCachedValue()Z
    .locals 5

    const-string v0, "on"

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/eis/EIS$2;->this$0:Lcom/freeme/camera/feature/setting/eis/EIS;

    invoke-static {v1}, Lcom/freeme/camera/feature/setting/eis/EIS;->access$900(Lcom/freeme/camera/feature/setting/eis/EIS;)Lcom/freeme/camera/common/relation/DataStore;

    move-result-object v1

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/eis/EIS$2;->this$0:Lcom/freeme/camera/feature/setting/eis/EIS;

    invoke-virtual {v2}, Lcom/freeme/camera/feature/setting/eis/EIS;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "off"

    iget-object v4, p0, Lcom/freeme/camera/feature/setting/eis/EIS$2;->this$0:Lcom/freeme/camera/feature/setting/eis/EIS;

    invoke-virtual {v4}, Lcom/freeme/camera/feature/setting/eis/EIS;->getStoreScope()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/freeme/camera/common/relation/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onItemViewClick(Z)V
    .locals 4

    invoke-static {}, Lcom/freeme/camera/feature/setting/eis/EIS;->access$600()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onItemViewClick], isOn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string p1, "on"

    goto :goto_0

    :cond_0
    const-string p1, "off"

    :goto_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/eis/EIS$2;->this$0:Lcom/freeme/camera/feature/setting/eis/EIS;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/eis/EIS;->access$700(Lcom/freeme/camera/feature/setting/eis/EIS;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/freeme/camera/feature/setting/eis/EIS$2$1;

    invoke-direct {v1, p0, p1}, Lcom/freeme/camera/feature/setting/eis/EIS$2$1;-><init>(Lcom/freeme/camera/feature/setting/eis/EIS$2;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/eis/EIS$2;->this$0:Lcom/freeme/camera/feature/setting/eis/EIS;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/eis/EIS;->access$800(Lcom/freeme/camera/feature/setting/eis/EIS;)Lcom/freeme/camera/common/relation/DataStore;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/eis/EIS$2;->this$0:Lcom/freeme/camera/feature/setting/eis/EIS;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/setting/eis/EIS;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/eis/EIS$2;->this$0:Lcom/freeme/camera/feature/setting/eis/EIS;

    invoke-virtual {v2}, Lcom/freeme/camera/feature/setting/eis/EIS;->getStoreScope()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/freeme/camera/common/relation/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
