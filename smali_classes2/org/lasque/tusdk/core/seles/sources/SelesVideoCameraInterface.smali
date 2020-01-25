.class public interface abstract Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraInterface;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/lasque/tusdk/core/seles/sources/SelesBaseCameraInterface;


# virtual methods
.method public abstract getDeviceAngle()I
.end method

.method public abstract getState()Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$CameraState;
.end method

.method public abstract setRendererFPS(I)V
.end method

.method public abstract switchFilter(Ljava/lang/String;)V
.end method

.method public abstract updateFaceFeatures([Lorg/lasque/tusdk/core/face/FaceAligment;F)V
.end method
