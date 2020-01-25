.class Lcom/freeme/camera/feature/setting/hdr/Hdr$1;
.super Ljava/lang/Object;
.source "Hdr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/setting/hdr/Hdr;->onHdrValueChanged(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/hdr/Hdr;

.field final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/hdr/Hdr;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/hdr/Hdr$1;->this$0:Lcom/freeme/camera/feature/setting/hdr/Hdr;

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/hdr/Hdr$1;->val$value:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/Hdr$1;->val$value:Ljava/lang/String;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/hdr/Hdr$1;->this$0:Lcom/freeme/camera/feature/setting/hdr/Hdr;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/setting/hdr/Hdr;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/freeme/camera/feature/setting/hdr/Hdr;->access$000()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onHdrValueChanged] value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/hdr/Hdr$1;->val$value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/Hdr$1;->this$0:Lcom/freeme/camera/feature/setting/hdr/Hdr;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/hdr/Hdr$1;->val$value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/hdr/Hdr;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/Hdr$1;->this$0:Lcom/freeme/camera/feature/setting/hdr/Hdr;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/hdr/Hdr;->access$100(Lcom/freeme/camera/feature/setting/hdr/Hdr;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/Hdr$1;->this$0:Lcom/freeme/camera/feature/setting/hdr/Hdr;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/freeme/camera/feature/setting/hdr/Hdr;->access$200(Lcom/freeme/camera/feature/setting/hdr/Hdr;ZZ)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/Hdr$1;->this$0:Lcom/freeme/camera/feature/setting/hdr/Hdr;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/hdr/Hdr;->access$300(Lcom/freeme/camera/feature/setting/hdr/Hdr;)Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->refreshViewEntry()V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/Hdr$1;->this$0:Lcom/freeme/camera/feature/setting/hdr/Hdr;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/hdr/Hdr;->access$400(Lcom/freeme/camera/feature/setting/hdr/Hdr;)Lcom/freeme/camera/common/relation/DataStore;

    move-result-object v1

    const-string v2, "key_hdr"

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/hdr/Hdr$1;->val$value:Ljava/lang/String;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/Hdr$1;->this$0:Lcom/freeme/camera/feature/setting/hdr/Hdr;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/hdr/Hdr;->getStoreScope()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/freeme/camera/common/relation/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/Hdr$1;->this$0:Lcom/freeme/camera/feature/setting/hdr/Hdr;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/hdr/Hdr;->access$500(Lcom/freeme/camera/feature/setting/hdr/Hdr;)Lcom/freeme/camera/feature/setting/hdr/IHdr$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/feature/setting/hdr/IHdr$Listener;->onHdrValueChanged()V

    :cond_0
    return-void
.end method
