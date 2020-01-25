.class public Lcom/mediatek/plugin/component/PluginProxyActivity;
.super Landroid/app/Activity;
.source "PluginProxyActivity.java"

# interfaces
.implements Lcom/mediatek/plugin/component/IProxy;


# static fields
.field public static final CLASS_PILGIN:Ljava/lang/String; = "Class_plugin"

.field public static final PATH_APK:Ljava/lang/String; = "Path_apk"

.field private static final TAG:Ljava/lang/String; = "PluginManager/PluginProxyActivity"

.field public static final URI_IMG:Ljava/lang/String; = "Uri_img"


# instance fields
.field private mAsset:Landroid/content/res/AssetManager;

.field private mClassLoader:Ljava/lang/ClassLoader;

.field private mPluginActivity:Lcom/mediatek/plugin/component/PluginBaseActivity;

.field private mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private launchTargetActivity(Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/mediatek/plugin/component/PluginBaseActivity;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p2, v0}, Lcom/mediatek/plugin/utils/ReflectUtils;->createInstance(Ljava/lang/String;Ljava/lang/ClassLoader;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    instance-of p2, p1, Lcom/mediatek/plugin/component/PluginBaseActivity;

    if-eqz p2, :cond_0

    check-cast p1, Lcom/mediatek/plugin/component/PluginBaseActivity;

    invoke-virtual {p1, p0}, Lcom/mediatek/plugin/component/PluginBaseActivity;->addProxyActivity(Landroid/app/Activity;)V

    invoke-virtual {p0, p1}, Lcom/mediatek/plugin/component/PluginProxyActivity;->attach(Lcom/mediatek/plugin/component/IPlugin;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method


# virtual methods
.method public attach(Lcom/mediatek/plugin/component/IPlugin;)V
    .locals 0

    return-void
.end method

.method public getAssets()Landroid/content/res/AssetManager;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/plugin/component/PluginProxyActivity;->mAsset:Landroid/content/res/AssetManager;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/plugin/component/PluginProxyActivity;->mClassLoader:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    new-instance v0, Landroid/view/MenuInflater;

    iget-object v1, p0, Lcom/mediatek/plugin/component/PluginProxyActivity;->mPluginActivity:Lcom/mediatek/plugin/component/PluginBaseActivity;

    invoke-direct {v0, v1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/plugin/component/PluginProxyActivity;->mResources:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/mediatek/plugin/component/PluginProxyActivity;->mPluginActivity:Lcom/mediatek/plugin/component/PluginBaseActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/plugin/component/PluginBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/mediatek/plugin/component/PluginProxyActivity;->mPluginActivity:Lcom/mediatek/plugin/component/PluginBaseActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mediatek/plugin/component/PluginBaseActivity;->onBackPressed()V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Lcom/mediatek/plugin/component/PluginProxyActivity;->mPluginActivity:Lcom/mediatek/plugin/component/PluginBaseActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/mediatek/plugin/component/PluginBaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/mediatek/plugin/component/PluginProxyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mediatek/plugin/component/PluginProxyActivity;->getActionBar()Landroid/app/ActionBar;

    const-string v1, "targetTargetId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "targetActivityName"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "PluginManager/PluginProxyActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<onCreate> bundle = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/mediatek/plugin/PluginManager;->getInstance(Landroid/content/Context;)Lcom/mediatek/plugin/PluginManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mediatek/plugin/PluginManager;->getPlugin(Ljava/lang/String;)Lcom/mediatek/plugin/Plugin;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/plugin/Plugin;->getDescriptor()Lcom/mediatek/plugin/element/PluginDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/plugin/element/PluginDescriptor;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/plugin/component/PluginProxyActivity;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2}, Lcom/mediatek/plugin/element/PluginDescriptor;->getAssetManager()Landroid/content/res/AssetManager;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/plugin/component/PluginProxyActivity;->mAsset:Landroid/content/res/AssetManager;

    invoke-virtual {v1}, Lcom/mediatek/plugin/Plugin;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/mediatek/plugin/component/PluginProxyActivity;->launchTargetActivity(Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/mediatek/plugin/component/PluginBaseActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/plugin/component/PluginProxyActivity;->mPluginActivity:Lcom/mediatek/plugin/component/PluginBaseActivity;

    iget-object v0, p0, Lcom/mediatek/plugin/component/PluginProxyActivity;->mPluginActivity:Lcom/mediatek/plugin/component/PluginBaseActivity;

    if-eqz v0, :cond_0

    const-string v0, "PluginManager/PluginProxyActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<onCreate> mPluginActivity = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/plugin/component/PluginProxyActivity;->mPluginActivity:Lcom/mediatek/plugin/component/PluginBaseActivity;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/mediatek/plugin/component/PluginProxyActivity;->mPluginActivity:Lcom/mediatek/plugin/component/PluginBaseActivity;

    invoke-virtual {v0, p1}, Lcom/mediatek/plugin/component/PluginBaseActivity;->onCreate(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/plugin/component/PluginProxyActivity;->finish()V

    const-string p1, "PluginManager/PluginProxyActivity"

    const-string v0, "<onCreate> mPluginActivity == null Please check!!!"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    const-string v0, "PluginManager/PluginProxyActivity"

    const-string v1, " <onCreateOptionsMenu> "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/mediatek/plugin/component/PluginProxyActivity;->mPluginActivity:Lcom/mediatek/plugin/component/PluginBaseActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/mediatek/plugin/component/PluginBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/mediatek/plugin/component/PluginProxyActivity;->mPluginActivity:Lcom/mediatek/plugin/component/PluginBaseActivity;

    invoke-virtual {v0}, Lcom/mediatek/plugin/component/PluginBaseActivity;->onDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/plugin/component/PluginProxyActivity;->mPluginActivity:Lcom/mediatek/plugin/component/PluginBaseActivity;

    iput-object v0, p0, Lcom/mediatek/plugin/component/PluginProxyActivity;->mClassLoader:Ljava/lang/ClassLoader;

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    iget-object v0, p0, Lcom/mediatek/plugin/component/PluginProxyActivity;->mPluginActivity:Lcom/mediatek/plugin/component/PluginBaseActivity;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/plugin/component/PluginBaseActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/mediatek/plugin/component/PluginProxyActivity;->mPluginActivity:Lcom/mediatek/plugin/component/PluginBaseActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/mediatek/plugin/component/PluginBaseActivity;->onNewIntent(Landroid/content/Intent;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/mediatek/plugin/component/PluginProxyActivity;->mPluginActivity:Lcom/mediatek/plugin/component/PluginBaseActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/mediatek/plugin/component/PluginBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 1

    iget-object v0, p0, Lcom/mediatek/plugin/component/PluginProxyActivity;->mPluginActivity:Lcom/mediatek/plugin/component/PluginBaseActivity;

    invoke-virtual {v0}, Lcom/mediatek/plugin/component/PluginBaseActivity;->onPause()V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Lcom/mediatek/plugin/component/PluginProxyActivity;->mPluginActivity:Lcom/mediatek/plugin/component/PluginBaseActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/mediatek/plugin/component/PluginBaseActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method protected onRestart()V
    .locals 1

    iget-object v0, p0, Lcom/mediatek/plugin/component/PluginProxyActivity;->mPluginActivity:Lcom/mediatek/plugin/component/PluginBaseActivity;

    invoke-virtual {v0}, Lcom/mediatek/plugin/component/PluginBaseActivity;->onRestart()V

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/mediatek/plugin/component/PluginProxyActivity;->mPluginActivity:Lcom/mediatek/plugin/component/PluginBaseActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/mediatek/plugin/component/PluginBaseActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    iget-object v0, p0, Lcom/mediatek/plugin/component/PluginProxyActivity;->mPluginActivity:Lcom/mediatek/plugin/component/PluginBaseActivity;

    invoke-virtual {v0}, Lcom/mediatek/plugin/component/PluginBaseActivity;->onResume()V

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/mediatek/plugin/component/PluginProxyActivity;->mPluginActivity:Lcom/mediatek/plugin/component/PluginBaseActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/mediatek/plugin/component/PluginBaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .locals 1

    iget-object v0, p0, Lcom/mediatek/plugin/component/PluginProxyActivity;->mPluginActivity:Lcom/mediatek/plugin/component/PluginBaseActivity;

    invoke-virtual {v0}, Lcom/mediatek/plugin/component/PluginBaseActivity;->onStart()V

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    iget-object v0, p0, Lcom/mediatek/plugin/component/PluginProxyActivity;->mPluginActivity:Lcom/mediatek/plugin/component/PluginBaseActivity;

    invoke-virtual {v0}, Lcom/mediatek/plugin/component/PluginBaseActivity;->onStop()V

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v0, p0, Lcom/mediatek/plugin/component/PluginProxyActivity;->mPluginActivity:Lcom/mediatek/plugin/component/PluginBaseActivity;

    invoke-virtual {v0, p1}, Lcom/mediatek/plugin/component/PluginBaseActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    iget-object v0, p0, Lcom/mediatek/plugin/component/PluginProxyActivity;->mPluginActivity:Lcom/mediatek/plugin/component/PluginBaseActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/mediatek/plugin/component/PluginBaseActivity;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/mediatek/plugin/component/PluginProxyActivity;->mPluginActivity:Lcom/mediatek/plugin/component/PluginBaseActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/mediatek/plugin/component/PluginBaseActivity;->onWindowFocusChanged(Z)V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public setContentView(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/mediatek/plugin/component/PluginProxyActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setContentView(I)V

    return-void
.end method
