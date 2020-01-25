.class Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$6$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/lasque/tusdk/core/seles/sources/SelesStillCameraInterface$CapturePhotoAsBitmapCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

.field final synthetic b:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$6;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$6;Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$6$1;->b:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$6;

    iput-object p2, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$6$1;->a:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCapturePhotoAsBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$6$1;->b:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$6;

    iget-object v0, v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$6;->a:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->f(Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;)Lorg/lasque/tusdk/core/TuSdkResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$6$1;->b:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$6;

    iget-object v0, v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$6;->a:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;

    invoke-static {v0, p1}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->a(Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$6$1;->a:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->destroy()V

    iget-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$6$1;->b:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$6;

    iget-object p1, p1, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$6;->a:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$6$1;->b:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$6;

    iget-object v0, v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$6;->a:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->f(Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;)Lorg/lasque/tusdk/core/TuSdkResult;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->a(Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;Lorg/lasque/tusdk/core/TuSdkResult;)V

    :cond_0
    return-void
.end method
