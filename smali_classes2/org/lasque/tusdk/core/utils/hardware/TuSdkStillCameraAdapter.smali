.class public Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$CameraState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/lasque/tusdk/core/seles/sources/SelesOutput;",
        ":",
        "Landroid/opengl/GLSurfaceView$Renderer;",
        ":",
        "Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraInterface;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final FocusSamplingDistance:J = 0x7d0L


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/widget/RelativeLayout;

.field private final c:Lorg/lasque/tusdk/core/seles/sources/SelesOutput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private d:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$CameraState;

.field private e:Z

.field private f:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraInterface$TuSdkStillCameraListener;

.field private g:Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

.field private h:Lorg/lasque/tusdk/core/listener/TuSdkOrientationEventListener;

.field private i:Lorg/lasque/tusdk/core/seles/output/SelesSmartView;

.field private j:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

.field private k:Lorg/lasque/tusdk/impl/view/widget/RegionHandler;

.field private l:Z

.field private m:Lorg/lasque/tusdk/core/utils/hardware/TuSdkVideoCameraExtendViewInterface;

.field private n:Z

.field private o:I

.field private p:Landroid/media/MediaPlayer;

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:I

.field private u:F

.field private v:Z

.field private w:Z

.field private x:Lorg/lasque/tusdk/core/listener/TuSdkOrientationEventListener$TuSdkOrientationDelegate;

.field private y:Lorg/lasque/tusdk/core/TuSdkResult;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/RelativeLayout;Lorg/lasque/tusdk/core/seles/sources/SelesOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/widget/RelativeLayout;",
            "TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$CameraState;->StateUnknow:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$CameraState;

    iput-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->d:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$CameraState;

    sget-object v0, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->Portrait:Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    iput-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->g:Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    const/high16 v0, -0x1000000

    iput v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->t:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->u:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->v:Z

    new-instance v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$3;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$3;-><init>(Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;)V

    iput-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->x:Lorg/lasque/tusdk/core/listener/TuSdkOrientationEventListener$TuSdkOrientationDelegate;

    iput-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->a:Landroid/content/Context;

    iput-object p2, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->b:Landroid/widget/RelativeLayout;

    iput-object p3, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->c:Lorg/lasque/tusdk/core/seles/sources/SelesOutput;

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->a()V

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;)Lorg/lasque/tusdk/core/seles/output/SelesSmartView;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->i:Lorg/lasque/tusdk/core/seles/output/SelesSmartView;

    return-object p0
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;)Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->j:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    return-object p1
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;)Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->g:Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    return-object p1
.end method

