.class public abstract Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;
.super Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout;


# static fields
.field public static final FaceDetectionDistance:J = 0x1388L

.field public static final SamplingDistance:J = 0x7d0L

.field public static final SamplingRange:F = 50.0f


# instance fields
.field private a:J

.field private b:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraInterface;

.field private c:Landroid/graphics/PointF;

.field private d:Landroid/media/MediaPlayer;

.field private e:Z

.field private f:Landroid/graphics/RectF;

.field private g:Ljava/lang/Runnable;

.field private h:Landroid/hardware/SensorManager;

.field private i:Landroid/hardware/Sensor;

.field private j:Z

.field private k:J

.field private l:F

.field private m:Landroid/hardware/SensorEventListener;

.field protected final mFaceViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->a:J

    new-instance p1, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase$2;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase$2;-><init>(Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;)V

    iput-object p1, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->g:Ljava/lang/Runnable;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->mFaceViews:Ljava/util/List;

    iput-wide v0, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->k:J

    const/4 p1, 0x0

    iput p1, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->l:F

    new-instance p1, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase$3;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase$3;-><init>(Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;)V

    iput-object p1, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->m:Landroid/hardware/SensorEventListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->a:J

    new-instance v0, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase$2;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase$2;-><init>(Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;)V

    iput-object v0, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->g:Ljava/lang/Runnable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->mFaceViews:Ljava/util/List;

    iput-wide p1, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->k:J

    const/4 p1, 0x0

    iput p1, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->l:F

    new-instance p1, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase$3;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase$3;-><init>(Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;)V

    iput-object p1, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->m:Landroid/hardware/SensorEventListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->a:J

    new-instance p3, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase$2;

    invoke-direct {p3, p0}, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase$2;-><init>(Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;)V

    iput-object p3, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->g:Ljava/lang/Runnable;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->mFaceViews:Ljava/util/List;

    iput-wide p1, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->k:J

    const/4 p1, 0x0

    iput p1, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->l:F

    new-instance p1, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase$3;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase$3;-><init>(Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;)V

    iput-object p1, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->m:Landroid/hardware/SensorEventListener;

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;F)F
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->l:F

    return p1
.end method

.method static synthetic a(Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;J)J
    .locals 0

    iput-wide p1, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->k:J

    return-wide p1
.end method

