.class Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera$5;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/lasque/tusdk/core/seles/sources/SelesStillCameraInterface$CapturePhotoAsJPEGDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->capturePhotoAsBitmap(Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;Lorg/lasque/tusdk/core/seles/sources/SelesStillCameraInterface$CapturePhotoAsBitmapCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/seles/sources/SelesStillCameraInterface$CapturePhotoAsBitmapCallback;

.field final synthetic b:Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

.field final synthetic c:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

.field final synthetic d:Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;Lorg/lasque/tusdk/core/seles/sources/SelesStillCameraInterface$CapturePhotoAsBitmapCallback;Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera$5;->d:Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;

    iput-object p2, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera$5;->a:Lorg/lasque/tusdk/core/seles/sources/SelesStillCameraInterface$CapturePhotoAsBitmapCallback;

    iput-object p3, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera$5;->b:Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    iput-object p4, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera$5;->c:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCapturePhotoAsJPEGData([B)V
    .locals 1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera$5;->a:Lorg/lasque/tusdk/core/seles/sources/SelesStillCameraInterface$CapturePhotoAsBitmapCallback;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCameraInterface$CapturePhotoAsBitmapCallback;->onCapturePhotoAsBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera$5$1;

    invoke-direct {v0, p0, p1}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera$5$1;-><init>(Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera$5;[B)V

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/ThreadHelper;->runThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    return-void
.end method
