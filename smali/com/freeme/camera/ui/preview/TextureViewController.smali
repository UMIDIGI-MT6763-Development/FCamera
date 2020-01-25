.class Lcom/freeme/camera/ui/preview/TextureViewController;
.super Ljava/lang/Object;
.source "TextureViewController.java"

# interfaces
.implements Lcom/freeme/camera/ui/preview/IController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/ui/preview/TextureViewController$SurfaceChangeCallback;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

.field private static final WAIT_DONE:I = 0x1


# instance fields
.field private mApp:Lcom/freeme/camera/common/app/IApp;

.field private mAspectRatio:F

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

.field private mSurfaceChangeCallback:Lcom/freeme/camera/ui/preview/TextureViewController$SurfaceChangeCallback;

.field private mTextureView:Lcom/freeme/camera/ui/preview/PreviewTextureView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/ui/preview/TextureViewController;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/ui/preview/TextureViewController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/freeme/camera/common/app/IApp;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/freeme/camera/ui/preview/TextureViewController;->mPreviewWidth:I

    iput v0, p0, Lcom/freeme/camera/ui/preview/TextureViewController;->mPreviewHeight:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/freeme/camera/ui/preview/TextureViewController;->mPreviewAspectRatio:D

    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v1, p0, Lcom/freeme/camera/ui/preview/TextureViewController;->mFrameLayoutQueue:Ljava/util/concurrent/BlockingQueue;

    iput-boolean v0, p0, Lcom/freeme/camera/ui/preview/TextureViewController;->mIsSurfaceCreated:Z

    const v0, 0x3faaaaab

    iput v0, p0, Lcom/freeme/camera/ui/preview/TextureViewController;->mAspectRatio:F

    iput-object p1, p0, Lcom/freeme/camera/ui/preview/TextureViewController;->mApp:Lcom/freeme/camera/common/app/IApp;

    iget-object p1, p0, Lcom/freeme/camera/ui/preview/TextureViewController;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const v0, 0x7f090163

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/freeme/camera/ui/preview/TextureViewController;->mPreviewRoot:Landroid/view/ViewGroup;

    return-void
.end method

