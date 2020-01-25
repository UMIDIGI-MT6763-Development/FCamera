.class Lorg/lasque/tusdk/modules/components/camera/TuCameraFragmentBase$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraInterface$TuSdkStillCameraListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/modules/components/camera/TuCameraFragmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/modules/components/camera/TuCameraFragmentBase;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/modules/components/camera/TuCameraFragmentBase;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/modules/components/camera/TuCameraFragmentBase$1;->a:Lorg/lasque/tusdk/modules/components/camera/TuCameraFragmentBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFilterChanged(Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/camera/TuCameraFragmentBase$1;->a:Lorg/lasque/tusdk/modules/components/camera/TuCameraFragmentBase;

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/modules/components/camera/TuCameraFragmentBase;->onFilterChanged(Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;)V

    return-void
.end method

.method public onStillCameraStateChanged(Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraInterface;Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$CameraState;)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/camera/TuCameraFragmentBase$1;->a:Lorg/lasque/tusdk/modules/components/camera/TuCameraFragmentBase;

    invoke-virtual {v0, p1, p2}, Lorg/lasque/tusdk/modules/components/camera/TuCameraFragmentBase;->onCameraStateChangedImpl(Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraInterface;Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$CameraState;)V

    sget-object v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$CameraState;->StateStarted:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$CameraState;

    if-eq p2, v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraInterface;->isFrontFacingCameraPresent()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-wide p1, Lorg/lasque/tusdk/modules/components/ComponentActType;->camera_action_faceing_front:J

    goto :goto_0

    :cond_1
    sget-wide p1, Lorg/lasque/tusdk/modules/components/ComponentActType;->camera_action_faceing_back:J

    :goto_0
    invoke-static {p1, p2}, Lorg/lasque/tusdk/core/secret/StatisticsManger;->appendComponent(J)V

    return-void
.end method

.method public onStillCameraTakedPicture(Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraInterface;Lorg/lasque/tusdk/core/TuSdkResult;)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/camera/TuCameraFragmentBase$1;->a:Lorg/lasque/tusdk/modules/components/camera/TuCameraFragmentBase;

    invoke-virtual {v0, p1, p2}, Lorg/lasque/tusdk/modules/components/camera/TuCameraFragmentBase;->onCameraTakedPictureImpl(Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraInterface;Lorg/lasque/tusdk/core/TuSdkResult;)V

    sget-wide p1, Lorg/lasque/tusdk/modules/components/ComponentActType;->camera_action_take_picture:J

    invoke-static {p1, p2}, Lorg/lasque/tusdk/core/secret/StatisticsManger;->appendComponent(J)V

    return-void
.end method
