.class Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2$11;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->a(Lorg/lasque/tusdk/core/seles/sources/SelesStillCameraInterface$CapturePhotoAsJPEGDataCallback;)V
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

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2$11;->b:Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;

    iput-object p2, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2$11;->a:Lorg/lasque/tusdk/core/seles/sources/SelesStillCameraInterface$CapturePhotoAsJPEGDataCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2$11;->b:Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->playSystemShutter()V

    new-instance v0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2$11$1;

    invoke-direct {v0, p0, p1}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2$11$1;-><init>(Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2$11;Landroid/media/ImageReader;)V

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/ThreadHelper;->runThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    return-void
.end method
