.class public interface abstract Lorg/lasque/tusdk/core/seles/sources/SelesBaseCameraInterface;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/core/seles/sources/SelesBaseCameraInterface$TuSdkAutoFocusCallback;
    }
.end annotation


# virtual methods
.method public abstract addTarget(Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;)V
.end method

.method public abstract addTarget(Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;I)V
.end method

.method public abstract autoFocus(Lorg/lasque/tusdk/core/seles/sources/SelesBaseCameraInterface$TuSdkAutoFocusCallback;)V
.end method

.method public abstract autoFocus(Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;Landroid/graphics/PointF;Lorg/lasque/tusdk/core/seles/sources/SelesBaseCameraInterface$TuSdkAutoFocusCallback;)V
.end method

.method public abstract autoMetering(Landroid/graphics/PointF;)V
.end method

.method public abstract canSupportAutoFocus()Z
.end method

.method public abstract canSupportFlash()Z
.end method

.method public abstract cancelAutoFocus()V
.end method

.method public abstract captureImage()V
.end method

.method public abstract capturePhotoOrientation()Lorg/lasque/tusdk/core/utils/image/ImageOrientation;
.end method

.method public abstract destroy()V
.end method

.method public abstract getAntiBandingMode()Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAntibanding;
.end method

.method public abstract getFlashMode()Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;
.end method

.method public abstract getLastFocusTime()J
.end method

.method public abstract getOutputSize()Lorg/lasque/tusdk/core/struct/TuSdkSize;
.end method

.method public abstract isBackFacingCameraPresent()Z
.end method

.method public abstract isCapturePaused()Z
.end method

.method public abstract isCapturing()Z
.end method

.method public abstract isFrontFacingCameraPresent()Z
.end method

.method public abstract pauseCameraCapture()V
.end method

.method public abstract removeTarget(Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;)V
.end method

.method public abstract resumeCameraCapture()V
.end method

.method public abstract rotateCamera()V
.end method

.method public abstract setAntibandingMode(Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAntibanding;)V
.end method

.method public abstract setDisableMirrorFrontFacing(Z)V
.end method

.method public abstract setEnableFaceDetection(Z)V
.end method

.method public abstract setFlashMode(Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;)V
.end method

.method public abstract setOutputSize(Lorg/lasque/tusdk/core/struct/TuSdkSize;)V
.end method

.method public abstract setPreviewEffectScale(F)V
.end method

.method public abstract setPreviewMaxSize(I)V
.end method

.method public abstract setUnifiedParameters(Z)V
.end method

.method public abstract startCameraCapture()V
.end method

.method public abstract stopCameraCapture()V
.end method
