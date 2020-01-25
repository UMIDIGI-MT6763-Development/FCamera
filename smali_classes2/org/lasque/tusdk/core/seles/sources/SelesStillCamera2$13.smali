.class Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2$13;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->b(Lorg/lasque/tusdk/core/seles/sources/SelesStillCameraInterface$CapturePhotoAsJPEGDataCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/seles/sources/SelesStillCameraInterface$CapturePhotoAsJPEGDataCallback;

.field final synthetic b:Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;Lorg/lasque/tusdk/core/seles/sources/SelesStillCameraInterface$CapturePhotoAsJPEGDataCallback;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2$13;->b:Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;

    iput-object p2, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2$13;->a:Lorg/lasque/tusdk/core/seles/sources/SelesStillCameraInterface$CapturePhotoAsJPEGDataCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2$13;->b:Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->a(Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;Z)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2$13;->b:Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->onTakePictureFailed()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2$13;->a:Lorg/lasque/tusdk/core/seles/sources/SelesStillCameraInterface$CapturePhotoAsJPEGDataCallback;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCameraInterface$CapturePhotoAsJPEGDataCallback;->onCapturePhotoAsJPEGData([B)V

    :cond_0
    return-void
.end method
