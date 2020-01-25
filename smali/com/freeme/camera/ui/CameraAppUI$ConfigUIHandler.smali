.class Lcom/freeme/camera/ui/CameraAppUI$ConfigUIHandler;
.super Landroid/os/Handler;
.source "CameraAppUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/ui/CameraAppUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConfigUIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/ui/CameraAppUI;


# direct methods
.method private constructor <init>(Lcom/freeme/camera/ui/CameraAppUI;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/CameraAppUI$ConfigUIHandler;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/freeme/camera/ui/CameraAppUI;Lcom/freeme/camera/ui/CameraAppUI$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/ui/CameraAppUI$ConfigUIHandler;-><init>(Lcom/freeme/camera/ui/CameraAppUI;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    invoke-static {}, Lcom/freeme/camera/ui/CameraAppUI;->access$3200()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage what =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    iget-object p1, p0, Lcom/freeme/camera/ui/CameraAppUI$ConfigUIHandler;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {p1}, Lcom/freeme/camera/ui/CameraAppUI;->access$4100(Lcom/freeme/camera/ui/CameraAppUI;)V

    goto/16 :goto_2

    :pswitch_1
    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI$ConfigUIHandler;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    if-ne p1, v2, :cond_0

    move v1, v2

    :cond_0
    invoke-static {v0, v3, v1}, Lcom/freeme/camera/ui/CameraAppUI;->access$4300(Lcom/freeme/camera/ui/CameraAppUI;IZ)V

    goto :goto_2

    :pswitch_2
    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI$ConfigUIHandler;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, p1}, Lcom/freeme/camera/ui/CameraAppUI;->access$4200(Lcom/freeme/camera/ui/CameraAppUI;II)V

    goto :goto_2

    :pswitch_3
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    iget-object p1, p0, Lcom/freeme/camera/ui/CameraAppUI$ConfigUIHandler;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {p1}, Lcom/freeme/camera/ui/CameraAppUI;->access$4000(Lcom/freeme/camera/ui/CameraAppUI;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v1, p1, :cond_3

    iget-object p1, p0, Lcom/freeme/camera/ui/CameraAppUI$ConfigUIHandler;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {p1}, Lcom/freeme/camera/ui/CameraAppUI;->access$4000(Lcom/freeme/camera/ui/CameraAppUI;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/freeme/camera/ui/IViewManager;

    invoke-interface {p1, v2}, Lcom/freeme/camera/ui/IViewManager;->setEnabled(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :pswitch_4
    iget p1, p1, Landroid/os/Message;->arg1:I

    :goto_1
    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI$ConfigUIHandler;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {v0}, Lcom/freeme/camera/ui/CameraAppUI;->access$4000(Lcom/freeme/camera/ui/CameraAppUI;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI$ConfigUIHandler;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {v0}, Lcom/freeme/camera/ui/CameraAppUI;->access$4000(Lcom/freeme/camera/ui/CameraAppUI;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/ui/IViewManager;

    invoke-interface {v0, p1}, Lcom/freeme/camera/ui/IViewManager;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI$ConfigUIHandler;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-virtual {v0}, Lcom/freeme/camera/ui/CameraAppUI;->getPreviewFrameLayout()Lcom/freeme/camera/common/widget/PreviewFrameLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/freeme/camera/common/widget/PreviewFrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI$ConfigUIHandler;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {v0}, Lcom/freeme/camera/ui/CameraAppUI;->access$1600(Lcom/freeme/camera/ui/CameraAppUI;)Lcom/freeme/camera/ui/OnScreenHintManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/freeme/camera/ui/OnScreenHintManager;->setVisibility(I)V

    const/16 v0, 0x8

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/freeme/camera/ui/CameraAppUI$ConfigUIHandler;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    iget-object p1, p1, Lcom/freeme/camera/ui/CameraAppUI;->mQuickSwitcherManager:Lcom/freeme/camera/ui/QuickSwitcherManager;

    invoke-virtual {p1}, Lcom/freeme/camera/ui/QuickSwitcherManager;->hideQuickSwitcherImmediately()V

    :cond_3
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
