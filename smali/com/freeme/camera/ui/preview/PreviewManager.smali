.class public Lcom/freeme/camera/ui/preview/PreviewManager;
.super Ljava/lang/Object;
.source "PreviewManager.java"


# static fields
.field private static final DEFAULT_APP_VERSION:I = 0x2

.field private static final DEFAULT_SURFACEVIEW_VALUE:I = 0x0

.field private static final SURFACEVIEW_ENABLED_VALUE:I = 0x1

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private isTextureView:Z

.field private mApp:Lcom/freeme/camera/common/app/IApp;

.field private mFaceBeautyPreviewRootParent:Landroid/view/View;

.field private mFacePreviewFrameLayout:Lcom/freeme/camera/common/widget/PreviewFrameLayout;

.field private mGridPreviewFrameLayout:Lcom/freeme/camera/common/widget/PreviewFrameLayout;

.field private mOnLayoutChangeCallback:Landroid/view/View$OnLayoutChangeListener;

.field private mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mOnTouchListenerImpl:Landroid/view/View$OnTouchListener;

.field private mPreviewArea:Landroid/graphics/RectF;

.field private final mPreviewAreaChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/freeme/camera/common/IAppUiListener$OnPreviewAreaChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviewController:Lcom/freeme/camera/ui/preview/IController;

.field private mPreviewFrameLayout:Lcom/freeme/camera/common/widget/PreviewFrameLayout;

.field private mPreviewHeight:I

.field private mPreviewRatio:I

.field private mPreviewRoot:Landroid/view/View;

.field private mPreviewWidth:I

