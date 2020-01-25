.class public Lcom/freeme/elementscenter/ECMainActivity;
.super Landroid/app/Activity;
.source "ECMainActivity.java"

# interfaces
.implements Lcom/freeme/elementscenter/ui/ECBackHandledInterface;
.implements Lcom/freeme/elementscenter/data/ECDownloadManager$DownloadDataListener;
.implements Lcom/freeme/elementscenter/ui/ECResourceObserved$DataDeleteListener;


# static fields
.field private static final TYPE_CODE_TAG:Ljava/lang/String; = "ec_type_code"

.field public static sCameraId:I


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mBackHandledFragment:Lcom/freeme/elementscenter/ui/ECBackHandledFragment;

.field private mECDownloadManager:Lcom/freeme/elementscenter/data/ECDownloadManager;

.field private mECResouceObserved:Lcom/freeme/elementscenter/ui/ECResourceObserved;

.field private mPluginManager:Lcom/freeme/elementscenter/PluginManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private parseIntent()V
    .locals 4

    invoke-virtual {p0}, Lcom/freeme/elementscenter/ECMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ec_type_code"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const v3, 0x186a1

    if-eq v1, v3, :cond_3

    const v3, 0x18705

    if-eq v1, v3, :cond_2

    const v3, 0x18769

    if-eq v1, v3, :cond_1

    const v3, 0x187cd

    if-eq v1, v3, :cond_0

    const-string v1, "cameraId"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/freeme/elementscenter/ECMainActivity;->sCameraId:I

    invoke-virtual {p0, v2}, Lcom/freeme/elementscenter/ECMainActivity;->showMainFragment(Z)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v2}, Lcom/freeme/elementscenter/ECMainActivity;->showJigsawFragment(Z)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v2}, Lcom/freeme/elementscenter/ECMainActivity;->showPoseModeFragment(Z)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v2}, Lcom/freeme/elementscenter/ECMainActivity;->showChildModeFragment(Z)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, v2}, Lcom/freeme/elementscenter/ECMainActivity;->showWatermarkFragment(Z)V

    :goto_0
    return-void
.end method

.method private showChildModeFragment(Z)V
    .locals 1

    new-instance v0, Lcom/freeme/elementscenter/ui/ECChildMode;

    invoke-direct {v0}, Lcom/freeme/elementscenter/ui/ECChildMode;-><init>()V

    invoke-static {p0, v0, p1}, Lcom/freeme/elementscenter/ui/ECFragmentUtil;->pushReplaceFragment(Landroid/app/Activity;Landroid/app/Fragment;Z)V

    return-void
.end method

.method private showJigsawFragment(Z)V
    .locals 1

    new-instance v0, Lcom/freeme/elementscenter/ui/ECJigsaw;

    invoke-direct {v0}, Lcom/freeme/elementscenter/ui/ECJigsaw;-><init>()V

    invoke-static {p0, v0, p1}, Lcom/freeme/elementscenter/ui/ECFragmentUtil;->pushReplaceFragment(Landroid/app/Activity;Landroid/app/Fragment;Z)V

    return-void
.end method

.method private showPoseModeFragment(Z)V
    .locals 1

    new-instance v0, Lcom/freeme/elementscenter/ui/ECPoseMode;

    invoke-direct {v0}, Lcom/freeme/elementscenter/ui/ECPoseMode;-><init>()V

    invoke-static {p0, v0, p1}, Lcom/freeme/elementscenter/ui/ECFragmentUtil;->pushReplaceFragment(Landroid/app/Activity;Landroid/app/Fragment;Z)V

    return-void
.end method

.method private showWatermarkFragment(Z)V
    .locals 1

    new-instance v0, Lcom/freeme/elementscenter/ui/ECWaterMark;

    invoke-direct {v0}, Lcom/freeme/elementscenter/ui/ECWaterMark;-><init>()V

    invoke-static {p0, v0, p1}, Lcom/freeme/elementscenter/ui/ECFragmentUtil;->pushReplaceFragment(Landroid/app/Activity;Landroid/app/Fragment;Z)V

    return-void
