.class Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2$15;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->a([BLorg/lasque/tusdk/core/seles/sources/SelesOutInput;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;Lorg/lasque/tusdk/core/seles/sources/SelesStillCameraInterface$CapturePhotoAsBitmapCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

.field final synthetic c:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

.field final synthetic d:Lorg/lasque/tusdk/core/seles/sources/SelesStillCameraInterface$CapturePhotoAsBitmapCallback;

.field final synthetic e:Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;Lorg/lasque/tusdk/core/seles/sources/SelesStillCameraInterface$CapturePhotoAsBitmapCallback;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2$15;->e:Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;

    iput-object p2, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2$15;->a:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2$15;->b:Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    iput-object p4, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2$15;->c:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    iput-object p5, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2$15;->d:Lorg/lasque/tusdk/core/seles/sources/SelesStillCameraInterface$CapturePhotoAsBitmapCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2$15;->e:Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2$15;->a:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2$15;->b:Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    iget-object v3, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2$15;->c:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    iget-object v4, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2$15;->d:Lorg/lasque/tusdk/core/seles/sources/SelesStillCameraInterface$CapturePhotoAsBitmapCallback;

    invoke-static {v0, v1, v2, v3, v4}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->a(Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;Lorg/lasque/tusdk/core/seles/sources/SelesStillCameraInterface$CapturePhotoAsBitmapCallback;)V

    return-void
.end method