.field private mScreenRatio:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/ui/preview/PreviewManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/ui/preview/PreviewManager;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/freeme/camera/common/app/IApp;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/freeme/camera/ui/preview/PreviewManager;->mPreviewWidth:I

    iput v0, p0, Lcom/freeme/camera/ui/preview/PreviewManager;->mPreviewHeight:I

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/freeme/camera/ui/preview/PreviewManager;->mPreviewArea:Landroid/graphics/RectF;

    iput v0, p0, Lcom/freeme/camera/ui/preview/PreviewManager;->mPreviewRatio:I

    iput v0, p0, Lcom/freeme/camera/ui/preview/PreviewManager;->mScreenRatio:I

    iput-boolean v0, p0, Lcom/freeme/camera/ui/preview/PreviewManager;->isTextureView:Z

    new-instance v1, Lcom/freeme/camera/ui/preview/PreviewManager$1;

    invoke-direct {v1, p0}, Lcom/freeme/camera/ui/preview/PreviewManager$1;-><init>(Lcom/freeme/camera/ui/preview/PreviewManager;)V

    iput-object v1, p0, Lcom/freeme/camera/ui/preview/PreviewManager;->mOnLayoutChangeCallback:Landroid/view/View$OnLayoutChangeListener;

    new-instance v1, Lcom/freeme/camera/ui/preview/PreviewManager$2;

    invoke-direct {v1, p0}, Lcom/freeme/camera/ui/preview/PreviewManager$2;-><init>(Lcom/freeme/camera/ui/preview/PreviewManager;)V

    iput-object v1, p0, Lcom/freeme/camera/ui/preview/PreviewManager;->mOnTouchListenerImpl:Landroid/view/View$OnTouchListener;

    iput-object p1, p0, Lcom/freeme/camera/ui/preview/PreviewManager;->mApp:Lcom/freeme/camera/common/app/IApp;

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/freeme/camera/ui/preview/PreviewManager;->mPreviewAreaChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p0, Lcom/freeme/camera/ui/preview/PreviewManager;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f090163

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/freeme/camera/ui/preview/PreviewManager;->mPreviewRoot:Landroid/view/View;

    const-string v1, "vendor.debug.surface.enabled"

    invoke-static {v1, v0}, Lcom/mediatek/camera/portability/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "ro.vendor.mtk_camera_app_version"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/mediatek/camera/portability/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    sget-object v2, Lcom/freeme/camera/ui/preview/PreviewManager;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enabledValue = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " appVersion "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/freeme/camera/ui/preview/PreviewManager;->isTextureView:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/freeme/camera/ui/preview/TextureViewController;

    invoke-direct {v0, p1}, Lcom/freeme/camera/ui/preview/TextureViewController;-><init>(Lcom/freeme/camera/common/app/IApp;)V

    iput-object v0, p0, Lcom/freeme/camera/ui/preview/PreviewManager;->mPreviewController:Lcom/freeme/camera/ui/preview/IController;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;

    invoke-direct {v0, p1}, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;-><init>(Lcom/freeme/camera/common/app/IApp;)V

    iput-object v0, p0, Lcom/freeme/camera/ui/preview/PreviewManager;->mPreviewController:Lcom/freeme/camera/ui/preview/IController;

    :goto_0
    iget-object p1, p0, Lcom/freeme/camera/ui/preview/PreviewManager;->mPreviewController:Lcom/freeme/camera/ui/preview/IController;

    iget-object v0, p0, Lcom/freeme/camera/ui/preview/PreviewManager;->mOnLayoutChangeCallback:Landroid/view/View$OnLayoutChangeListener;

    invoke-interface {p1, v0}, Lcom/freeme/camera/ui/preview/IController;->setOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object p1, p0, Lcom/freeme/camera/ui/preview/PreviewManager;->mPreviewController:Lcom/freeme/camera/ui/preview/IController;

    iget-object v0, p0, Lcom/freeme/camera/ui/preview/PreviewManager;->mOnTouchListenerImpl:Landroid/view/View$OnTouchListener;

    invoke-interface {p1, v0}, Lcom/freeme/camera/ui/preview/IController;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public constructor <init>(Lcom/freeme/camera/common/app/IApp;Z)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/freeme/camera/ui/preview/PreviewManager;->mPreviewWidth:I

    iput v0, p0, Lcom/freeme/camera/ui/preview/PreviewManager;->mPreviewHeight:I

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/freeme/camera/ui/preview/PreviewManager;->mPreviewArea:Landroid/graphics/RectF;

    iput v0, p0, Lcom/freeme/camera/ui/preview/PreviewManager;->mPreviewRatio:I

    iput v0, p0, Lcom/freeme/camera/ui/preview/PreviewManager;->mScreenRatio:I

    iput-boolean v0, p0, Lcom/freeme/camera/ui/preview/PreviewManager;->isTextureView:Z

    new-instance v1, Lcom/freeme/camera/ui/preview/PreviewManager$1;

    invoke-direct {v1, p0}, Lcom/freeme/camera/ui/preview/PreviewManager$1;-><init>(Lcom/freeme/camera/ui/preview/PreviewManager;)V

    iput-object v1, p0, Lcom/freeme/camera/ui/preview/PreviewManager;->mOnLayoutChangeCallback:Landroid/view/View$OnLayoutChangeListener;

    new-instance v1, Lcom/freeme/camera/ui/preview/PreviewManager$2;

    invoke-direct {v1, p0}, Lcom/freeme/camera/ui/preview/PreviewManager$2;-><init>(Lcom/freeme/camera/ui/preview/PreviewManager;)V

    iput-object v1, p0, Lcom/freeme/camera/ui/preview/PreviewManager;->mOnTouchListenerImpl:Landroid/view/View$OnTouchListener;

    iput-object p1, p0, Lcom/freeme/camera/ui/preview/PreviewManager;->mApp:Lcom/freeme/camera/common/app/IApp;

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/freeme/camera/ui/preview/PreviewManager;->mPreviewAreaChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p0, Lcom/freeme/camera/ui/preview/PreviewManager;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f090166

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/freeme/camera/common/widget/PreviewFrameLayout;

    iput-object v1, p0, Lcom/freeme/camera/ui/preview/PreviewManager;->mPreviewFrameLayout:Lcom/freeme/camera/common/widget/PreviewFrameLayout;

    iget-object v1, p0, Lcom/freeme/camera/ui/preview/PreviewManager;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0900e5

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/freeme/camera/common/widget/PreviewFrameLayout;

    iput-object v1, p0, Lcom/freeme/camera/ui/preview/PreviewManager;->mGridPreviewFrameLayout:Lcom/freeme/camera/common/widget/PreviewFrameLayout;

    iget-object v1, p0, Lcom/freeme/camera/ui/preview/PreviewManager;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0900b9

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/freeme/camera/common/widget/PreviewFrameLayout;

    iput-object v1, p0, Lcom/freeme/camera/ui/preview/PreviewManager;->mFacePreviewFrameLayout:Lcom/freeme/camera/common/widget/PreviewFrameLayout;

    iget-object v1, p0, Lcom/freeme/camera/ui/preview/PreviewManager;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f090163

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/freeme/camera/ui/preview/PreviewManager;->mPreviewRoot:Landroid/view/View;

    iget-object v1, p0, Lcom/freeme/camera/ui/preview/PreviewManager;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f090164

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/freeme/camera/ui/preview/PreviewManager;->mFaceBeautyPreviewRootParent:Landroid/view/View;

    const-string v1, "vendor.debug.surface.enabled"

    invoke-static {v1, v0}, Lcom/mediatek/camera/portability/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "ro.vendor.mtk_camera_app_version"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/mediatek/camera/portability/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    sget-object v2, Lcom/freeme/camera/ui/preview/PreviewManager;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enabledValue = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " appVersion "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    new-instance p2, Lcom/freeme/camera/ui/preview/TextureViewController;

    invoke-direct {p2, p1}, Lcom/freeme/camera/ui/preview/TextureViewController;-><init>(Lcom/freeme/camera/common/app/IApp;)V

    iput-object p2, p0, Lcom/freeme/camera/ui/preview/PreviewManager;->mPreviewController:Lcom/freeme/camera/ui/preview/IController;

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;

    invoke-direct {p2, p1}, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;-><init>(Lcom/freeme/camera/common/app/IApp;)V

    iput-object p2, p0, Lcom/freeme/camera/ui/preview/PreviewManager;->mPreviewController:Lcom/freeme/camera/ui/preview/IController;

    :goto_0
    iget-object p1, p0, Lcom/freeme/camera/ui/preview/PreviewManager;->mPreviewController:Lcom/freeme/camera/ui/preview/IController;

    iget-object p2, p0, Lcom/freeme/camera/ui/preview/PreviewManager;->mOnLayoutChangeCallback:Landroid/view/View$OnLayoutChangeListener;

    invoke-interface {p1, p2}, Lcom/freeme/camera/ui/preview/IController;->setOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object p1, p0, Lcom/freeme/camera/ui/preview/PreviewManager;->mPreviewController:Lcom/freeme/camera/ui/preview/IController;

    iget-object p2, p0, Lcom/freeme/camera/ui/preview/PreviewManager;->mOnTouchListenerImpl:Landroid/view/View$OnTouchListener;

    invoke-interface {p1, p2}, Lcom/freeme/camera/ui/preview/IController;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/freeme/camera/ui/preview/PreviewManager;)Landroid/graphics/RectF;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/ui/preview/PreviewManager;->mPreviewArea:Landroid/graphics/RectF;

    return-object p0
