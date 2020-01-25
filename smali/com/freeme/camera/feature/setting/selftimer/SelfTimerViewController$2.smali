.class Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController$2;
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

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController$2;->this$0:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController$2;->this$0:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->access$1100(Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;)Landroid/widget/ImageView;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const-string p1, "0"

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController$2;->this$0:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->access$300(Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v1

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController$2;->this$0:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;

    invoke-static {v2}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->access$300(Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v2

    invoke-interface {v2}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0f0067

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/freeme/camera/OnScreenHint;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;)Lcom/freeme/camera/OnScreenHint;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->access$1202(Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;Lcom/freeme/camera/OnScreenHint;)Lcom/freeme/camera/OnScreenHint;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController$2;->this$0:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->access$1300(Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;)Landroid/widget/ImageView;

    move-result-object v0

    if-ne v0, p1, :cond_1

    const-string p1, "3"

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController$2;->this$0:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->access$300(Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v1

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController$2;->this$0:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;

    invoke-static {v2}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->access$300(Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v2

    invoke-interface {v2}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0f0066

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/freeme/camera/OnScreenHint;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;)Lcom/freeme/camera/OnScreenHint;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->access$1202(Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;Lcom/freeme/camera/OnScreenHint;)Lcom/freeme/camera/OnScreenHint;

    goto :goto_0

    :cond_1
    const-string p1, "10"

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController$2;->this$0:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->access$300(Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v1

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController$2;->this$0:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;

    invoke-static {v2}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->access$300(Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v2

    invoke-interface {v2}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0f0065

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/freeme/camera/OnScreenHint;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;)Lcom/freeme/camera/OnScreenHint;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->access$1202(Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;Lcom/freeme/camera/OnScreenHint;)Lcom/freeme/camera/OnScreenHint;

    :goto_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController$2;->this$0:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->access$300(Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/IAppUi;->hideQuickSwitcherOption()V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController$2;->this$0:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->updateSelfTimerEntryView(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController$2;->this$0:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->access$1200(Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;)Lcom/freeme/camera/OnScreenHint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freeme/camera/OnScreenHint;->showToast()V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController$2;->this$0:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->access$100(Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;)Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->onSelfTimerValueChanged(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController$2;->this$0:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->access$600(Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController$2;->this$0:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->access$300(Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;)Lcom/freeme/camera/common/app/IApp;

    move-result-object p1

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object p1

    check-cast p1, Lcom/freeme/camera/ui/CameraAppUI;

    iget-object p1, p1, Lcom/freeme/camera/ui/CameraAppUI;->mModePickerManager:Lcom/freeme/camera/ui/modepicker/ModePickerManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/freeme/camera/ui/modepicker/ModePickerManager;->setVisibility(I)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController$2;->this$0:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->access$300(Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;)Lcom/freeme/camera/common/app/IApp;

    move-result-object p1

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object p1

    check-cast p1, Lcom/freeme/camera/ui/CameraAppUI;

    iget-object p1, p1, Lcom/freeme/camera/ui/CameraAppUI;->mQuickSwitcherManager:Lcom/freeme/camera/ui/QuickSwitcherManager;

    invoke-virtual {p1, v0}, Lcom/freeme/camera/ui/QuickSwitcherManager;->setVisibility(I)V

    :cond_2
    return-void
.end method
