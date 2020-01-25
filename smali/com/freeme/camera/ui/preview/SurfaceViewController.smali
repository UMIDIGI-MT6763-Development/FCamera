.class Lcom/freeme/camera/ui/preview/SurfaceViewController;
.super Ljava/lang/Object;
.source "SurfaceViewController.java"

# interfaces
.implements Lcom/freeme/camera/ui/preview/IController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/ui/preview/SurfaceViewController$SurfaceChangeCallback;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private mApp:Lcom/freeme/camera/common/app/IApp;

.field private mFrameLayoutQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

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

.field private mSurfaceChangeCallback:Lcom/freeme/camera/ui/preview/SurfaceViewController$SurfaceChangeCallback;

.field private mSurfaceView:Lcom/freeme/camera/ui/preview/PreviewSurfaceView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/ui/preview/SurfaceViewController;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/ui/preview/SurfaceViewController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/freeme/camera/common/app/IApp;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/freeme/camera/ui/preview/SurfaceViewController;->mPreviewWidth:I

    iput v0, p0, Lcom/freeme/camera/ui/preview/SurfaceViewController;->mPreviewHeight:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/freeme/camera/ui/preview/SurfaceViewController;->mPreviewAspectRatio:D

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/freeme/camera/ui/preview/SurfaceViewController;->mRenderSyncLock:Ljava/lang/Object;

    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v1, p0, Lcom/freeme/camera/ui/preview/SurfaceViewController;->mFrameLayoutQueue:Ljava/util/concurrent/BlockingQueue;

    iput-boolean v0, p0, Lcom/freeme/camera/ui/preview/SurfaceViewController;->mIsSurfaceCreated:Z

    iput-object p1, p0, Lcom/freeme/camera/ui/preview/SurfaceViewController;->mApp:Lcom/freeme/camera/common/app/IApp;

    iget-object p1, p0, Lcom/freeme/camera/ui/preview/SurfaceViewController;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const v1, 0x7f090163

    invoke-virtual {p1, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/freeme/camera/ui/preview/SurfaceViewController;->mPreviewRoot:Landroid/view/ViewGroup;

    iget-object p1, p0, Lcom/freeme/camera/ui/preview/SurfaceViewController;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/freeme/camera/ui/preview/SurfaceViewController;->isThirdPartyIntent(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/ui/preview/SurfaceViewController;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const v1, 0x7f090162

    invoke-virtual {p1, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/freeme/camera/ui/preview/SurfaceViewController;)Lcom/freeme/camera/ui/preview/GLRendererImpl;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/ui/preview/SurfaceViewController;->mRenderer:Lcom/freeme/camera/ui/preview/GLRendererImpl;

    return-object p0
.end method

.method static synthetic access$002(Lcom/freeme/camera/ui/preview/SurfaceViewController;Lcom/freeme/camera/ui/preview/GLRendererImpl;)Lcom/freeme/camera/ui/preview/GLRendererImpl;
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/preview/SurfaceViewController;->mRenderer:Lcom/freeme/camera/ui/preview/GLRendererImpl;

    return-object p1
.end method

.method static synthetic access$100(Lcom/freeme/camera/ui/preview/SurfaceViewController;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/ui/preview/SurfaceViewController;->mApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$200(Lcom/freeme/camera/ui/preview/SurfaceViewController;)Ljava/lang/Thread;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/ui/preview/SurfaceViewController;->mProducerThread:Ljava/lang/Thread;

    return-object p0
.end method

.method static synthetic access$202(Lcom/freeme/camera/ui/preview/SurfaceViewController;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/preview/SurfaceViewController;->mProducerThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$300(Lcom/freeme/camera/ui/preview/SurfaceViewController;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/ui/preview/SurfaceViewController;->mRenderSyncLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$402(Lcom/freeme/camera/ui/preview/SurfaceViewController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/freeme/camera/ui/preview/SurfaceViewController;->mIsSurfaceCreated:Z

    return p1
.end method

.method static synthetic access$500(Lcom/freeme/camera/ui/preview/SurfaceViewController;)I
    .locals 0

    iget p0, p0, Lcom/freeme/camera/ui/preview/SurfaceViewController;->mPreviewWidth:I

    return p0
.end method

.method static synthetic access$600(Lcom/freeme/camera/ui/preview/SurfaceViewController;)I
    .locals 0

    iget p0, p0, Lcom/freeme/camera/ui/preview/SurfaceViewController;->mPreviewHeight:I

    return p0
.end method

.method private attachSurfaceView(Lcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;)V
    .locals 5

    iget-object v0, p0, Lcom/freeme/camera/ui/preview/SurfaceViewController;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0097

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f090167

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/freeme/camera/ui/preview/PreviewSurfaceView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/freeme/camera/ui/preview/PreviewSurfaceView;->setVisibility(I)V

    iget-object v3, p0, Lcom/freeme/camera/ui/preview/SurfaceViewController;->mLastPreviewContainer:Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceView;

    iget-object v3, p0, Lcom/freeme/camera/ui/preview/SurfaceViewController;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v1, v3}, Landroid/view/SurfaceView;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    iget-object v4, p0, Lcom/freeme/camera/ui/preview/SurfaceViewController;->mSurfaceChangeCallback:Lcom/freeme/camera/ui/preview/SurfaceViewController$SurfaceChangeCallback;

    invoke-interface {v3, v4}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    iget-object v3, p0, Lcom/freeme/camera/ui/preview/SurfaceViewController;->mSurfaceChangeCallback:Lcom/freeme/camera/ui/preview/SurfaceViewController$SurfaceChangeCallback;

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/freeme/camera/ui/preview/SurfaceViewController$SurfaceChangeCallback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    :cond_0
    iget-object v1, p0, Lcom/freeme/camera/ui/preview/SurfaceViewController;->mLastPreviewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->bringToFront()V

    iget-object v1, p0, Lcom/freeme/camera/ui/preview/SurfaceViewController;->mFrameLayoutQueue:Ljava/util/concurrent/BlockingQueue;

    iget-object v3, p0, Lcom/freeme/camera/ui/preview/SurfaceViewController;->mLastPreviewContainer:Landroid/view/ViewGroup;

    invoke-interface {v1, v3}, Ljava/util/concurrent/BlockingQueue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/freeme/camera/ui/preview/SurfaceViewController;->mFrameLayoutQueue:Ljava/util/concurrent/BlockingQueue;

    iget-object v3, p0, Lcom/freeme/camera/ui/preview/SurfaceViewController;->mLastPreviewContainer:Landroid/view/ViewGroup;

    invoke-interface {v1, v3}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v2}, Lcom/freeme/camera/ui/preview/PreviewSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    new-instance v3, Lcom/freeme/camera/ui/preview/SurfaceViewController$SurfaceChangeCallback;

    invoke-direct {v3, p0, p1}, Lcom/freeme/camera/ui/preview/SurfaceViewController$SurfaceChangeCallback;-><init>(Lcom/freeme/camera/ui/preview/SurfaceViewController;Lcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;)V

    iput-object v3, p0, Lcom/freeme/camera/ui/preview/SurfaceViewController;->mSurfaceChangeCallback:Lcom/freeme/camera/ui/preview/SurfaceViewController$SurfaceChangeCallback;

    iget-object p1, p0, Lcom/freeme/camera/ui/preview/SurfaceViewController;->mSurfaceChangeCallback:Lcom/freeme/camera/ui/preview/SurfaceViewController$SurfaceChangeCallback;

    invoke-interface {v1, p1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    const/4 p1, 0x3

    invoke-interface {v1, p1}, Landroid/view/SurfaceHolder;->setType(I)V

    iget-object p1, p0, Lcom/freeme/camera/ui/preview/SurfaceViewController;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v2, p1}, Lcom/freeme/camera/ui/preview/PreviewSurfaceView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object p1, p0, Lcom/freeme/camera/ui/preview/SurfaceViewController;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, p1}, Lcom/freeme/camera/ui/preview/PreviewSurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p1, p0, Lcom/freeme/camera/ui/preview/SurfaceViewController;->mPreviewRoot:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iput-object v0, p0, Lcom/freeme/camera/ui/preview/SurfaceViewController;->mPreviewContainer:Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/freeme/camera/ui/preview/SurfaceViewController;->mSurfaceView:Lcom/freeme/camera/ui/preview/PreviewSurfaceView;

    iget-object p1, p0, Lcom/freeme/camera/ui/preview/SurfaceViewController;->mSurfaceView:Lcom/freeme/camera/ui/preview/PreviewSurfaceView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/freeme/camera/ui/preview/PreviewSurfaceView;->setVisibility(I)V

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

    iget-object v0, p0, Lcom/freeme/camera/ui/preview/SurfaceViewController;->mSurfaceChangeCallback:Lcom/freeme/camera/ui/preview/SurfaceViewController$SurfaceChangeCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/freeme/camera/ui/preview/SurfaceViewController$SurfaceChangeCallback;->getBindStatusListener()Lcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/ui/preview/SurfaceViewController;->mSurfaceView:Lcom/freeme/camera/ui/preview/PreviewSurfaceView;

    invoke-virtual {p1}, Lcom/freeme/camera/ui/preview/PreviewSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/ui/preview/SurfaceViewController;->mSurfaceChangeCallback:Lcom/freeme/camera/ui/preview/SurfaceViewController$SurfaceChangeCallback;

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    new-instance p1, Lcom/freeme/camera/ui/preview/SurfaceViewController$SurfaceChangeCallback;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/freeme/camera/ui/preview/SurfaceViewController$SurfaceChangeCallback;-><init>(Lcom/freeme/camera/ui/preview/SurfaceViewController;Lcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;)V

    iput-object p1, p0, Lcom/freeme/camera/ui/preview/SurfaceViewController;->mSurfaceChangeCallback:Lcom/freeme/camera/ui/preview/SurfaceViewController$SurfaceChangeCallback;

    iget-object p1, p0, Lcom/freeme/camera/ui/preview/SurfaceViewController;->mSurfaceView:Lcom/freeme/camera/ui/preview/PreviewSurfaceView;

    invoke-virtual {p1}, Lcom/freeme/camera/ui/preview/PreviewSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/ui/preview/SurfaceViewController;->mSurfaceChangeCallback:Lcom/freeme/camera/ui/preview/SurfaceViewController$SurfaceChangeCallback;

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

    const/4 v0, 0x0

    return-object v0
.end method

.method public onPause()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/ui/preview/SurfaceViewController;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/ui/preview/SurfaceViewController;->mLastPreviewContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/freeme/camera/ui/preview/SurfaceViewController;->mPreviewRoot:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/freeme/camera/ui/preview/SurfaceViewController;->mLastPreviewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/ui/preview/SurfaceViewController;->mSurfaceView:Lcom/freeme/camera/ui/preview/PreviewSurfaceView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/ui/preview/SurfaceViewController;->mPreviewContainer:Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/freeme/camera/ui/preview/SurfaceViewController;->mLastPreviewContainer:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freeme/camera/ui/preview/SurfaceViewController;->mSurfaceView:Lcom/freeme/camera/ui/preview/PreviewSurfaceView;

    iget-object v0, p0, Lcom/freeme/camera/ui/preview/SurfaceViewController;->mSurfaceChangeCallback:Lcom/freeme/camera/ui/preview/SurfaceViewController$SurfaceChangeCallback;

    invoke-virtual {v0}, Lcom/freeme/camera/ui/preview/SurfaceViewController$SurfaceChangeCallback;->getBindStatusListener()Lcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/freeme/camera/ui/preview/SurfaceViewController;->attachSurfaceView(Lcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;)V

    iget-object v0, p0, Lcom/freeme/camera/ui/preview/SurfaceViewController;->mSurfaceView:Lcom/freeme/camera/ui/preview/PreviewSurfaceView;

    invoke-virtual {v0}, Lcom/freeme/camera/ui/preview/PreviewSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget v1, p0, Lcom/freeme/camera/ui/preview/SurfaceViewController;->mPreviewWidth:I

    iget v2, p0, Lcom/freeme/camera/ui/preview/SurfaceViewController;->mPreviewHeight:I

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    iget-object v0, p0, Lcom/freeme/camera/ui/preview/SurfaceViewController;->mSurfaceView:Lcom/freeme/camera/ui/preview/PreviewSurfaceView;

    iget-wide v1, p0, Lcom/freeme/camera/ui/preview/SurfaceViewController;->mPreviewAspectRatio:D

    invoke-virtual {v0, v1, v2}, Lcom/freeme/camera/ui/preview/PreviewSurfaceView;->setAspectRatio(D)V

    :cond_1
    return-void
.end method

.method public removeTopSurface()V
    .locals 5

    iget-object v0, p0, Lcom/freeme/camera/ui/preview/SurfaceViewController;->mFrameLayoutQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    sget-object v1, Lcom/freeme/camera/ui/preview/SurfaceViewController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeTopSurface size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/freeme/camera/ui/preview/SurfaceViewController;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/freeme/camera/ui/preview/SurfaceViewController;->isThirdPartyIntent(Landroid/app/Activity;)Z

    move-result v1

    const/16 v2, 0x8

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/freeme/camera/ui/preview/SurfaceViewController;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v3, 0x7f090162

    invoke-virtual {v1, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v3, p0, Lcom/freeme/camera/ui/preview/SurfaceViewController;->mFrameLayoutQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_1

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/freeme/camera/ui/preview/SurfaceViewController;->mPreviewRoot:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freeme/camera/ui/preview/SurfaceViewController;->mLastPreviewContainer:Landroid/view/ViewGroup;

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/ui/preview/SurfaceViewController;->mSurfaceView:Lcom/freeme/camera/ui/preview/PreviewSurfaceView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/freeme/camera/ui/preview/PreviewSurfaceView;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/preview/SurfaceViewController;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/preview/SurfaceViewController;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public updatePreviewSize(IILcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;)V
    .locals 6

    sget-object v0, Lcom/freeme/camera/ui/preview/SurfaceViewController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

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

    iget v2, p0, Lcom/freeme/camera/ui/preview/SurfaceViewController;->mPreviewWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/freeme/camera/ui/preview/SurfaceViewController;->mPreviewHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ),mIsSurfaceCreated = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/freeme/camera/ui/preview/SurfaceViewController;->mIsSurfaceCreated:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " listener = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget v0, p0, Lcom/freeme/camera/ui/preview/SurfaceViewController;->mPreviewWidth:I

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/freeme/camera/ui/preview/SurfaceViewController;->mPreviewHeight:I

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/freeme/camera/ui/preview/SurfaceViewController;->mSurfaceView:Lcom/freeme/camera/ui/preview/PreviewSurfaceView;

    if-eqz v2, :cond_1

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    int-to-float v1, p1

    int-to-float v3, p2

    div-float/2addr v1, v3

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/freeme/camera/ui/preview/PreviewSurfaceView;->setAlpha(F)V

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v2, v0}, Lcom/freeme/camera/ui/preview/PreviewSurfaceView;->setAlpha(F)V

    :cond_1
    :goto_0
    iget v0, p0, Lcom/freeme/camera/ui/preview/SurfaceViewController;->mPreviewWidth:I

    if-ne v0, p1, :cond_4

    iget v0, p0, Lcom/freeme/camera/ui/preview/SurfaceViewController;->mPreviewHeight:I

    if-ne v0, p2, :cond_4

    iget-object p1, p0, Lcom/freeme/camera/ui/preview/SurfaceViewController;->mSurfaceChangeCallback:Lcom/freeme/camera/ui/preview/SurfaceViewController$SurfaceChangeCallback;

    invoke-virtual {p1}, Lcom/freeme/camera/ui/preview/SurfaceViewController$SurfaceChangeCallback;->getBindStatusListener()Lcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;

    move-result-object p1

    if-eqz p3, :cond_2

    if-eq p3, p1, :cond_2

    iget-object p1, p0, Lcom/freeme/camera/ui/preview/SurfaceViewController;->mSurfaceView:Lcom/freeme/camera/ui/preview/PreviewSurfaceView;

    invoke-virtual {p1}, Lcom/freeme/camera/ui/preview/PreviewSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    iget-object p2, p0, Lcom/freeme/camera/ui/preview/SurfaceViewController;->mSurfaceChangeCallback:Lcom/freeme/camera/ui/preview/SurfaceViewController$SurfaceChangeCallback;

    invoke-interface {p1, p2}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    new-instance p1, Lcom/freeme/camera/ui/preview/SurfaceViewController$SurfaceChangeCallback;

    invoke-direct {p1, p0, p3}, Lcom/freeme/camera/ui/preview/SurfaceViewController$SurfaceChangeCallback;-><init>(Lcom/freeme/camera/ui/preview/SurfaceViewController;Lcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;)V

    iput-object p1, p0, Lcom/freeme/camera/ui/preview/SurfaceViewController;->mSurfaceChangeCallback:Lcom/freeme/camera/ui/preview/SurfaceViewController$SurfaceChangeCallback;

    iget-object p1, p0, Lcom/freeme/camera/ui/preview/SurfaceViewController;->mSurfaceView:Lcom/freeme/camera/ui/preview/PreviewSurfaceView;

    invoke-virtual {p1}, Lcom/freeme/camera/ui/preview/PreviewSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    iget-object p2, p0, Lcom/freeme/camera/ui/preview/SurfaceViewController;->mSurfaceChangeCallback:Lcom/freeme/camera/ui/preview/SurfaceViewController$SurfaceChangeCallback;

    invoke-interface {p1, p2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    :cond_2
    iget-boolean p1, p0, Lcom/freeme/camera/ui/preview/SurfaceViewController;->mIsSurfaceCreated:Z

    if-eqz p1, :cond_3

    if-eqz p3, :cond_3

    iget-object p1, p0, Lcom/freeme/camera/ui/preview/SurfaceViewController;->mSurfaceView:Lcom/freeme/camera/ui/preview/PreviewSurfaceView;

    invoke-virtual {p1}, Lcom/freeme/camera/ui/preview/PreviewSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    iget p2, p0, Lcom/freeme/camera/ui/preview/SurfaceViewController;->mPreviewWidth:I

    iget v0, p0, Lcom/freeme/camera/ui/preview/SurfaceViewController;->mPreviewHeight:I

    invoke-interface {p3, p1, p2, v0}, Lcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;->surfaceAvailable(Ljava/lang/Object;II)V

    :cond_3
    return-void

    :cond_4
    iget-wide v0, p0, Lcom/freeme/camera/ui/preview/SurfaceViewController;->mPreviewAspectRatio:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/freeme/camera/ui/preview/SurfaceViewController;->mPreviewContainer:Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/freeme/camera/ui/preview/SurfaceViewController;->mLastPreviewContainer:Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/freeme/camera/ui/preview/SurfaceViewController;->mSurfaceView:Lcom/freeme/camera/ui/preview/PreviewSurfaceView;

    goto :goto_1

    :cond_5
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-double v2, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-double v4, v0

    div-double/2addr v2, v4

    iget-object v0, p0, Lcom/freeme/camera/ui/preview/SurfaceViewController;->mSurfaceView:Lcom/freeme/camera/ui/preview/PreviewSurfaceView;

    if-eqz v0, :cond_6

    invoke-virtual {v0, v2, v3}, Lcom/freeme/camera/ui/preview/PreviewSurfaceView;->isFullScreenPreview(D)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/freeme/camera/ui/preview/SurfaceViewController;->mPreviewContainer:Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/freeme/camera/ui/preview/SurfaceViewController;->mLastPreviewContainer:Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/freeme/camera/ui/preview/SurfaceViewController;->mSurfaceView:Lcom/freeme/camera/ui/preview/PreviewSurfaceView;

    :cond_6
    :goto_1
    iput p1, p0, Lcom/freeme/camera/ui/preview/SurfaceViewController;->mPreviewWidth:I

    iput p2, p0, Lcom/freeme/camera/ui/preview/SurfaceViewController;->mPreviewHeight:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-double v0, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-double p1, p1

    div-double/2addr v0, p1

    iput-wide v0, p0, Lcom/freeme/camera/ui/preview/SurfaceViewController;->mPreviewAspectRatio:D

    iget-object p1, p0, Lcom/freeme/camera/ui/preview/SurfaceViewController;->mSurfaceView:Lcom/freeme/camera/ui/preview/PreviewSurfaceView;

    if-nez p1, :cond_7

    invoke-direct {p0, p3}, Lcom/freeme/camera/ui/preview/SurfaceViewController;->attachSurfaceView(Lcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;)V

    goto :goto_2

    :cond_7
    invoke-virtual {p1}, Lcom/freeme/camera/ui/preview/PreviewSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    iget-object p2, p0, Lcom/freeme/camera/ui/preview/SurfaceViewController;->mSurfaceChangeCallback:Lcom/freeme/camera/ui/preview/SurfaceViewController$SurfaceChangeCallback;

    invoke-interface {p1, p2}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    new-instance p1, Lcom/freeme/camera/ui/preview/SurfaceViewController$SurfaceChangeCallback;

    invoke-direct {p1, p0, p3}, Lcom/freeme/camera/ui/preview/SurfaceViewController$SurfaceChangeCallback;-><init>(Lcom/freeme/camera/ui/preview/SurfaceViewController;Lcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;)V

    iput-object p1, p0, Lcom/freeme/camera/ui/preview/SurfaceViewController;->mSurfaceChangeCallback:Lcom/freeme/camera/ui/preview/SurfaceViewController$SurfaceChangeCallback;

    iget-object p1, p0, Lcom/freeme/camera/ui/preview/SurfaceViewController;->mSurfaceView:Lcom/freeme/camera/ui/preview/PreviewSurfaceView;

    invoke-virtual {p1}, Lcom/freeme/camera/ui/preview/PreviewSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    iget-object p2, p0, Lcom/freeme/camera/ui/preview/SurfaceViewController;->mSurfaceChangeCallback:Lcom/freeme/camera/ui/preview/SurfaceViewController$SurfaceChangeCallback;

    invoke-interface {p1, p2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    :goto_2
    iget-object p1, p0, Lcom/freeme/camera/ui/preview/SurfaceViewController;->mSurfaceView:Lcom/freeme/camera/ui/preview/PreviewSurfaceView;

    invoke-virtual {p1}, Lcom/freeme/camera/ui/preview/PreviewSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    iget p2, p0, Lcom/freeme/camera/ui/preview/SurfaceViewController;->mPreviewWidth:I

    iget p3, p0, Lcom/freeme/camera/ui/preview/SurfaceViewController;->mPreviewHeight:I

    invoke-interface {p1, p2, p3}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    iget-object p1, p0, Lcom/freeme/camera/ui/preview/SurfaceViewController;->mSurfaceView:Lcom/freeme/camera/ui/preview/PreviewSurfaceView;

    iget-wide p2, p0, Lcom/freeme/camera/ui/preview/SurfaceViewController;->mPreviewAspectRatio:D

    invoke-virtual {p1, p2, p3}, Lcom/freeme/camera/ui/preview/PreviewSurfaceView;->setAspectRatio(D)V

    return-void
.end method
