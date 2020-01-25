.class Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera$4;
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
.field final synthetic a:Lorg/lasque/tusdk/core/seles/sources/SelesStillCameraInterface$CapturePhotoAsJPEGDataCallback;

.field final synthetic b:Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;Lorg/lasque/tusdk/core/seles/sources/SelesStillCameraInterface$CapturePhotoAsJPEGDataCallback;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera$4;->b:Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;

    iput-object p2, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera$4;->a:Lorg/lasque/tusdk/core/seles/sources/SelesStillCameraInterface$CapturePhotoAsJPEGDataCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera$4;->b:Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera$4;->a:Lorg/lasque/tusdk/core/seles/sources/SelesStillCameraInterface$CapturePhotoAsJPEGDataCallback;

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->a(Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;Lorg/lasque/tusdk/core/seles/sources/SelesStillCameraInterface$CapturePhotoAsJPEGDataCallback;)V

    return-void
.end method
