.class Lcom/freeme/camera/feature/setting/flash/FlashViewController$3;
.super Ljava/lang/Object;
.source "FlashViewController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/setting/flash/FlashViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/flash/FlashViewController;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/flash/FlashViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/flash/FlashViewController$3;->this$0:Lcom/freeme/camera/feature/setting/flash/FlashViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/flash/FlashViewController$3;->this$0:Lcom/freeme/camera/feature/setting/flash/FlashViewController;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->access$1100(Lcom/freeme/camera/feature/setting/flash/FlashViewController;)Landroid/widget/ImageView;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const-string p1, "auto"

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/flash/FlashViewController$3;->this$0:Lcom/freeme/camera/feature/setting/flash/FlashViewController;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->access$1200(Lcom/freeme/camera/feature/setting/flash/FlashViewController;)Landroid/widget/ImageView;

    move-result-object v0

    if-ne v0, p1, :cond_1

    const-string p1, "on"

    goto :goto_0

    :cond_1
    const-string p1, "off"

    :goto_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/flash/FlashViewController$3;->this$0:Lcom/freeme/camera/feature/setting/flash/FlashViewController;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->access$300(Lcom/freeme/camera/feature/setting/flash/FlashViewController;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/IAppUi;->hideQuickSwitcherOption()V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/flash/FlashViewController$3;->this$0:Lcom/freeme/camera/feature/setting/flash/FlashViewController;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->updateFlashEntryView(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/flash/FlashViewController$3;->this$0:Lcom/freeme/camera/feature/setting/flash/FlashViewController;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->access$100(Lcom/freeme/camera/feature/setting/flash/FlashViewController;)Lcom/freeme/camera/feature/setting/flash/Flash;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/freeme/camera/feature/setting/flash/Flash;->onFlashValueChanged(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/flash/FlashViewController$3;->this$0:Lcom/freeme/camera/feature/setting/flash/FlashViewController;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->access$600(Lcom/freeme/camera/feature/setting/flash/FlashViewController;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "0"

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/flash/FlashViewController$3;->this$0:Lcom/freeme/camera/feature/setting/flash/FlashViewController;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->access$300(Lcom/freeme/camera/feature/setting/flash/FlashViewController;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/IAppUi;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/flash/FlashViewController$3;->this$0:Lcom/freeme/camera/feature/setting/flash/FlashViewController;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->access$300(Lcom/freeme/camera/feature/setting/flash/FlashViewController;)Lcom/freeme/camera/common/app/IApp;

    move-result-object p1

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object p1

    check-cast p1, Lcom/freeme/camera/ui/CameraAppUI;

    iget-object p1, p1, Lcom/freeme/camera/ui/CameraAppUI;->mModePickerManager:Lcom/freeme/camera/ui/modepicker/ModePickerManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/freeme/camera/ui/modepicker/ModePickerManager;->setVisibility(I)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/flash/FlashViewController$3;->this$0:Lcom/freeme/camera/feature/setting/flash/FlashViewController;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->access$300(Lcom/freeme/camera/feature/setting/flash/FlashViewController;)Lcom/freeme/camera/common/app/IApp;

    move-result-object p1

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object p1

    check-cast p1, Lcom/freeme/camera/ui/CameraAppUI;

    iget-object p1, p1, Lcom/freeme/camera/ui/CameraAppUI;->mQuickSwitcherManager:Lcom/freeme/camera/ui/QuickSwitcherManager;

    invoke-virtual {p1, v0}, Lcom/freeme/camera/ui/QuickSwitcherManager;->setVisibility(I)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/flash/FlashViewController$3;->this$0:Lcom/freeme/camera/feature/setting/flash/FlashViewController;

    invoke-static {p1, v0}, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->access$602(Lcom/freeme/camera/feature/setting/flash/FlashViewController;Z)Z

    :cond_2
    return-void
.end method
