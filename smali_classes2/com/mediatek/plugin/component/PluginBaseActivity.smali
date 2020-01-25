.class public Lcom/mediatek/plugin/component/PluginBaseActivity;
.super Landroid/app/Activity;
.source "PluginBaseActivity.java"

# interfaces
.implements Lcom/mediatek/plugin/component/IPlugin;


# static fields
.field private static final TAG:Ljava/lang/String; = "PluginManager/PluginBaseActivity"


# instance fields
.field private mLaunchAsPlugin:Z

.field protected mThis:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/plugin/component/PluginBaseActivity;->mLaunchAsPlugin:Z

    iput-object p0, p0, Lcom/mediatek/plugin/component/PluginBaseActivity;->mThis:Landroid/app/Activity;

    return-void
.end method

.method private initActivityInfo()V
    .locals 0

    return-void
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    iget-boolean v0, p0, Lcom/mediatek/plugin/component/PluginBaseActivity;->mLaunchAsPlugin:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/plugin/component/PluginBaseActivity;->mThis:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method

.method public addProxyActivity(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/plugin/component/PluginBaseActivity;->mLaunchAsPlugin:Z

    iput-object p1, p0, Lcom/mediatek/plugin/component/PluginBaseActivity;->mThis:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/mediatek/plugin/component/PluginBaseActivity;->initActivityInfo()V

    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1

    iget-boolean v0, p0, Lcom/mediatek/plugin/component/PluginBaseActivity;->mLaunchAsPlugin:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/mediatek/plugin/component/PluginBaseActivity;->mThis:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public finish()V
    .locals 1

    iget-boolean v0, p0, Lcom/mediatek/plugin/component/PluginBaseActivity;->mLaunchAsPlugin:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/plugin/component/PluginBaseActivity;->mThis:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method public getActionBar()Landroid/app/ActionBar;
    .locals 1

    iget-boolean v0, p0, Lcom/mediatek/plugin/component/PluginBaseActivity;->mLaunchAsPlugin:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/plugin/component/PluginBaseActivity;->mThis:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    iget-boolean v0, p0, Lcom/mediatek/plugin/component/PluginBaseActivity;->mLaunchAsPlugin:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/plugin/component/PluginBaseActivity;->mThis:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getBaseContext()Landroid/content/Context;
    .locals 1

    iget-boolean v0, p0, Lcom/mediatek/plugin/component/PluginBaseActivity;->mLaunchAsPlugin:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/plugin/component/PluginBaseActivity;->mThis:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    iget-boolean v0, p0, Lcom/mediatek/plugin/component/PluginBaseActivity;->mLaunchAsPlugin:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/plugin/component/PluginBaseActivity;->mThis:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    iget-boolean v0, p0, Lcom/mediatek/plugin/component/PluginBaseActivity;->mLaunchAsPlugin:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/plugin/component/PluginBaseActivity;->mThis:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    iget-boolean v0, p0, Lcom/mediatek/plugin/component/PluginBaseActivity;->mLaunchAsPlugin:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/plugin/component/PluginBaseActivity;->mThis:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    iget-boolean v0, p0, Lcom/mediatek/plugin/component/PluginBaseActivity;->mLaunchAsPlugin:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/plugin/component/PluginBaseActivity;->mThis:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/mediatek/plugin/component/PluginBaseActivity;->mLaunchAsPlugin:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/plugin/component/PluginBaseActivity;->mThis:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    iget-boolean v0, p0, Lcom/mediatek/plugin/component/PluginBaseActivity;->mLaunchAsPlugin:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/plugin/component/PluginBaseActivity;->mThis:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .locals 1

    iget-boolean v0, p0, Lcom/mediatek/plugin/component/PluginBaseActivity;->mLaunchAsPlugin:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/mediatek/plugin/component/PluginBaseActivity;->mThis:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    return-object p1
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-boolean v0, p0, Lcom/mediatek/plugin/component/PluginBaseActivity;->mLaunchAsPlugin:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/mediatek/plugin/component/PluginBaseActivity;->mThis:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .locals 1

    iget-boolean v0, p0, Lcom/mediatek/plugin/component/PluginBaseActivity;->mLaunchAsPlugin:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/plugin/component/PluginBaseActivity;->mThis:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    return-object v0
.end method

.method public getWindow()Landroid/view/Window;
    .locals 1

    iget-boolean v0, p0, Lcom/mediatek/plugin/component/PluginBaseActivity;->mLaunchAsPlugin:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/plugin/component/PluginBaseActivity;->mThis:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    return-object v0
.end method

.method public getWindowManager()Landroid/view/WindowManager;
    .locals 1

    iget-boolean v0, p0, Lcom/mediatek/plugin/component/PluginBaseActivity;->mLaunchAsPlugin:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/plugin/component/PluginBaseActivity;->mThis:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    iget-boolean v0, p0, Lcom/mediatek/plugin/component/PluginBaseActivity;->mLaunchAsPlugin:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onAttach(Lcom/mediatek/plugin/component/IProxy;)V
    .locals 0

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    iget-boolean v0, p0, Lcom/mediatek/plugin/component/PluginBaseActivity;->mLaunchAsPlugin:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    iget-boolean v0, p0, Lcom/mediatek/plugin/component/PluginBaseActivity;->mLaunchAsPlugin:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    const-string v0, "PluginManager/PluginBaseActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<onCreateOptionsMenu> mLaunchAsPlugin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mediatek/plugin/component/PluginBaseActivity;->mLaunchAsPlugin:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/mediatek/plugin/component/PluginBaseActivity;->mLaunchAsPlugin:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method protected onDestroy()V
    .locals 1

    iget-boolean v0, p0, Lcom/mediatek/plugin/component/PluginBaseActivity;->mLaunchAsPlugin:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    :cond_0
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/mediatek/plugin/component/PluginBaseActivity;->mLaunchAsPlugin:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    iget-boolean v0, p0, Lcom/mediatek/plugin/component/PluginBaseActivity;->mLaunchAsPlugin:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/mediatek/plugin/component/PluginBaseActivity;->mLaunchAsPlugin:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/mediatek/plugin/component/PluginBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected onPause()V
    .locals 1

    iget-boolean v0, p0, Lcom/mediatek/plugin/component/PluginBaseActivity;->mLaunchAsPlugin:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    :cond_0
    return-void
.end method

.method public onRestart()V
    .locals 1

    iget-boolean v0, p0, Lcom/mediatek/plugin/component/PluginBaseActivity;->mLaunchAsPlugin:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    iget-boolean v0, p0, Lcom/mediatek/plugin/component/PluginBaseActivity;->mLaunchAsPlugin:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    iget-boolean v0, p0, Lcom/mediatek/plugin/component/PluginBaseActivity;->mLaunchAsPlugin:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    iget-boolean v0, p0, Lcom/mediatek/plugin/component/PluginBaseActivity;->mLaunchAsPlugin:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 1

    iget-boolean v0, p0, Lcom/mediatek/plugin/component/PluginBaseActivity;->mLaunchAsPlugin:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    iget-boolean v0, p0, Lcom/mediatek/plugin/component/PluginBaseActivity;->mLaunchAsPlugin:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/mediatek/plugin/component/PluginBaseActivity;->mLaunchAsPlugin:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    iget-boolean v0, p0, Lcom/mediatek/plugin/component/PluginBaseActivity;->mLaunchAsPlugin:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/mediatek/plugin/component/PluginBaseActivity;->mLaunchAsPlugin:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    :cond_0
    return-void
.end method

.method public setContentView(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/mediatek/plugin/component/PluginBaseActivity;->mLaunchAsPlugin:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/plugin/component/PluginBaseActivity;->mThis:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setContentView(I)V

    :goto_0
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 3

    const-string v0, "PluginManager/PluginBaseActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<setContentView> mLaunchAsPlugin444 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mediatek/plugin/component/PluginBaseActivity;->mLaunchAsPlugin:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/mediatek/plugin/component/PluginBaseActivity;->mLaunchAsPlugin:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/plugin/component/PluginBaseActivity;->mThis:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    iget-boolean v0, p0, Lcom/mediatek/plugin/component/PluginBaseActivity;->mLaunchAsPlugin:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/plugin/component/PluginBaseActivity;->mThis:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method
