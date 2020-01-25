.class Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->capturePhotoAsJPEGData(Lorg/lasque/tusdk/core/seles/sources/SelesStillCameraInterface$CapturePhotoAsJPEGDataCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lorg/lasque/tusdk/core/seles/sources/SelesStillCameraInterface$CapturePhotoAsJPEGDataCallback;

.field final synthetic c:Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;ZLorg/lasque/tusdk/core/seles/sources/SelesStillCameraInterface$CapturePhotoAsJPEGDataCallback;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera$3;->c:Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;

    iput-boolean p2, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera$3;->a:Z

    iput-object p3, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera$3;->b:Lorg/lasque/tusdk/core/seles/sources/SelesStillCameraInterface$CapturePhotoAsJPEGDataCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera$3;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera$3;->b:Lorg/lasque/tusdk/core/seles/sources/SelesStillCameraInterface$CapturePhotoAsJPEGDataCallback;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCameraInterface$CapturePhotoAsJPEGDataCallback;->onCapturePhotoAsJPEGData([B)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera$3;->c:Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->b(Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;Z)V

    return-void
.end method
