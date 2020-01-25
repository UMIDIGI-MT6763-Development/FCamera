.class Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->a(Lorg/lasque/tusdk/core/seles/sources/SelesStillCameraInterface$CapturePhotoAsJPEGDataCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/seles/sources/SelesStillCameraInterface$CapturePhotoAsJPEGDataCallback;

.field final synthetic b:Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;Lorg/lasque/tusdk/core/seles/sources/SelesStillCameraInterface$CapturePhotoAsJPEGDataCallback;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera$6;->b:Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;

    iput-object p2, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera$6;->a:Lorg/lasque/tusdk/core/seles/sources/SelesStillCameraInterface$CapturePhotoAsJPEGDataCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 1

    iget-object p2, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera$6;->b:Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->b(Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;Z)V

    iget-object p2, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera$6;->b:Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;

    invoke-virtual {p2, p1}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->onTakePictured([B)V

    iget-object p2, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera$6;->a:Lorg/lasque/tusdk/core/seles/sources/SelesStillCameraInterface$CapturePhotoAsJPEGDataCallback;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCameraInterface$CapturePhotoAsJPEGDataCallback;->onCapturePhotoAsJPEGData([B)V

    :cond_0
    return-void
.end method
