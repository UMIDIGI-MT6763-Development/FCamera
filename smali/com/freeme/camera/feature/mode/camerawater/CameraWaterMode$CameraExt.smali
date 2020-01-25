.class Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode$CameraExt;
.super Ljava/lang/Object;
.source "CameraWaterMode.java"

# interfaces
.implements Lcom/freeme/camera/ICameraExt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraExt"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;


# direct methods
.method private constructor <init>(Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode$CameraExt;->this$0:Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode$CameraExt;-><init>(Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;)V

    return-void
.end method

.method private setLocalPictureSize(ILjava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Size;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode$CameraExt;->this$0:Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->access$1000(Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getmPluginManagerAgent()Lcom/freeme/camera/common/pluginmanager/PluginManagerAgent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/freeme/camera/common/pluginmanager/PluginManagerAgent;->getPictureSizeInfo(I)Lcom/freeme/camera/data/PictureSizeInfo;

    move-result-object p1

    if-eqz p2, :cond_6

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    if-nez p1, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {p1}, Lcom/freeme/camera/data/PictureSizeInfo;->getExpectScreenRatio()D

    move-result-wide v0

    const/4 v2, 0x0

    const-wide v3, 0x7fffffffffffffffL

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/Camera$Size;

    iget v7, v6, Landroid/hardware/Camera$Size;->width:I

    int-to-double v7, v7

    iget v9, v6, Landroid/hardware/Camera$Size;->height:I

    int-to-double v9, v9

    div-double/2addr v7, v9

    sub-double v7, v0, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    const-wide v9, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v7, v7, v9

    if-gez v7, :cond_1

    iget v7, v6, Landroid/hardware/Camera$Size;->width:I

    iget v8, v6, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v7, v8

    int-to-long v7, v7

    invoke-virtual {p1}, Lcom/freeme/camera/data/PictureSizeInfo;->getExpecttOutImageSize()J

    move-result-wide v9

    sub-long/2addr v9, v7

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    cmp-long v9, v7, v3

    if-gez v9, :cond_1

    move-object v2, v6

    move-wide v3, v7

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    invoke-static {}, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->access$1100()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCameraPictureSize(): find step 1: find.width = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v2, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", find.height = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",expect size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/freeme/camera/data/PictureSizeInfo;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_5

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Size;

    iget v3, v1, Landroid/hardware/Camera$Size;->width:I

    iget v4, v1, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v3, v4

    int-to-long v3, v3

    invoke-virtual {p1}, Lcom/freeme/camera/data/PictureSizeInfo;->getExpecttOutImageSize()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gtz v3, :cond_4

    invoke-static {}, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->access$1100()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setCameraPictureSize(): find step 2: find.width = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", find.height = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_5
    :goto_2
    move-object v1, v2

    :goto_3
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode$CameraExt;->this$0:Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;

    invoke-static {p1, v1}, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->access$1202(Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;Landroid/hardware/Camera$Size;)Landroid/hardware/Camera$Size;

    return-void

    :cond_6
    :goto_4
    return-void
.end method


# virtual methods
.method public getAlertDialog()Landroid/app/AlertDialog$Builder;
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode$CameraExt;->this$0:Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;

    invoke-static {v1}, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->access$900(Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v1

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f100122

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public getGLRoot()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode$CameraExt;->getGLRoot()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getHostContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode$CameraExt;->this$0:Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->access$400(Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode$CameraExt;->this$0:Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->access$800(Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getGSensorOrientation()I

    move-result v0

    return v0
.end method

.method public getOrientationCompensation()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPictureSize()Lcom/freeme/camera/data/Size;
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode$CameraExt;->this$0:Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->access$700(Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;)Lcom/freeme/camera/common/relation/DataStore;

    move-result-object v0

    const-string v1, "key_picture_size_4_3"

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode$CameraExt;->this$0:Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;

    invoke-static {v2}, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->access$600(Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;)Lcom/freeme/camera/common/relation/DataStore;

    move-result-object v2

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode$CameraExt;->this$0:Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;

    invoke-static {v3}, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->access$500(Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/freeme/camera/common/relation/DataStore;->getCameraScope(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/freeme/camera/common/relation/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    new-instance v2, Lcom/freeme/camera/data/Size;

    invoke-direct {v2, v1, v0}, Lcom/freeme/camera/data/Size;-><init>(II)V

    return-object v2

    :cond_0
    return-object v3
.end method

.method public getPreviewFormat()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPreviewSize()Lcom/freeme/camera/data/Size;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onShutter()V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode$CameraExt;->this$0:Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->onShutterButtonClick()Z

    return-void
.end method

.method public runOnUiThread(Ljava/lang/Runnable;)V
    .locals 0

    return-void
.end method

.method public sendCommand(I)V
    .locals 0

    return-void
.end method

.method public setBottomBarVisible(I)V
    .locals 0

    return-void
.end method

.method public setSwipingEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setTopBarBackgroudcolor(I)V
    .locals 0

    return-void
.end method

.method public setTopBarVisible(I)V
    .locals 0

    return-void
.end method
