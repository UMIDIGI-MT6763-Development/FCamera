.class Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2$11$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2$11;->onImageAvailable(Landroid/media/ImageReader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/media/ImageReader;

.field final synthetic b:Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2$11;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2$11;Landroid/media/ImageReader;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2$11$1;->b:Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2$11;

    iput-object p2, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2$11$1;->a:Landroid/media/ImageReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2$11$1;->b:Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2$11;

    iget-object v0, v0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2$11;->b:Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2$11$1;->a:Landroid/media/ImageReader;

    iget-object v2, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2$11$1;->b:Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2$11;

    iget-object v2, v2, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2$11;->a:Lorg/lasque/tusdk/core/seles/sources/SelesStillCameraInterface$CapturePhotoAsJPEGDataCallback;

    invoke-virtual {v0, v1, v2}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->onImageCaptured(Landroid/media/ImageReader;Lorg/lasque/tusdk/core/seles/sources/SelesStillCameraInterface$CapturePhotoAsJPEGDataCallback;)V

    return-void
.end method
