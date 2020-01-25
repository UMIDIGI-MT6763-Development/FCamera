.class public abstract Lcom/freeme/camera/PermissionActivity;
.super Lcom/freeme/camera/QuickActivity;
.source "PermissionActivity.java"

# interfaces
.implements Landroid/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback;


# static fields
.field private static final CAM_ACTIVITY_PERMISSION_STATE_CREATED:I = 0x1

.field private static final CAM_ACTIVITY_PERMISSION_STATE_DESTROYED:I = 0x4

.field private static final CAM_ACTIVITY_PERMISSION_STATE_PAUSED:I = 0x3

.field private static final CAM_ACTIVITY_PERMISSION_STATE_RESUMED:I = 0x2

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private mActivityState:I

.field private mPermissionManager:Lcom/freeme/camera/common/permission/PermissionManager;

.field private mSavedInstanceState:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/PermissionActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/PermissionActivity;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/freeme/camera/QuickActivity;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/freeme/camera/PermissionActivity;->mActivityState:I

    return-void
.end method


# virtual methods
.method protected onCreateTasks(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected onDestroyTasks()V
    .locals 0

    return-void
.end method

.method protected onPauseTasks()V
    .locals 0

    return-void
.end method

.method protected onPermissionCreateTasks(Landroid/os/Bundle;)V
    .locals 1

    new-instance v0, Lcom/freeme/camera/common/permission/PermissionManager;

    invoke-direct {v0, p0}, Lcom/freeme/camera/common/permission/PermissionManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/freeme/camera/PermissionActivity;->mPermissionManager:Lcom/freeme/camera/common/permission/PermissionManager;

    iput-object p1, p0, Lcom/freeme/camera/PermissionActivity;->mSavedInstanceState:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/freeme/camera/PermissionActivity;->mPermissionManager:Lcom/freeme/camera/common/permission/PermissionManager;

    invoke-virtual {v0}, Lcom/freeme/camera/common/permission/PermissionManager;->checkCameraLaunchPermissions()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/PermissionActivity;->mPermissionManager:Lcom/freeme/camera/common/permission/PermissionManager;

    invoke-virtual {v0}, Lcom/freeme/camera/common/permission/PermissionManager;->checkCameraLocationPermissions()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/freeme/camera/PermissionActivity;->onCreateTasks(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/freeme/camera/PermissionActivity;->mActivityState:I

    :cond_0
    return-void
.end method

.method protected onPermissionDestroyTasks()V
    .locals 2

    iget v0, p0, Lcom/freeme/camera/PermissionActivity;->mActivityState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/freeme/camera/PermissionActivity;->onDestroyTasks()V

    iput v1, p0, Lcom/freeme/camera/PermissionActivity;->mActivityState:I

    :cond_0
    return-void
.end method

.method protected onPermissionPauseTasks()V
    .locals 2

    iget v0, p0, Lcom/freeme/camera/PermissionActivity;->mActivityState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/freeme/camera/PermissionActivity;->onPauseTasks()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/freeme/camera/PermissionActivity;->mActivityState:I

    :cond_0
    return-void
.end method

.method protected onPermissionResumeTasks()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/PermissionActivity;->mPermissionManager:Lcom/freeme/camera/common/permission/PermissionManager;

    invoke-virtual {v0}, Lcom/freeme/camera/common/permission/PermissionManager;->checkCameraLaunchPermissions()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/PermissionActivity;->mPermissionManager:Lcom/freeme/camera/common/permission/PermissionManager;

    invoke-virtual {v0}, Lcom/freeme/camera/common/permission/PermissionManager;->requestCameraAllPermissions()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/PermissionActivity;->mPermissionManager:Lcom/freeme/camera/common/permission/PermissionManager;

    invoke-virtual {v0}, Lcom/freeme/camera/common/permission/PermissionManager;->requestCameraLocationPermissions()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/PermissionActivity;->mPermissionManager:Lcom/freeme/camera/common/permission/PermissionManager;

    invoke-virtual {v0}, Lcom/freeme/camera/common/permission/PermissionManager;->requestCameraAllPermissions()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget v0, p0, Lcom/freeme/camera/PermissionActivity;->mActivityState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/freeme/camera/PermissionActivity;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Lcom/freeme/camera/PermissionActivity;->onCreateTasks(Landroid/os/Bundle;)V

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freeme/camera/PermissionActivity;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/freeme/camera/PermissionActivity;->onResumeTasks()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/freeme/camera/PermissionActivity;->mActivityState:I

    return-void
.end method

.method protected onPermissionStartTasks()V
    .locals 0

    invoke-virtual {p0}, Lcom/freeme/camera/PermissionActivity;->onStartTasks()V

    return-void
.end method

.method protected onPermissionStopTasks()V
    .locals 0

    invoke-virtual {p0}, Lcom/freeme/camera/PermissionActivity;->onStopTasks()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3

    sget-object v0, Lcom/freeme/camera/PermissionActivity;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRequestPermissionsResult(), grantResults = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    array-length v0, p3

    if-gtz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/PermissionActivity;->mPermissionManager:Lcom/freeme/camera/common/permission/PermissionManager;

    invoke-virtual {v0}, Lcom/freeme/camera/common/permission/PermissionManager;->getCameraLaunchPermissionRequestCode()I

    move-result v0

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/PermissionActivity;->mPermissionManager:Lcom/freeme/camera/common/permission/PermissionManager;

    invoke-virtual {v0}, Lcom/freeme/camera/common/permission/PermissionManager;->getCameraLocationPermissionRequestCode()I

    move-result v0

    if-ne v0, p1, :cond_3

    :cond_1
    iget-object p1, p0, Lcom/freeme/camera/PermissionActivity;->mPermissionManager:Lcom/freeme/camera/common/permission/PermissionManager;

    invoke-virtual {p1, p2, p3}, Lcom/freeme/camera/common/permission/PermissionManager;->isCameraLaunchPermissionsResultReady([Ljava/lang/String;[I)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/freeme/camera/PermissionActivity;->mPermissionManager:Lcom/freeme/camera/common/permission/PermissionManager;

    invoke-virtual {p1, p2, p3}, Lcom/freeme/camera/common/permission/PermissionManager;->isCameraLocationPermissionsResultReady([Ljava/lang/String;[I)Z

    move-result p1

    if-nez p1, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/freeme/camera/PermissionActivity;->finish()V

    :cond_3
    return-void
.end method

.method protected onResumeTasks()V
    .locals 0

    return-void
.end method

.method protected onStartTasks()V
    .locals 0

    return-void
.end method

.method protected onStopTasks()V
    .locals 0

    return-void
.end method
