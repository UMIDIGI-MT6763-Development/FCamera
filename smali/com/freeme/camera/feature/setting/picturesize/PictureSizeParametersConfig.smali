.class public Lcom/freeme/camera/feature/setting/picturesize/PictureSizeParametersConfig;
.super Ljava/lang/Object;
.source "PictureSizeParametersConfig.java"

# interfaces
.implements Lcom/freeme/camera/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private mDeviceRequester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;

.field private mPictureSize:Lcom/freeme/camera/feature/setting/picturesize/PictureSize;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeParametersConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeParametersConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/freeme/camera/feature/setting/picturesize/PictureSize;Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mPictureSize:Lcom/freeme/camera/feature/setting/picturesize/PictureSize;

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mDeviceRequester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;

    return-void
.end method

.method private getDefaultPictureSize()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mPictureSize:Lcom/freeme/camera/feature/setting/picturesize/PictureSize;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/picturesize/PictureSize;->getSupportedPlatformValues()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
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

.method private sortSizeInDescending(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Size;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Size;

    add-int/lit8 v2, v0, 0x1

    move v4, v0

    move-object v3, v1

    move v1, v2

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Camera$Size;

    iget v6, v5, Landroid/hardware/Camera$Size;->width:I

    iget v7, v5, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v6, v7

    iget v7, v3, Landroid/hardware/Camera$Size;->width:I

    iget v8, v3, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v7, v8

    if-le v6, v7, :cond_0

    move v4, v1

    move-object v3, v5

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Size;

    invoke-interface {p1, v0, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, v4, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v0, v2

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public configCommand(Lcom/freeme/camera/common/device/v1/CameraProxy;)V
    .locals 0

    return-void
.end method

.method public configParameters(Landroid/hardware/Camera$Parameters;)Z
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mPictureSize:Lcom/freeme/camera/feature/setting/picturesize/PictureSize;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/picturesize/PictureSize;->getValue()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeParametersConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[configParameters], value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/16 v2, 0x78

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v3, v0}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    :cond_0
    return v1
.end method

.method public sendSettingChangeRequest()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mDeviceRequester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mPictureSize:Lcom/freeme/camera/feature/setting/picturesize/PictureSize;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/setting/picturesize/PictureSize;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    return-void
.end method

.method public setOriginalParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 1

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeParametersConfig;->sortSizeInDescending(Ljava/util/List;)V

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeParametersConfig;->sizeToStr(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mPictureSize:Lcom/freeme/camera/feature/setting/picturesize/PictureSize;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/feature/setting/picturesize/PictureSize;->onValueInitialized(Ljava/util/List;)V

    return-void
.end method
