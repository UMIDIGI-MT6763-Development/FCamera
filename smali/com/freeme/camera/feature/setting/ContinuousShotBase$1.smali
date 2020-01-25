.class Lcom/freeme/camera/feature/setting/ContinuousShotBase$1;
.super Ljava/lang/Object;
.source "ContinuousShotBase.java"

# interfaces
.implements Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/setting/ContinuousShotBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/ContinuousShotBase;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/ContinuousShotBase;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase$1;->this$0:Lcom/freeme/camera/feature/setting/ContinuousShotBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    invoke-static {}, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->access$000()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mStatusListener, key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase$1;->this$0:Lcom/freeme/camera/feature/setting/ContinuousShotBase;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->access$200(Lcom/freeme/camera/feature/setting/ContinuousShotBase;)Lcom/freeme/camera/common/relation/DataStore;

    move-result-object v0

    const-string v1, "key_hdr"

    const-string v2, "off"

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase$1;->this$0:Lcom/freeme/camera/feature/setting/ContinuousShotBase;

    invoke-static {v3}, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->access$100(Lcom/freeme/camera/feature/setting/ContinuousShotBase;)Lcom/freeme/camera/common/relation/DataStore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/freeme/camera/common/relation/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/freeme/camera/common/relation/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase$1;->this$0:Lcom/freeme/camera/feature/setting/ContinuousShotBase;

    invoke-static {v1}, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->access$400(Lcom/freeme/camera/feature/setting/ContinuousShotBase;)Lcom/freeme/camera/common/relation/DataStore;

    move-result-object v1

    const-string v2, "key_camera_ai"

    const-string v3, "off"

    iget-object v4, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase$1;->this$0:Lcom/freeme/camera/feature/setting/ContinuousShotBase;

    invoke-static {v4}, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->access$300(Lcom/freeme/camera/feature/setting/ContinuousShotBase;)Lcom/freeme/camera/common/relation/DataStore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/freeme/camera/common/relation/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/freeme/camera/common/relation/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_focus_state"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase$1;->this$0:Lcom/freeme/camera/feature/setting/ContinuousShotBase;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->access$500(Lcom/freeme/camera/feature/setting/ContinuousShotBase;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "ACTIVE_FOCUSED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "ACTIVE_UNFOCUSED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase$1;->this$0:Lcom/freeme/camera/feature/setting/ContinuousShotBase;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->access$600(Lcom/freeme/camera/feature/setting/ContinuousShotBase;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase$1;->this$0:Lcom/freeme/camera/feature/setting/ContinuousShotBase;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->access$700(Lcom/freeme/camera/feature/setting/ContinuousShotBase;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "off"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "off"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase$1;->this$0:Lcom/freeme/camera/feature/setting/ContinuousShotBase;

    invoke-virtual {p1}, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->startContinuousShot()Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase$1;->this$0:Lcom/freeme/camera/feature/setting/ContinuousShotBase;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->access$800(Lcom/freeme/camera/feature/setting/ContinuousShotBase;)Landroid/app/Activity;

    move-result-object p1

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase$1;->this$0:Lcom/freeme/camera/feature/setting/ContinuousShotBase;

    invoke-static {p2}, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->access$900(Lcom/freeme/camera/feature/setting/ContinuousShotBase;)Landroid/app/Activity;

    move-result-object p2

    const v0, 0x7f0f0063

    invoke-virtual {p2, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/freeme/camera/OnScreenHint;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;)Lcom/freeme/camera/OnScreenHint;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freeme/camera/OnScreenHint;->showToast()V

    :cond_2
    :goto_0
    return-void
.end method
