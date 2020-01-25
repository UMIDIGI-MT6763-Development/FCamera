.class public Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayParametersConfig;
.super Ljava/lang/Object;
.source "MatrixDisplayParametersConfig.java"

# interfaces
.implements Lcom/freeme/camera/common/setting/ICameraSetting$IParametersConfigure;
.implements Lcom/freeme/camera/feature/setting/matrixdisplay/IMatrixDisplayConfig;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayParametersConfig$ValueInitializedListener;
    }
.end annotation


# static fields
.field private static final CACHE_BUFFER_NUM:I = 0x3

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private mCallback:Lcom/freeme/camera/feature/setting/matrixdisplay/IPreviewFrameCallback;

.field private mCurrentEffect:Ljava/lang/String;

.field private mDeviceRequester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;

.field private mDisplayOpened:Z

.field private mIsStatusChanged:Z

.field private mKey:Ljava/lang/String;

.field private mListener:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayParametersConfig$ValueInitializedListener;

.field private mPreviewCallbackBuffers:[[B

.field private mPreviewHeight:I

.field private mPreviewWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayParametersConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayParametersConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayParametersConfig$ValueInitializedListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [[B

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayParametersConfig;->mPreviewCallbackBuffers:[[B

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayParametersConfig;->mDisplayOpened:Z

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayParametersConfig;->mIsStatusChanged:Z

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayParametersConfig;->mKey:Ljava/lang/String;

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayParametersConfig;->mDeviceRequester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;

    iput-object p3, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayParametersConfig;->mListener:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayParametersConfig$ValueInitializedListener;

    return-void
.end method

.method static synthetic access$000()Lcom/freeme/camera/common/debug/LogUtil$Tag;
    .locals 1

    sget-object v0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayParametersConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayParametersConfig;)Lcom/freeme/camera/feature/setting/matrixdisplay/IPreviewFrameCallback;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayParametersConfig;->mCallback:Lcom/freeme/camera/feature/setting/matrixdisplay/IPreviewFrameCallback;

    return-object p0
.end method

.method private sizeToStr(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Size;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Size;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v1, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public configCommand(Lcom/freeme/camera/common/device/v1/CameraProxy;)V
    .locals 4

    sget-object v0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayParametersConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[configCommand], cameraProxy:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mPreviewWidth:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayParametersConfig;->mPreviewWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mPreviewHeight:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayParametersConfig;->mPreviewHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayParametersConfig;->mDisplayOpened:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/freeme/camera/common/device/v1/CameraProxy;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayParametersConfig;->mPreviewWidth:I

    iget v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayParametersConfig;->mPreviewHeight:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayParametersConfig;->mPreviewCallbackBuffers:[[B

    array-length v3, v2

    if-ge v1, v3, :cond_2

    aget-object v3, v2, v1

    if-nez v3, :cond_1

    new-array v3, v0, [B

    aput-object v3, v2, v1

    :cond_1
    iget-object v2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayParametersConfig;->mPreviewCallbackBuffers:[[B

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Lcom/freeme/camera/common/device/v1/CameraProxy;->addCallbackBuffer([B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayParametersConfig$1;

    invoke-direct {v0, p0, p1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayParametersConfig$1;-><init>(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayParametersConfig;Lcom/freeme/camera/common/device/v1/CameraProxy;)V

    invoke-virtual {p1, v0}, Lcom/freeme/camera/common/device/v1/CameraProxy;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    :goto_1
    return-void
.end method

.method public configParameters(Landroid/hardware/Camera$Parameters;)Z
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayParametersConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[configParameters], matrix display state is changed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayParametersConfig;->mIsStatusChanged:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", current display is opened:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayParametersConfig;->mDisplayOpened:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mCurrentEffect:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayParametersConfig;->mCurrentEffect:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayParametersConfig;->mCurrentEffect:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayParametersConfig;->mDisplayOpened:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayParametersConfig;->mPreviewWidth:I

    iget v2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayParametersConfig;->mPreviewHeight:I

    invoke-virtual {p1, v0, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    const v0, 0x32315659

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    :cond_1
    iget-boolean p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayParametersConfig;->mIsStatusChanged:Z

    if-eqz p1, :cond_2

    iput-boolean v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayParametersConfig;->mIsStatusChanged:Z

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public sendSettingChangeRequest()V
    .locals 2

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayParametersConfig;->mDisplayOpened:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayParametersConfig;->mDeviceRequester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayParametersConfig;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayParametersConfig;->mDeviceRequester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayParametersConfig;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayParametersConfig;->mDeviceRequester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayParametersConfig;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayParametersConfig;->mDeviceRequester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayParametersConfig;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setDisplayStatus(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayParametersConfig;->mDisplayOpened:Z

    xor-int/2addr v0, p1

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayParametersConfig;->mIsStatusChanged:Z

    iput-boolean p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayParametersConfig;->mDisplayOpened:Z

    return-void
.end method

.method public setOriginalParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 3

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getColorEffect()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayParametersConfig;->sizeToStr(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayParametersConfig;->mListener:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayParametersConfig$ValueInitializedListener;

    invoke-interface {v2, v0, v1, p1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayParametersConfig$ValueInitializedListener;->onValueInitialized(Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public setPreviewFrameCallback(Lcom/freeme/camera/feature/setting/matrixdisplay/IPreviewFrameCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayParametersConfig;->mCallback:Lcom/freeme/camera/feature/setting/matrixdisplay/IPreviewFrameCallback;

    return-void
.end method

.method public setPreviewSize(II)V
    .locals 3

    iget v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayParametersConfig;->mPreviewWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayParametersConfig;->mPreviewHeight:I

    if-eq v0, p2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayParametersConfig;->mPreviewCallbackBuffers:[[B

    array-length v2, v1

    if-ge v0, v2, :cond_1

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iput p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayParametersConfig;->mPreviewWidth:I

    iput p2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayParametersConfig;->mPreviewHeight:I

    return-void
.end method

.method public setSelectedEffect(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayParametersConfig;->mCurrentEffect:Ljava/lang/String;

    return-void
.end method
