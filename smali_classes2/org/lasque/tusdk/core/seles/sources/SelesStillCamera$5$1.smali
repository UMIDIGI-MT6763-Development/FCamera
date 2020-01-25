.class Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera$5$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera$5;->onCapturePhotoAsJPEGData([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[B

.field final synthetic b:Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera$5;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera$5;[B)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera$5$1;->b:Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera$5;

    iput-object p2, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera$5$1;->a:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera$5$1;->b:Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera$5;

    iget-object v0, v0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera$5;->d:Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera$5$1;->a:[B

    iget-object v2, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera$5$1;->b:Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera$5;

    iget-object v2, v2, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera$5;->b:Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    iget-object v3, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera$5$1;->b:Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera$5;

    iget-object v3, v3, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera$5;->c:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    iget-object v4, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera$5$1;->b:Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera$5;

    iget-object v4, v4, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera$5;->a:Lorg/lasque/tusdk/core/seles/sources/SelesStillCameraInterface$CapturePhotoAsBitmapCallback;

    invoke-static {v0, v1, v2, v3, v4}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->a(Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;[BLorg/lasque/tusdk/core/seles/sources/SelesOutInput;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;Lorg/lasque/tusdk/core/seles/sources/SelesStillCameraInterface$CapturePhotoAsBitmapCallback;)V

    return-void
.end method
