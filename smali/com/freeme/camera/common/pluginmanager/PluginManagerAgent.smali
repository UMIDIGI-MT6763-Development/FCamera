.class public Lcom/freeme/camera/common/pluginmanager/PluginManagerAgent;
.super Ljava/lang/Object;
.source "PluginManagerAgent.java"

# interfaces
.implements Lcom/freeme/pluginmanager/PluginListener;


# static fields
.field private static final KEY_PICTURE_SIZE:Ljava/lang/String; = "key_picture_size"

.field private static final TAG:Ljava/lang/String; = "PluginManagerAgent"


# instance fields
.field private mApp:Lcom/freeme/camera/common/app/IApp;

.field protected mCameraApi:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

.field private mISettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

.field private mModules:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/freeme/camera/IPluginModuleEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mPluginLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

.field private mPluginManager:Lcom/freeme/pluginmanager/PluginManager;

.field private mSceneModeCtrlLayout:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Lcom/freeme/camera/common/app/IApp;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/common/pluginmanager/PluginManagerAgent;->mModules:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/freeme/camera/common/pluginmanager/PluginManagerAgent;->mApp:Lcom/freeme/camera/common/app/IApp;

    new-instance v0, Lcom/freeme/pluginmanager/PluginManager;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lcom/freeme/pluginmanager/PluginManager;-><init>(Landroid/content/Context;Lcom/freeme/pluginmanager/PluginListener;)V

    iput-object v0, p0, Lcom/freeme/camera/common/pluginmanager/PluginManagerAgent;->mPluginManager:Lcom/freeme/pluginmanager/PluginManager;

    return-void
.end method


