.class Lcom/freeme/camera/ui/preview/FaceBeautyViewController;
.super Ljava/lang/Object;
.source "FaceBeautyViewController.java"

# interfaces
.implements Lcom/freeme/camera/ui/preview/IController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/ui/preview/FaceBeautyViewController$SurfaceChangeCallback;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private mApp:Lcom/freeme/camera/common/app/IApp;

.field private mIsSurfaceCreated:Z

.field private mLastPreviewContainer:Landroid/view/ViewGroup;

.field private mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mPreviewAspectRatio:D

.field private mPreviewContainer:Landroid/view/ViewGroup;

.field private mPreviewHeight:I

.field private mPreviewRoot:Landroid/view/ViewGroup;

.field private mPreviewWidth:I

.field private mProducerThread:Ljava/lang/Thread;

.field private final mRenderSyncLock:Ljava/lang/Object;

.field private mRenderer:Lcom/freeme/camera/ui/preview/GLRendererImpl;

.field private mSurfaceChangeCallback:Lcom/freeme/camera/ui/preview/FaceBeautyViewController$SurfaceChangeCallback;

.field private mSurfaceView:Lcom/freeme/camera/ui/preview/PreviewSurfaceView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/freeme/camera/common/app/IApp;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->mPreviewWidth:I

    iput v0, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->mPreviewHeight:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->mPreviewAspectRatio:D

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->mRenderSyncLock:Ljava/lang/Object;

    iput-boolean v0, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->mIsSurfaceCreated:Z

    iput-object p1, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->mApp:Lcom/freeme/camera/common/app/IApp;

    iget-object p1, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const v0, 0x7f090163

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->mPreviewRoot:Landroid/view/ViewGroup;

    return-void
.end method

.method static synthetic access$000(Lcom/freeme/camera/ui/preview/FaceBeautyViewController;)Lcom/freeme/camera/ui/preview/GLRendererImpl;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->mRenderer:Lcom/freeme/camera/ui/preview/GLRendererImpl;

    return-object p0
.end method

.method static synthetic access$002(Lcom/freeme/camera/ui/preview/FaceBeautyViewController;Lcom/freeme/camera/ui/preview/GLRendererImpl;)Lcom/freeme/camera/ui/preview/GLRendererImpl;
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->mRenderer:Lcom/freeme/camera/ui/preview/GLRendererImpl;

    return-object p1
.end method

