.class Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/Camera$FaceDetectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera$2;->a:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFaceDetection([Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V
    .locals 2

    iget-object p2, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera$2;->a:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;

    iget-object p2, p2, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;->mOutputRotation:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    invoke-static {p1, p2}, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper;->transforFaces([Landroid/hardware/Camera$Face;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera$2;->a:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;

    iget-object v0, p2, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera$2;->a:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;

    iget-object v1, v1, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;->mOutputRotation:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->transforOrientation(Lorg/lasque/tusdk/core/utils/image/ImageOrientation;)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;->onCameraFaceDetection(Ljava/util/List;Lorg/lasque/tusdk/core/struct/TuSdkSize;)V

    return-void
.end method
