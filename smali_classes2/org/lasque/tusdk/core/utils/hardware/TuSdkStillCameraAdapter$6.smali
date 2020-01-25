.class Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->c(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$6;->a:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$6;->a:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->c(Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;)Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->clone()Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->processImage()V

    iget-object v1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$6;->a:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;

    invoke-static {v1}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->d(Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;)Lorg/lasque/tusdk/core/seles/sources/SelesOutput;

    move-result-object v1

    check-cast v1, Lorg/lasque/tusdk/core/seles/sources/SelesStillCameraInterface;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->getFilter()Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    move-result-object v2

    iget-object v3, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$6;->a:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;

    invoke-static {v3}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->f(Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;)Lorg/lasque/tusdk/core/TuSdkResult;

    move-result-object v3

    iget-object v3, v3, Lorg/lasque/tusdk/core/TuSdkResult;->imageOrientation:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    new-instance v4, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$6$1;

    invoke-direct {v4, p0, v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$6$1;-><init>(Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$6;Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;)V

    invoke-interface {v1, v2, v3, v4}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCameraInterface;->capturePhotoAsBitmap(Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;Lorg/lasque/tusdk/core/seles/sources/SelesStillCameraInterface$CapturePhotoAsBitmapCallback;)V

    return-void
.end method
