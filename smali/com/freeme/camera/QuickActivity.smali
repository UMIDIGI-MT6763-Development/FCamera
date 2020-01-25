.class public abstract Lcom/freeme/camera/QuickActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "QuickActivity.java"


# static fields
.field private static final ON_RESUME_DELAY_NON_SECURE_MILLIS:J = 0xfL

.field private static final ON_RESUME_DELAY_SECURE_MILLIS:J = 0x1eL

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mMainHandler:Landroid/os/Handler;

.field private final mOnResumeTasks:Ljava/lang/Runnable;

.field private mSkippedFirstOnResume:Z

.field protected mStartupOnCreate:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    invoke-static {v0}, Landroid/support/v7/app/AppCompatDelegate;->setCompatVectorFromResourcesEnabled(Z)V

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/QuickActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/QuickActivity;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/camera/QuickActivity;->mSkippedFirstOnResume:Z

    iput-boolean v0, p0, Lcom/freeme/camera/QuickActivity;->mStartupOnCreate:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freeme/camera/QuickActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    new-instance v0, Lcom/freeme/camera/QuickActivity$1;

    invoke-direct {v0, p0}, Lcom/freeme/camera/QuickActivity$1;-><init>(Lcom/freeme/camera/QuickActivity;)V

    iput-object v0, p0, Lcom/freeme/camera/QuickActivity;->mOnResumeTasks:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/freeme/camera/QuickActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/freeme/camera/QuickActivity;->mSkippedFirstOnResume:Z

    return p0
.end method

