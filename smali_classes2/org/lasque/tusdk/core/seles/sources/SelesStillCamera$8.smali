.class Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera$8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->a([BLorg/lasque/tusdk/core/seles/sources/SelesOutInput;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;Lorg/lasque/tusdk/core/seles/sources/SelesStillCameraInterface$CapturePhotoAsBitmapCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/seles/sources/SelesStillCameraInterface$CapturePhotoAsBitmapCallback;

.field final synthetic b:Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;Lorg/lasque/tusdk/core/seles/sources/SelesStillCameraInterface$CapturePhotoAsBitmapCallback;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera$8;->b:Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;

    iput-object p2, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera$8;->a:Lorg/lasque/tusdk/core/seles/sources/SelesStillCameraInterface$CapturePhotoAsBitmapCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera$8;->a:Lorg/lasque/tusdk/core/seles/sources/SelesStillCameraInterface$CapturePhotoAsBitmapCallback;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCameraInterface$CapturePhotoAsBitmapCallback;->onCapturePhotoAsBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