.end method

.method static synthetic access$100(Lcom/freeme/camera/ui/preview/PreviewManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/ui/preview/PreviewManager;->notifyPreviewAreaChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/freeme/camera/ui/preview/PreviewManager;)Lcom/freeme/camera/common/widget/PreviewFrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/ui/preview/PreviewManager;->mPreviewFrameLayout:Lcom/freeme/camera/common/widget/PreviewFrameLayout;

    return-object p0
.end method

.method static synthetic access$300(Lcom/freeme/camera/ui/preview/PreviewManager;)Lcom/freeme/camera/common/widget/PreviewFrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/ui/preview/PreviewManager;->mGridPreviewFrameLayout:Lcom/freeme/camera/common/widget/PreviewFrameLayout;

    return-object p0
.end method

.method static synthetic access$400(Lcom/freeme/camera/ui/preview/PreviewManager;)Lcom/freeme/camera/common/widget/PreviewFrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/ui/preview/PreviewManager;->mFacePreviewFrameLayout:Lcom/freeme/camera/common/widget/PreviewFrameLayout;

    return-object p0
.end method

.method static synthetic access$500(Lcom/freeme/camera/ui/preview/PreviewManager;)Landroid/view/View$OnTouchListener;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/ui/preview/PreviewManager;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    return-object p0
.end method