.method private a()Landroid/media/MediaPlayer;
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->isDisableFocusBeep()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->d:Landroid/media/MediaPlayer;

    if-nez v0, :cond_1

    const-string v0, "camera_focus_beep.mp3"

    invoke-static {v0}, Lorg/lasque/tusdk/core/TuSdkBundle;->sdkBundleOther(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/TuSdkContext;->loadMediaAsset(Ljava/lang/String;)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->d:Landroid/media/MediaPlayer;

    :cond_1
    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->d:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic a(Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;)Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraInterface;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->b:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraInterface;

    return-object p0
.end method

.method private a(Landroid/graphics/PointF;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->c:Landroid/graphics/PointF;

    return-void
.end method

.method private a(Landroid/graphics/Rect;)V
    .locals 6

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    if-eqz p1, :cond_3

    iget-wide v2, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->a:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1388

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    iput-wide v0, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->a:J

    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    int-to-float p1, p1

    invoke-direct {v0, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->c:Landroid/graphics/PointF;

    iget-object p1, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->b:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraInterface;

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-interface {p1}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraInterface;->canSupportAutoFocus()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->getLastPoint()Landroid/graphics/PointF;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->notifyFoucs(Landroid/graphics/PointF;Z)Z

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->b:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraInterface;

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->getLastPoint()Landroid/graphics/PointF;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraInterface;->autoMetering(Landroid/graphics/PointF;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->e:Z

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->d(Landroid/view/MotionEvent;)V

    invoke-direct {p0}, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->b()V

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;Landroid/graphics/PointF;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->c(Landroid/graphics/PointF;)V

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->setRangeViewFoucsState(Z)V

    invoke-direct {p0}, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->c()V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->setAutoContinueFocus(Z)V

    return-void
.end method

.method static synthetic b(Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;)J
    .locals 2

    iget-wide v0, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->k:J

    return-wide v0
.end method

.method private b()V
    .locals 3

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->isEnableLongTouchCapture()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->g:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->getLongPressDistance()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lorg/lasque/tusdk/core/utils/ThreadHelper;->postDelayed(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method private b(Landroid/view/MotionEvent;)V
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->e:Z

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->d(Landroid/view/MotionEvent;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->getLastPoint()Landroid/graphics/PointF;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->notifyFoucs(Landroid/graphics/PointF;Z)Z

    return-void
.end method

.method private b(Landroid/graphics/PointF;)Z
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->getRegionRectF()Landroid/graphics/RectF;

    move-result-object v0

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    return p1
.end method

.method static synthetic c(Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;)F
    .locals 0

    iget p0, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->l:F

    return p0
.end method

.method private c()V
    .locals 1

    invoke-direct {p0}, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->a()Landroid/media/MediaPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method

.method private c(Landroid/graphics/PointF;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->e:Z

    invoke-virtual {p0, p1, v0}, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->notifyFoucs(Landroid/graphics/PointF;Z)Z

    return-void
.end method

.method private c(Landroid/view/MotionEvent;)V
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->e(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->d(Landroid/view/MotionEvent;)V

    invoke-direct {p0}, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->b()V

    :cond_1
    return-void
.end method

.method private d(Landroid/view/MotionEvent;)V
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->getLastPoint()Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, v0, Landroid/graphics/PointF;->y:F

    iget-object p1, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->g:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/lasque/tusdk/core/utils/ThreadHelper;->cancel(Ljava/lang/Runnable;)V

    return-void
.end method

.method private e(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->getLastPoint()Landroid/graphics/PointF;

    move-result-object v0

    iget v1, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->getLongPressOffset()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_1

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->getLongPressOffset()I

    move-result v0

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method


# virtual methods
.method protected abstract buildFaceDetectionView()Landroid/view/View;
.end method

.method public cameraStateChanged(Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraInterface;Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$CameraState;)V
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$CameraState;->StateStarted:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$CameraState;

    if-ne p2, v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->a(Landroid/graphics/PointF;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->hiddenFaceViews()V

    :goto_0
    if-eqz p1, :cond_3

    invoke-interface {p1}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraInterface;->canSupportAutoFocus()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_2

    :cond_1
    sget-object p1, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$CameraState;->StateStarted:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$CameraState;

    if-ne p2, p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->setAutoContinueFocus(Z)V

    :cond_3
    :goto_2
    return-void
.end method

.method public getCamera()Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraInterface;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->b:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraInterface;

    return-object v0
.end method

.method protected getLastPoint()Landroid/graphics/PointF;
    .locals 4

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->c:Landroid/graphics/PointF;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    invoke-direct {v0, v1, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->c:Landroid/graphics/PointF;

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->c:Landroid/graphics/PointF;

    return-object v0
.end method

.method protected abstract getLongPressDistance()J
.end method

.method protected abstract getLongPressOffset()I
.end method

.method protected final getRatioPoint(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iget v1, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p1, v1

    iput p1, v0, Landroid/graphics/PointF;->y:F

    return-object v0
.end method

.method public getRegionPercent()Landroid/graphics/RectF;
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->f:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/RectF;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->f:Landroid/graphics/RectF;

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->f:Landroid/graphics/RectF;

    return-object v0
.end method

.method protected getRegionRectF()Landroid/graphics/RectF;
    .locals 5

    invoke-static {p0}, Lorg/lasque/tusdk/core/struct/ViewSize;->create(Landroid/view/View;)Lorg/lasque/tusdk/core/struct/ViewSize;

    move-result-object v0

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->getRegionPercent()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->getRegionPercent()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget v3, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->getRegionPercent()Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget v4, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->getRegionPercent()Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    iget v0, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    int-to-float v0, v0

    mul-float/2addr v4, v0

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public getSensor()Landroid/hardware/Sensor;
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->i:Landroid/hardware/Sensor;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->getSensorManager()Landroid/hardware/SensorManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->i:Landroid/hardware/Sensor;

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->i:Landroid/hardware/Sensor;

    return-object v0
.end method

.method public getSensorManager()Landroid/hardware/SensorManager;
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->h:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sensor"

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/ContextUtils;->getSystemService(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->h:Landroid/hardware/SensorManager;

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->h:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method protected hiddenFaceViews()V
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->mFaceViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->showView(Landroid/view/View;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public abstract isDisableContinueFoucs()Z
.end method

.method public abstract isDisableFocusBeep()Z
.end method

.method public abstract isEnableLongTouchCapture()Z
.end method

.method protected final makeRectRelativeImage(Lorg/lasque/tusdk/core/struct/TuSdkSize;)Landroid/graphics/RectF;
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->isSize()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->getRegionRectF()Landroid/graphics/RectF;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/RectHelper;->makeRectWithAspectRatioOutsideRect(Lorg/lasque/tusdk/core/struct/TuSdkSize;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected notifyFoucs(Landroid/graphics/PointF;Z)Z
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->b:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraInterface;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraInterface;->canSupportAutoFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->b:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraInterface;

    invoke-interface {v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraInterface;->getState()Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$CameraState;

    move-result-object v0

    sget-object v2, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$CameraState;->StateStarted:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$CameraState;

    if-ne v0, v2, :cond_1

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->b(Landroid/graphics/PointF;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->setAutoContinueFocus(Z)V

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->b:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraInterface;

    sget-object v1, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;->Auto:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->getRatioPoint(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    new-instance v2, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase$1;

    invoke-direct {v2, p0, p2}, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase$1;-><init>(Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;Z)V

    invoke-interface {v0, v1, p1, v2}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraInterface;->autoFocus(Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;Landroid/graphics/PointF;Lorg/lasque/tusdk/core/seles/sources/SelesBaseCameraInterface$TuSdkAutoFocusCallback;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->g:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/ThreadHelper;->cancel(Ljava/lang/Runnable;)V

    invoke-super {p0, p1}, Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->a:J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    iput-boolean v1, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->e:Z

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->d(Landroid/view/MotionEvent;)V

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p1}, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->c(Landroid/view/MotionEvent;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->b(Landroid/view/MotionEvent;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->a(Landroid/view/MotionEvent;)V

    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected setAutoContinueFocus(Z)V
    .locals 3

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->isDisableContinueFoucs()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->getSensor()Landroid/hardware/Sensor;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->h:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->m:Landroid/hardware/SensorEventListener;

    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->j:Z

    goto :goto_0

    :cond_1
    iget-boolean p1, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->j:Z

    if-nez p1, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->j:Z

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->k:J

    iget-object p1, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->h:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->m:Landroid/hardware/SensorEventListener;

    iget-object v1, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->i:Landroid/hardware/Sensor;

    const/4 v2, 0x3

    invoke-virtual {p1, v0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public setCamera(Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraInterface;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->b:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraInterface;

    return-void
.end method

.method public setCameraFaceDetection(Ljava/util/List;Lorg/lasque/tusdk/core/struct/TuSdkSize;)V
    .locals 5
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

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->hiddenFaceViews()V

    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->mFaceViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->mFaceViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v0, v1

    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->buildFaceDetectionView()Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v3, v2}, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->showView(Landroid/view/View;Z)V

    invoke-virtual {p0, v3}, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->addView(Landroid/view/View;)V

    iget-object v4, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->mFaceViews:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->mFaceViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0, p2}, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->makeRectRelativeImage(Lorg/lasque/tusdk/core/struct/TuSdkSize;)Landroid/graphics/RectF;

    move-result-object p2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkFace;

    iget-object v0, v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkFace;->rect:Landroid/graphics/RectF;

    invoke-virtual {p0, v0, p2}, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->transforRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->mFaceViews:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->setRect(Landroid/view/View;Landroid/graphics/Rect;)V

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v3}, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->showView(Landroid/view/View;Z)V

    if-nez v2, :cond_5

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->a(Landroid/graphics/Rect;)V

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    return-void
.end method

.method public abstract setRangeViewFoucsState(Z)V
.end method

.method public setRegionPercent(Landroid/graphics/RectF;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->f:Landroid/graphics/RectF;

    return-void
.end method

.method public setSensor(Landroid/hardware/Sensor;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->i:Landroid/hardware/Sensor;

    return-void
.end method

.method public setSensorManager(Landroid/hardware/SensorManager;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->h:Landroid/hardware/SensorManager;

    return-void
.end method

.method protected final transforRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/Rect;
    .locals 3

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget v1, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v2

    mul-float/2addr v1, v2

    iget v2, p2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/RectF;->right:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v2

    mul-float/2addr v1, v2

    iget v2, p2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v2

    mul-float/2addr v1, v2

    iget v2, p2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float/2addr p1, v1

    iget p2, p2, Landroid/graphics/RectF;->top:F

    sub-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    return-object v0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public viewWillDestory()V
    .locals 2

    invoke-super {p0}, Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout;->viewWillDestory()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->b:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraInterface;

    iget-object v1, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->d:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    iput-object v0, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->d:Landroid/media/MediaPlayer;

    :cond_0
    return-void
.end method