# virtual methods
.method public blendOutput([BI)[B
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/common/pluginmanager/PluginManagerAgent;->mModules:Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/common/pluginmanager/PluginManagerAgent;->mModules:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/freeme/camera/IPluginModuleEntry;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lcom/freeme/camera/IPluginModuleEntry;->blendOutput([B)[B

    move-result-object p1

    return-object p1

    :cond_0
    return-object v1
.end method

.method public getModules()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/freeme/camera/IPluginModuleEntry;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/freeme/camera/common/pluginmanager/PluginManagerAgent;->mModules:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getPictureSizeInfo(I)Lcom/freeme/camera/data/PictureSizeInfo;
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/common/pluginmanager/PluginManagerAgent;->mModules:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/freeme/camera/IPluginModuleEntry;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/freeme/camera/IPluginModuleEntry;->getPictureSizeInfo()Lcom/freeme/camera/data/PictureSizeInfo;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v1
.end method

.method public getmPluginLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/pluginmanager/PluginManagerAgent;->mPluginLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    return-object v0
.end method

.method public hidePlugin(I)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/pluginmanager/PluginManagerAgent;->mModules:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/common/pluginmanager/PluginManagerAgent;->mModules:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/freeme/camera/IPluginModuleEntry;

    invoke-interface {p1}, Lcom/freeme/camera/IPluginModuleEntry;->hidePanel()V

    :cond_0
    return-void
.end method

.method public hideSettingPanel(I)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/pluginmanager/PluginManagerAgent;->mModules:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/common/pluginmanager/PluginManagerAgent;->mModules:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/freeme/camera/IPluginModuleEntry;

    invoke-interface {p1}, Lcom/freeme/camera/IPluginModuleEntry;->hideSettingPanel()V

    :cond_0
    return-void
.end method

.method public mediaSaved(Landroid/net/Uri;I)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/common/pluginmanager/PluginManagerAgent;->mModules:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/common/pluginmanager/PluginManagerAgent;->mModules:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/freeme/camera/IPluginModuleEntry;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lcom/freeme/camera/IPluginModuleEntry;->mediaSaved(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method public notifyOrientationChanged(II)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/pluginmanager/PluginManagerAgent;->mModules:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/common/pluginmanager/PluginManagerAgent;->mModules:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/freeme/pluginmanager/BasePlugin;

    invoke-virtual {p1, p2}, Lcom/freeme/pluginmanager/BasePlugin;->notifyOrientationChanged(I)V

    :cond_0
    return-void
.end method

.method public onRefreshPlugins(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/freeme/pluginmanager/Plugin;",
            ">;",
            "Ljava/util/List<",
            "Lcom/freeme/pluginmanager/Plugin;",
            ">;",
            "Ljava/util/List<",
            "Lcom/freeme/pluginmanager/Plugin;",
            ">;)V"
        }
    .end annotation

    iget-object p2, p0, Lcom/freeme/camera/common/pluginmanager/PluginManagerAgent;->mModules:Landroid/util/SparseArray;

    monitor-enter p2

    :try_start_0
    iget-object p3, p0, Lcom/freeme/camera/common/pluginmanager/PluginManagerAgent;->mModules:Landroid/util/SparseArray;

    invoke-virtual {p3}, Landroid/util/SparseArray;->clear()V

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/freeme/pluginmanager/Plugin;

    const-string v0, "com.freeme.plugin.camera.module"

    invoke-virtual {p3}, Lcom/freeme/pluginmanager/Plugin;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcom/freeme/pluginmanager/Plugin;->getInstance()Lcom/freeme/pluginmanager/BasePlugin;

    move-result-object p3

    check-cast p3, Lcom/freeme/camera/IPluginModuleEntry;

    iget-object v0, p0, Lcom/freeme/camera/common/pluginmanager/PluginManagerAgent;->mModules:Landroid/util/SparseArray;

    invoke-interface {p3}, Lcom/freeme/camera/IPluginModuleEntry;->getModuleID()I

    move-result v1

    invoke-virtual {v0, v1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/pluginmanager/PluginManagerAgent;->mPluginManager:Lcom/freeme/pluginmanager/PluginManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/freeme/pluginmanager/PluginManager;->release()V

    :cond_0
    return-void
.end method

.method public showPlugin(I)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/pluginmanager/PluginManagerAgent;->mSceneModeCtrlLayout:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/common/pluginmanager/PluginManagerAgent;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/IAppUi;->getUIRootView()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/common/pluginmanager/PluginManagerAgent;->mSceneModeCtrlLayout:Landroid/view/ViewGroup;

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/common/pluginmanager/PluginManagerAgent;->mModules:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/common/pluginmanager/PluginManagerAgent;->mModules:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/freeme/camera/IPluginModuleEntry;

    iget-object v0, p0, Lcom/freeme/camera/common/pluginmanager/PluginManagerAgent;->mSceneModeCtrlLayout:Landroid/view/ViewGroup;

    invoke-interface {p1, v0}, Lcom/freeme/camera/IPluginModuleEntry;->showPanel(Landroid/view/ViewGroup;)V

    :cond_1
    return-void
.end method

.method public showPlugin(ILandroid/widget/RelativeLayout$LayoutParams;)V
    .locals 1

    iput-object p2, p0, Lcom/freeme/camera/common/pluginmanager/PluginManagerAgent;->mPluginLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v0, p0, Lcom/freeme/camera/common/pluginmanager/PluginManagerAgent;->mSceneModeCtrlLayout:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/common/pluginmanager/PluginManagerAgent;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/IAppUi;->getModeRootView()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/common/pluginmanager/PluginManagerAgent;->mSceneModeCtrlLayout:Landroid/view/ViewGroup;

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/common/pluginmanager/PluginManagerAgent;->mModules:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/common/pluginmanager/PluginManagerAgent;->mModules:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/freeme/camera/IPluginModuleEntry;

    iget-object v0, p0, Lcom/freeme/camera/common/pluginmanager/PluginManagerAgent;->mSceneModeCtrlLayout:Landroid/view/ViewGroup;

    invoke-interface {p1, v0, p2}, Lcom/freeme/camera/IPluginModuleEntry;->showPanel(Landroid/view/ViewGroup;Landroid/widget/RelativeLayout$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public showSettingPanel(I)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/pluginmanager/PluginManagerAgent;->mModules:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/common/pluginmanager/PluginManagerAgent;->mModules:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/freeme/camera/IPluginModuleEntry;

    invoke-interface {p1}, Lcom/freeme/camera/IPluginModuleEntry;->showSettingPanel()V

    :cond_0
    return-void
.end method