.method static synthetic access$002(Lcom/freeme/camera/ui/preview/TextureViewController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/freeme/camera/ui/preview/TextureViewController;->mIsSurfaceCreated:Z

    return p1
.end method

.method static synthetic access$100(Lcom/freeme/camera/ui/preview/TextureViewController;)I
    .locals 0

    iget p0, p0, Lcom/freeme/camera/ui/preview/TextureViewController;->mPreviewWidth:I

    return p0
.end method

.method static synthetic access$200(Lcom/freeme/camera/ui/preview/TextureViewController;)I
    .locals 0

    iget p0, p0, Lcom/freeme/camera/ui/preview/TextureViewController;->mPreviewHeight:I

    return p0
.end method

.method static synthetic access$300()Lcom/freeme/camera/common/debug/LogUtil$Tag;
    .locals 1

    sget-object v0, Lcom/freeme/camera/ui/preview/TextureViewController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-object v0
.end method

.method private attachTextureView(Lcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;)V
    .locals 5

    iget-object v0, p0, Lcom/freeme/camera/ui/preview/TextureViewController;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0b0099

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v2, 0x7f090167

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/freeme/camera/ui/preview/PreviewTextureView;

    iget-object v4, p0, Lcom/freeme/camera/ui/preview/TextureViewController;->mLastPreviewContainer:Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/TextureView;

    iget-object v4, p0, Lcom/freeme/camera/ui/preview/TextureViewController;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v2, v4}, Landroid/view/TextureView;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    invoke-virtual {v2, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    invoke-virtual {v3, v1}, Lcom/freeme/camera/ui/preview/PreviewTextureView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v4, p0, Lcom/freeme/camera/ui/preview/TextureViewController;->mSurfaceChangeCallback:Lcom/freeme/camera/ui/preview/TextureViewController$SurfaceChangeCallback;

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/freeme/camera/ui/preview/TextureViewController$SurfaceChangeCallback;->onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z

    :cond_0
    iget-object v2, p0, Lcom/freeme/camera/ui/preview/TextureViewController;->mLastPreviewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->bringToFront()V

    :cond_1
    new-instance v2, Lcom/freeme/camera/ui/preview/TextureViewController$SurfaceChangeCallback;

    invoke-direct {v2, p0, p1}, Lcom/freeme/camera/ui/preview/TextureViewController$SurfaceChangeCallback;-><init>(Lcom/freeme/camera/ui/preview/TextureViewController;Lcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;)V

    iput-object v2, p0, Lcom/freeme/camera/ui/preview/TextureViewController;->mSurfaceChangeCallback:Lcom/freeme/camera/ui/preview/TextureViewController$SurfaceChangeCallback;

    iget-object p1, p0, Lcom/freeme/camera/ui/preview/TextureViewController;->mSurfaceChangeCallback:Lcom/freeme/camera/ui/preview/TextureViewController$SurfaceChangeCallback;

    invoke-virtual {v3, p1}, Lcom/freeme/camera/ui/preview/PreviewTextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    iget-object p1, p0, Lcom/freeme/camera/ui/preview/TextureViewController;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v3, p1}, Lcom/freeme/camera/ui/preview/PreviewTextureView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object p1, p0, Lcom/freeme/camera/ui/preview/TextureViewController;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, p1}, Lcom/freeme/camera/ui/preview/PreviewTextureView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p1, p0, Lcom/freeme/camera/ui/preview/TextureViewController;->mPreviewRoot:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iput-object v3, p0, Lcom/freeme/camera/ui/preview/TextureViewController;->mTextureView:Lcom/freeme/camera/ui/preview/PreviewTextureView;

    iput-object v0, p0, Lcom/freeme/camera/ui/preview/TextureViewController;->mPreviewContainer:Landroid/view/ViewGroup;

    iget-object p1, p0, Lcom/freeme/camera/ui/preview/TextureViewController;->mLastPreviewContainer:Landroid/view/ViewGroup;

    if-eqz p1, :cond_2

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p1, p0, Lcom/freeme/camera/ui/preview/TextureViewController;->mPreviewRoot:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/freeme/camera/ui/preview/TextureViewController;->mLastPreviewContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iput-object v1, p0, Lcom/freeme/camera/ui/preview/TextureViewController;->mLastPreviewContainer:Landroid/view/ViewGroup;

    :cond_2
    return-void
.end method