.end method


# virtual methods
.method public getPluginManager()Lcom/freeme/elementscenter/PluginManager;
    .locals 1

    iget-object v0, p0, Lcom/freeme/elementscenter/ECMainActivity;->mPluginManager:Lcom/freeme/elementscenter/PluginManager;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/elementscenter/ECMainActivity;->mBackHandledFragment:Lcom/freeme/elementscenter/ui/ECBackHandledFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/freeme/elementscenter/ui/ECBackHandledFragment;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/freeme/elementscenter/ECMainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/freeme/elementscenter/ECMainActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/freeme/elementscenter/ECMainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/elementscenter/ECMainActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object p1, p0, Lcom/freeme/elementscenter/ECMainActivity;->mActionBar:Landroid/app/ActionBar;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-static {p0}, Lcom/freeme/elementscenter/data/ECUtil;->setWidthXHeight(Landroid/content/Context;)V

    sget p1, Lcom/freeme/elementscenter/R$layout;->ec_activity_main:I

    invoke-virtual {p0, p1}, Lcom/freeme/elementscenter/ECMainActivity;->setContentView(I)V

    invoke-static {}, Lcom/freeme/elementscenter/data/ECDownloadManager;->getInstance()Lcom/freeme/elementscenter/data/ECDownloadManager;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/elementscenter/ECMainActivity;->mECDownloadManager:Lcom/freeme/elementscenter/data/ECDownloadManager;

    iget-object p1, p0, Lcom/freeme/elementscenter/ECMainActivity;->mECDownloadManager:Lcom/freeme/elementscenter/data/ECDownloadManager;

    invoke-virtual {p1, p0}, Lcom/freeme/elementscenter/data/ECDownloadManager;->registerDownloadDataListener(Lcom/freeme/elementscenter/data/ECDownloadManager$DownloadDataListener;)V

    invoke-static {}, Lcom/freeme/elementscenter/ui/ECResourceObserved;->getInstance()Lcom/freeme/elementscenter/ui/ECResourceObserved;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/elementscenter/ECMainActivity;->mECResouceObserved:Lcom/freeme/elementscenter/ui/ECResourceObserved;

    iget-object p1, p0, Lcom/freeme/elementscenter/ECMainActivity;->mECResouceObserved:Lcom/freeme/elementscenter/ui/ECResourceObserved;

    invoke-virtual {p1, p0}, Lcom/freeme/elementscenter/ui/ECResourceObserved;->registerListener(Lcom/freeme/elementscenter/ui/ECResourceObserved$DataDeleteListener;)V

    invoke-direct {p0}, Lcom/freeme/elementscenter/ECMainActivity;->parseIntent()V

    new-instance p1, Lcom/freeme/elementscenter/PluginManager;

    invoke-direct {p1, p0}, Lcom/freeme/elementscenter/PluginManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/freeme/elementscenter/ECMainActivity;->mPluginManager:Lcom/freeme/elementscenter/PluginManager;

    return-void
.end method