.method static synthetic access$100(Lcom/freeme/camera/ui/preview/FaceBeautyViewController;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->mApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$200(Lcom/freeme/camera/ui/preview/FaceBeautyViewController;)Ljava/lang/Thread;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->mProducerThread:Ljava/lang/Thread;

    return-object p0
.end method

.method static synthetic access$202(Lcom/freeme/camera/ui/preview/FaceBeautyViewController;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->mProducerThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$300(Lcom/freeme/camera/ui/preview/FaceBeautyViewController;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->mRenderSyncLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$402(Lcom/freeme/camera/ui/preview/FaceBeautyViewController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->mIsSurfaceCreated:Z

    return p1
.end method

.method static synthetic access$500(Lcom/freeme/camera/ui/preview/FaceBeautyViewController;)I
    .locals 0

    iget p0, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->mPreviewWidth:I

    return p0
.end method

.method static synthetic access$600(Lcom/freeme/camera/ui/preview/FaceBeautyViewController;)I
    .locals 0

    iget p0, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->mPreviewHeight:I

    return p0
.end method

.method private attachSurfaceView(Lcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/freeme/camera/CameraActivity;->getmBeautyFaceView()Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    new-instance v1, Lcom/freeme/camera/ui/preview/FaceBeautyViewController$SurfaceChangeCallback;

    invoke-direct {v1, p0, p1}, Lcom/freeme/camera/ui/preview/FaceBeautyViewController$SurfaceChangeCallback;-><init>(Lcom/freeme/camera/ui/preview/FaceBeautyViewController;Lcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;)V

    iput-object v1, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->mSurfaceChangeCallback:Lcom/freeme/camera/ui/preview/FaceBeautyViewController$SurfaceChangeCallback;

    iget-object p1, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->mSurfaceChangeCallback:Lcom/freeme/camera/ui/preview/FaceBeautyViewController$SurfaceChangeCallback;

    invoke-interface {v0, p1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    const/4 p1, 0x3

    invoke-interface {v0, p1}, Landroid/view/SurfaceHolder;->setType(I)V

    iget-object p1, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/freeme/camera/CameraActivity;

    invoke-virtual {p1}, Lcom/freeme/camera/CameraActivity;->getmBeautyFaceView()Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p1, v0}, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object p1, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/freeme/camera/CameraActivity;

    invoke-virtual {p1}, Lcom/freeme/camera/CameraActivity;->getmBeautyFaceView()Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, v0}, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p1, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/freeme/camera/CameraActivity;

    invoke-virtual {p1}, Lcom/freeme/camera/CameraActivity;->getmBeautyFaceView()Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->setVisibility(I)V

    iget-object p1, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/freeme/camera/CameraActivity;->getmBeautyFaceView()Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/freeme/camera/common/IAppUi;->registerOnPreviewAreaChangedListener(Lcom/freeme/camera/common/IAppUiListener$OnPreviewAreaChangedListener;)V

    return-void
.end method

.method private isThirdPartyIntent(Landroid/app/Activity;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

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
.method public clearPreviewStatusListener(Lcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->mSurfaceChangeCallback:Lcom/freeme/camera/ui/preview/FaceBeautyViewController$SurfaceChangeCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/freeme/camera/ui/preview/FaceBeautyViewController$SurfaceChangeCallback;->getBindStatusListener()Lcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/freeme/camera/CameraActivity;

    invoke-virtual {p1}, Lcom/freeme/camera/CameraActivity;->getmBeautyFaceView()Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->mSurfaceChangeCallback:Lcom/freeme/camera/ui/preview/FaceBeautyViewController$SurfaceChangeCallback;

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    new-instance p1, Lcom/freeme/camera/ui/preview/FaceBeautyViewController$SurfaceChangeCallback;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/freeme/camera/ui/preview/FaceBeautyViewController$SurfaceChangeCallback;-><init>(Lcom/freeme/camera/ui/preview/FaceBeautyViewController;Lcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;)V

    iput-object p1, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->mSurfaceChangeCallback:Lcom/freeme/camera/ui/preview/FaceBeautyViewController$SurfaceChangeCallback;

    iget-object p1, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/freeme/camera/CameraActivity;

    invoke-virtual {p1}, Lcom/freeme/camera/CameraActivity;->getmBeautyFaceView()Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->mSurfaceChangeCallback:Lcom/freeme/camera/ui/preview/FaceBeautyViewController$SurfaceChangeCallback;

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    :cond_0
    return-void
.end method

.method public getPreviewBitmap(I)Landroid/graphics/Bitmap;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/freeme/camera/CameraActivity;->getmBeautyFaceView()Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;

    move-result-object v0

    return-object v0
.end method

.method public onPause()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/freeme/camera/CameraActivity;->getmBeautyFaceView()Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->mPreviewContainer:Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->mLastPreviewContainer:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->mSurfaceView:Lcom/freeme/camera/ui/preview/PreviewSurfaceView;

    iget-object v0, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->mSurfaceChangeCallback:Lcom/freeme/camera/ui/preview/FaceBeautyViewController$SurfaceChangeCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/freeme/camera/ui/preview/FaceBeautyViewController$SurfaceChangeCallback;->getBindStatusListener()Lcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->attachSurfaceView(Lcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;)V

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/freeme/camera/CameraActivity;->getmBeautyFaceView()Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget v1, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->mPreviewWidth:I

    iget v2, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->mPreviewHeight:I

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    iget-object v0, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/freeme/camera/CameraActivity;->getmBeautyFaceView()Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;

    move-result-object v0

    iget-wide v1, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->mPreviewAspectRatio:D

    invoke-virtual {v0, v1, v2}, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->setAspectRatio(D)V

    :cond_1
    return-void
.end method

.method public removeTopSurface()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/freeme/camera/CameraActivity;->getmBeautyFaceView()Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->setPauseed(Z)V

    iget-object v0, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/freeme/camera/CameraActivity;->getmBeautyFaceView()Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->setVisibility(I)V

    iget-object v0, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/freeme/camera/CameraActivity;->getmBeautyFaceView()Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v0, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/freeme/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/freeme/camera/CameraActivity;->getmBeautyFaceView()Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->unregisterOnPreviewAreaChangedListener(Lcom/freeme/camera/common/IAppUiListener$OnPreviewAreaChangedListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->mLastPreviewContainer:Landroid/view/ViewGroup;

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/freeme/camera/CameraActivity;->getmBeautyFaceView()Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/freeme/camera/CameraActivity;->getmBeautyFaceView()Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public updatePreviewSize(IILcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;)V
    .locals 6

    sget-object v0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePreviewSize: new size ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ) current size ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->mPreviewWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->mPreviewHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ),mIsSurfaceCreated = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->mIsSurfaceCreated:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " listener = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget v0, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->mPreviewWidth:I

    if-ne v0, p1, :cond_2

    iget v0, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->mPreviewHeight:I

    if-ne v0, p2, :cond_2

    iget-object p1, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/freeme/camera/CameraActivity;

    invoke-virtual {p1}, Lcom/freeme/camera/CameraActivity;->getmBeautyFaceView()Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;

    move-result-object p1

    iget-object p2, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p1, p2}, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object p1, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/freeme/camera/CameraActivity;

    invoke-virtual {p1}, Lcom/freeme/camera/CameraActivity;->getmBeautyFaceView()Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->requestLayout()V

    iget-object p1, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->mSurfaceChangeCallback:Lcom/freeme/camera/ui/preview/FaceBeautyViewController$SurfaceChangeCallback;

    invoke-virtual {p1}, Lcom/freeme/camera/ui/preview/FaceBeautyViewController$SurfaceChangeCallback;->getBindStatusListener()Lcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;

    move-result-object p1

    if-eqz p3, :cond_0

    if-eq p3, p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/freeme/camera/CameraActivity;

    invoke-virtual {p1}, Lcom/freeme/camera/CameraActivity;->getmBeautyFaceView()Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    iget-object p2, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->mSurfaceChangeCallback:Lcom/freeme/camera/ui/preview/FaceBeautyViewController$SurfaceChangeCallback;

    invoke-interface {p1, p2}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    new-instance p1, Lcom/freeme/camera/ui/preview/FaceBeautyViewController$SurfaceChangeCallback;

    invoke-direct {p1, p0, p3}, Lcom/freeme/camera/ui/preview/FaceBeautyViewController$SurfaceChangeCallback;-><init>(Lcom/freeme/camera/ui/preview/FaceBeautyViewController;Lcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;)V

    iput-object p1, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->mSurfaceChangeCallback:Lcom/freeme/camera/ui/preview/FaceBeautyViewController$SurfaceChangeCallback;

    iget-object p1, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/freeme/camera/CameraActivity;

    invoke-virtual {p1}, Lcom/freeme/camera/CameraActivity;->getmBeautyFaceView()Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    iget-object p2, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->mSurfaceChangeCallback:Lcom/freeme/camera/ui/preview/FaceBeautyViewController$SurfaceChangeCallback;

    invoke-interface {p1, p2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    :cond_0
    iget-boolean p1, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->mIsSurfaceCreated:Z

    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/freeme/camera/CameraActivity;

    invoke-virtual {p1}, Lcom/freeme/camera/CameraActivity;->getmBeautyFaceView()Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p1

    iget p2, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->mPreviewWidth:I

    iget v0, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->mPreviewHeight:I

    invoke-virtual {p1, p2, v0}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    iget-object p1, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/freeme/camera/CameraActivity;

    invoke-virtual {p1}, Lcom/freeme/camera/CameraActivity;->getmBeautyFaceView()Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p1

    iget p2, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->mPreviewWidth:I

    iget v0, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->mPreviewHeight:I

    invoke-interface {p3, p1, p2, v0}, Lcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;->surfaceAvailable(Ljava/lang/Object;II)V

    :cond_1
    iget-object p1, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/freeme/camera/CameraActivity;

    invoke-virtual {p1}, Lcom/freeme/camera/CameraActivity;->getmBeautyFaceView()Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->setVisibility(I)V

    return-void

    :cond_2
    iget-wide v0, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->mPreviewAspectRatio:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->mPreviewContainer:Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->mLastPreviewContainer:Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->mSurfaceView:Lcom/freeme/camera/ui/preview/PreviewSurfaceView;

    goto :goto_0

    :cond_3
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-double v2, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-double v4, v0

    div-double/2addr v2, v4

    iget-object v0, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->mSurfaceView:Lcom/freeme/camera/ui/preview/PreviewSurfaceView;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v2, v3}, Lcom/freeme/camera/ui/preview/PreviewSurfaceView;->isFullScreenPreview(D)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->mPreviewContainer:Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->mLastPreviewContainer:Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->mSurfaceView:Lcom/freeme/camera/ui/preview/PreviewSurfaceView;

    :cond_4
    :goto_0
    iput p1, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->mPreviewWidth:I

    iput p2, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->mPreviewHeight:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-double v0, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-double p1, p1

    div-double/2addr v0, p1

    iput-wide v0, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->mPreviewAspectRatio:D

    invoke-direct {p0, p3}, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->attachSurfaceView(Lcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;)V

    iget-object p1, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/freeme/camera/CameraActivity;

    invoke-virtual {p1}, Lcom/freeme/camera/CameraActivity;->getmBeautyFaceView()Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    iget p2, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->mPreviewWidth:I

    iget p3, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->mPreviewHeight:I

    invoke-interface {p1, p2, p3}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    iget-object p1, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/freeme/camera/CameraActivity;

    invoke-virtual {p1}, Lcom/freeme/camera/CameraActivity;->getmBeautyFaceView()Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;

    move-result-object p1

    iget-wide p2, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->mPreviewAspectRatio:D

    invoke-virtual {p1, p2, p3}, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->setAspectRatio(D)V

    return-void
.end method
