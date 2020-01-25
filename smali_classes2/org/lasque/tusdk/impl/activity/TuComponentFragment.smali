.class public abstract Lorg/lasque/tusdk/impl/activity/TuComponentFragment;
.super Lorg/lasque/tusdk/impl/activity/TuFragment;


# instance fields
.field private a:Lorg/lasque/tusdk/modules/components/TuSdkComponentErrorListener;

.field protected permissionAlertDelegate:Lorg/lasque/tusdk/core/view/TuSdkViewHelper$AlertDelegate;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/lasque/tusdk/impl/activity/TuFragment;-><init>()V

    new-instance v0, Lorg/lasque/tusdk/impl/activity/TuComponentFragment$2;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/impl/activity/TuComponentFragment$2;-><init>(Lorg/lasque/tusdk/impl/activity/TuComponentFragment;)V

    iput-object v0, p0, Lorg/lasque/tusdk/impl/activity/TuComponentFragment;->permissionAlertDelegate:Lorg/lasque/tusdk/core/view/TuSdkViewHelper$AlertDelegate;

    return-void
.end method


# virtual methods
.method public getErrorListener()Lorg/lasque/tusdk/modules/components/TuSdkComponentErrorListener;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/impl/activity/TuComponentFragment;->a:Lorg/lasque/tusdk/modules/components/TuSdkComponentErrorListener;

    return-object v0
.end method

.method public getRequestPermissionCode()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected getRequiredPermissions()[Ljava/lang/String;
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasRequiredPermission()Z
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x17

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/activity/TuComponentFragment;->getRequiredPermissions()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    array-length v2, v0

    if-lez v2, :cond_3

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v5, v0, v4

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/activity/TuComponentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/support/v4/app/FragmentActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "android.permission.ACCESS_FINE_LOCATION"

    if-ne v5, v6, :cond_1

    const-string v5, "Access to fine location has been denied"

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lorg/lasque/tusdk/core/utils/TLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    return v3

    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method protected notifyError(Lorg/lasque/tusdk/core/TuSdkResult;Lorg/lasque/tusdk/modules/components/ComponentErrorType;)V
    .locals 2

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/activity/TuComponentFragment;->getErrorListener()Lorg/lasque/tusdk/modules/components/TuSdkComponentErrorListener;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/lasque/tusdk/core/utils/ThreadHelper;->isMainThread()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lorg/lasque/tusdk/impl/activity/TuComponentFragment$1;

    invoke-direct {v1, p0, p1, p2}, Lorg/lasque/tusdk/impl/activity/TuComponentFragment$1;-><init>(Lorg/lasque/tusdk/impl/activity/TuComponentFragment;Lorg/lasque/tusdk/core/TuSdkResult;Lorg/lasque/tusdk/modules/components/ComponentErrorType;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/activity/TuComponentFragment;->getErrorListener()Lorg/lasque/tusdk/modules/components/TuSdkComponentErrorListener;

    move-result-object v0

    invoke-virtual {p2, p0}, Lorg/lasque/tusdk/modules/components/ComponentErrorType;->getError(Ljava/lang/Object;)Lorg/lasque/tusdk/core/utils/TuSdkError;

    move-result-object p2

    invoke-interface {v0, p0, p1, p2}, Lorg/lasque/tusdk/modules/components/TuSdkComponentErrorListener;->onComponentError(Lorg/lasque/tusdk/impl/activity/TuFragment;Lorg/lasque/tusdk/core/TuSdkResult;Ljava/lang/Error;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onPermissionGrantedResult(Z)V
    .locals 0

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lorg/lasque/tusdk/impl/activity/TuFragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/activity/TuComponentFragment;->getRequestPermissionCode()I

    move-result p2

    if-ne p1, p2, :cond_2

    array-length p1, p3

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_1

    aget v0, p3, p2

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/activity/TuComponentFragment;->hasRequiredPermission()Z

    move-result p1

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/impl/activity/TuComponentFragment;->onPermissionGrantedResult(Z)V

    :cond_2
    return-void
.end method

.method public requestRequiredPermissions()V
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/activity/TuComponentFragment;->getRequiredPermissions()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/activity/TuComponentFragment;->getRequestPermissionCode()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/lasque/tusdk/impl/activity/TuComponentFragment;->requestPermissions([Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public setErrorListener(Lorg/lasque/tusdk/modules/components/TuSdkComponentErrorListener;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/impl/activity/TuComponentFragment;->a:Lorg/lasque/tusdk/modules/components/TuSdkComponentErrorListener;

    return-void
.end method
