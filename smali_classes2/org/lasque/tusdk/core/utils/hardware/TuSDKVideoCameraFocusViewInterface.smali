.class public interface abstract Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCameraFocusViewInterface;
.super Ljava/lang/Object;


# virtual methods
.method public abstract cameraStateChanged(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraInterface;Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$CameraState;)V
.end method

.method public abstract notifyFilterConfigView(Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;)V
.end method

.method public abstract setCamera(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraInterface;)V
.end method

.method public abstract setCameraFaceDetection(Ljava/util/List;Lorg/lasque/tusdk/core/struct/TuSdkSize;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/core/utils/hardware/TuSdkFace;",
            ">;",
            "Lorg/lasque/tusdk/core/struct/TuSdkSize;",
            ")V"
        }
    .end annotation
.end method

.method public abstract setDisableContinueFoucs(Z)V
.end method

.method public abstract setDisableFocusBeep(Z)V
.end method

.method public abstract setEnableFaceFeatureDetection(Z)V
.end method

.method public abstract setEnableFilterConfig(Z)V
.end method

.method public abstract setGuideLineViewState(Z)V
.end method

.method public abstract setRangeViewFoucsState(Z)V
.end method

.method public abstract setRegionPercent(Landroid/graphics/RectF;)V
.end method

.method public abstract showRangeView()V
.end method

.method public abstract viewWillDestory()V
.end method
