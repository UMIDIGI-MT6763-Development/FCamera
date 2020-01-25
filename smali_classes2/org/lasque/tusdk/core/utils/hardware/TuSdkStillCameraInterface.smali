.class public interface abstract Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraInterface;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/lasque/tusdk/core/seles/sources/SelesStillCameraInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraInterface$TuSdkStillCameraListener;
    }
.end annotation


# virtual methods
.method public abstract adapter()Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract getState()Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$CameraState;
.end method

.method public abstract setCameraListener(Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraInterface$TuSdkStillCameraListener;)V
.end method

.method public abstract setOutputPictureRatio(F)V
.end method

.method public abstract setPreviewRatio(F)V
.end method

.method public abstract switchFilter(Ljava/lang/String;)V
.end method
