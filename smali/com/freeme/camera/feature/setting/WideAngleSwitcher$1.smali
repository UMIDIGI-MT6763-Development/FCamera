.class Lcom/freeme/camera/feature/setting/WideAngleSwitcher$1;
.super Ljava/lang/Object;
.source "WideAngleSwitcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/setting/WideAngleSwitcher;->refreshViewEntry()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/WideAngleSwitcher;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/WideAngleSwitcher;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/WideAngleSwitcher$1;->this$0:Lcom/freeme/camera/feature/setting/WideAngleSwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/WideAngleSwitcher$1;->this$0:Lcom/freeme/camera/feature/setting/WideAngleSwitcher;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/WideAngleSwitcher;->access$000(Lcom/freeme/camera/feature/setting/WideAngleSwitcher;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/WideAngleSwitcher$1;->this$0:Lcom/freeme/camera/feature/setting/WideAngleSwitcher;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/WideAngleSwitcher;->access$100(Lcom/freeme/camera/feature/setting/WideAngleSwitcher;)Lcom/freeme/camera/common/relation/DataStore;

    move-result-object v0

    const-string v1, "key_camera_id"

    const-string v2, "0"

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/WideAngleSwitcher$1;->this$0:Lcom/freeme/camera/feature/setting/WideAngleSwitcher;

    invoke-virtual {v3}, Lcom/freeme/camera/feature/setting/WideAngleSwitcher;->getStoreScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/freeme/camera/common/relation/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/WideAngleSwitcher$1;->this$0:Lcom/freeme/camera/feature/setting/WideAngleSwitcher;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/setting/WideAngleSwitcher;->getEntryValues()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "4"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/WideAngleSwitcher$1;->this$0:Lcom/freeme/camera/feature/setting/WideAngleSwitcher;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/setting/WideAngleSwitcher;->unSupportedMode()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/freeme/camera/feature/setting/WideAngleSwitcher$1;->this$0:Lcom/freeme/camera/feature/setting/WideAngleSwitcher;

    invoke-static {v1}, Lcom/freeme/camera/feature/setting/WideAngleSwitcher;->access$000(Lcom/freeme/camera/feature/setting/WideAngleSwitcher;)Landroid/view/View;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    const-string v1, "3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/WideAngleSwitcher$1;->this$0:Lcom/freeme/camera/feature/setting/WideAngleSwitcher;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/WideAngleSwitcher;->access$400(Lcom/freeme/camera/feature/setting/WideAngleSwitcher;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    goto :goto_1

    :cond_1
    const-string v1, "3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/WideAngleSwitcher$1;->this$0:Lcom/freeme/camera/feature/setting/WideAngleSwitcher;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/WideAngleSwitcher;->access$400(Lcom/freeme/camera/feature/setting/WideAngleSwitcher;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/WideAngleSwitcher$1;->this$0:Lcom/freeme/camera/feature/setting/WideAngleSwitcher;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/WideAngleSwitcher;->access$300(Lcom/freeme/camera/feature/setting/WideAngleSwitcher;)Lcom/freeme/camera/feature/setting/WideAngleViewCtrl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/WideAngleViewCtrl;->showView()V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/freeme/camera/feature/setting/WideAngleSwitcher$1;->this$0:Lcom/freeme/camera/feature/setting/WideAngleSwitcher;

    invoke-static {v1}, Lcom/freeme/camera/feature/setting/WideAngleSwitcher;->access$200(Lcom/freeme/camera/feature/setting/WideAngleSwitcher;)Lcom/freeme/camera/common/relation/DataStore;

    move-result-object v1

    const-string v3, "key_wide_angle_main3"

    iget-object v4, p0, Lcom/freeme/camera/feature/setting/WideAngleSwitcher$1;->this$0:Lcom/freeme/camera/feature/setting/WideAngleSwitcher;

    invoke-virtual {v4}, Lcom/freeme/camera/feature/setting/WideAngleSwitcher;->getStoreScope()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v0, v4, v2}, Lcom/freeme/camera/common/relation/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/WideAngleSwitcher$1;->this$0:Lcom/freeme/camera/feature/setting/WideAngleSwitcher;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/WideAngleSwitcher;->access$000(Lcom/freeme/camera/feature/setting/WideAngleSwitcher;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/WideAngleSwitcher$1;->this$0:Lcom/freeme/camera/feature/setting/WideAngleSwitcher;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/WideAngleSwitcher;->access$300(Lcom/freeme/camera/feature/setting/WideAngleSwitcher;)Lcom/freeme/camera/feature/setting/WideAngleViewCtrl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/WideAngleViewCtrl;->hideView()V

    :cond_3
    :goto_1
    return-void
.end method