.method public onDataChanged(Lcom/freeme/elementscenter/ui/ECItemData;)V
    .locals 5

    iget v0, p1, Lcom/freeme/elementscenter/ui/ECItemData;->mDownloadStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget v0, p1, Lcom/freeme/elementscenter/ui/ECItemData;->mTypeCode:I

    const-string v2, ""

    iget-object v3, p1, Lcom/freeme/elementscenter/ui/ECItemData;->mName:Ljava/lang/String;

    iget p1, p1, Lcom/freeme/elementscenter/ui/ECItemData;->mPageItemTypeCode:I

    const v4, 0x186a1

    if-eq v0, v4, :cond_1

    const v4, 0x18769

    if-eq v0, v4, :cond_0

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/freeme/elementscenter/data/ECUtil;->POSEMODE_TYPE_ARRAY:[Ljava/lang/String;

    sub-int/2addr p1, v1

    aget-object v2, v2, p1

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/freeme/elementscenter/data/ECUtil;->WATERWARK_TYPE_ARRAY:[Ljava/lang/String;

    sub-int/2addr p1, v1

    aget-object v2, v2, p1

    :goto_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.action.freeme.ec.item.add"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "typeCode"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "pageTitle"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "itemName"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/freeme/elementscenter/ECMainActivity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_2
    return-void
.end method

.method public onDataDeleted(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/freeme/elementscenter/ui/ECItemData;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/freeme/elementscenter/ui/ECItemData;

    iget v0, p1, Lcom/freeme/elementscenter/ui/ECItemData;->mTypeCode:I

    const-string v1, ""

    iget-object v2, p1, Lcom/freeme/elementscenter/ui/ECItemData;->mName:Ljava/lang/String;

    iget p1, p1, Lcom/freeme/elementscenter/ui/ECItemData;->mPageItemTypeCode:I

    const v3, 0x186a1

    if-eq v0, v3, :cond_1

    const v3, 0x18769

    if-eq v0, v3, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/freeme/elementscenter/data/ECUtil;->POSEMODE_TYPE_ARRAY:[Ljava/lang/String;

    add-int/lit8 p1, p1, -0x1

    aget-object v1, v1, p1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/freeme/elementscenter/data/ECUtil;->WATERWARK_TYPE_ARRAY:[Ljava/lang/String;

    add-int/lit8 p1, p1, -0x1

    aget-object v1, v1, p1

    :goto_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v3, "android.action.freeme.ec.item.del"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "typeCode"

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "pageTitle"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "itemName"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/freeme/elementscenter/ECMainActivity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/freeme/elementscenter/ECMainActivity;->mECDownloadManager:Lcom/freeme/elementscenter/data/ECDownloadManager;

    invoke-virtual {v0, p0}, Lcom/freeme/elementscenter/data/ECDownloadManager;->unregisterDownloadDataListener(Lcom/freeme/elementscenter/data/ECDownloadManager$DownloadDataListener;)V

    iget-object v0, p0, Lcom/freeme/elementscenter/ECMainActivity;->mECResouceObserved:Lcom/freeme/elementscenter/ui/ECResourceObserved;

    invoke-virtual {v0, p0}, Lcom/freeme/elementscenter/ui/ECResourceObserved;->unregisterListener(Lcom/freeme/elementscenter/ui/ECResourceObserved$DataDeleteListener;)V

    iget-object v0, p0, Lcom/freeme/elementscenter/ECMainActivity;->mPluginManager:Lcom/freeme/elementscenter/PluginManager;

    invoke-virtual {v0}, Lcom/freeme/elementscenter/PluginManager;->release()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/freeme/elementscenter/ui/ECFragmentUtil;->setContinueState(Z)V

    invoke-static {}, Lcom/freeme/elementscenter/data/ECDownloadManager;->getInstance()Lcom/freeme/elementscenter/data/ECDownloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freeme/elementscenter/data/ECDownloadManager;->destroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    const v2, 0x102002c

    if-eq v0, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/freeme/elementscenter/ECMainActivity;->onBackPressed()V

    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onRestart()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method protected onStart()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    invoke-static {}, Lcom/freeme/elementscenter/data/ECDownloadManager;->getInstance()Lcom/freeme/elementscenter/data/ECDownloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freeme/elementscenter/data/ECDownloadManager;->stop()V

    return-void
.end method

.method public setSelectedFragment(Lcom/freeme/elementscenter/ui/ECBackHandledFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/elementscenter/ECMainActivity;->mBackHandledFragment:Lcom/freeme/elementscenter/ui/ECBackHandledFragment;

    return-void
.end method

.method public showMainFragment(Z)V
    .locals 1

    new-instance v0, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;

    invoke-direct {v0}, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;-><init>()V

    invoke-static {p0, v0, p1}, Lcom/freeme/elementscenter/ui/ECFragmentUtil;->pushReplaceFragment(Landroid/app/Activity;Landroid/app/Fragment;Z)V

    return-void
.end method
