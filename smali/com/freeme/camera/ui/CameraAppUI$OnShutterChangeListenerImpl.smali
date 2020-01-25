.class Lcom/freeme/camera/ui/CameraAppUI$OnShutterChangeListenerImpl;
.super Ljava/lang/Object;
.source "CameraAppUI.java"

# interfaces
.implements Lcom/freeme/camera/ui/shutter/ShutterButtonManager$OnShutterChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/ui/CameraAppUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnShutterChangeListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/ui/CameraAppUI;


# direct methods
.method private constructor <init>(Lcom/freeme/camera/ui/CameraAppUI;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/CameraAppUI$OnShutterChangeListenerImpl;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/freeme/camera/ui/CameraAppUI;Lcom/freeme/camera/ui/CameraAppUI$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/ui/CameraAppUI$OnShutterChangeListenerImpl;-><init>(Lcom/freeme/camera/ui/CameraAppUI;)V

    return-void
.end method


# virtual methods
.method public onShutterTypeChanged(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI$OnShutterChangeListenerImpl;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {v0, p1}, Lcom/freeme/camera/ui/CameraAppUI;->access$3102(Lcom/freeme/camera/ui/CameraAppUI;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/freeme/camera/ui/CameraAppUI;->access$3200()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onShutterTypeChanged mCurrentModeType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/freeme/camera/ui/CameraAppUI$OnShutterChangeListenerImpl;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {v1}, Lcom/freeme/camera/ui/CameraAppUI;->access$3100(Lcom/freeme/camera/ui/CameraAppUI;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/ui/CameraAppUI$OnShutterChangeListenerImpl;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {p1}, Lcom/freeme/camera/ui/CameraAppUI;->access$1800(Lcom/freeme/camera/ui/CameraAppUI;)Lcom/freeme/camera/ui/modepicker/ModeProvider;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI$OnShutterChangeListenerImpl;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {v0}, Lcom/freeme/camera/ui/CameraAppUI;->access$3300(Lcom/freeme/camera/ui/CameraAppUI;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/ui/CameraAppUI$OnShutterChangeListenerImpl;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {v1}, Lcom/freeme/camera/ui/CameraAppUI;->access$3100(Lcom/freeme/camera/ui/CameraAppUI;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/freeme/camera/ui/modepicker/ModeProvider;->getModeEntryName(Ljava/lang/String;Ljava/lang/String;)Lcom/freeme/camera/common/IAppUi$ModeItem;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI$OnShutterChangeListenerImpl;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {v0}, Lcom/freeme/camera/ui/CameraAppUI;->access$3400(Lcom/freeme/camera/ui/CameraAppUI;)Lcom/freeme/camera/common/IAppUiListener$OnModeChangeListener;

    move-result-object v0

    iget-object p1, p1, Lcom/freeme/camera/common/IAppUi$ModeItem;->mClassName:Ljava/lang/String;

    invoke-interface {v0, p1}, Lcom/freeme/camera/common/IAppUiListener$OnModeChangeListener;->onModeSelected(Ljava/lang/String;)V

    return-void
.end method

.method public onShutterTypeChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI$OnShutterChangeListenerImpl;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {v0}, Lcom/freeme/camera/ui/CameraAppUI;->access$3400(Lcom/freeme/camera/ui/CameraAppUI;)Lcom/freeme/camera/common/IAppUiListener$OnModeChangeListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI$OnShutterChangeListenerImpl;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {v0, p2}, Lcom/freeme/camera/ui/CameraAppUI;->access$3102(Lcom/freeme/camera/ui/CameraAppUI;Ljava/lang/String;)Ljava/lang/String;

    iget-object p2, p0, Lcom/freeme/camera/ui/CameraAppUI$OnShutterChangeListenerImpl;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {p2, p1}, Lcom/freeme/camera/ui/CameraAppUI;->access$3302(Lcom/freeme/camera/ui/CameraAppUI;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/freeme/camera/ui/CameraAppUI;->access$3200()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onShutterTypeChanged mCurrentModeType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/freeme/camera/ui/CameraAppUI$OnShutterChangeListenerImpl;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {v1}, Lcom/freeme/camera/ui/CameraAppUI;->access$3100(Lcom/freeme/camera/ui/CameraAppUI;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mCurrentModeName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/freeme/camera/ui/CameraAppUI$OnShutterChangeListenerImpl;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {v1}, Lcom/freeme/camera/ui/CameraAppUI;->access$3300(Lcom/freeme/camera/ui/CameraAppUI;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/freeme/camera/ui/CameraAppUI$OnShutterChangeListenerImpl;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {p2}, Lcom/freeme/camera/ui/CameraAppUI;->access$1800(Lcom/freeme/camera/ui/CameraAppUI;)Lcom/freeme/camera/ui/modepicker/ModeProvider;

    move-result-object p2

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI$OnShutterChangeListenerImpl;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {v0}, Lcom/freeme/camera/ui/CameraAppUI;->access$3300(Lcom/freeme/camera/ui/CameraAppUI;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/ui/CameraAppUI$OnShutterChangeListenerImpl;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {v1}, Lcom/freeme/camera/ui/CameraAppUI;->access$3100(Lcom/freeme/camera/ui/CameraAppUI;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/freeme/camera/ui/modepicker/ModeProvider;->getModeEntryName(Ljava/lang/String;Ljava/lang/String;)Lcom/freeme/camera/common/IAppUi$ModeItem;

    move-result-object p2

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI$OnShutterChangeListenerImpl;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    iget-object v1, p2, Lcom/freeme/camera/common/IAppUi$ModeItem;->mMode:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/freeme/camera/ui/CameraAppUI;->access$1902(Lcom/freeme/camera/ui/CameraAppUI;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI$OnShutterChangeListenerImpl;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {v0}, Lcom/freeme/camera/ui/CameraAppUI;->access$3400(Lcom/freeme/camera/ui/CameraAppUI;)Lcom/freeme/camera/common/IAppUiListener$OnModeChangeListener;

    move-result-object v0

    iget-object v1, p2, Lcom/freeme/camera/common/IAppUi$ModeItem;->mClassName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUiListener$OnModeChangeListener;->onModeSelected(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI$OnShutterChangeListenerImpl;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {v0}, Lcom/freeme/camera/ui/CameraAppUI;->access$1100(Lcom/freeme/camera/ui/CameraAppUI;)Lcom/freeme/camera/ui/shutter/ShutterButtonManager;

    move-result-object v0

    iget-object v1, p2, Lcom/freeme/camera/common/IAppUi$ModeItem;->mMode:Ljava/lang/String;

    iget-object p2, p2, Lcom/freeme/camera/common/IAppUi$ModeItem;->mShutterIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, p2}, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->updateCurrentModeShutter(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    iget-object p2, p0, Lcom/freeme/camera/ui/CameraAppUI$OnShutterChangeListenerImpl;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {p2}, Lcom/freeme/camera/ui/CameraAppUI;->access$1200(Lcom/freeme/camera/ui/CameraAppUI;)Lcom/freeme/camera/ui/preview/PreviewManager;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/freeme/camera/ui/CameraAppUI;->access$3502(Lcom/freeme/camera/ui/CameraAppUI;Lcom/freeme/camera/ui/preview/PreviewManager;)Lcom/freeme/camera/ui/preview/PreviewManager;

    iget-object p2, p0, Lcom/freeme/camera/ui/CameraAppUI$OnShutterChangeListenerImpl;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {p2}, Lcom/freeme/camera/ui/CameraAppUI;->access$1500(Lcom/freeme/camera/ui/CameraAppUI;)Lcom/freeme/camera/common/app/IApp;

    move-result-object p2

    invoke-interface {p2}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI$OnShutterChangeListenerImpl;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {v0}, Lcom/freeme/camera/ui/CameraAppUI;->access$1500(Lcom/freeme/camera/ui/CameraAppUI;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "beautyface_dialog_title"

    const-string v2, "string"

    iget-object v3, p0, Lcom/freeme/camera/ui/CameraAppUI$OnShutterChangeListenerImpl;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {v3}, Lcom/freeme/camera/ui/CameraAppUI;->access$1500(Lcom/freeme/camera/ui/CameraAppUI;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v3

    invoke-interface {v3}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/freeme/camera/ui/CameraAppUI$OnShutterChangeListenerImpl;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {p2}, Lcom/freeme/camera/ui/CameraAppUI;->access$1500(Lcom/freeme/camera/ui/CameraAppUI;)Lcom/freeme/camera/common/app/IApp;

    move-result-object p2

    invoke-interface {p2}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI$OnShutterChangeListenerImpl;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {v0}, Lcom/freeme/camera/ui/CameraAppUI;->access$1500(Lcom/freeme/camera/ui/CameraAppUI;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "facecute_dialog_title"

    const-string v2, "string"

    iget-object v3, p0, Lcom/freeme/camera/ui/CameraAppUI$OnShutterChangeListenerImpl;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {v3}, Lcom/freeme/camera/ui/CameraAppUI;->access$1500(Lcom/freeme/camera/ui/CameraAppUI;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v3

    invoke-interface {v3}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/freeme/camera/ui/CameraAppUI$OnShutterChangeListenerImpl;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {p2}, Lcom/freeme/camera/ui/CameraAppUI;->access$1500(Lcom/freeme/camera/ui/CameraAppUI;)Lcom/freeme/camera/common/app/IApp;

    move-result-object p2

    invoke-interface {p2}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI$OnShutterChangeListenerImpl;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {v0}, Lcom/freeme/camera/ui/CameraAppUI;->access$1500(Lcom/freeme/camera/ui/CameraAppUI;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "videobeautyface_dialog_title"

    const-string v2, "string"

    iget-object v3, p0, Lcom/freeme/camera/ui/CameraAppUI$OnShutterChangeListenerImpl;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {v3}, Lcom/freeme/camera/ui/CameraAppUI;->access$1500(Lcom/freeme/camera/ui/CameraAppUI;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v3

    invoke-interface {v3}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/freeme/camera/ui/CameraAppUI$OnShutterChangeListenerImpl;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {p1}, Lcom/freeme/camera/ui/CameraAppUI;->access$3700(Lcom/freeme/camera/ui/CameraAppUI;)Lcom/freeme/camera/ui/preview/PreviewManager;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/freeme/camera/ui/CameraAppUI;->access$1202(Lcom/freeme/camera/ui/CameraAppUI;Lcom/freeme/camera/ui/preview/PreviewManager;)Lcom/freeme/camera/ui/preview/PreviewManager;

    iget-object p1, p0, Lcom/freeme/camera/ui/CameraAppUI$OnShutterChangeListenerImpl;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {p1}, Lcom/freeme/camera/ui/CameraAppUI;->access$2300(Lcom/freeme/camera/ui/CameraAppUI;)Lcom/freeme/camera/ui/FaceBeautyViewManager;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/freeme/camera/ui/CameraAppUI$OnShutterChangeListenerImpl;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {p1}, Lcom/freeme/camera/ui/CameraAppUI;->access$2300(Lcom/freeme/camera/ui/CameraAppUI;)Lcom/freeme/camera/ui/FaceBeautyViewManager;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/freeme/camera/ui/FaceBeautyViewManager;->setFaceBeautySwitcherViewSelected(Ljava/lang/Boolean;)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/freeme/camera/ui/CameraAppUI$OnShutterChangeListenerImpl;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {p1}, Lcom/freeme/camera/ui/CameraAppUI;->access$3600(Lcom/freeme/camera/ui/CameraAppUI;)Lcom/freeme/camera/ui/preview/PreviewManager;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/freeme/camera/ui/CameraAppUI;->access$1202(Lcom/freeme/camera/ui/CameraAppUI;Lcom/freeme/camera/ui/preview/PreviewManager;)Lcom/freeme/camera/ui/preview/PreviewManager;

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/freeme/camera/ui/CameraAppUI$OnShutterChangeListenerImpl;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {p1}, Lcom/freeme/camera/ui/CameraAppUI;->access$3500(Lcom/freeme/camera/ui/CameraAppUI;)Lcom/freeme/camera/ui/preview/PreviewManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freeme/camera/ui/preview/PreviewManager;->removeLayoutChangeListener()V

    return-void
.end method
