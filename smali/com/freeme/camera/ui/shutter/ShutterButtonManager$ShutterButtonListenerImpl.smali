.class Lcom/freeme/camera/ui/shutter/ShutterButtonManager$ShutterButtonListenerImpl;
.super Ljava/lang/Object;
.source "ShutterButtonManager.java"

# interfaces
.implements Lcom/freeme/camera/ui/shutter/ShutterButton$OnShutterButtonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/ui/shutter/ShutterButtonManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShutterButtonListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/ui/shutter/ShutterButtonManager;


# direct methods
.method private constructor <init>(Lcom/freeme/camera/ui/shutter/ShutterButtonManager;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager$ShutterButtonListenerImpl;->this$0:Lcom/freeme/camera/ui/shutter/ShutterButtonManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/freeme/camera/ui/shutter/ShutterButtonManager;Lcom/freeme/camera/ui/shutter/ShutterButtonManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/ui/shutter/ShutterButtonManager$ShutterButtonListenerImpl;-><init>(Lcom/freeme/camera/ui/shutter/ShutterButtonManager;)V

    return-void
.end method


# virtual methods
.method public onShutterButtonClicked()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager$ShutterButtonListenerImpl;->this$0:Lcom/freeme/camera/ui/shutter/ShutterButtonManager;

    invoke-static {v0}, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->access$300(Lcom/freeme/camera/ui/shutter/ShutterButtonManager;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/ui/CameraAppUI;

    iget-object v0, v0, Lcom/freeme/camera/ui/CameraAppUI;->mModePickerManager:Lcom/freeme/camera/ui/modepicker/ModePickerManager;

    invoke-virtual {v0}, Lcom/freeme/camera/ui/modepicker/ModePickerManager;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager$ShutterButtonListenerImpl;->this$0:Lcom/freeme/camera/ui/shutter/ShutterButtonManager;

    invoke-static {v0}, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->access$400(Lcom/freeme/camera/ui/shutter/ShutterButtonManager;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/ui/CameraAppUI;

    iget-object v0, v0, Lcom/freeme/camera/ui/CameraAppUI;->mModePickerManager:Lcom/freeme/camera/ui/modepicker/ModePickerManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/freeme/camera/ui/modepicker/ModePickerManager;->setVisibility(I)V

    iget-object v0, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager$ShutterButtonListenerImpl;->this$0:Lcom/freeme/camera/ui/shutter/ShutterButtonManager;

    invoke-static {v0}, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->access$500(Lcom/freeme/camera/ui/shutter/ShutterButtonManager;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/ui/CameraAppUI;

    iget-object v0, v0, Lcom/freeme/camera/ui/CameraAppUI;->mQuickSwitcherManager:Lcom/freeme/camera/ui/QuickSwitcherManager;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/ui/QuickSwitcherManager;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager$ShutterButtonListenerImpl;->this$0:Lcom/freeme/camera/ui/shutter/ShutterButtonManager;

    invoke-static {v0}, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->access$200(Lcom/freeme/camera/ui/shutter/ShutterButtonManager;)Lcom/freeme/camera/common/utils/PriorityConcurrentSkipListMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freeme/camera/common/utils/PriorityConcurrentSkipListMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/freeme/camera/common/IAppUiListener$OnShutterButtonListener;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/freeme/camera/common/IAppUiListener$OnShutterButtonListener;->onShutterButtonClick()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_2
    return-void
.end method

.method public onShutterButtonFocused(Z)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager$ShutterButtonListenerImpl;->this$0:Lcom/freeme/camera/ui/shutter/ShutterButtonManager;

    invoke-static {v0}, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->access$200(Lcom/freeme/camera/ui/shutter/ShutterButtonManager;)Lcom/freeme/camera/common/utils/PriorityConcurrentSkipListMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freeme/camera/common/utils/PriorityConcurrentSkipListMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/freeme/camera/common/IAppUiListener$OnShutterButtonListener;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/freeme/camera/common/IAppUiListener$OnShutterButtonListener;->onShutterButtonFocus(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_1
    return-void
.end method

.method public onShutterButtonLongPressed()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager$ShutterButtonListenerImpl;->this$0:Lcom/freeme/camera/ui/shutter/ShutterButtonManager;

    invoke-static {v0}, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->access$200(Lcom/freeme/camera/ui/shutter/ShutterButtonManager;)Lcom/freeme/camera/common/utils/PriorityConcurrentSkipListMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freeme/camera/common/utils/PriorityConcurrentSkipListMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/freeme/camera/common/IAppUiListener$OnShutterButtonListener;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/freeme/camera/common/IAppUiListener$OnShutterButtonListener;->onShutterButtonLongPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_1
    return-void
.end method
