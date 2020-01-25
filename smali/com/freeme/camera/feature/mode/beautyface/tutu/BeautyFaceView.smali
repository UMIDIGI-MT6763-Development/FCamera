.class public Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;
.super Landroid/opengl/GLSurfaceView;
.source "BeautyFaceView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Lcom/freeme/camera/common/IAppUiListener$OnPreviewAreaChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$SnapShotListener;,
        Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$MediaRecorderInfoListener;,
        Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$SurfaceTextureListener;,
        Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$TuSDKEGLContextFactory;,
        Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$FilerChangeListener;,
        Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$DataBeautyHandleCallback;
    }
.end annotation


# static fields
.field private static final ASPECT_TOLERANCE:D = 0.03

.field private static final IS_SAVE_FOR_TEST:Z = false

.field private static final NOTIFY_SURFACE_UPDATE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "BeautyFaceView"

.field private static final TUTU_ADUST_ORIENTATION:[I

.field private static final TUTU_CAPTURE_ORIENTATION:[Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

.field private static final WAIT_DONE:I = 0x1


# instance fields
.field private SAMPLER_RATIO:F

.field private mAspectRatio:D

.field private mCameraActivity:Lcom/freeme/camera/CameraActivity;

.field private mCaptureOrientation:Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

.field private volatile mCaptureOrientationIndex:I

.field private mCaptureStartTime:Lorg/lasque/tusdk/core/utils/TuSdkDate;

.field private mCaptureTime:J

.field private mCount:I

.field private mDataBeautyCallback:Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$DataBeautyHandleCallback;

.field private mDrawBounds:Landroid/graphics/Rect;

.field private mEGLContext:Landroid/opengl/EGLContext;

.field private mFileDescriporName:Ljava/lang/String;

.field private mFileName:Ljava/lang/String;

.field private mFilerChangedListener:Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$FilerChangeListener;

.field private mFilter:Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

.field private mFilterEngine:Lorg/lasque/tusdk/api/TuSDKFilterEngine;

.field private mFunnyFaceView:Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;

.field private mHander:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIsTextureForPreview:Z

.field private mListener:Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$SurfaceTextureListener;

.field private mMeasuredHeight:I

.field private mMeasuredWidth:I

.field private mMediaRecorder:Lorg/lasque/tusdk/api/TuSDKMediaRecoder;

.field private mMediaRecorderInfoListener:Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$MediaRecorderInfoListener;

.field public mMetadata:Lorg/lasque/tusdk/core/exif/ExifInterface;

.field private mOESTextureId:I

.field private mPauseed:Z

.field private mPreviewBitmap:Landroid/graphics/Bitmap;

.field private mRecording:Z

.field private mResolution:Ljava/lang/String;

.field private mResolutionHeight:I

.field private mResolutionWidth:I

.field private mResumeRecord:Z

.field private mRotation:I

.field private mSDMediaRecorder:Lorg/lasque/tusdk/api/TuSDKMediaRecoder;

.field private mSnapShotListener:Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$SnapShotListener;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mTime:J

.field private mTutuRetPictureData:[B

.field private mVideoRecorderFrameHeight:I

.field private mVideoRecorderFrameWidth:I

.field private object:Ljava/lang/Object;

.field private textureProgram:Lcom/freeme/camera/feature/mode/beautyface/tutu/Texture2dProgram;

.field private final waitDoneObject:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v1, v0, [Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    sget-object v2, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->Portrait:Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->LandscapeLeft:Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->PortraitUpsideDown:Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->LandscapeRight:Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    sput-object v1, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->TUTU_CAPTURE_ORIENTATION:[Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->TUTU_ADUST_ORIENTATION:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x5a
        0xb4
        0x10e
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->waitDoneObject:Ljava/lang/Object;

    const/high16 p2, 0x3fc00000    # 1.5f

    iput p2, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->SAMPLER_RATIO:F

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mResolution:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mAspectRatio:D

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mPauseed:Z

    new-instance v0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$1;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$1;-><init>(Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mHander:Landroid/os/Handler;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->object:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mResumeRecord:Z

    iput-boolean p2, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mRecording:Z

    move-object v0, p1

    check-cast v0, Lcom/freeme/camera/CameraActivity;

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mCameraActivity:Lcom/freeme/camera/CameraActivity;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->setEGLContextClientVersion(I)V

    new-instance v0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$TuSDKEGLContextFactory;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$TuSDKEGLContextFactory;-><init>(Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;)V

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->setEGLContextFactory(Landroid/opengl/GLSurfaceView$EGLContextFactory;)V

    invoke-virtual {p0, p0}, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    invoke-virtual {p0, p2}, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->setRenderMode(I)V

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->constructFilterEngine()V

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget p1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le p1, v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "x"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mResolution:Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "x"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mResolution:Ljava/lang/String;

    :goto_0
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mResolution:Ljava/lang/String;

    const-string v0, "x"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mResolutionWidth:I

    aget-object p1, p1, p2

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mResolutionHeight:I

    return-void
.end method

.method static synthetic access$000(Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->waitDoneObject:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100(Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;)Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$SurfaceTextureListener;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mListener:Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$SurfaceTextureListener;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;)I
    .locals 0

    iget p0, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mResolutionHeight:I

    return p0
.end method

.method static synthetic access$1100(Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mDrawBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;)Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$MediaRecorderInfoListener;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mMediaRecorderInfoListener:Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$MediaRecorderInfoListener;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;)Lorg/lasque/tusdk/api/TuSDKMediaRecoder;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mMediaRecorder:Lorg/lasque/tusdk/api/TuSDKMediaRecoder;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;)Lorg/lasque/tusdk/api/TuSDKMediaRecoder;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mSDMediaRecorder:Lorg/lasque/tusdk/api/TuSDKMediaRecoder;

    return-object p0
.end method

.method static synthetic access$200(Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;)Landroid/graphics/SurfaceTexture;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object p0
.end method

.method static synthetic access$300(Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;)Lorg/lasque/tusdk/api/TuSDKFilterEngine;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mFilterEngine:Lorg/lasque/tusdk/api/TuSDKFilterEngine;

    return-object p0
.end method

.method static synthetic access$400(Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;)Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mFunnyFaceView:Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;)Lorg/lasque/tusdk/core/utils/TuSdkDate;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mCaptureStartTime:Lorg/lasque/tusdk/core/utils/TuSdkDate;

    return-object p0
.end method

.method static synthetic access$600(Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;)Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$DataBeautyHandleCallback;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mDataBeautyCallback:Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$DataBeautyHandleCallback;

    return-object p0
.end method

.method static synthetic access$700(Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;)Lcom/freeme/camera/CameraActivity;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mCameraActivity:Lcom/freeme/camera/CameraActivity;

    return-object p0
.end method

.method static synthetic access$802(Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;)Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mFilter:Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    return-object p1
.end method

.method static synthetic access$900(Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;)Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$SnapShotListener;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mSnapShotListener:Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$SnapShotListener;

    return-object p0
.end method

.method private constructFilterEngine()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mFilterEngine:Lorg/lasque/tusdk/api/TuSDKFilterEngine;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mCameraActivity:Lcom/freeme/camera/CameraActivity;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;-><init>(Landroid/content/Context;ZZ)V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mFilterEngine:Lorg/lasque/tusdk/api/TuSDKFilterEngine;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mFilterEngine:Lorg/lasque/tusdk/api/TuSDKFilterEngine;

    invoke-virtual {v0, v2}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->setEnableLiveSticker(Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mFilterEngine:Lorg/lasque/tusdk/api/TuSDKFilterEngine;

    sget-object v1, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;->Front:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->setCameraFacing(Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mFilterEngine:Lorg/lasque/tusdk/api/TuSDKFilterEngine;

    invoke-virtual {v0, v2}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->setOutputOriginalImageOrientation(Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mFilterEngine:Lorg/lasque/tusdk/api/TuSDKFilterEngine;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->setIsOriginalCaptureOrientation(Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mFilterEngine:Lorg/lasque/tusdk/api/TuSDKFilterEngine;

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->setIsInputCaptureMirrorEnabled(Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mFilterEngine:Lorg/lasque/tusdk/api/TuSDKFilterEngine;

    const-string v1, "Nature_2_1"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->switchFilter(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mFilterEngine:Lorg/lasque/tusdk/api/TuSDKFilterEngine;

    new-instance v1, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$2;

    invoke-direct {v1, p0}, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$2;-><init>(Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;)V

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->setDelegate(Lorg/lasque/tusdk/api/TuSDKFilterEngine$TuSDKFilterEngineDelegate;)V

    return-void
.end method

.method private static findFullscreenRatio(Landroid/content/Context;)D
    .locals 5

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget p0, v0, Landroid/graphics/Point;->x:I

    iget v1, v0, Landroid/graphics/Point;->y:I

    if-le p0, v1, :cond_0

    iget p0, v0, Landroid/graphics/Point;->x:I

    int-to-double v1, p0

    iget p0, v0, Landroid/graphics/Point;->y:I

    int-to-double v3, p0

    div-double/2addr v1, v3

    goto :goto_0

    :cond_0
    iget p0, v0, Landroid/graphics/Point;->y:I

    int-to-double v1, p0

    iget p0, v0, Landroid/graphics/Point;->x:I

    int-to-double v3, p0

    div-double/2addr v1, v3

    :goto_0
    return-wide v1
.end method

.method private getIndextByOrientation(I)I
    .locals 4

    rem-int/lit16 p1, p1, 0x168

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v2, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->TUTU_ADUST_ORIENTATION:[I

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget v2, v2, v1

    if-ne p1, v2, :cond_0

    move v0, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method private getMediaRecorder()Lorg/lasque/tusdk/api/TuSDKMediaRecoder;
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mMediaRecorder:Lorg/lasque/tusdk/api/TuSDKMediaRecoder;

    if-nez v0, :cond_0

    new-instance v0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;

    invoke-direct {v0}, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mMediaRecorder:Lorg/lasque/tusdk/api/TuSDKMediaRecoder;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mMediaRecorder:Lorg/lasque/tusdk/api/TuSDKMediaRecoder;

    new-instance v1, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$4;

    invoke-direct {v1, p0}, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$4;-><init>(Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;)V

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->setDelegate(Lorg/lasque/tusdk/api/TuSDKMediaRecoder$TuSDKMediaRecoderDelegate;)V

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mMediaRecorder:Lorg/lasque/tusdk/api/TuSDKMediaRecoder;

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;->getDefaultRecordSetting()Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;

    move-result-object v0

    new-instance v1, Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v2, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mVideoRecorderFrameWidth:I

    iget v3, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mVideoRecorderFrameHeight:I

    invoke-direct {v1, v2, v3}, Lorg/lasque/tusdk/core/struct/TuSdkSize;-><init>(II)V

    iput-object v1, v0, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;->videoSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mMediaRecorder:Lorg/lasque/tusdk/api/TuSDKMediaRecoder;

    invoke-virtual {v1, v0}, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->setVideoEncoderSetting(Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;)Lorg/lasque/tusdk/api/TuSDKMediaRecoder;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mFileName:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->setOutputFilePath(Ljava/io/File;)Lorg/lasque/tusdk/api/TuSDKMediaRecoder;

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mMediaRecorder:Lorg/lasque/tusdk/api/TuSDKMediaRecoder;

    return-object v0
.end method

.method private getSDMediaRecorder()Lorg/lasque/tusdk/api/TuSDKMediaRecoder;
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mSDMediaRecorder:Lorg/lasque/tusdk/api/TuSDKMediaRecoder;

    if-nez v0, :cond_0

    new-instance v0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;

    invoke-direct {v0}, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mSDMediaRecorder:Lorg/lasque/tusdk/api/TuSDKMediaRecoder;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mSDMediaRecorder:Lorg/lasque/tusdk/api/TuSDKMediaRecoder;

    new-instance v1, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$5;

    invoke-direct {v1, p0}, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$5;-><init>(Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;)V

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->setDelegate(Lorg/lasque/tusdk/api/TuSDKMediaRecoder$TuSDKMediaRecoderDelegate;)V

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mSDMediaRecorder:Lorg/lasque/tusdk/api/TuSDKMediaRecoder;

    if-eqz v0, :cond_2

    invoke-static {}, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;->getDefaultRecordSetting()Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mFileDescriporName:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_1
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mCameraActivity:Lcom/freeme/camera/CameraActivity;

    invoke-static {v1, v2, v3}, Lcom/freeme/camera/common/utils/DocumentsUtils;->getDocumentFile(Ljava/io/File;ZLandroid/content/Context;)Landroid/support/v4/provider/DocumentFile;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_2

    :try_start_0
    iget-object v2, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mCameraActivity:Lcom/freeme/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/freeme/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v1}, Landroid/support/v4/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v1

    const-string v3, "rw"

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mSDMediaRecorder:Lorg/lasque/tusdk/api/TuSDKMediaRecoder;

    invoke-virtual {v2, v0}, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->setVideoEncoderSetting(Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;)Lorg/lasque/tusdk/api/TuSDKMediaRecoder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->setOutputFileDescriptor(Ljava/io/FileDescriptor;)Lorg/lasque/tusdk/api/TuSDKMediaRecoder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mSDMediaRecorder:Lorg/lasque/tusdk/api/TuSDKMediaRecoder;

    return-object v0
.end method

.method private getSaveMediaRecorder()Lorg/lasque/tusdk/api/TuSDKMediaRecoder;
    .locals 1

    invoke-static {}, Lcom/freeme/camera/common/utils/StorageUtil;->saveSdcard()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->getSDMediaRecorder()Lorg/lasque/tusdk/api/TuSDKMediaRecoder;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->getMediaRecorder()Lorg/lasque/tusdk/api/TuSDKMediaRecoder;

    move-result-object v0

    return-object v0
.end method

.method private isPortraitMode()Z
    .locals 3

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move v2, v1

    goto :goto_0

    :pswitch_1
    move v2, v1

    :goto_0
    :pswitch_2
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private showFps()V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "frame :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v2, v4}, Lorg/lasque/tusdk/core/utils/TLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-wide v0, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mTime:J

    iput v3, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mCount:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mCount:I

    :goto_0
    return-void
.end method

.method private updateOutputFilter()V
    .locals 2

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->getSaveMediaRecorder()Lorg/lasque/tusdk/api/TuSDKMediaRecoder;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mFilterEngine:Lorg/lasque/tusdk/api/TuSDKFilterEngine;

    invoke-virtual {v1}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->getFilterWrap()Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    move-result-object v1

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->getFilter()Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->updateFilter(Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;)V

    return-void
.end method


# virtual methods
.method public asyncHandlePictureData([BLcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$DataBeautyHandleCallback;ZI)V
    .locals 3

    iput-object p2, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mDataBeautyCallback:Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$DataBeautyHandleCallback;

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mDataBeautyCallback:Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$DataBeautyHandleCallback;

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mFilterEngine:Lorg/lasque/tusdk/api/TuSDKFilterEngine;

    invoke-virtual {p2}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->getFaceFeatures()[Lorg/lasque/tusdk/core/face/FaceAligment;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "faceAligments result : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    array-length v2, p2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/TLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_1

    array-length p2, p2

    if-gtz p2, :cond_2

    :cond_1
    iget-object p2, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mDataBeautyCallback:Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$DataBeautyHandleCallback;

    invoke-interface {p2, p1}, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$DataBeautyHandleCallback;->onNeedBeautyCallback([B)V

    return-void

    :cond_2
    invoke-static {}, Lorg/lasque/tusdk/core/utils/TuSdkDate;->create()Lorg/lasque/tusdk/core/utils/TuSdkDate;

    move-result-object p2

    iput-object p2, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mCaptureStartTime:Lorg/lasque/tusdk/core/utils/TuSdkDate;

    invoke-virtual {p0, p3, p4}, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->snapPreview(ZI)V

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mFilterEngine:Lorg/lasque/tusdk/api/TuSDKFilterEngine;

    iget-object p3, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mCaptureOrientation:Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    iget p4, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mRotation:I

    invoke-virtual {p2, p1, p3, p4}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->asyncProcessPictureData([BLorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;I)V

    return-void
.end method

.method public createBitmapFromGLSurface(IIII)Landroid/graphics/Bitmap;
    .locals 10

    monitor-enter p0

    mul-int v0, p3, p4

    :try_start_0
    new-array v1, v0, [I

    new-array v0, v0, [I

    invoke-static {v1}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gez p1, :cond_0

    move v2, v9

    goto :goto_0

    :cond_0
    move v2, p1

    :goto_0
    if-gez p2, :cond_1

    move v3, v9

    goto :goto_1

    :cond_1
    move v3, p2

    :goto_1
    const/16 v6, 0x1908

    const/16 v7, 0x1401

    move v4, p3

    move v5, p4

    :try_start_1
    invoke-static/range {v2 .. v8}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    move p1, v9

    :goto_2
    if-ge p1, p4, :cond_3

    mul-int p2, p1, p3

    sub-int v2, p4, p1

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v2, p3

    move v3, v9

    :goto_3
    if-ge v3, p3, :cond_2

    add-int v4, p2, v3

    aget v4, v1, v4

    shr-int/lit8 v5, v4, 0x10

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v6, v4, 0x10

    const/high16 v7, 0xff0000

    and-int/2addr v6, v7

    const v7, -0xff0100

    and-int/2addr v4, v7

    or-int/2addr v4, v6

    or-int/2addr v4, v5

    add-int v5, v2, v3

    aput v4, v0, v5
    :try_end_1
    .catch Landroid/opengl/GLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_3
    :try_start_2
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p3, p4, p1}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mCameraActivity:Lcom/freeme/camera/CameraActivity;

    invoke-virtual {p1}, Lcom/freeme/camera/CameraActivity;->getGSensorOrientation()I

    move-result p1

    if-nez p1, :cond_4

    monitor-exit p0

    return-object v1

    :cond_4
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p1, p1

    invoke-virtual {v6, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    move v4, p3

    move v5, p4

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    monitor-exit p0

    return-object p1

    :catch_0
    move-exception p1

    const-string p2, "BeautyFaceView"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "createBitmapFromGLSurface: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/opengl/GLException;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public destroyFilterEngine()V
    .locals 2

    const-string v0, "destroyFilterEngine"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/TLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mFilterEngine:Lorg/lasque/tusdk/api/TuSDKFilterEngine;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mFilterEngine:Lorg/lasque/tusdk/api/TuSDKFilterEngine;

    return-void
.end method

.method public getCaptureOrientation()Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;
    .locals 4

    sget-object v0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->TUTU_CAPTURE_ORIENTATION:[Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget v1, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mCaptureOrientationIndex:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mCaptureOrientationIndex:I

    sget-object v2, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->TUTU_CAPTURE_ORIENTATION:[Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    iget v0, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mCaptureOrientationIndex:I

    aget-object v0, v2, v0

    :cond_0
    return-object v0
.end method

.method public getFilter()Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mFilter:Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    return-object v0
.end method

.method public getPreviewBitmap(I)Landroid/graphics/Bitmap;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 2

    :goto_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mIsTextureForPreview:Z

    const-wide/16 v0, 0xa

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public initSurfaceTexture()V
    .locals 4

    const-string v0, "initSurfaceTexture: thread name : %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/TLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/freeme/camera/feature/mode/beautyface/tutu/GLUtils;->createOESTexture()I

    move-result v0

    iput v0, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mOESTextureId:I

    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mOESTextureId:I

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->textureProgram:Lcom/freeme/camera/feature/mode/beautyface/tutu/Texture2dProgram;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/freeme/camera/feature/mode/beautyface/tutu/Texture2dProgram;->release()V

    :cond_0
    new-instance v0, Lcom/freeme/camera/feature/mode/beautyface/tutu/Texture2dProgram;

    sget-object v1, Lcom/freeme/camera/feature/mode/beautyface/tutu/Texture2dProgram$ProgramType;->TEXTURE_2D:Lcom/freeme/camera/feature/mode/beautyface/tutu/Texture2dProgram$ProgramType;

    invoke-direct {v0, v1}, Lcom/freeme/camera/feature/mode/beautyface/tutu/Texture2dProgram;-><init>(Lcom/freeme/camera/feature/mode/beautyface/tutu/Texture2dProgram$ProgramType;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->textureProgram:Lcom/freeme/camera/feature/mode/beautyface/tutu/Texture2dProgram;

    const-string v0, "initSurfaceTexture"

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/beautyface/tutu/GLUtils;->checkGlError(Ljava/lang/String;)V

    return-void
.end method

.method public isFullScreenPreview(D)Z
    .locals 2

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->findFullscreenRatio(Landroid/content/Context;)D

    move-result-wide v0

    sub-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    const-wide v0, 0x3f9eb851eb851eb8L    # 0.03

    cmpg-double p1, p1, v0

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 3

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    iget-boolean p1, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mPauseed:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mFilterEngine:Lorg/lasque/tusdk/api/TuSDKFilterEngine;

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mDrawBounds:Landroid/graphics/Rect;

    if-eqz p1, :cond_8

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    const/4 v0, 0x0

    if-lez p1, :cond_7

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mDrawBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    if-gtz p1, :cond_2

    goto/16 :goto_1

    :cond_2
    invoke-static {}, Lcom/freeme/camera/common/utils/StorageUtil;->saveSdcard()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mSDMediaRecorder:Lorg/lasque/tusdk/api/TuSDKMediaRecoder;

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mResumeRecord:Z

    if-eqz p1, :cond_4

    const-string p1, "startVideoDataEncoder"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/TLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->updateOutputFilter()V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mSDMediaRecorder:Lorg/lasque/tusdk/api/TuSDKMediaRecoder;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mEGLContext:Landroid/opengl/EGLContext;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p1, v0, v1}, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->startVideoDataEncoder(Landroid/opengl/EGLContext;Landroid/graphics/SurfaceTexture;)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mMediaRecorder:Lorg/lasque/tusdk/api/TuSDKMediaRecoder;

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mResumeRecord:Z

    if-eqz p1, :cond_4

    const-string p1, "startVideoDataEncoder"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/TLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->updateOutputFilter()V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mMediaRecorder:Lorg/lasque/tusdk/api/TuSDKMediaRecoder;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mEGLContext:Landroid/opengl/EGLContext;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p1, v0, v1}, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->startVideoDataEncoder(Landroid/opengl/EGLContext;Landroid/graphics/SurfaceTexture;)V

    :cond_4
    :goto_0
    const/4 p1, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p1, p1, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 p1, 0x4100

    invoke-static {p1}, Landroid/opengl/GLES20;->glClear(I)V

    iget p1, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mMeasuredHeight:I

    iget v0, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mMeasuredWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->SAMPLER_RATIO:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float p1, p1

    div-float/2addr p1, v1

    float-to-int p1, p1

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mDrawBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    const/16 v2, 0x3cc

    if-lt v1, v2, :cond_5

    int-to-float v0, v0

    iget v1, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->SAMPLER_RATIO:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float p1, p1

    div-float/2addr p1, v1

    float-to-int p1, p1

    :cond_5
    iget-object v1, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mFilterEngine:Lorg/lasque/tusdk/api/TuSDKFilterEngine;

    iget v2, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mOESTextureId:I

    invoke-virtual {v1, v2, p1, v0}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->processFrame(III)I

    move-result p1

    :try_start_0
    const-string v0, "processFrame"

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/beautyface/tutu/GLUtils;->checkGlError(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    iget v0, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mResolutionHeight:I

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mDrawBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mDrawBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->textureProgram:Lcom/freeme/camera/feature/mode/beautyface/tutu/Texture2dProgram;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/feature/mode/beautyface/tutu/Texture2dProgram;->draw(I)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mCameraActivity:Lcom/freeme/camera/CameraActivity;

    invoke-virtual {p1}, Lcom/freeme/camera/CameraActivity;->getCurrentCameraMode()I

    move-result p1

    const/16 v0, 0x9

    if-ne p1, v0, :cond_6

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mFilterEngine:Lorg/lasque/tusdk/api/TuSDKFilterEngine;

    invoke-virtual {p1}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->getFaceFeatures()[Lorg/lasque/tusdk/core/face/FaceAligment;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mFilterEngine:Lorg/lasque/tusdk/api/TuSDKFilterEngine;

    invoke-virtual {v0}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->getDeviceAngle()F

    move-result v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mFunnyFaceView:Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;

    invoke-virtual {v1, v0, p1}, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->render(F[Lorg/lasque/tusdk/core/face/FaceAligment;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mFunnyFaceView:Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;

    invoke-virtual {p1}, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->capture()V

    :cond_6
    return-void

    :catch_0
    return-void

    :cond_7
    :goto_1
    const-string p1, "invalid draw"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/TLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_8
    :goto_2
    return-void
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->requestRender()V

    iget-boolean p1, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mIsTextureForPreview:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mIsTextureForPreview:Z

    return-void

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mListener:Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$SurfaceTextureListener;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-interface {p1, v0}, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$SurfaceTextureListener;->onBfSurfaceTextureUpdate(Landroid/graphics/SurfaceTexture;)V

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 12

    invoke-super {p0, p1, p2}, Landroid/opengl/GLSurfaceView;->onMeasure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    if-le p1, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    move v1, p1

    goto :goto_1

    :cond_1
    move v1, p2

    :goto_1
    if-eqz v0, :cond_2

    move p1, p2

    :cond_2
    iget-wide v2, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mAspectRatio:D

    const-wide/16 v4, 0x0

    cmpl-double p2, v2, v4

    if-lez p2, :cond_6

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->findFullscreenRatio(Landroid/content/Context;)D

    move-result-wide v2

    iget-wide v4, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mAspectRatio:D

    sub-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x3f9eb851eb851eb8L    # 0.03

    cmpg-double p2, v2, v4

    const/high16 v2, 0x40000000    # 2.0f

    if-gtz p2, :cond_4

    int-to-double v3, v1

    int-to-double v5, p1

    iget-wide v7, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mAspectRatio:D

    mul-double v9, v5, v7

    cmpg-double p2, v3, v9

    if-gez p2, :cond_3

    mul-double/2addr v5, v7

    double-to-float p2, v5

    div-float/2addr p2, v2

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    mul-int/lit8 v1, p2, 0x2

    goto :goto_2

    :cond_3
    div-double/2addr v3, v7

    double-to-float p1, v3

    div-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    goto :goto_2

    :cond_4
    int-to-double v3, v1

    int-to-double v5, p1

    iget-wide v7, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mAspectRatio:D

    mul-double v9, v5, v7

    cmpl-double p2, v3, v9

    if-lez p2, :cond_5

    mul-double/2addr v5, v7

    double-to-float p2, v5

    div-float/2addr p2, v2

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    mul-int/lit8 v1, p2, 0x2

    goto :goto_2

    :cond_5
    div-double/2addr v3, v7

    double-to-float p1, v3

    div-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    :cond_6
    :goto_2
    if-eqz v0, :cond_7

    move v11, v1

    move v1, p1

    move p1, v11

    :cond_7
    iput p1, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mMeasuredWidth:I

    iput v1, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mMeasuredHeight:I

    invoke-virtual {p0, p1, v1}, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    return-void
.end method

.method public onPreviewAreaChanged(Landroid/graphics/RectF;Lcom/freeme/camera/common/utils/Size;)V
    .locals 3

    new-instance p2, Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    iget v1, p1, Landroid/graphics/RectF;->top:F

    float-to-int v1, v1

    iget v2, p1, Landroid/graphics/RectF;->right:F

    float-to-int v2, v2

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    float-to-int p1, p1

    invoke-direct {p2, v0, v1, v2, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p2, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mDrawBounds:Landroid/graphics/Rect;

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onResume()V

    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mFilterEngine:Lorg/lasque/tusdk/api/TuSDKFilterEngine;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2, p3}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->onSurfaceChanged(II)V

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mFunnyFaceView:Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;

    invoke-virtual {p1, p2, p3}, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->resize(II)V

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onSurfaceCreated thread name:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lorg/lasque/tusdk/core/utils/TLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {p1}, Lcom/badlogic/gdx/Application;->getApplicationListener()Lcom/badlogic/gdx/ApplicationListener;

    move-result-object p1

    instance-of p2, p1, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;

    if-eqz p2, :cond_0

    check-cast p1, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mFunnyFaceView:Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mFunnyFaceView:Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;

    invoke-virtual {p1, p0}, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->create(Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;)V

    :cond_0
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mEGLContext:Landroid/opengl/EGLContext;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->initSurfaceTexture()V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mFilterEngine:Lorg/lasque/tusdk/api/TuSDKFilterEngine;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->onSurfaceCreated()V

    :cond_1
    return-void
.end method

.method public pausedRecording()V
    .locals 1

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->getSaveMediaRecorder()Lorg/lasque/tusdk/api/TuSDKMediaRecoder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->getSaveMediaRecorder()Lorg/lasque/tusdk/api/TuSDKMediaRecoder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->pauseRecording()V

    :cond_0
    return-void
.end method

.method public setAspectRatio(D)V
    .locals 2

    iget-wide v0, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mAspectRatio:D

    cmpl-double v0, v0, p1

    if-eqz v0, :cond_0

    iput-wide p1, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mAspectRatio:D

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setCameraId(I)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mFilterEngine:Lorg/lasque/tusdk/api/TuSDKFilterEngine;

    sget-object v0, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;->Back:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->setCameraFacing(Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mFilterEngine:Lorg/lasque/tusdk/api/TuSDKFilterEngine;

    sget-object v0, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;->Front:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->setCameraFacing(Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mFilterEngine:Lorg/lasque/tusdk/api/TuSDKFilterEngine;

    sget-object v0, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;->Back:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->setCameraFacing(Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;)V

    :goto_0
    return-void
.end method

.method public setCaptureMirrorEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mFilterEngine:Lorg/lasque/tusdk/api/TuSDKFilterEngine;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->setIsOutputCaptureMirrorEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setCaptureRotation(I)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mFilterEngine:Lorg/lasque/tusdk/api/TuSDKFilterEngine;

    invoke-virtual {v0}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->getDeviceOrient()Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mCaptureOrientation:Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    iput p1, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mRotation:I

    return-void
.end method

.method public setFilterChangeListener(Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$FilerChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mFilerChangedListener:Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$FilerChangeListener;

    return-void
.end method

.method public setMediaRecorderInfoListener(Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$MediaRecorderInfoListener;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mMediaRecorderInfoListener:Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$MediaRecorderInfoListener;

    return-void
.end method

.method public setOutputFile(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mFileName:Ljava/lang/String;

    return-void
.end method

.method public setOutputFileDescriptor(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mFileDescriporName:Ljava/lang/String;

    return-void
.end method

.method public setPauseed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mPauseed:Z

    return-void
.end method

.method public setSnapShotListener(Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$SnapShotListener;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mSnapShotListener:Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$SnapShotListener;

    return-void
.end method

.method public setSurfaceTextureListener(Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$SurfaceTextureListener;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mListener:Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$SurfaceTextureListener;

    return-void
.end method

.method public setVideoSize(II)V
    .locals 0

    iput p1, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mVideoRecorderFrameWidth:I

    iput p2, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mVideoRecorderFrameHeight:I

    return-void
.end method

.method public snapPreview(ZI)V
    .locals 0

    new-instance p2, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$3;

    invoke-direct {p2, p0, p1}, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$3;-><init>(Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;Z)V

    invoke-virtual {p0, p2}, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public startRecording()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mEGLContext:Landroid/opengl/EGLContext;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mRecording:Z

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->updateOutputFilter()V

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->getSaveMediaRecorder()Lorg/lasque/tusdk/api/TuSDKMediaRecoder;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mCameraActivity:Lcom/freeme/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/freeme/camera/CameraActivity;->getGSensorOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->setOrientationHint(I)Lorg/lasque/tusdk/api/TuSDKMediaRecoder;

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->getSaveMediaRecorder()Lorg/lasque/tusdk/api/TuSDKMediaRecoder;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mEGLContext:Landroid/opengl/EGLContext;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1, v2}, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->startRecording(Landroid/opengl/EGLContext;Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method public stopRecording()V
    .locals 1

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->getSaveMediaRecorder()Lorg/lasque/tusdk/api/TuSDKMediaRecoder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->getSaveMediaRecorder()Lorg/lasque/tusdk/api/TuSDKMediaRecoder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->stopRecording()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mRecording:Z

    return-void
.end method

.method public syncHandlePictureData([B)[B
    .locals 5

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->waitDoneObject:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mFilterEngine:Lorg/lasque/tusdk/api/TuSDKFilterEngine;

    invoke-virtual {v1}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->getFaceFeatures()[Lorg/lasque/tusdk/core/face/FaceAligment;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "faceAligments result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    array-length v4, v1

    if-lez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lorg/lasque/tusdk/core/utils/TLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v1, :cond_2

    array-length v1, v1

    if-gtz v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Lorg/lasque/tusdk/core/utils/TuSdkDate;->create()Lorg/lasque/tusdk/core/utils/TuSdkDate;

    move-result-object v1

    iput-object v1, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mCaptureStartTime:Lorg/lasque/tusdk/core/utils/TuSdkDate;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mFilterEngine:Lorg/lasque/tusdk/api/TuSDKFilterEngine;

    invoke-virtual {v1, p1}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->asyncProcessPictureData([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->waitDoneObject:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mTutuRetPictureData:[B

    monitor-exit v0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    const/4 p1, 0x0

    monitor-exit v0

    return-object p1

    :cond_2
    :goto_1
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public takeSnapShot()V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->mFilterEngine:Lorg/lasque/tusdk/api/TuSDKFilterEngine;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->takeShot()V

    :cond_0
    return-void
.end method
