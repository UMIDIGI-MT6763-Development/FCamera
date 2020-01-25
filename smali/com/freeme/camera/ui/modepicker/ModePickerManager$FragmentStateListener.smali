.class Lcom/freeme/camera/ui/modepicker/ModePickerManager$FragmentStateListener;
.super Ljava/lang/Object;
.source "ModePickerManager.java"

# interfaces
.implements Lcom/freeme/camera/ui/modepicker/ModePickerFragment$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/ui/modepicker/ModePickerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FragmentStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/ui/modepicker/ModePickerManager;


# direct methods
.method private constructor <init>(Lcom/freeme/camera/ui/modepicker/ModePickerManager;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/modepicker/ModePickerManager$FragmentStateListener;->this$0:Lcom/freeme/camera/ui/modepicker/ModePickerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/ui/modepicker/ModePickerManager$FragmentStateListener;->this$0:Lcom/freeme/camera/ui/modepicker/ModePickerManager;

    invoke-static {v0}, Lcom/freeme/camera/ui/modepicker/ModePickerManager;->access$300(Lcom/freeme/camera/ui/modepicker/ModePickerManager;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090040

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/freeme/camera/ui/modepicker/ModePickerManager$FragmentStateListener;->this$0:Lcom/freeme/camera/ui/modepicker/ModePickerManager;

    invoke-static {v0}, Lcom/freeme/camera/ui/modepicker/ModePickerManager;->access$300(Lcom/freeme/camera/ui/modepicker/ModePickerManager;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f090166

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/freeme/camera/ui/modepicker/ModePickerManager$FragmentStateListener;->this$0:Lcom/freeme/camera/ui/modepicker/ModePickerManager;

    invoke-static {v0}, Lcom/freeme/camera/ui/modepicker/ModePickerManager;->access$300(Lcom/freeme/camera/ui/modepicker/ModePickerManager;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/ui/modepicker/ModePickerManager$FragmentStateListener;->this$0:Lcom/freeme/camera/ui/modepicker/ModePickerManager;

    invoke-static {v1}, Lcom/freeme/camera/ui/modepicker/ModePickerManager;->access$000(Lcom/freeme/camera/ui/modepicker/ModePickerManager;)Lcom/freeme/camera/ui/modepicker/ModePickerFragment;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/app/IApp;->registerOnOrientationChangeListener(Lcom/freeme/camera/common/app/IApp$OnOrientationChangeListener;)V

    iget-object v0, p0, Lcom/freeme/camera/ui/modepicker/ModePickerManager$FragmentStateListener;->this$0:Lcom/freeme/camera/ui/modepicker/ModePickerManager;

    invoke-static {v0}, Lcom/freeme/camera/ui/modepicker/ModePickerManager;->access$300(Lcom/freeme/camera/ui/modepicker/ModePickerManager;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/ui/modepicker/ModePickerManager$FragmentStateListener;->this$0:Lcom/freeme/camera/ui/modepicker/ModePickerManager;

    invoke-static {v1}, Lcom/freeme/camera/ui/modepicker/ModePickerManager;->access$300(Lcom/freeme/camera/ui/modepicker/ModePickerManager;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v1

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/freeme/camera/common/IAppUi;->setUIEnabled(IZ)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/ui/modepicker/ModePickerManager$FragmentStateListener;->this$0:Lcom/freeme/camera/ui/modepicker/ModePickerManager;

    invoke-static {v0}, Lcom/freeme/camera/ui/modepicker/ModePickerManager;->access$300(Lcom/freeme/camera/ui/modepicker/ModePickerManager;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090040

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/freeme/camera/ui/modepicker/ModePickerManager$FragmentStateListener;->this$0:Lcom/freeme/camera/ui/modepicker/ModePickerManager;

    invoke-static {v0}, Lcom/freeme/camera/ui/modepicker/ModePickerManager;->access$300(Lcom/freeme/camera/ui/modepicker/ModePickerManager;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f090166

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/freeme/camera/ui/modepicker/ModePickerManager$FragmentStateListener;->this$0:Lcom/freeme/camera/ui/modepicker/ModePickerManager;

    invoke-static {v0}, Lcom/freeme/camera/ui/modepicker/ModePickerManager;->access$300(Lcom/freeme/camera/ui/modepicker/ModePickerManager;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/ui/modepicker/ModePickerManager$FragmentStateListener;->this$0:Lcom/freeme/camera/ui/modepicker/ModePickerManager;

    invoke-static {v1}, Lcom/freeme/camera/ui/modepicker/ModePickerManager;->access$000(Lcom/freeme/camera/ui/modepicker/ModePickerManager;)Lcom/freeme/camera/ui/modepicker/ModePickerFragment;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/app/IApp;->unregisterOnOrientationChangeListener(Lcom/freeme/camera/common/app/IApp$OnOrientationChangeListener;)V

    iget-object v0, p0, Lcom/freeme/camera/ui/modepicker/ModePickerManager$FragmentStateListener;->this$0:Lcom/freeme/camera/ui/modepicker/ModePickerManager;

    invoke-static {v0}, Lcom/freeme/camera/ui/modepicker/ModePickerManager;->access$300(Lcom/freeme/camera/ui/modepicker/ModePickerManager;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/ui/modepicker/ModePickerManager$FragmentStateListener;->this$0:Lcom/freeme/camera/ui/modepicker/ModePickerManager;

    invoke-static {v1}, Lcom/freeme/camera/ui/modepicker/ModePickerManager;->access$300(Lcom/freeme/camera/ui/modepicker/ModePickerManager;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v1

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/freeme/camera/common/IAppUi;->setUIEnabled(IZ)V

    iget-object v0, p0, Lcom/freeme/camera/ui/modepicker/ModePickerManager$FragmentStateListener;->this$0:Lcom/freeme/camera/ui/modepicker/ModePickerManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/freeme/camera/ui/modepicker/ModePickerManager;->access$002(Lcom/freeme/camera/ui/modepicker/ModePickerManager;Lcom/freeme/camera/ui/modepicker/ModePickerFragment;)Lcom/freeme/camera/ui/modepicker/ModePickerFragment;

    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method
