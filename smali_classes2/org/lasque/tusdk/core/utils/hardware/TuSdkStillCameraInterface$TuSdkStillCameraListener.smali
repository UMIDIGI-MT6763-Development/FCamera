.class public interface abstract Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraInterface$TuSdkStillCameraListener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TuSdkStillCameraListener"
.end annotation


# virtual methods
.method public abstract onFilterChanged(Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;)V
.end method

.method public abstract onStillCameraStateChanged(Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraInterface;Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$CameraState;)V
.end method

.method public abstract onStillCameraTakedPicture(Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraInterface;Lorg/lasque/tusdk/core/TuSdkResult;)V
.end method
