.class Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController$1;
.super Ljava/lang/Object;
.source "SelfTimerViewController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController$1;->this$0:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController$1;->this$0:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->access$100(Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;)Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->getEntryValues()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController$1;->this$0:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->access$600(Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController$1;->this$0:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->access$300(Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;)Lcom/freeme/camera/common/app/IApp;

    move-result-object p1

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object p1

    check-cast p1, Lcom/freeme/camera/ui/CameraAppUI;

    iget-object p1, p1, Lcom/freeme/camera/ui/CameraAppUI;->mModePickerManager:Lcom/freeme/camera/ui/modepicker/ModePickerManager;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Lcom/freeme/camera/ui/modepicker/ModePickerManager;->setVisibility(I)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController$1;->this$0:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->access$300(Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;)Lcom/freeme/camera/common/app/IApp;

    move-result-object p1

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object p1

    check-cast p1, Lcom/freeme/camera/ui/CameraAppUI;

    iget-object p1, p1, Lcom/freeme/camera/ui/CameraAppUI;->mQuickSwitcherManager:Lcom/freeme/camera/ui/QuickSwitcherManager;

    invoke-virtual {p1, v1}, Lcom/freeme/camera/ui/QuickSwitcherManager;->setVisibility(I)V

    :cond_1
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController$1;->this$0:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->access$100(Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;)Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->getEntryValues()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x2

    if-le p1, v1, :cond_2

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController$1;->this$0:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->access$700(Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController$1;->this$0:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->access$800(Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController$1;->this$0:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->access$900(Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController$1;->this$0:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->access$300(Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;)Lcom/freeme/camera/common/app/IApp;

    move-result-object p1

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController$1;->this$0:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->access$1000(Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;)Landroid/view/View;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/freeme/camera/common/IAppUi;->showQuickSwitcherOption(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController$1;->this$0:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->access$100(Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;)Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->getEntryValues()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController$1;->this$0:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;

    invoke-static {v1}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->access$100(Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;)Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController$1;->this$0:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->access$100(Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;)Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->getEntryValues()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :cond_3
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController$1;->this$0:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->updateSelfTimerEntryView(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController$1;->this$0:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->access$100(Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;)Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->onSelfTimerValueChanged(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