.method private a()V
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->b:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lorg/lasque/tusdk/core/struct/ViewSize;->create(Landroid/view/View;)Lorg/lasque/tusdk/core/struct/ViewSize;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->isSize()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->c:Lorg/lasque/tusdk/core/seles/sources/SelesOutput;

    check-cast v1, Lorg/lasque/tusdk/core/seles/sources/SelesBaseCameraInterface;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->maxSide()I

    move-result v0

    invoke-interface {v1, v0}, Lorg/lasque/tusdk/core/seles/sources/SelesBaseCameraInterface;->setPreviewMaxSize(I)V

    :cond_0
    sget-object v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$CameraState;->StateUnknow:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$CameraState;

    iput-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->d:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$CameraState;

    new-instance v0, Lorg/lasque/tusdk/core/listener/TuSdkOrientationEventListener;

    iget-object v1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/lasque/tusdk/core/listener/TuSdkOrientationEventListener;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->h:Lorg/lasque/tusdk/core/listener/TuSdkOrientationEventListener;

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->h:Lorg/lasque/tusdk/core/listener/TuSdkOrientationEventListener;

    iget-object v1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->x:Lorg/lasque/tusdk/core/listener/TuSdkOrientationEventListener$TuSdkOrientationDelegate;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/lasque/tusdk/core/listener/TuSdkOrientationEventListener;->setDelegate(Lorg/lasque/tusdk/core/listener/TuSdkOrientationEventListener$TuSdkOrientationDelegate;Lorg/lasque/tusdk/core/listener/TuSdkOrientationEventListener$TuSdkOrientationDegreeDelegate;)V

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->b()Lorg/lasque/tusdk/core/seles/output/SelesSmartView;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->i:Lorg/lasque/tusdk/core/seles/output/SelesSmartView;

    invoke-static {}, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->shared()Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->getFilterWrap(Ljava/lang/String;)Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->j:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->j:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    iget-object v1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->i:Lorg/lasque/tusdk/core/seles/output/SelesSmartView;

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->bindWithCameraView(Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->c:Lorg/lasque/tusdk/core/seles/sources/SelesOutput;

    iget-object v1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->j:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->getFilter()Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/lasque/tusdk/core/seles/sources/SelesOutput;->addTarget(Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;I)V

    return-void
.end method

.method private a(Landroid/graphics/Bitmap;)V
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->y:Lorg/lasque/tusdk/core/TuSdkResult;

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, v0, Lorg/lasque/tusdk/core/TuSdkResult;->image:Landroid/graphics/Bitmap;

    invoke-static {p1}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->create(Landroid/graphics/Bitmap;)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object p1

    iput-object p1, v0, Lorg/lasque/tusdk/core/TuSdkResult;->outputSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->y:Lorg/lasque/tusdk/core/TuSdkResult;

    iget-object p1, p1, Lorg/lasque/tusdk/core/TuSdkResult;->metadata:Lorg/lasque/tusdk/core/exif/ExifInterface;

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->y:Lorg/lasque/tusdk/core/TuSdkResult;

    iget-object p1, p1, Lorg/lasque/tusdk/core/TuSdkResult;->metadata:Lorg/lasque/tusdk/core/exif/ExifInterface;

    sget v0, Lorg/lasque/tusdk/core/exif/ExifInterface;->TAG_IMAGE_WIDTH:I

    iget-object v1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->y:Lorg/lasque/tusdk/core/TuSdkResult;

    iget-object v1, v1, Lorg/lasque/tusdk/core/TuSdkResult;->outputSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v1, v1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/lasque/tusdk/core/exif/ExifInterface;->setTagValue(ILjava/lang/Object;)Z

    iget-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->y:Lorg/lasque/tusdk/core/TuSdkResult;

    iget-object p1, p1, Lorg/lasque/tusdk/core/TuSdkResult;->metadata:Lorg/lasque/tusdk/core/exif/ExifInterface;

    sget v0, Lorg/lasque/tusdk/core/exif/ExifInterface;->TAG_IMAGE_LENGTH:I

    iget-object v1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->y:Lorg/lasque/tusdk/core/TuSdkResult;

    iget-object v1, v1, Lorg/lasque/tusdk/core/TuSdkResult;->outputSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v1, v1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/lasque/tusdk/core/exif/ExifInterface;->setTagValue(ILjava/lang/Object;)Z

    iget-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->y:Lorg/lasque/tusdk/core/TuSdkResult;

    iget-object p1, p1, Lorg/lasque/tusdk/core/TuSdkResult;->metadata:Lorg/lasque/tusdk/core/exif/ExifInterface;

    sget v0, Lorg/lasque/tusdk/core/exif/ExifInterface;->TAG_ORIENTATION:I

    sget-object v1, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->Up:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->getExifOrientation()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/lasque/tusdk/core/exif/ExifInterface;->setTagValue(ILjava/lang/Object;)Z

    const-string p1, "TuSDK[filter:%s]"

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->y:Lorg/lasque/tusdk/core/TuSdkResult;

    iget-object v2, v2, Lorg/lasque/tusdk/core/TuSdkResult;->filterCode:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->y:Lorg/lasque/tusdk/core/TuSdkResult;

    iget-object v0, v0, Lorg/lasque/tusdk/core/TuSdkResult;->metadata:Lorg/lasque/tusdk/core/exif/ExifInterface;

    iget-object v1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->y:Lorg/lasque/tusdk/core/TuSdkResult;

    iget-object v1, v1, Lorg/lasque/tusdk/core/TuSdkResult;->metadata:Lorg/lasque/tusdk/core/exif/ExifInterface;

    sget v2, Lorg/lasque/tusdk/core/exif/ExifInterface;->TAG_IMAGE_DESCRIPTION:I

    invoke-virtual {v1, v2, p1}, Lorg/lasque/tusdk/core/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lorg/lasque/tusdk/core/exif/ExifTag;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/exif/ExifInterface;->setTag(Lorg/lasque/tusdk/core/exif/ExifTag;)Lorg/lasque/tusdk/core/exif/ExifTag;

    :cond_2
    :goto_0
    return-void
.end method

.method private a(Lorg/lasque/tusdk/core/TuSdkResult;)V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->y:Lorg/lasque/tusdk/core/TuSdkResult;

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->f:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraInterface$TuSdkStillCameraListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->c:Lorg/lasque/tusdk/core/seles/sources/SelesOutput;

    check-cast v1, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraInterface;

    invoke-interface {v0, v1, p1}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraInterface$TuSdkStillCameraListener;->onStillCameraTakedPicture(Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraInterface;Lorg/lasque/tusdk/core/TuSdkResult;)V

    :cond_0
    return-void
.end method

.method private a(Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$CameraState;)V
    .locals 2

    iput-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->d:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$CameraState;

    invoke-static {}, Lorg/lasque/tusdk/core/utils/ThreadHelper;->isMainThread()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$1;

    invoke-direct {v0, p0, p1}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$1;-><init>(Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$CameraState;)V

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/ThreadHelper;->post(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->f:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraInterface$TuSdkStillCameraListener;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->c:Lorg/lasque/tusdk/core/seles/sources/SelesOutput;

    check-cast v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraInterface;

    iget-object v1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->d:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$CameraState;

    invoke-interface {p1, v0, v1}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraInterface$TuSdkStillCameraListener;->onStillCameraStateChanged(Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraInterface;Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$CameraState;)V

    :cond_1
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->getFocusTouchView()Lorg/lasque/tusdk/core/utils/hardware/TuSdkVideoCameraExtendViewInterface;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->c:Lorg/lasque/tusdk/core/seles/sources/SelesOutput;

    check-cast v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraInterface;

    iget-object v1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->d:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$CameraState;

    invoke-interface {p1, v0, v1}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkVideoCameraExtendViewInterface;->cameraStateChanged(Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraInterface;Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$CameraState;)V

    :cond_2
    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;Lorg/lasque/tusdk/core/TuSdkResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->a(Lorg/lasque/tusdk/core/TuSdkResult;)V

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$CameraState;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->a(Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$CameraState;)V

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->b(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->i:Lorg/lasque/tusdk/core/seles/output/SelesSmartView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/output/SelesSmartView;->setRenderModeContinuously()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/output/SelesSmartView;->setRenderModeDirty()V

    :goto_0
    return-void
.end method

.method private a([B)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->y:Lorg/lasque/tusdk/core/TuSdkResult;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lorg/lasque/tusdk/core/utils/image/ExifHelper;->getExifInterface([B)Lorg/lasque/tusdk/core/exif/ExifInterface;

    move-result-object p1

    iput-object p1, v0, Lorg/lasque/tusdk/core/TuSdkResult;->metadata:Lorg/lasque/tusdk/core/exif/ExifInterface;

    :cond_1
    :goto_0
    return-void
.end method

.method private b()Lorg/lasque/tusdk/core/seles/output/SelesSmartView;
    .locals 4

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->b:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "Can not find cameraView"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->i:Lorg/lasque/tusdk/core/seles/output/SelesSmartView;

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->i:Lorg/lasque/tusdk/core/seles/output/SelesSmartView;

    if-nez v0, :cond_1

    new-instance v0, Lorg/lasque/tusdk/core/seles/output/SelesSmartView;

    iget-object v2, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Lorg/lasque/tusdk/core/seles/output/SelesSmartView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->i:Lorg/lasque/tusdk/core/seles/output/SelesSmartView;

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->i:Lorg/lasque/tusdk/core/seles/output/SelesSmartView;

    iget-object v2, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->c:Lorg/lasque/tusdk/core/seles/sources/SelesOutput;

    check-cast v2, Landroid/opengl/GLSurfaceView$Renderer;

    invoke-virtual {v0, v2}, Lorg/lasque/tusdk/core/seles/output/SelesSmartView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->b:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->i:Lorg/lasque/tusdk/core/seles/output/SelesSmartView;

    invoke-virtual {v2, v3, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->i:Lorg/lasque/tusdk/core/seles/output/SelesSmartView;

    return-object v0
.end method

.method static synthetic b(Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->c()V

    return-void
.end method

.method static synthetic b(Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->c(Z)V

    return-void
.end method

.method private b(Z)V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->getFocusTouchView()Lorg/lasque/tusdk/core/utils/hardware/TuSdkVideoCameraExtendViewInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkVideoCameraExtendViewInterface;->setRangeViewFoucsState(Z)V

    :cond_0
    return-void
.end method

.method static synthetic c(Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;)Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->j:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    return-object p0
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->j:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->g:Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->rotationTextures(Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;)V

    return-void
.end method

.method private c(Z)V
    .locals 1

    new-instance p1, Lorg/lasque/tusdk/core/TuSdkResult;

    invoke-direct {p1}, Lorg/lasque/tusdk/core/TuSdkResult;-><init>()V

    iput-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->y:Lorg/lasque/tusdk/core/TuSdkResult;

    iget-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->y:Lorg/lasque/tusdk/core/TuSdkResult;

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->c:Lorg/lasque/tusdk/core/seles/sources/SelesOutput;

    check-cast v0, Lorg/lasque/tusdk/core/seles/sources/SelesBaseCameraInterface;

    invoke-interface {v0}, Lorg/lasque/tusdk/core/seles/sources/SelesBaseCameraInterface;->capturePhotoOrientation()Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    move-result-object v0

    iput-object v0, p1, Lorg/lasque/tusdk/core/TuSdkResult;->imageOrientation:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    iget-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->y:Lorg/lasque/tusdk/core/TuSdkResult;

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->c:Lorg/lasque/tusdk/core/seles/sources/SelesOutput;

    check-cast v0, Lorg/lasque/tusdk/core/seles/sources/SelesBaseCameraInterface;

    invoke-interface {v0}, Lorg/lasque/tusdk/core/seles/sources/SelesBaseCameraInterface;->getOutputSize()Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    iput-object v0, p1, Lorg/lasque/tusdk/core/TuSdkResult;->outputSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->y:Lorg/lasque/tusdk/core/TuSdkResult;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->getRegionRatio()F

    move-result v0

    iput v0, p1, Lorg/lasque/tusdk/core/TuSdkResult;->imageSizeRatio:F

    iget-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->y:Lorg/lasque/tusdk/core/TuSdkResult;

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->j:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->getCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lorg/lasque/tusdk/core/TuSdkResult;->filterCode:Ljava/lang/String;

    iget-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->y:Lorg/lasque/tusdk/core/TuSdkResult;

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->j:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->getFilterParameter()Lorg/lasque/tusdk/core/seles/SelesParameters;

    move-result-object v0

    iput-object v0, p1, Lorg/lasque/tusdk/core/TuSdkResult;->filterParams:Lorg/lasque/tusdk/core/seles/SelesParameters;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->isOutputImageData()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->c:Lorg/lasque/tusdk/core/seles/sources/SelesOutput;

    check-cast p1, Lorg/lasque/tusdk/core/seles/sources/SelesStillCameraInterface;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCameraInterface;->capturePhotoAsJPEGData(Lorg/lasque/tusdk/core/seles/sources/SelesStillCameraInterface$CapturePhotoAsJPEGDataCallback;)V

    return-void

    :cond_0
    new-instance p1, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$6;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$6;-><init>(Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;)V

    invoke-static {p1}, Lorg/lasque/tusdk/core/utils/ThreadHelper;->runThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    return-void
.end method

.method static synthetic d(Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;)Lorg/lasque/tusdk/core/seles/sources/SelesOutput;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->c:Lorg/lasque/tusdk/core/seles/sources/SelesOutput;

    return-object p0
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->j:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->getFocusTouchView()Lorg/lasque/tusdk/core/utils/hardware/TuSdkVideoCameraExtendViewInterface;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->getFocusTouchView()Lorg/lasque/tusdk/core/utils/hardware/TuSdkVideoCameraExtendViewInterface;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->j:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->getFilter()Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkVideoCameraExtendViewInterface;->notifyFilterConfigView(Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private e()V
    .locals 2

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->d()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->f:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraInterface$TuSdkStillCameraListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->j:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->getFilter()Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraInterface$TuSdkStillCameraListener;->onFilterChanged(Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;)V

    :cond_0
    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->c()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->e:Z

    return-void
.end method

.method static synthetic e(Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->e()V

    return-void
.end method

.method static synthetic f(Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;)Lorg/lasque/tusdk/core/TuSdkResult;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->y:Lorg/lasque/tusdk/core/TuSdkResult;

    return-object p0
.end method

.method private f()Z
    .locals 4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iget-object v2, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->c:Lorg/lasque/tusdk/core/seles/sources/SelesOutput;

    check-cast v2, Lorg/lasque/tusdk/core/seles/sources/SelesBaseCameraInterface;

    invoke-interface {v2}, Lorg/lasque/tusdk/core/seles/sources/SelesBaseCameraInterface;->getLastFocusTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private g()V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->getFocusTouchView()Lorg/lasque/tusdk/core/utils/hardware/TuSdkVideoCameraExtendViewInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkVideoCameraExtendViewInterface;->showRangeView()V

    :cond_0
    return-void
.end method

.method private h()V
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$CameraState;->StateCaptured:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$CameraState;

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->a(Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$CameraState;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->p:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->isDisableCaptureSound()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->p:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    :cond_0
    return-void
.end method


# virtual methods
.method public captureImage()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->d:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$CameraState;

    sget-object v1, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$CameraState;->StateStarted:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$CameraState;

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$CameraState;->StateCapturing:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$CameraState;

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->a(Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$CameraState;)V

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->c:Lorg/lasque/tusdk/core/seles/sources/SelesOutput;

    check-cast v0, Lorg/lasque/tusdk/core/seles/sources/SelesBaseCameraInterface;

    invoke-interface {v0}, Lorg/lasque/tusdk/core/seles/sources/SelesBaseCameraInterface;->canSupportAutoFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->g()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->c:Lorg/lasque/tusdk/core/seles/sources/SelesOutput;

    check-cast v0, Lorg/lasque/tusdk/core/seles/sources/SelesBaseCameraInterface;

    new-instance v1, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$5;

    invoke-direct {v1, p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$5;-><init>(Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;)V

    invoke-interface {v0, v1}, Lorg/lasque/tusdk/core/seles/sources/SelesBaseCameraInterface;->autoFocus(Lorg/lasque/tusdk/core/seles/sources/SelesBaseCameraInterface$TuSdkAutoFocusCallback;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->c(Z)V

    :goto_0
    return-void
.end method

.method public changeRegionRatio(F)V
    .locals 2

    iput p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->u:F

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->getRegionHandler()Lorg/lasque/tusdk/impl/view/widget/RegionHandler;

    move-result-object p1

    iget v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->u:F

    new-instance v1, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$2;

    invoke-direct {v1, p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$2;-><init>(Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;)V

    invoke-interface {p1, v0, v1}, Lorg/lasque/tusdk/impl/view/widget/RegionHandler;->changeWithRatio(FLorg/lasque/tusdk/impl/view/widget/RegionHandler$RegionChangerListener;)Landroid/graphics/RectF;

    return-void
.end method

.method protected decodeToBitmapAtAsync([BLandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->y:Lorg/lasque/tusdk/core/TuSdkResult;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->a([B)V

    :cond_0
    return-object p2
.end method

.method public getCameraListener()Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraInterface$TuSdkStillCameraListener;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->f:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraInterface$TuSdkStillCameraListener;

    return-object v0
.end method

.method public getCaptureSoundRawId()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->o:I

    return v0
.end method

.method public getDeviceAngle()I
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->h:Lorg/lasque/tusdk/core/listener/TuSdkOrientationEventListener;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/listener/TuSdkOrientationEventListener;->getDeviceAngle()I

    move-result v0

    return v0
.end method

.method public getDeviceOrient()Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->g:Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    return-object v0
.end method

.method public getFilterWrap()Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->j:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    return-object v0
.end method

.method public getFocusTouchView()Lorg/lasque/tusdk/core/utils/hardware/TuSdkVideoCameraExtendViewInterface;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->m:Lorg/lasque/tusdk/core/utils/hardware/TuSdkVideoCameraExtendViewInterface;

    return-object v0
.end method

.method public getRegionHandler()Lorg/lasque/tusdk/impl/view/widget/RegionHandler;
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->k:Lorg/lasque/tusdk/impl/view/widget/RegionHandler;

    if-nez v0, :cond_0

    new-instance v0, Lorg/lasque/tusdk/impl/view/widget/RegionDefaultHandler;

    invoke-direct {v0}, Lorg/lasque/tusdk/impl/view/widget/RegionDefaultHandler;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->k:Lorg/lasque/tusdk/impl/view/widget/RegionHandler;

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->k:Lorg/lasque/tusdk/impl/view/widget/RegionHandler;

    iget-object v1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->b:Landroid/widget/RelativeLayout;

    invoke-static {v1}, Lorg/lasque/tusdk/core/struct/ViewSize;->create(Landroid/view/View;)Lorg/lasque/tusdk/core/struct/ViewSize;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/lasque/tusdk/impl/view/widget/RegionHandler;->setWrapSize(Lorg/lasque/tusdk/core/struct/TuSdkSize;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->k:Lorg/lasque/tusdk/impl/view/widget/RegionHandler;

    return-object v0
.end method

.method public getRegionRatio()F
    .locals 2

    iget v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->u:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iput v1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->u:F

    :cond_0
    iget v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->u:F

    return v0
.end method

.method public getRegionViewColor()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->t:I

    return v0
.end method

.method public getState()Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$CameraState;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->d:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$CameraState;

    return-object v0
.end method

.method public isCreatedSurface()Z
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->i:Lorg/lasque/tusdk/core/seles/output/SelesSmartView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/output/SelesSmartView;->isCreatedSurface()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDisableCaptureSound()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->n:Z

    return v0
.end method

.method public isDisableContinueFoucs()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->s:Z

    return v0
.end method

.method public isDisableFocusBeep()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->r:Z

    return v0
.end method

.method public isDisplayGuideLine()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->v:Z

    return v0
.end method

.method public isEnableFilterConfig()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->w:Z

    return v0
.end method

.method public isEnableLongTouchCapture()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->q:Z

    return v0
.end method

.method public final isFilterChanging()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->e:Z

    return v0
.end method

.method public isOutputImageData()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->l:Z

    return v0
.end method

.method public onCameraFaceDetection(Ljava/util/List;Lorg/lasque/tusdk/core/struct/TuSdkSize;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/core/utils/hardware/TuSdkFace;",
            ">;",
            "Lorg/lasque/tusdk/core/struct/TuSdkSize;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->getFocusTouchView()Lorg/lasque/tusdk/core/utils/hardware/TuSdkVideoCameraExtendViewInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkVideoCameraExtendViewInterface;->setCameraFaceDetection(Ljava/util/List;Lorg/lasque/tusdk/core/struct/TuSdkSize;)V

    :cond_0
    return-void
.end method

.method protected onCameraStarted()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->h:Lorg/lasque/tusdk/core/listener/TuSdkOrientationEventListener;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/listener/TuSdkOrientationEventListener;->enable()V

    sget-object v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$CameraState;->StateStarted:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$CameraState;

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->a(Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$CameraState;)V

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->d()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->i:Lorg/lasque/tusdk/core/seles/output/SelesSmartView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->resumeCameraCapture()V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->p:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    iput-object v1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->p:Landroid/media/MediaPlayer;

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->j:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->destroy()V

    iput-object v1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->j:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    :cond_1
    return-void
.end method

.method public onMainThreadStart()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->i:Lorg/lasque/tusdk/core/seles/output/SelesSmartView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/output/SelesSmartView;->requestRender()V

    :cond_0
    return-void
.end method

.method public onTakePictured([B)V
    .locals 1

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->h()V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->isOutputImageData()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->y:Lorg/lasque/tusdk/core/TuSdkResult;

    if-eqz v0, :cond_0

    iput-object p1, v0, Lorg/lasque/tusdk/core/TuSdkResult;->imageData:[B

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->a(Lorg/lasque/tusdk/core/TuSdkResult;)V

    :cond_0
    return-void
.end method

.method public pauseCameraCapture()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->a(Z)V

    return-void
.end method

.method public resumeCameraCapture()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->a(Z)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->c:Lorg/lasque/tusdk/core/seles/sources/SelesOutput;

    check-cast v0, Lorg/lasque/tusdk/core/seles/sources/SelesBaseCameraInterface;

    invoke-interface {v0}, Lorg/lasque/tusdk/core/seles/sources/SelesBaseCameraInterface;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$CameraState;->StateStarted:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$CameraState;

    iput-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->d:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$CameraState;

    :cond_0
    return-void
.end method

.method public setCameraListener(Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraInterface$TuSdkStillCameraListener;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->f:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraInterface$TuSdkStillCameraListener;

    return-void
.end method

.method public setCaptureSoundRawId(I)V
    .locals 1

    iput p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->o:I

    iget-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->p:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->p:Landroid/media/MediaPlayer;

    :cond_0
    iget p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->o:I

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->setDisableCaptureSound(Z)V

    iget-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->a:Landroid/content/Context;

    iget v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->o:I

    invoke-static {p1, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object p1

    iput-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->p:Landroid/media/MediaPlayer;

    :cond_1
    return-void
.end method

.method public setDisableCaptureSound(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->n:Z

    return-void
.end method

.method public setDisableContinueFoucs(Z)V
    .locals 1

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->s:Z

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->getFocusTouchView()Lorg/lasque/tusdk/core/utils/hardware/TuSdkVideoCameraExtendViewInterface;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->getFocusTouchView()Lorg/lasque/tusdk/core/utils/hardware/TuSdkVideoCameraExtendViewInterface;

    move-result-object p1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->s:Z

    invoke-interface {p1, v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkVideoCameraExtendViewInterface;->setDisableContinueFoucs(Z)V

    :cond_0
    return-void
.end method

.method public setDisableFocusBeep(Z)V
    .locals 1

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->r:Z

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->getFocusTouchView()Lorg/lasque/tusdk/core/utils/hardware/TuSdkVideoCameraExtendViewInterface;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->getFocusTouchView()Lorg/lasque/tusdk/core/utils/hardware/TuSdkVideoCameraExtendViewInterface;

    move-result-object p1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->r:Z

    invoke-interface {p1, v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkVideoCameraExtendViewInterface;->setDisableFocusBeep(Z)V

    :cond_0
    return-void
.end method

.method public setDisplayGuideLine(Z)V
    .locals 1

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->v:Z

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->getFocusTouchView()Lorg/lasque/tusdk/core/utils/hardware/TuSdkVideoCameraExtendViewInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->getFocusTouchView()Lorg/lasque/tusdk/core/utils/hardware/TuSdkVideoCameraExtendViewInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkVideoCameraExtendViewInterface;->setGuideLineViewState(Z)V

    :cond_0
    return-void
.end method

.method public setEnableFilterConfig(Z)V
    .locals 1

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->w:Z

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->getFocusTouchView()Lorg/lasque/tusdk/core/utils/hardware/TuSdkVideoCameraExtendViewInterface;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->getFocusTouchView()Lorg/lasque/tusdk/core/utils/hardware/TuSdkVideoCameraExtendViewInterface;

    move-result-object p1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->w:Z

    invoke-interface {p1, v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkVideoCameraExtendViewInterface;->setEnableFilterConfig(Z)V

    :cond_0
    return-void
.end method

.method public setEnableLongTouchCapture(Z)V
    .locals 1

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->q:Z

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->getFocusTouchView()Lorg/lasque/tusdk/core/utils/hardware/TuSdkVideoCameraExtendViewInterface;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->getFocusTouchView()Lorg/lasque/tusdk/core/utils/hardware/TuSdkVideoCameraExtendViewInterface;

    move-result-object p1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->q:Z

    invoke-interface {p1, v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkVideoCameraExtendViewInterface;->setEnableLongTouchCapture(Z)V

    :cond_0
    return-void
.end method

.method public setFocusTouchView(I)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->a:Landroid/content/Context;

    iget-object v1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->i:Lorg/lasque/tusdk/core/seles/output/SelesSmartView;

    invoke-static {v0, p1, v1}, Lorg/lasque/tusdk/core/view/TuSdkViewHelper;->buildView(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    instance-of v0, p1, Lorg/lasque/tusdk/core/utils/hardware/TuSdkVideoCameraExtendViewInterface;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lorg/lasque/tusdk/core/utils/hardware/TuSdkVideoCameraExtendViewInterface;

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->setFocusTouchView(Lorg/lasque/tusdk/core/utils/hardware/TuSdkVideoCameraExtendViewInterface;)V

    return-void

    :cond_2
    :goto_0
    const-string v0, "The setFocusTouchView must extend TuFocusTouchView: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/TLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setFocusTouchView(Lorg/lasque/tusdk/core/utils/hardware/TuSdkVideoCameraExtendViewInterface;)V
    .locals 3

    if-eqz p1, :cond_2

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->i:Lorg/lasque/tusdk/core/seles/output/SelesSmartView;

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->m:Lorg/lasque/tusdk/core/utils/hardware/TuSdkVideoCameraExtendViewInterface;

    if-eqz v1, :cond_1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/output/SelesSmartView;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->m:Lorg/lasque/tusdk/core/utils/hardware/TuSdkVideoCameraExtendViewInterface;

    invoke-interface {v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkVideoCameraExtendViewInterface;->viewWillDestory()V

    :cond_1
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->getRegionHandler()Lorg/lasque/tusdk/impl/view/widget/RegionHandler;

    move-result-object v0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->getRegionRatio()F

    move-result v1

    invoke-interface {v0, v1}, Lorg/lasque/tusdk/impl/view/widget/RegionHandler;->setRatio(F)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->i:Lorg/lasque/tusdk/core/seles/output/SelesSmartView;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->getRegionViewColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/output/SelesSmartView;->setBackgroundColor(I)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->i:Lorg/lasque/tusdk/core/seles/output/SelesSmartView;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->getRegionHandler()Lorg/lasque/tusdk/impl/view/widget/RegionHandler;

    move-result-object v1

    invoke-interface {v1}, Lorg/lasque/tusdk/impl/view/widget/RegionHandler;->getRectPercent()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/output/SelesSmartView;->setDisplayRect(Landroid/graphics/RectF;)V

    iput-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->m:Lorg/lasque/tusdk/core/utils/hardware/TuSdkVideoCameraExtendViewInterface;

    iget-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->m:Lorg/lasque/tusdk/core/utils/hardware/TuSdkVideoCameraExtendViewInterface;

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->c:Lorg/lasque/tusdk/core/seles/sources/SelesOutput;

    check-cast v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraInterface;

    invoke-interface {p1, v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkVideoCameraExtendViewInterface;->setCamera(Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraInterface;)V

    iget-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->m:Lorg/lasque/tusdk/core/utils/hardware/TuSdkVideoCameraExtendViewInterface;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->isEnableLongTouchCapture()Z

    move-result v0

    invoke-interface {p1, v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkVideoCameraExtendViewInterface;->setEnableLongTouchCapture(Z)V

    iget-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->m:Lorg/lasque/tusdk/core/utils/hardware/TuSdkVideoCameraExtendViewInterface;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->isDisableFocusBeep()Z

    move-result v0

    invoke-interface {p1, v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkVideoCameraExtendViewInterface;->setDisableFocusBeep(Z)V

    iget-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->m:Lorg/lasque/tusdk/core/utils/hardware/TuSdkVideoCameraExtendViewInterface;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->isDisableContinueFoucs()Z

    move-result v0

    invoke-interface {p1, v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkVideoCameraExtendViewInterface;->setDisableContinueFoucs(Z)V

    iget-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->m:Lorg/lasque/tusdk/core/utils/hardware/TuSdkVideoCameraExtendViewInterface;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->isDisplayGuideLine()Z

    move-result v0

    invoke-interface {p1, v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkVideoCameraExtendViewInterface;->setGuideLineViewState(Z)V

    iget-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->m:Lorg/lasque/tusdk/core/utils/hardware/TuSdkVideoCameraExtendViewInterface;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->isEnableFilterConfig()Z

    move-result v0

    invoke-interface {p1, v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkVideoCameraExtendViewInterface;->setEnableFilterConfig(Z)V

    iget-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->m:Lorg/lasque/tusdk/core/utils/hardware/TuSdkVideoCameraExtendViewInterface;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->getRegionHandler()Lorg/lasque/tusdk/impl/view/widget/RegionHandler;

    move-result-object v0

    invoke-interface {v0}, Lorg/lasque/tusdk/impl/view/widget/RegionHandler;->getRectPercent()Landroid/graphics/RectF;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkVideoCameraExtendViewInterface;->setRegionPercent(Landroid/graphics/RectF;)V

    iget-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->i:Lorg/lasque/tusdk/core/seles/output/SelesSmartView;

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->m:Lorg/lasque/tusdk/core/utils/hardware/TuSdkVideoCameraExtendViewInterface;

    check-cast v0, Landroid/view/View;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Lorg/lasque/tusdk/core/seles/output/SelesSmartView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setOutputImageData(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->l:Z

    return-void
.end method

.method public setRegionHandler(Lorg/lasque/tusdk/impl/view/widget/RegionHandler;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->k:Lorg/lasque/tusdk/impl/view/widget/RegionHandler;

    return-void
.end method

.method public setRegionRatio(F)V
    .locals 1

    iput p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->u:F

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->getRegionHandler()Lorg/lasque/tusdk/impl/view/widget/RegionHandler;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->k:Lorg/lasque/tusdk/impl/view/widget/RegionHandler;

    iget v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->u:F

    invoke-interface {p1, v0}, Lorg/lasque/tusdk/impl/view/widget/RegionHandler;->setRatio(F)V

    iget-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->i:Lorg/lasque/tusdk/core/seles/output/SelesSmartView;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->k:Lorg/lasque/tusdk/impl/view/widget/RegionHandler;

    invoke-interface {v0}, Lorg/lasque/tusdk/impl/view/widget/RegionHandler;->getRectPercent()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/seles/output/SelesSmartView;->setDisplayRect(Landroid/graphics/RectF;)V

    :cond_0
    return-void
.end method

.method public setRegionViewColor(I)V
    .locals 1

    iput p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->t:I

    iget-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->i:Lorg/lasque/tusdk/core/seles/output/SelesSmartView;

    if-eqz p1, :cond_0

    iget v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->t:I

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/seles/output/SelesSmartView;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public setRendererFPS(I)V
    .locals 1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->i:Lorg/lasque/tusdk/core/seles/output/SelesSmartView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/seles/output/SelesSmartView;->setRendererFPS(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public stopCameraCapture()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->e:Z

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->a(Z)V

    sget-object v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$CameraState;->StateUnknow:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$CameraState;

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->a(Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$CameraState;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->getFocusTouchView()Lorg/lasque/tusdk/core/utils/hardware/TuSdkVideoCameraExtendViewInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->getFocusTouchView()Lorg/lasque/tusdk/core/utils/hardware/TuSdkVideoCameraExtendViewInterface;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkVideoCameraExtendViewInterface;->notifyFilterConfigView(Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;)V

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->h:Lorg/lasque/tusdk/core/listener/TuSdkOrientationEventListener;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/listener/TuSdkOrientationEventListener;->disable()V

    return-void
.end method

.method public switchFilter(Ljava/lang/String;)Ljava/lang/Runnable;
    .locals 2

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->e:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->getState()Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$CameraState;

    move-result-object v0

    sget-object v1, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$CameraState;->StateCapturing:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$CameraState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->j:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->equalsCode(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->e:Z

    new-instance v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$4;

    invoke-direct {v0, p0, p1}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$4;-><init>(Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;Ljava/lang/String;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