.method private getTextureArea()Landroid/graphics/RectF;
    .locals 5

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/freeme/camera/ui/preview/TextureViewController;->mTextureView:Lcom/freeme/camera/ui/preview/PreviewTextureView;

    invoke-virtual {v2}, Lcom/freeme/camera/ui/preview/PreviewTextureView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/freeme/camera/ui/preview/TextureViewController;->mTextureView:Lcom/freeme/camera/ui/preview/PreviewTextureView;

    invoke-virtual {v3}, Lcom/freeme/camera/ui/preview/PreviewTextureView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v2, p0, Lcom/freeme/camera/ui/preview/TextureViewController;->mTextureView:Lcom/freeme/camera/ui/preview/PreviewTextureView;

    invoke-virtual {v2, v0}, Lcom/freeme/camera/ui/preview/PreviewTextureView;->getTransform(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    return-object v1
.end method


# virtual methods
.method public clearPreviewStatusListener(Lcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;)V
    .locals 0

    return-void
.end method

.method public getPreviewBitmap(I)Landroid/graphics/Bitmap;
    .locals 10

    iget-object v0, p0, Lcom/freeme/camera/ui/preview/TextureViewController;->mTextureView:Lcom/freeme/camera/ui/preview/PreviewTextureView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-direct {p0}, Lcom/freeme/camera/ui/preview/TextureViewController;->getTextureArea()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    float-to-int v2, v2

    div-int v6, v2, p1

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    float-to-int v0, v0

    div-int v7, v0, p1

    iget-object p1, p0, Lcom/freeme/camera/ui/preview/TextureViewController;->mTextureView:Lcom/freeme/camera/ui/preview/PreviewTextureView;

    invoke-virtual {p1, v6, v7}, Lcom/freeme/camera/ui/preview/PreviewTextureView;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v3

    if-lez v6, :cond_1

    if-lez v7, :cond_1

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object p1, p0, Lcom/freeme/camera/ui/preview/TextureViewController;->mTextureView:Lcom/freeme/camera/ui/preview/PreviewTextureView;

    invoke-virtual {p1, v1}, Lcom/freeme/camera/ui/preview/PreviewTextureView;->getTransform(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/ui/preview/TextureViewController;->mTextureView:Lcom/freeme/camera/ui/preview/PreviewTextureView;

    return-object v0
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public removeTopSurface()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/ui/preview/TextureViewController;->mTextureView:Lcom/freeme/camera/ui/preview/PreviewTextureView;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/freeme/camera/ui/preview/PreviewTextureView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/ui/preview/TextureViewController;->mTextureView:Lcom/freeme/camera/ui/preview/PreviewTextureView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/freeme/camera/ui/preview/PreviewTextureView;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/preview/TextureViewController;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/preview/TextureViewController;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public updatePreviewSize(IILcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;)V
    .locals 6

    sget-object v0, Lcom/freeme/camera/ui/preview/TextureViewController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

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

    iget v2, p0, Lcom/freeme/camera/ui/preview/TextureViewController;->mPreviewWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/freeme/camera/ui/preview/TextureViewController;->mPreviewHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ),mIsSurfaceCreated = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/freeme/camera/ui/preview/TextureViewController;->mIsSurfaceCreated:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " listener = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget v0, p0, Lcom/freeme/camera/ui/preview/TextureViewController;->mPreviewWidth:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/freeme/camera/ui/preview/TextureViewController;->mPreviewHeight:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/ui/preview/TextureViewController;->mTextureView:Lcom/freeme/camera/ui/preview/PreviewTextureView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/freeme/camera/ui/preview/PreviewTextureView;->setVisibility(I)V

    :cond_0
    iget v0, p0, Lcom/freeme/camera/ui/preview/TextureViewController;->mPreviewWidth:I

    const/4 v1, 0x0

    if-ne v0, p1, :cond_3

    iget v0, p0, Lcom/freeme/camera/ui/preview/TextureViewController;->mPreviewHeight:I

    if-ne v0, p2, :cond_3

    iget-object p1, p0, Lcom/freeme/camera/ui/preview/TextureViewController;->mTextureView:Lcom/freeme/camera/ui/preview/PreviewTextureView;

    iget-object p2, p0, Lcom/freeme/camera/ui/preview/TextureViewController;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p1, p2}, Lcom/freeme/camera/ui/preview/PreviewTextureView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object p1, p0, Lcom/freeme/camera/ui/preview/TextureViewController;->mTextureView:Lcom/freeme/camera/ui/preview/PreviewTextureView;

    invoke-virtual {p1}, Lcom/freeme/camera/ui/preview/PreviewTextureView;->requestLayout()V

    iget-object p1, p0, Lcom/freeme/camera/ui/preview/TextureViewController;->mSurfaceChangeCallback:Lcom/freeme/camera/ui/preview/TextureViewController$SurfaceChangeCallback;

    invoke-virtual {p1}, Lcom/freeme/camera/ui/preview/TextureViewController$SurfaceChangeCallback;->getBindStatusListener()Lcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;

    move-result-object p1

    if-eqz p3, :cond_1

    if-eq p3, p1, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/ui/preview/TextureViewController;->mTextureView:Lcom/freeme/camera/ui/preview/PreviewTextureView;

    invoke-virtual {p1, v1}, Lcom/freeme/camera/ui/preview/PreviewTextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    new-instance p1, Lcom/freeme/camera/ui/preview/TextureViewController$SurfaceChangeCallback;

    invoke-direct {p1, p0, p3}, Lcom/freeme/camera/ui/preview/TextureViewController$SurfaceChangeCallback;-><init>(Lcom/freeme/camera/ui/preview/TextureViewController;Lcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;)V

    iput-object p1, p0, Lcom/freeme/camera/ui/preview/TextureViewController;->mSurfaceChangeCallback:Lcom/freeme/camera/ui/preview/TextureViewController$SurfaceChangeCallback;

    iget-object p1, p0, Lcom/freeme/camera/ui/preview/TextureViewController;->mTextureView:Lcom/freeme/camera/ui/preview/PreviewTextureView;

    iget-object p2, p0, Lcom/freeme/camera/ui/preview/TextureViewController;->mSurfaceChangeCallback:Lcom/freeme/camera/ui/preview/TextureViewController$SurfaceChangeCallback;

    invoke-virtual {p1, p2}, Lcom/freeme/camera/ui/preview/PreviewTextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    :cond_1
    iget-boolean p1, p0, Lcom/freeme/camera/ui/preview/TextureViewController;->mIsSurfaceCreated:Z

    if-eqz p1, :cond_2

    if-eqz p3, :cond_2

    iget-object p1, p0, Lcom/freeme/camera/ui/preview/TextureViewController;->mTextureView:Lcom/freeme/camera/ui/preview/PreviewTextureView;

    invoke-virtual {p1}, Lcom/freeme/camera/ui/preview/PreviewTextureView;->isAvailable()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/freeme/camera/ui/preview/TextureViewController;->mTextureView:Lcom/freeme/camera/ui/preview/PreviewTextureView;

    invoke-virtual {p1}, Lcom/freeme/camera/ui/preview/PreviewTextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p1

    iget p2, p0, Lcom/freeme/camera/ui/preview/TextureViewController;->mPreviewWidth:I

    iget v0, p0, Lcom/freeme/camera/ui/preview/TextureViewController;->mPreviewHeight:I

    invoke-virtual {p1, p2, v0}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    iget-object p1, p0, Lcom/freeme/camera/ui/preview/TextureViewController;->mTextureView:Lcom/freeme/camera/ui/preview/PreviewTextureView;

    invoke-virtual {p1}, Lcom/freeme/camera/ui/preview/PreviewTextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p1

    iget p2, p0, Lcom/freeme/camera/ui/preview/TextureViewController;->mPreviewWidth:I

    iget v0, p0, Lcom/freeme/camera/ui/preview/TextureViewController;->mPreviewHeight:I

    invoke-interface {p3, p1, p2, v0}, Lcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;->surfaceAvailable(Ljava/lang/Object;II)V

    :cond_2
    return-void

    :cond_3
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-double v2, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-double v4, v0

    div-double/2addr v2, v4

    iget-wide v4, p0, Lcom/freeme/camera/ui/preview/TextureViewController;->mPreviewAspectRatio:D

    cmpl-double v0, v2, v4

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/freeme/camera/ui/preview/TextureViewController;->mTextureView:Lcom/freeme/camera/ui/preview/PreviewTextureView;

    iget-object v2, p0, Lcom/freeme/camera/ui/preview/TextureViewController;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v2}, Lcom/freeme/camera/ui/preview/PreviewTextureView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v0, p0, Lcom/freeme/camera/ui/preview/TextureViewController;->mTextureView:Lcom/freeme/camera/ui/preview/PreviewTextureView;

    invoke-virtual {v0}, Lcom/freeme/camera/ui/preview/PreviewTextureView;->requestLayout()V

    iput p1, p0, Lcom/freeme/camera/ui/preview/TextureViewController;->mPreviewWidth:I

    iput p2, p0, Lcom/freeme/camera/ui/preview/TextureViewController;->mPreviewHeight:I

    iget-object p1, p0, Lcom/freeme/camera/ui/preview/TextureViewController;->mTextureView:Lcom/freeme/camera/ui/preview/PreviewTextureView;

    invoke-virtual {p1}, Lcom/freeme/camera/ui/preview/PreviewTextureView;->isAvailable()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/freeme/camera/ui/preview/TextureViewController;->mTextureView:Lcom/freeme/camera/ui/preview/PreviewTextureView;

    invoke-virtual {p1}, Lcom/freeme/camera/ui/preview/PreviewTextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p1

    iget p2, p0, Lcom/freeme/camera/ui/preview/TextureViewController;->mPreviewWidth:I

    iget v0, p0, Lcom/freeme/camera/ui/preview/TextureViewController;->mPreviewHeight:I

    invoke-virtual {p1, p2, v0}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    :cond_4
    if-eqz p3, :cond_5

    iget-object p1, p0, Lcom/freeme/camera/ui/preview/TextureViewController;->mTextureView:Lcom/freeme/camera/ui/preview/PreviewTextureView;

    invoke-virtual {p1}, Lcom/freeme/camera/ui/preview/PreviewTextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p1

    iget p2, p0, Lcom/freeme/camera/ui/preview/TextureViewController;->mPreviewWidth:I

    iget v0, p0, Lcom/freeme/camera/ui/preview/TextureViewController;->mPreviewHeight:I

    invoke-interface {p3, p1, p2, v0}, Lcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;->surfaceAvailable(Ljava/lang/Object;II)V

    iget-object p1, p0, Lcom/freeme/camera/ui/preview/TextureViewController;->mSurfaceChangeCallback:Lcom/freeme/camera/ui/preview/TextureViewController$SurfaceChangeCallback;

    invoke-virtual {p1}, Lcom/freeme/camera/ui/preview/TextureViewController$SurfaceChangeCallback;->getBindStatusListener()Lcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;

    move-result-object p1

    if-eq p3, p1, :cond_5

    iget-object p1, p0, Lcom/freeme/camera/ui/preview/TextureViewController;->mTextureView:Lcom/freeme/camera/ui/preview/PreviewTextureView;

    invoke-virtual {p1, v1}, Lcom/freeme/camera/ui/preview/PreviewTextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    new-instance p1, Lcom/freeme/camera/ui/preview/TextureViewController$SurfaceChangeCallback;

    invoke-direct {p1, p0, p3}, Lcom/freeme/camera/ui/preview/TextureViewController$SurfaceChangeCallback;-><init>(Lcom/freeme/camera/ui/preview/TextureViewController;Lcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;)V

    iput-object p1, p0, Lcom/freeme/camera/ui/preview/TextureViewController;->mSurfaceChangeCallback:Lcom/freeme/camera/ui/preview/TextureViewController$SurfaceChangeCallback;

    iget-object p1, p0, Lcom/freeme/camera/ui/preview/TextureViewController;->mTextureView:Lcom/freeme/camera/ui/preview/PreviewTextureView;

    iget-object p2, p0, Lcom/freeme/camera/ui/preview/TextureViewController;->mSurfaceChangeCallback:Lcom/freeme/camera/ui/preview/TextureViewController$SurfaceChangeCallback;

    invoke-virtual {p1, p2}, Lcom/freeme/camera/ui/preview/PreviewTextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    :cond_5
    return-void

    :cond_6
    const-wide/16 v2, 0x0

    cmpl-double v0, v4, v2

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/freeme/camera/ui/preview/TextureViewController;->mPreviewContainer:Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/freeme/camera/ui/preview/TextureViewController;->mLastPreviewContainer:Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/freeme/camera/ui/preview/TextureViewController;->mTextureView:Lcom/freeme/camera/ui/preview/PreviewTextureView;

    :cond_7
    iput p1, p0, Lcom/freeme/camera/ui/preview/TextureViewController;->mPreviewWidth:I

    iput p2, p0, Lcom/freeme/camera/ui/preview/TextureViewController;->mPreviewHeight:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-double v2, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-double p1, p1

    div-double/2addr v2, p1

    iput-wide v2, p0, Lcom/freeme/camera/ui/preview/TextureViewController;->mPreviewAspectRatio:D

    iget-object p1, p0, Lcom/freeme/camera/ui/preview/TextureViewController;->mTextureView:Lcom/freeme/camera/ui/preview/PreviewTextureView;

    if-nez p1, :cond_8

    invoke-direct {p0, p3}, Lcom/freeme/camera/ui/preview/TextureViewController;->attachTextureView(Lcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;)V

    goto :goto_0

    :cond_8
    iget-object p1, p0, Lcom/freeme/camera/ui/preview/TextureViewController;->mSurfaceChangeCallback:Lcom/freeme/camera/ui/preview/TextureViewController$SurfaceChangeCallback;

    invoke-virtual {p1}, Lcom/freeme/camera/ui/preview/TextureViewController$SurfaceChangeCallback;->getBindStatusListener()Lcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;

    move-result-object p1

    if-eqz p3, :cond_9

    if-eq p3, p1, :cond_9

    iget-object p1, p0, Lcom/freeme/camera/ui/preview/TextureViewController;->mTextureView:Lcom/freeme/camera/ui/preview/PreviewTextureView;

    invoke-virtual {p1, v1}, Lcom/freeme/camera/ui/preview/PreviewTextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    new-instance p1, Lcom/freeme/camera/ui/preview/TextureViewController$SurfaceChangeCallback;

    invoke-direct {p1, p0, p3}, Lcom/freeme/camera/ui/preview/TextureViewController$SurfaceChangeCallback;-><init>(Lcom/freeme/camera/ui/preview/TextureViewController;Lcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;)V

    iput-object p1, p0, Lcom/freeme/camera/ui/preview/TextureViewController;->mSurfaceChangeCallback:Lcom/freeme/camera/ui/preview/TextureViewController$SurfaceChangeCallback;

    iget-object p1, p0, Lcom/freeme/camera/ui/preview/TextureViewController;->mTextureView:Lcom/freeme/camera/ui/preview/PreviewTextureView;

    iget-object p2, p0, Lcom/freeme/camera/ui/preview/TextureViewController;->mSurfaceChangeCallback:Lcom/freeme/camera/ui/preview/TextureViewController$SurfaceChangeCallback;

    invoke-virtual {p1, p2}, Lcom/freeme/camera/ui/preview/PreviewTextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    iget-object p1, p0, Lcom/freeme/camera/ui/preview/TextureViewController;->mTextureView:Lcom/freeme/camera/ui/preview/PreviewTextureView;

    invoke-virtual {p1}, Lcom/freeme/camera/ui/preview/PreviewTextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p1

    iget p2, p0, Lcom/freeme/camera/ui/preview/TextureViewController;->mPreviewWidth:I

    iget v0, p0, Lcom/freeme/camera/ui/preview/TextureViewController;->mPreviewHeight:I

    invoke-interface {p3, p1, p2, v0}, Lcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;->surfaceAvailable(Ljava/lang/Object;II)V

    :cond_9
    :goto_0
    iget-object p1, p0, Lcom/freeme/camera/ui/preview/TextureViewController;->mTextureView:Lcom/freeme/camera/ui/preview/PreviewTextureView;

    iget-wide p2, p0, Lcom/freeme/camera/ui/preview/TextureViewController;->mPreviewAspectRatio:D

    invoke-virtual {p1, p2, p3}, Lcom/freeme/camera/ui/preview/PreviewTextureView;->setAspectRatio(D)V

    return-void
.end method
