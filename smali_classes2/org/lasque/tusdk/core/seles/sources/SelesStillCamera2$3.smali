.class Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2$3;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2$3;->a:Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2$3;->a:Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;

    invoke-static {p1, p3}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->a(Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;Landroid/hardware/camera2/TotalCaptureResult;)V

    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2$3;->a:Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;

    invoke-static {p1, p3}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->b(Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;Landroid/hardware/camera2/TotalCaptureResult;)V

    return-void
.end method