.method private notifyPreviewAreaChanged()V
    .locals 6

    iget-object v0, p0, Lcom/freeme/camera/ui/preview/PreviewManager;->mPreviewAreaChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/freeme/camera/common/IAppUiListener$OnPreviewAreaChangedListener;

    iget-object v2, p0, Lcom/freeme/camera/ui/preview/PreviewManager;->mPreviewArea:Landroid/graphics/RectF;

    new-instance v3, Lcom/freeme/camera/common/utils/Size;

    iget v4, p0, Lcom/freeme/camera/ui/preview/PreviewManager;->mPreviewWidth:I

    iget v5, p0, Lcom/freeme/camera/ui/preview/PreviewManager;->mPreviewHeight:I

    invoke-direct {v3, v4, v5}, Lcom/freeme/camera/common/utils/Size;-><init>(II)V

    invoke-interface {v1, v2, v3}, Lcom/freeme/camera/common/IAppUiListener$OnPreviewAreaChangedListener;->onPreviewAreaChanged(Landroid/graphics/RectF;Lcom/freeme/camera/common/utils/Size;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public clearPreviewStatusListener(Lcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/ui/preview/PreviewManager;->mPreviewController:Lcom/freeme/camera/ui/preview/IController;

    invoke-interface {v0, p1}, Lcom/freeme/camera/ui/preview/IController;->clearPreviewStatusListener(Lcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;)V

    return-void
.end method

.method public getFacePreviewFrameLayout()Lcom/freeme/camera/common/widget/PreviewFrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/ui/preview/PreviewManager;->mFacePreviewFrameLayout:Lcom/freeme/camera/common/widget/PreviewFrameLayout;

    return-object v0
.end method

.method public getGridPreviewFrameLayout()Lcom/freeme/camera/common/widget/PreviewFrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/ui/preview/PreviewManager;->mGridPreviewFrameLayout:Lcom/freeme/camera/common/widget/PreviewFrameLayout;

    return-object v0
.end method

.method public getPreviewArea()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/ui/preview/PreviewManager;->mPreviewArea:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getPreviewBitmap(I)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/ui/preview/PreviewManager;->mPreviewController:Lcom/freeme/camera/ui/preview/IController;

    invoke-interface {v0, p1}, Lcom/freeme/camera/ui/preview/IController;->getPreviewBitmap(I)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getPreviewFrameLayout()Lcom/freeme/camera/common/widget/PreviewFrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/ui/preview/PreviewManager;->mPreviewFrameLayout:Lcom/freeme/camera/common/widget/PreviewFrameLayout;

    return-object v0
.end method

.method public getPreviewRadio()I
    .locals 1

    iget v0, p0, Lcom/freeme/camera/ui/preview/PreviewManager;->mPreviewRatio:I

    return v0
.end method

.method public getPreviewRoot()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/ui/preview/PreviewManager;->mPreviewRoot:Landroid/view/View;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/ui/preview/PreviewManager;->mPreviewController:Lcom/freeme/camera/ui/preview/IController;

    invoke-interface {v0}, Lcom/freeme/camera/ui/preview/IController;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/ui/preview/PreviewManager;->mPreviewController:Lcom/freeme/camera/ui/preview/IController;

    invoke-interface {v0}, Lcom/freeme/camera/ui/preview/IController;->onPause()V

    return-void
.end method

.method public registerPreviewAreaChangedListener(Lcom/freeme/camera/common/IAppUiListener$OnPreviewAreaChangedListener;)V
    .locals 4

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/ui/preview/PreviewManager;->mPreviewAreaChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/ui/preview/PreviewManager;->mPreviewAreaChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/freeme/camera/ui/preview/PreviewManager;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/ui/preview/PreviewManager;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/ui/preview/PreviewManager;->mPreviewArea:Landroid/graphics/RectF;

    new-instance v1, Lcom/freeme/camera/common/utils/Size;

    iget v2, p0, Lcom/freeme/camera/ui/preview/PreviewManager;->mPreviewWidth:I

    iget v3, p0, Lcom/freeme/camera/ui/preview/PreviewManager;->mPreviewHeight:I

    invoke-direct {v1, v2, v3}, Lcom/freeme/camera/common/utils/Size;-><init>(II)V

    invoke-interface {p1, v0, v1}, Lcom/freeme/camera/common/IAppUiListener$OnPreviewAreaChangedListener;->onPreviewAreaChanged(Landroid/graphics/RectF;Lcom/freeme/camera/common/utils/Size;)V

    :cond_1
    return-void
.end method

.method public removeLayoutChangeListener()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/ui/preview/PreviewManager;->mPreviewController:Lcom/freeme/camera/ui/preview/IController;

    invoke-interface {v0}, Lcom/freeme/camera/ui/preview/IController;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/ui/preview/PreviewManager;->mPreviewController:Lcom/freeme/camera/ui/preview/IController;

    invoke-interface {v0}, Lcom/freeme/camera/ui/preview/IController;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/ui/preview/PreviewManager;->mOnLayoutChangeCallback:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_0
    return-void
.end method

.method public removeTopSurface()V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/ui/preview/PreviewManager;->mPreviewController:Lcom/freeme/camera/ui/preview/IController;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/freeme/camera/ui/preview/IController;->removeTopSurface()V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/ui/preview/PreviewManager;->mPreviewController:Lcom/freeme/camera/ui/preview/IController;

    invoke-interface {v0, p1}, Lcom/freeme/camera/ui/preview/IController;->setEnabled(Z)V

    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/preview/PreviewManager;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public unregisterPreviewAreaChangedListener(Lcom/freeme/camera/common/IAppUiListener$OnPreviewAreaChangedListener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/ui/preview/PreviewManager;->mPreviewAreaChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/ui/preview/PreviewManager;->mPreviewAreaChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public updatePreviewSize(IILcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;)V
    .locals 7

    sget-object v0, Lcom/freeme/camera/ui/preview/PreviewManager;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

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

    iget v2, p0, Lcom/freeme/camera/ui/preview/PreviewManager;->mPreviewWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/freeme/camera/ui/preview/PreviewManager;->mPreviewHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iput p1, p0, Lcom/freeme/camera/ui/preview/PreviewManager;->mPreviewWidth:I

    iput p2, p0, Lcom/freeme/camera/ui/preview/PreviewManager;->mPreviewHeight:I

    iget-object v0, p0, Lcom/freeme/camera/ui/preview/PreviewManager;->mPreviewRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {p1, p2}, Lcom/freeme/camera/common/utils/CameraUtil;->determineRatio(II)I

    move-result v1

    iput v1, p0, Lcom/freeme/camera/ui/preview/PreviewManager;->mPreviewRatio:I

    iget-object v1, p0, Lcom/freeme/camera/ui/preview/PreviewManager;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-static {v1}, Lcom/freeme/camera/common/utils/CameraUtil;->geScreenRatio(Lcom/freeme/camera/common/app/IApp;)I

    move-result v1

    iput v1, p0, Lcom/freeme/camera/ui/preview/PreviewManager;->mScreenRatio:I

    iget v1, p0, Lcom/freeme/camera/ui/preview/PreviewManager;->mScreenRatio:I

    const/4 v2, 0x1

    const/4 v3, 0x6

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/freeme/camera/ui/preview/PreviewManager;->mPreviewRatio:I

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto/16 :goto_3

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/freeme/camera/ui/preview/PreviewManager;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070139

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto/16 :goto_3

    :cond_2
    const/16 v6, 0x8

    if-ne v1, v6, :cond_7

    iget v1, p0, Lcom/freeme/camera/ui/preview/PreviewManager;->mPreviewRatio:I

    if-eq v1, v4, :cond_6

    if-ne v1, v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x7

    if-ne v1, v3, :cond_4

    iget-object v1, p0, Lcom/freeme/camera/ui/preview/PreviewManager;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07013a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto/16 :goto_3

    :cond_4
    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/freeme/camera/ui/preview/PreviewManager;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07013b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto/16 :goto_3

    :cond_5
    if-ne v1, v6, :cond_10

    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto/16 :goto_3

    :cond_6
    :goto_1
    iget-object v1, p0, Lcom/freeme/camera/ui/preview/PreviewManager;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07013c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto/16 :goto_3

    :cond_7
    iget v1, p0, Lcom/freeme/camera/ui/preview/PreviewManager;->mPreviewRatio:I

    if-eq v1, v4, :cond_d

    if-ne v1, v3, :cond_8

    goto :goto_2

    :cond_8
    const/4 v2, 0x5

    if-ne v1, v2, :cond_9

    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto/16 :goto_3

    :cond_9
    const/16 v2, 0x9

    if-ne v1, v2, :cond_a

    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto/16 :goto_3

    :cond_a
    invoke-static {}, Lcom/freeme/camera/common/utils/CameraUtil;->hasNotch()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/freeme/camera/ui/preview/PreviewManager;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07011d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto/16 :goto_3

    :cond_b
    invoke-static {}, Lcom/freeme/camera/common/utils/CameraUtil;->hasWaterDrop()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/freeme/camera/ui/preview/PreviewManager;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070122

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_3

    :cond_c
    iget-object v1, p0, Lcom/freeme/camera/ui/preview/PreviewManager;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070120

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_3

    :cond_d
    :goto_2
    invoke-static {}, Lcom/freeme/camera/common/utils/CameraUtil;->hasNotch()Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/freeme/camera/ui/preview/PreviewManager;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07011e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_3

    :cond_e
    invoke-static {}, Lcom/freeme/camera/common/utils/CameraUtil;->hasWaterDrop()Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/freeme/camera/ui/preview/PreviewManager;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070123

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_3

    :cond_f
    iget-object v1, p0, Lcom/freeme/camera/ui/preview/PreviewManager;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070121

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :cond_10
    :goto_3
    iget-object v1, p0, Lcom/freeme/camera/ui/preview/PreviewManager;->mPreviewRoot:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/freeme/camera/ui/preview/PreviewManager;->mFaceBeautyPreviewRootParent:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/freeme/camera/ui/preview/PreviewManager;->mPreviewFrameLayout:Lcom/freeme/camera/common/widget/PreviewFrameLayout;

    invoke-virtual {v1, v0}, Lcom/freeme/camera/common/widget/PreviewFrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/freeme/camera/ui/preview/PreviewManager;->mGridPreviewFrameLayout:Lcom/freeme/camera/common/widget/PreviewFrameLayout;

    invoke-virtual {v1, v0}, Lcom/freeme/camera/common/widget/PreviewFrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/freeme/camera/ui/preview/PreviewManager;->mFacePreviewFrameLayout:Lcom/freeme/camera/common/widget/PreviewFrameLayout;

    invoke-virtual {v1, v0}, Lcom/freeme/camera/common/widget/PreviewFrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/freeme/camera/ui/preview/PreviewManager;->mPreviewController:Lcom/freeme/camera/ui/preview/IController;

    if-eqz v0, :cond_11

    invoke-interface {v0, p1, p2, p3}, Lcom/freeme/camera/ui/preview/IController;->updatePreviewSize(IILcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;)V

    :cond_11
    return-void
.end method
