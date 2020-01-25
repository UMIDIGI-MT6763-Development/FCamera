.class Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->b(Landroid/hardware/camera2/TotalCaptureResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2$5;->b:Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;

    iput-object p2, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2$5;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2$5;->b:Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2$5;->a:Ljava/util/List;

    iget-object v2, v0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget-object v3, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2$5;->b:Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;

    iget-object v3, v3, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->mOutputRotation:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    invoke-virtual {v2, v3}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->transforOrientation(Lorg/lasque/tusdk/core/utils/image/ImageOrientation;)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->onCameraFaceDetection(Ljava/util/List;Lorg/lasque/tusdk/core/struct/TuSdkSize;)V

    return-void
.end method
