.class Lcom/freeme/camera/ui/CameraAppUI$11;
.super Ljava/lang/Object;
.source "CameraAppUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/ui/CameraAppUI;->onCameraSelected(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/ui/CameraAppUI;

.field final synthetic val$cameraId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/freeme/camera/ui/CameraAppUI;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/CameraAppUI$11;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    iput-object p2, p0, Lcom/freeme/camera/ui/CameraAppUI$11;->val$cameraId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI$11;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {v0}, Lcom/freeme/camera/ui/CameraAppUI;->access$1100(Lcom/freeme/camera/ui/CameraAppUI;)Lcom/freeme/camera/ui/shutter/ShutterButtonManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->clearShutterButton()V

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI$11;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {v0}, Lcom/freeme/camera/ui/CameraAppUI;->access$1800(Lcom/freeme/camera/ui/CameraAppUI;)Lcom/freeme/camera/ui/modepicker/ModeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freeme/camera/ui/modepicker/ModeProvider;->getAllModes()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/ui/CameraAppUI$11;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    iget-object v1, v1, Lcom/freeme/camera/ui/CameraAppUI;->mSupportitems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/freeme/camera/common/IAppUi$ModeItem;

    iget-object v5, v4, Lcom/freeme/camera/common/IAppUi$ModeItem;->mSupportedCameraIds:[Ljava/lang/String;

    array-length v6, v5

    move v7, v3

    move v3, v1

    :goto_1
    if-ge v3, v6, :cond_2

    aget-object v8, v5, v3

    iget-object v9, p0, Lcom/freeme/camera/ui/CameraAppUI$11;->val$cameraId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "Beauty Face"

    iget-object v9, v4, Lcom/freeme/camera/common/IAppUi$ModeItem;->mMode:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "Video Beauty Face"

    iget-object v9, v4, Lcom/freeme/camera/common/IAppUi$ModeItem;->mMode:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_2

    :cond_0
    iget-object v8, p0, Lcom/freeme/camera/ui/CameraAppUI$11;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {v8}, Lcom/freeme/camera/ui/CameraAppUI;->access$1100(Lcom/freeme/camera/ui/CameraAppUI;)Lcom/freeme/camera/ui/shutter/ShutterButtonManager;

    move-result-object v8

    invoke-virtual {v8, v4, v7}, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->registerShutterButton(Lcom/freeme/camera/common/IAppUi$ModeItem;I)V

    iget-object v8, p0, Lcom/freeme/camera/ui/CameraAppUI$11;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    iget-object v8, v8, Lcom/freeme/camera/ui/CameraAppUI;->mSupportitems:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    move v3, v7

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI$11;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {v0}, Lcom/freeme/camera/ui/CameraAppUI;->access$1100(Lcom/freeme/camera/ui/CameraAppUI;)Lcom/freeme/camera/ui/shutter/ShutterButtonManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->registerDone()V

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI$11;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    iget-object v0, v0, Lcom/freeme/camera/ui/CameraAppUI;->mSupportitems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI$11;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {v0}, Lcom/freeme/camera/ui/CameraAppUI;->access$1900(Lcom/freeme/camera/ui/CameraAppUI;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v0, "Beauty Face"

    iget-object v2, p0, Lcom/freeme/camera/ui/CameraAppUI$11;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {v2}, Lcom/freeme/camera/ui/CameraAppUI;->access$1900(Lcom/freeme/camera/ui/CameraAppUI;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI$11;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    const-string v2, "Photo"

    invoke-static {v0, v2}, Lcom/freeme/camera/ui/CameraAppUI;->access$2000(Lcom/freeme/camera/ui/CameraAppUI;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    const-string v0, "Video Beauty Face"

    iget-object v2, p0, Lcom/freeme/camera/ui/CameraAppUI$11;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {v2}, Lcom/freeme/camera/ui/CameraAppUI;->access$1900(Lcom/freeme/camera/ui/CameraAppUI;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI$11;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    const-string v2, "Video"

    invoke-static {v0, v2}, Lcom/freeme/camera/ui/CameraAppUI;->access$2000(Lcom/freeme/camera/ui/CameraAppUI;Ljava/lang/String;)V

    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI$11;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    iget-object v0, v0, Lcom/freeme/camera/ui/CameraAppUI;->mSupportitems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI$11;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {v0}, Lcom/freeme/camera/ui/CameraAppUI;->access$1900(Lcom/freeme/camera/ui/CameraAppUI;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/freeme/camera/ui/CameraAppUI$11;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    iget-object v2, v2, Lcom/freeme/camera/ui/CameraAppUI;->mSupportitems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/freeme/camera/common/IAppUi$ModeItem;

    iget-object v2, v2, Lcom/freeme/camera/common/IAppUi$ModeItem;->mMode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI$11;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {v0}, Lcom/freeme/camera/ui/CameraAppUI;->access$1100(Lcom/freeme/camera/ui/CameraAppUI;)Lcom/freeme/camera/ui/shutter/ShutterButtonManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->setChangIndex(I)V

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI$11;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {v0}, Lcom/freeme/camera/ui/CameraAppUI;->access$1500(Lcom/freeme/camera/ui/CameraAppUI;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v2, Lcom/freeme/camera/ui/CameraAppUI$11$1;

    invoke-direct {v2, p0}, Lcom/freeme/camera/ui/CameraAppUI$11$1;-><init>(Lcom/freeme/camera/ui/CameraAppUI$11;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    const-string v0, "1"

    iget-object v1, p0, Lcom/freeme/camera/ui/CameraAppUI$11;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {v1}, Lcom/freeme/camera/ui/CameraAppUI;->access$2100(Lcom/freeme/camera/ui/CameraAppUI;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI$11;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {v0}, Lcom/freeme/camera/ui/CameraAppUI;->access$1500(Lcom/freeme/camera/ui/CameraAppUI;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v1

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/ui/CameraAppUI;->isThirdPartyIntent(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI$11;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {v0}, Lcom/freeme/camera/ui/CameraAppUI;->access$1500(Lcom/freeme/camera/ui/CameraAppUI;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v1

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/ui/CameraAppUI;->isSecureIntent(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI$11;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {v0}, Lcom/freeme/camera/ui/CameraAppUI;->access$1500(Lcom/freeme/camera/ui/CameraAppUI;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getCurrentCameraMode()I

    :cond_8
    return-void
.end method