.method static synthetic access$002(Lcom/freeme/camera/QuickActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/freeme/camera/QuickActivity;->mSkippedFirstOnResume:Z

    return p1
.end method

.method static synthetic access$100()Lcom/freeme/camera/common/debug/LogUtil$Tag;
    .locals 1

    sget-object v0, Lcom/freeme/camera/QuickActivity;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-object v0
.end method

.method private startPreWarmService()V
    .locals 3

    invoke-virtual {p0}, Lcom/freeme/camera/QuickActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.freeme.camera.CameraAppService"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/utils/CameraUtil;->isServiceRun(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/freeme/camera/QuickActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/freeme/camera/CameraAppService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Lcom/freeme/camera/QuickActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/freeme/camera/common/utils/CameraUtil;->startService(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected isKeyguardLocked()Z
    .locals 4

    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Lcom/freeme/camera/QuickActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/freeme/camera/QuickActivity;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isKeyguardLocked = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return v0
.end method

.method protected isKeyguardSecure()Z
    .locals 4

    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Lcom/freeme/camera/QuickActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/freeme/camera/QuickActivity;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isKeyguardSecure = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return v0
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 3

    sget-object v0, Lcom/freeme/camera/QuickActivity;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    sget-object v0, Lcom/freeme/camera/QuickActivity;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/profiler/PerformanceTracker;->create(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)Lcom/freeme/camera/common/debug/profiler/IPerformanceProfile;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/debug/profiler/IPerformanceProfile;->start()Lcom/freeme/camera/common/debug/profiler/IPerformanceProfile;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/freeme/camera/QuickActivity;->mStartupOnCreate:Z

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/freeme/camera/QuickActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/freeme/camera/QuickActivity;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Lcom/freeme/camera/QuickActivity;->onPermissionCreateTasks(Landroid/os/Bundle;)V

    invoke-interface {v0}, Lcom/freeme/camera/common/debug/profiler/IPerformanceProfile;->stop()V

    return-void
.end method

.method protected final onDestroy()V
    .locals 2

    sget-object v0, Lcom/freeme/camera/QuickActivity;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    sget-object v0, Lcom/freeme/camera/QuickActivity;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/profiler/PerformanceTracker;->create(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)Lcom/freeme/camera/common/debug/profiler/IPerformanceProfile;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/debug/profiler/IPerformanceProfile;->start()Lcom/freeme/camera/common/debug/profiler/IPerformanceProfile;

    move-result-object v0

    invoke-virtual {p0}, Lcom/freeme/camera/QuickActivity;->onPermissionDestroyTasks()V

    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    invoke-interface {v0}, Lcom/freeme/camera/common/debug/profiler/IPerformanceProfile;->stop()V

    return-void
.end method

.method protected final onNewIntent(Landroid/content/Intent;)V
    .locals 2

    sget-object v0, Lcom/freeme/camera/QuickActivity;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "onNewIntent"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/profiler/PerformanceTracker;->create(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)Lcom/freeme/camera/common/debug/profiler/IPerformanceProfile;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/debug/profiler/IPerformanceProfile;->start()Lcom/freeme/camera/common/debug/profiler/IPerformanceProfile;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/freeme/camera/QuickActivity;->setIntent(Landroid/content/Intent;)V

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Lcom/freeme/camera/QuickActivity;->onNewIntentTasks(Landroid/content/Intent;)V

    invoke-interface {v0}, Lcom/freeme/camera/common/debug/profiler/IPerformanceProfile;->stop()V

    return-void
.end method

.method protected onNewIntentTasks(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method protected final onPause()V
    .locals 3

    sget-object v0, Lcom/freeme/camera/QuickActivity;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    sget-object v0, Lcom/freeme/camera/QuickActivity;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/profiler/PerformanceTracker;->create(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)Lcom/freeme/camera/common/debug/profiler/IPerformanceProfile;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/debug/profiler/IPerformanceProfile;->start()Lcom/freeme/camera/common/debug/profiler/IPerformanceProfile;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/QuickActivity;->mMainHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/freeme/camera/QuickActivity;->mOnResumeTasks:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean v1, p0, Lcom/freeme/camera/QuickActivity;->mSkippedFirstOnResume:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/freeme/camera/QuickActivity;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v2, "onPause --> onPermissionPauseTasks()"

    invoke-static {v1, v2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/freeme/camera/QuickActivity;->onPermissionPauseTasks()V

    :cond_0
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/freeme/camera/QuickActivity;->mStartupOnCreate:Z

    invoke-interface {v0}, Lcom/freeme/camera/common/debug/profiler/IPerformanceProfile;->stop()V

    return-void
.end method

.method protected onPermissionCreateTasks(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected onPermissionDestroyTasks()V
    .locals 0

    return-void
.end method

.method protected onPermissionPauseTasks()V
    .locals 0

    return-void
.end method

.method protected onPermissionResumeTasks()V
    .locals 0

    return-void
.end method

.method protected onPermissionStartTasks()V
    .locals 0

    return-void
.end method

.method protected onPermissionStopTasks()V
    .locals 0

    return-void
.end method

.method protected final onRestart()V
    .locals 2

    sget-object v0, Lcom/freeme/camera/QuickActivity;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "onRestart()"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    sget-object v0, Lcom/freeme/camera/QuickActivity;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "onRestart"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/profiler/PerformanceTracker;->create(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)Lcom/freeme/camera/common/debug/profiler/IPerformanceProfile;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/debug/profiler/IPerformanceProfile;->start()Lcom/freeme/camera/common/debug/profiler/IPerformanceProfile;

    move-result-object v0

    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onRestart()V

    invoke-interface {v0}, Lcom/freeme/camera/common/debug/profiler/IPerformanceProfile;->stop()V

    return-void
.end method

.method protected final onResume()V
    .locals 6

    sget-object v0, Lcom/freeme/camera/QuickActivity;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    sget-object v0, Lcom/freeme/camera/QuickActivity;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/profiler/PerformanceTracker;->create(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)Lcom/freeme/camera/common/debug/profiler/IPerformanceProfile;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/debug/profiler/IPerformanceProfile;->start()Lcom/freeme/camera/common/debug/profiler/IPerformanceProfile;

    move-result-object v0

    invoke-direct {p0}, Lcom/freeme/camera/QuickActivity;->startPreWarmService()V

    iget-object v1, p0, Lcom/freeme/camera/QuickActivity;->mMainHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/freeme/camera/QuickActivity;->mOnResumeTasks:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/freeme/camera/QuickActivity;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/freeme/camera/QuickActivity;->mSkippedFirstOnResume:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/freeme/camera/QuickActivity;->mSkippedFirstOnResume:Z

    invoke-virtual {p0}, Lcom/freeme/camera/QuickActivity;->isKeyguardSecure()Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v1, 0x1e

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0xf

    :goto_0
    sget-object v3, Lcom/freeme/camera/QuickActivity;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onResume() --> postDelayed(mOnResumeTasks,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/freeme/camera/QuickActivity;->mMainHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/freeme/camera/QuickActivity;->mOnResumeTasks:Ljava/lang/Runnable;

    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/freeme/camera/QuickActivity;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v2, "onResume --> onPermissionResumeTasks()"

    invoke-static {v1, v2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/freeme/camera/QuickActivity;->mSkippedFirstOnResume:Z

    invoke-virtual {p0}, Lcom/freeme/camera/QuickActivity;->onPermissionResumeTasks()V

    :goto_1
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    invoke-interface {v0}, Lcom/freeme/camera/common/debug/profiler/IPerformanceProfile;->stop()V

    return-void
.end method

.method protected final onStart()V
    .locals 2

    sget-object v0, Lcom/freeme/camera/QuickActivity;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "onStart()"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    sget-object v0, Lcom/freeme/camera/QuickActivity;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/profiler/PerformanceTracker;->create(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)Lcom/freeme/camera/common/debug/profiler/IPerformanceProfile;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/debug/profiler/IPerformanceProfile;->start()Lcom/freeme/camera/common/debug/profiler/IPerformanceProfile;

    move-result-object v0

    invoke-virtual {p0}, Lcom/freeme/camera/QuickActivity;->onPermissionStartTasks()V

    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    invoke-interface {v0}, Lcom/freeme/camera/common/debug/profiler/IPerformanceProfile;->stop()V

    return-void
.end method

.method protected final onStop()V
    .locals 2

    sget-object v0, Lcom/freeme/camera/QuickActivity;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "onStop()"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/freeme/camera/QuickActivity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/freeme/camera/QuickActivity;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "changing configurations"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/freeme/camera/QuickActivity;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/profiler/PerformanceTracker;->create(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)Lcom/freeme/camera/common/debug/profiler/IPerformanceProfile;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/debug/profiler/IPerformanceProfile;->start()Lcom/freeme/camera/common/debug/profiler/IPerformanceProfile;

    move-result-object v0

    invoke-virtual {p0}, Lcom/freeme/camera/QuickActivity;->onPermissionStopTasks()V

    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    invoke-interface {v0}, Lcom/freeme/camera/common/debug/profiler/IPerformanceProfile;->stop()V

    return-void
.end method
