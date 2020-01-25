.class public Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;
.super Ljava/lang/Object;
.source "PanoramaView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView$MainHandler;,
        Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView$OnCancelButtonClickedListener;,
        Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView$OnSaveButtonClickedListener;
    }
.end annotation


# static fields
.field private static final ANIMATION:Z = true

.field private static final BLOCK_NUM:I = 0x9

.field private static final DIRECTIONS:[I

.field private static final DIRECTIONS_COUNT:I

.field public static final DIRECTION_DOWN:I = 0x3

.field public static final DIRECTION_LEFT:I = 0x1

.field public static final DIRECTION_RIGHT:I = 0x0

.field public static final DIRECTION_UNKNOWN:I = 0x4

.field public static final DIRECTION_UP:I = 0x2

.field private static final MSG_VIEW_INIT:I = 0x0

.field private static final MSG_VIEW_RESET:I = 0x3

.field private static final MSG_VIEW_SHOW:I = 0x2

.field private static final MSG_VIEW_UNINIT:I = 0x1

.field private static final NAVILINE_HIGHT:I = 0x82

.field private static final NAVILINE_MOVING_OFFSET:I = 0x37

.field private static final NAVILINE_POSITION_LEFT:I = 0x105

.field private static final NAVILINE_POSITION_TOP:I = 0x3e8

.field private static final NAVILINE_WIDTH:I = 0x76

.field private static final SHOW_INFO_LENGTH_LONG:I = 0x1388

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

.field private static final TARGET_DISTANCE_HORIZONTAL:I = 0xa0

.field private static final TARGET_DISTANCE_VERTICAL:I = 0x78


# instance fields
.field private mAnimationController:Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;

.field private mApp:Lcom/freeme/camera/common/app/IApp;

.field private mBlockSizes:[I

.field private mCameraId:I

.field private mCancelButton:Lcom/freeme/camera/common/widget/RotateImageView;

.field private mCenterIndicator:Landroid/view/ViewGroup;

.field private mCollimatedArrowsDrawable:Landroid/view/ViewGroup;

.field private mDisplayMatrix:Landroid/graphics/Matrix;

.field private mDisplayOrientation:I

.field private mDistanceHorizontal:I

.field private mDistanceVertical:I

.field private mGuideHint:Lcom/freeme/camera/common/IAppUi$HintInfo;

.field private mHalfArrowHeight:I

.field private mHalfArrowLength:I

.field private mIsCapturing:Z

.field private mMainHandler:Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView$MainHandler;

.field private mNaviLine:Lcom/freeme/camera/feature/mode/panorama/view/NaviLineImageView;

.field private mOnCancleButtonClickedListener:Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView$OnCancelButtonClickedListener;

.field private mOnSaveButtonClickedListener:Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView$OnSaveButtonClickedListener;

.field private mOnSizeChangedListener:Lcom/freeme/camera/common/widget/RotateLayout$OnSizeChangedListener;

.field private mPanoView:Landroid/view/View;

.field private mPanoramaGuidView:Lcom/freeme/camera/common/widget/RotateLayout;

.field private mParentViewGroup:Landroid/view/ViewGroup;

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mProgressIndicator:Lcom/freeme/camera/feature/mode/panorama/view/ProgressIndicator;

.field private mRootView:Landroid/view/View;

.field private mSaveButton:Lcom/freeme/camera/common/widget/RotateImageView;

.field private mScreenProgressLayout:Lcom/freeme/camera/common/widget/RotateLayout;

.field private mSensorDirection:I

.field private mSensorMatrix:[Landroid/graphics/Matrix;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->DIRECTIONS:[I

    sget-object v0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->DIRECTIONS:[I

    array-length v0, v0

    sput v0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->DIRECTIONS_COUNT:I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3
        0x1
        0x2
    .end array-data
.end method

.method public constructor <init>(Lcom/freeme/camera/common/app/IApp;I)V
    .locals 2
    .param p1    # Lcom/freeme/camera/common/app/IApp;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mIsCapturing:Z

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mDisplayMatrix:Landroid/graphics/Matrix;

    const/4 v1, 0x4

    iput v1, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mSensorDirection:I

    iput v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mHalfArrowHeight:I

    iput v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mHalfArrowLength:I

    iput v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mPreviewWidth:I

    iput v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mPreviewHeight:I

    const/16 v1, 0x9

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mBlockSizes:[I

    iput v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mDistanceHorizontal:I

    iput v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mDistanceVertical:I

    iput v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mCameraId:I

    new-instance v0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView$5;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView$5;-><init>(Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mOnSizeChangedListener:Lcom/freeme/camera/common/widget/RotateLayout$OnSizeChangedListener;

    sget-object v0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[PanoramaView]constructor..."

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mApp:Lcom/freeme/camera/common/app/IApp;

    iput p2, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mCameraId:I

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object p1

    invoke-interface {p1}, Lcom/freeme/camera/common/IAppUi;->getModeRootView()Landroid/view/ViewGroup;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mParentViewGroup:Landroid/view/ViewGroup;

    return-void

    :array_0
    .array-data 4
        0x11
        0xf
        0xd
        0xc
        0xb
        0xc
        0xd
        0xf
        0x11
    .end array-data
.end method

.method static synthetic access$000(Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->addGuideView(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;)Lcom/freeme/camera/common/widget/RotateLayout;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mPanoramaGuidView:Lcom/freeme/camera/common/widget/RotateLayout;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;)Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView$OnSaveButtonClickedListener;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mOnSaveButtonClickedListener:Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView$OnSaveButtonClickedListener;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;)Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView$OnCancelButtonClickedListener;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mOnCancleButtonClickedListener:Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView$OnCancelButtonClickedListener;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;I)I
    .locals 0

    iput p1, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mPreviewWidth:I

    return p1
.end method

.method static synthetic access$1302(Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;I)I
    .locals 0

    iput p1, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mPreviewHeight:I

    return p1
.end method

.method static synthetic access$1400(Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;)Lcom/freeme/camera/common/widget/RotateImageView;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mSaveButton:Lcom/freeme/camera/common/widget/RotateImageView;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;)Lcom/freeme/camera/common/widget/RotateImageView;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mCancelButton:Lcom/freeme/camera/common/widget/RotateImageView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mParentViewGroup:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$300(Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;)Landroid/view/View;
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->initView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->doShow()V

    return-void
.end method

.method static synthetic access$500(Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->doUnInit()V

    return-void
.end method

.method static synthetic access$600(Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->doReset()V

    return-void
.end method

.method static synthetic access$700()Lcom/freeme/camera/common/debug/LogUtil$Tag;
    .locals 1

    sget-object v0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-object v0
.end method

.method static synthetic access$800(Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mIsCapturing:Z

    return p0
.end method

.method static synthetic access$900(Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->resetmNaviViewPosition()V

    return-void
.end method

.method private addGuideView(I)V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mParentViewGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mPanoramaGuidView:Lcom/freeme/camera/common/widget/RotateLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b007a

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mParentViewGroup:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090158

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/common/widget/RotateLayout;

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mPanoramaGuidView:Lcom/freeme/camera/common/widget/RotateLayout;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mPanoramaGuidView:Lcom/freeme/camera/common/widget/RotateLayout;

    if-eqz v0, :cond_0

    const v1, 0x7f090157

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/widget/RotateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mParentViewGroup:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mPanoramaGuidView:Lcom/freeme/camera/common/widget/RotateLayout;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private doReset()V
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[reset] mRootView = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mRootView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",mPanoView = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mPanoView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mRootView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mIsCapturing:Z

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->resetmNaviViewPosition()V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mSaveButton:Lcom/freeme/camera/common/widget/RotateImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/widget/RotateImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mCancelButton:Lcom/freeme/camera/common/widget/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/widget/RotateImageView;->setVisibility(I)V

    return-void
.end method

.method private doShow()V
    .locals 4

    sget-object v0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[doShow]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mRootView:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->initView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mRootView:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/freeme/camera/common/utils/CameraUtil;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    iget v1, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mCameraId:I

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v2}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/freeme/camera/common/utils/CameraUtil;->getDisplayOrientation(IILandroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    const/16 v2, 0x8

    if-eqz v1, :cond_2

    if-ne v2, v1, :cond_1

    goto :goto_0

    :cond_1
    iput v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mDisplayOrientation:I

    goto :goto_1

    :cond_2
    :goto_0
    add-int/lit8 v0, v0, 0x5a

    iput v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mDisplayOrientation:I

    :goto_1
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getGSensorOrientation()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->setSaveCancelButtonOrientation(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mSaveButton:Lcom/freeme/camera/common/widget/RotateImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/widget/RotateImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mCancelButton:Lcom/freeme/camera/common/widget/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/widget/RotateImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    const/4 v3, 0x4

    invoke-interface {v0, v3}, Lcom/freeme/camera/common/IAppUi;->applyAllUIVisibility(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    invoke-interface {v0, v2, v1}, Lcom/freeme/camera/common/IAppUi;->setUIVisibility(II)V

    return-void
.end method

.method private doUnInit()V
    .locals 2

    sget-object v0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[dounInit]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mParentViewGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mRootView:Landroid/view/View;

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mParentViewGroup:Landroid/view/ViewGroup;

    :cond_0
    return-void
.end method

.method private getArrowHL()V
    .locals 2

    iget v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mHalfArrowHeight:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mNaviLine:Lcom/freeme/camera/feature/mode/panorama/view/NaviLineImageView;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/mode/panorama/view/NaviLineImageView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mNaviLine:Lcom/freeme/camera/feature/mode/panorama/view/NaviLineImageView;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/mode/panorama/view/NaviLineImageView;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_0

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mHalfArrowLength:I

    shr-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mHalfArrowHeight:I

    goto :goto_0

    :cond_0
    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mHalfArrowHeight:I

    shr-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mHalfArrowLength:I

    :cond_1
    :goto_0
    return-void
.end method

.method private initView()Landroid/view/View;
    .locals 4

    sget-object v0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[initView]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mParentViewGroup:Landroid/view/ViewGroup;

    const v2, 0x7f0b0077

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090148

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mRootView:Landroid/view/View;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mRootView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->initializeViewManager()V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method private initializeViewManager()V
    .locals 4

    sget-object v0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[initializeViewManager]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mRootView:Landroid/view/View;

    const v1, 0x7f090155

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mPanoView:Landroid/view/View;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mRootView:Landroid/view/View;

    const v1, 0x7f09013e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/common/widget/RotateLayout;

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mScreenProgressLayout:Lcom/freeme/camera/common/widget/RotateLayout;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mPanoView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mRootView:Landroid/view/View;

    const v1, 0x7f09005a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/common/widget/RotateImageView;

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mCancelButton:Lcom/freeme/camera/common/widget/RotateImageView;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mRootView:Landroid/view/View;

    const v1, 0x7f09005b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/common/widget/RotateImageView;

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mSaveButton:Lcom/freeme/camera/common/widget/RotateImageView;

    const/16 v0, 0xa0

    iput v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mDistanceHorizontal:I

    const/16 v0, 0x78

    iput v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mDistanceVertical:I

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mRootView:Landroid/view/View;

    const v1, 0x7f090134

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/feature/mode/panorama/view/NaviLineImageView;

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mNaviLine:Lcom/freeme/camera/feature/mode/panorama/view/NaviLineImageView;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mRootView:Landroid/view/View;

    const v1, 0x7f0901c5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mCollimatedArrowsDrawable:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->resetmNaviViewPosition()V

    new-instance v0, Lcom/freeme/camera/feature/mode/panorama/view/ProgressIndicator;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mBlockSizes:[I

    const/16 v3, 0x9

    invoke-direct {v0, v1, v3, v2}, Lcom/freeme/camera/feature/mode/panorama/view/ProgressIndicator;-><init>(Landroid/app/Activity;I[I)V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mProgressIndicator:Lcom/freeme/camera/feature/mode/panorama/view/ProgressIndicator;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mProgressIndicator:Lcom/freeme/camera/feature/mode/panorama/view/ProgressIndicator;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/mode/panorama/view/ProgressIndicator;->setVisibility(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mScreenProgressLayout:Lcom/freeme/camera/common/widget/RotateLayout;

    iget v1, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mDisplayOrientation:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/freeme/camera/common/widget/RotateLayout;->setOrientation(IZ)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mScreenProgressLayout:Lcom/freeme/camera/common/widget/RotateLayout;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mOnSizeChangedListener:Lcom/freeme/camera/common/widget/RotateLayout$OnSizeChangedListener;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/widget/RotateLayout;->setOnSizeChangedListener(Lcom/freeme/camera/common/widget/RotateLayout$OnSizeChangedListener;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mSaveButton:Lcom/freeme/camera/common/widget/RotateImageView;

    new-instance v1, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView$3;

    invoke-direct {v1, p0}, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView$3;-><init>(Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;)V

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/widget/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mCancelButton:Lcom/freeme/camera/common/widget/RotateImageView;

    new-instance v1, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView$4;

    invoke-direct {v1, p0}, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView$4;-><init>(Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;)V

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/widget/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private prepareSensorMatrix()V
    .locals 6

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/Matrix;

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mSensorMatrix:[Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mSensorMatrix:[Landroid/graphics/Matrix;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mSensorMatrix:[Landroid/graphics/Matrix;

    aget-object v0, v0, v2

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mSensorMatrix:[Landroid/graphics/Matrix;

    aget-object v0, v0, v2

    iget v2, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mDistanceVertical:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mSensorMatrix:[Landroid/graphics/Matrix;

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    const/4 v4, 0x0

    aput-object v2, v0, v4

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mSensorMatrix:[Landroid/graphics/Matrix;

    aget-object v0, v0, v4

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mSensorMatrix:[Landroid/graphics/Matrix;

    aget-object v0, v0, v4

    iget v2, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mDistanceHorizontal:I

    const/4 v4, 0x2

    mul-int/2addr v2, v4

    int-to-float v2, v2

    iget v5, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mDistanceVertical:I

    int-to-float v5, v5

    invoke-virtual {v0, v2, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mSensorMatrix:[Landroid/graphics/Matrix;

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    aput-object v2, v0, v4

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mSensorMatrix:[Landroid/graphics/Matrix;

    aget-object v0, v0, v4

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mSensorMatrix:[Landroid/graphics/Matrix;

    aget-object v0, v0, v4

    iget v2, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mDistanceHorizontal:I

    int-to-float v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mSensorMatrix:[Landroid/graphics/Matrix;

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    const/4 v3, 0x3

    aput-object v2, v0, v3

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mSensorMatrix:[Landroid/graphics/Matrix;

    aget-object v0, v0, v3

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mSensorMatrix:[Landroid/graphics/Matrix;

    aget-object v0, v0, v3

    iget v1, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mDistanceHorizontal:I

    int-to-float v1, v1

    iget v2, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mDistanceVertical:I

    mul-int/2addr v2, v4

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method private prepareTransformMatrix(I)V
    .locals 5

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    iget p1, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mPreviewWidth:I

    shr-int/lit8 p1, p1, 0x1

    iget v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mPreviewHeight:I

    shr-int/lit8 v0, v0, 0x1

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->getArrowHL()V

    int-to-float p1, p1

    iget v1, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mHalfArrowLength:I

    int-to-float v2, v1

    sub-float/2addr p1, v2

    int-to-float v0, v0

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mDistanceHorizontal:I

    int-to-float v2, v2

    div-float v2, p1, v2

    iget v3, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mDistanceVertical:I

    int-to-float v3, v3

    div-float v3, v0, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget v1, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mDisplayOrientation:I

    if-eqz v1, :cond_3

    const/16 v2, 0x5a

    const/4 v3, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    if-eq v1, v2, :cond_2

    const/16 v2, 0xb4

    if-eq v1, v2, :cond_1

    const/16 v0, 0x10e

    if-eq v1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mDisplayMatrix:Landroid/graphics/Matrix;

    neg-float p1, p1

    mul-float/2addr p1, v4

    invoke-virtual {v0, p1, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mDisplayMatrix:Landroid/graphics/Matrix;

    const/high16 v0, -0x3d4c0000    # -90.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mDisplayMatrix:Landroid/graphics/Matrix;

    neg-float p1, p1

    mul-float/2addr p1, v4

    neg-float v0, v0

    mul-float/2addr v0, v4

    invoke-virtual {v1, p1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mDisplayMatrix:Landroid/graphics/Matrix;

    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mDisplayMatrix:Landroid/graphics/Matrix;

    neg-float v0, v0

    mul-float/2addr v0, v4

    invoke-virtual {p1, v3, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mDisplayMatrix:Landroid/graphics/Matrix;

    const/high16 v0, 0x42b40000    # 90.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mHalfArrowLength:I

    int-to-float v1, v0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method private resetmNaviViewPosition()V
    .locals 5

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mNaviLine:Lcom/freeme/camera/feature/mode/panorama/view/NaviLineImageView;

    if-eqz v0, :cond_0

    const/16 v1, 0x105

    const/16 v2, 0x3e8

    const/16 v3, 0x17b

    const/16 v4, 0x46a

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/freeme/camera/feature/mode/panorama/view/NaviLineImageView;->setLayoutPosition(IIII)V

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mCollimatedArrowsDrawable:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    :cond_1
    return-void
.end method

.method private setOrientationIndicator(I)V
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setOrientationIndicator]direction = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mCollimatedArrowsDrawable:Landroid/view/ViewGroup;

    check-cast p1, Lcom/freeme/camera/common/widget/Rotatable;

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lcom/freeme/camera/common/widget/Rotatable;->setOrientation(IZ)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mCenterIndicator:Landroid/view/ViewGroup;

    check-cast p1, Lcom/freeme/camera/common/widget/Rotatable;

    invoke-interface {p1, v1, v0}, Lcom/freeme/camera/common/widget/Rotatable;->setOrientation(IZ)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mNaviLine:Lcom/freeme/camera/feature/mode/panorama/view/NaviLineImageView;

    const/high16 v0, -0x3d4c0000    # -90.0f

    invoke-virtual {p1, v0}, Lcom/freeme/camera/feature/mode/panorama/view/NaviLineImageView;->setRotation(F)V

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mCollimatedArrowsDrawable:Landroid/view/ViewGroup;

    check-cast p1, Lcom/freeme/camera/common/widget/Rotatable;

    const/16 v1, 0xb4

    invoke-interface {p1, v1, v0}, Lcom/freeme/camera/common/widget/Rotatable;->setOrientation(IZ)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mCenterIndicator:Landroid/view/ViewGroup;

    check-cast p1, Lcom/freeme/camera/common/widget/Rotatable;

    invoke-interface {p1, v1, v0}, Lcom/freeme/camera/common/widget/Rotatable;->setOrientation(IZ)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mNaviLine:Lcom/freeme/camera/feature/mode/panorama/view/NaviLineImageView;

    const/high16 v0, 0x42b40000    # 90.0f

    invoke-virtual {p1, v0}, Lcom/freeme/camera/feature/mode/panorama/view/NaviLineImageView;->setRotation(F)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mCollimatedArrowsDrawable:Landroid/view/ViewGroup;

    check-cast p1, Lcom/freeme/camera/common/widget/Rotatable;

    const/16 v1, 0x5a

    invoke-interface {p1, v1, v0}, Lcom/freeme/camera/common/widget/Rotatable;->setOrientation(IZ)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mCenterIndicator:Landroid/view/ViewGroup;

    check-cast p1, Lcom/freeme/camera/common/widget/Rotatable;

    invoke-interface {p1, v1, v0}, Lcom/freeme/camera/common/widget/Rotatable;->setOrientation(IZ)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mNaviLine:Lcom/freeme/camera/feature/mode/panorama/view/NaviLineImageView;

    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {p1, v0}, Lcom/freeme/camera/feature/mode/panorama/view/NaviLineImageView;->setRotation(F)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mCollimatedArrowsDrawable:Landroid/view/ViewGroup;

    check-cast p1, Lcom/freeme/camera/common/widget/Rotatable;

    const/16 v1, 0x10e

    invoke-interface {p1, v1, v0}, Lcom/freeme/camera/common/widget/Rotatable;->setOrientation(IZ)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mCenterIndicator:Landroid/view/ViewGroup;

    check-cast p1, Lcom/freeme/camera/common/widget/Rotatable;

    invoke-interface {p1, v1, v0}, Lcom/freeme/camera/common/widget/Rotatable;->setOrientation(IZ)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mNaviLine:Lcom/freeme/camera/feature/mode/panorama/view/NaviLineImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/freeme/camera/feature/mode/panorama/view/NaviLineImageView;->setRotation(F)V

    :cond_3
    :goto_0
    return-void
.end method

.method private setSaveCancelButtonOrientation(I)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView$6;

    invoke-direct {v1, p0, p1}, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView$6;-><init>(Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setViewsForNext(I)V
    .locals 1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mNaviLine:Lcom/freeme/camera/feature/mode/panorama/view/NaviLineImageView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/freeme/camera/feature/mode/panorama/view/NaviLineImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mCollimatedArrowsDrawable:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private showCaptureView()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mCenterIndicator:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mPanoView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mProgressIndicator:Lcom/freeme/camera/feature/mode/panorama/view/ProgressIndicator;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/mode/panorama/view/ProgressIndicator;->setProgress(I)V

    return-void
.end method

.method private startCenterAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mCollimatedArrowsDrawable:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mAnimationController:Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;->startCenterAnimation()V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mCenterIndicator:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method private updateDirection(I)V
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateDirection]mDisplayOrientation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mDisplayOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",mSensorDirection ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mSensorDirection:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", direction = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget v2, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->DIRECTIONS_COUNT:I

    if-ge v1, v2, :cond_1

    sget-object v2, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->DIRECTIONS:[I

    aget v2, v2, v1

    if-ne v2, p1, :cond_0

    move v0, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget v1, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mDisplayOrientation:I

    if-eqz v1, :cond_5

    const/16 v2, 0x5a

    if-eq v1, v2, :cond_4

    const/16 v2, 0xb4

    if-eq v1, v2, :cond_3

    const/16 v2, 0x10e

    if-eq v1, v2, :cond_2

    goto :goto_2

    :cond_2
    sget-object p1, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->DIRECTIONS:[I

    add-int/lit8 v0, v0, -0x1

    sget v1, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->DIRECTIONS_COUNT:I

    add-int/2addr v0, v1

    rem-int/2addr v0, v1

    aget p1, p1, v0

    goto :goto_2

    :cond_3
    sget-object p1, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->DIRECTIONS:[I

    add-int/lit8 v0, v0, 0x2

    sget v1, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->DIRECTIONS_COUNT:I

    rem-int/2addr v0, v1

    aget p1, p1, v0

    goto :goto_2

    :cond_4
    sget-object p1, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->DIRECTIONS:[I

    add-int/lit8 v0, v0, 0x1

    sget v1, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->DIRECTIONS_COUNT:I

    rem-int/2addr v0, v1

    aget p1, p1, v0

    :cond_5
    :goto_2
    iget v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mSensorDirection:I

    if-eq v0, p1, :cond_6

    iput p1, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mSensorDirection:I

    :cond_6
    return-void
.end method

.method private updateMovingUI(IIZ)V
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateMovingUI] xy:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", direction:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", shown:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const/high16 p3, -0x10000

    and-int/2addr p3, p1

    shr-int/lit8 p3, p3, 0x10

    int-to-short p3, p3

    const v0, 0xffff

    and-int/2addr p1, v0

    int-to-short p1, p1

    if-lez p3, :cond_0

    if-lez p1, :cond_0

    invoke-direct {p0, p3, p1, p2}, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->updateUIShowingMatrix(III)V

    :cond_0
    return-void
.end method

.method private updateUIShowingMatrix(III)V
    .locals 2

    sget-object p3, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[updateUIShowingMatrix] x: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", y: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mIsCapturing:Z

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mNaviLine:Lcom/freeme/camera/feature/mode/panorama/view/NaviLineImageView;

    add-int/lit16 p1, p1, 0x3e8

    add-int/lit8 v0, p1, -0x76

    add-int/lit8 v0, v0, -0x37

    add-int/lit16 v1, p2, 0x82

    add-int/lit8 p1, p1, -0x37

    invoke-virtual {p3, p2, v0, v1, p1}, Lcom/freeme/camera/feature/mode/panorama/view/NaviLineImageView;->setLayoutPosition(IIII)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mCollimatedArrowsDrawable:Landroid/view/ViewGroup;

    add-int/lit16 p3, p2, -0x105

    add-int/lit8 p3, p3, -0x9

    neg-int p2, p2

    add-int/lit16 p2, p2, -0x105

    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0, p2, v0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    :cond_0
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 2

    sget-object v0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[hide]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->applyAllUIVisibility(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/ui/CameraAppUI;

    iget-object v0, v0, Lcom/freeme/camera/ui/CameraAppUI;->mModePickerManager:Lcom/freeme/camera/ui/modepicker/ModePickerManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/ui/CameraAppUI;

    iget-object v0, v0, Lcom/freeme/camera/ui/CameraAppUI;->mModePickerManager:Lcom/freeme/camera/ui/modepicker/ModePickerManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/freeme/camera/ui/modepicker/ModePickerManager;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public hideGuideView()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView$2;

    invoke-direct {v1, p0}, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView$2;-><init>(Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public init(Lcom/freeme/camera/common/app/IApp;)V
    .locals 2

    sget-object v0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[init]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    new-instance v0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView$MainHandler;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView$MainHandler;-><init>(Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mMainHandler:Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView$MainHandler;

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mMainHandler:Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView$MainHandler;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView$MainHandler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[reset] mRootView = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mRootView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",mPanoView = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mPanoView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mMainHandler:Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView$MainHandler;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView$MainHandler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public setCancelButtonClickedListener(Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView$OnCancelButtonClickedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mOnCancleButtonClickedListener:Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView$OnCancelButtonClickedListener;

    return-void
.end method

.method public setSaveButtonClickedListener(Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView$OnSaveButtonClickedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mOnSaveButtonClickedListener:Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView$OnSaveButtonClickedListener;

    return-void
.end method

.method public show()V
    .locals 2

    sget-object v0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[show]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mMainHandler:Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView$MainHandler;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView$MainHandler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public showGuideView(I)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    :pswitch_0
    const p1, 0x7f0f010f

    goto :goto_0

    :pswitch_1
    const p1, 0x7f0f0112

    :goto_0
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView$1;

    invoke-direct {v1, p0, p1}, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView$1;-><init>(Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public unInit()V
    .locals 2

    sget-object v0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[unInit]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mMainHandler:Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView$MainHandler;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView$MainHandler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public varargs update(I[Ljava/lang/Object;)V
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[update] type ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput-boolean v1, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mIsCapturing:Z

    goto :goto_0

    :pswitch_1
    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mIsCapturing:Z

    goto :goto_0

    :pswitch_2
    aget-object p1, p2, v1

    if-eqz p1, :cond_0

    aget-object p1, p2, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    aget-object v2, p2, p1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->mRootView:Landroid/view/View;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    move-result v2

    if-eqz v2, :cond_0

    aget-object v1, p2, v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aget-object v0, p2, v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aget-object p1, p2, p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-direct {p0, v1, v0, p1}, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->updateMovingUI(IIZ)V

    goto :goto_0

    :pswitch_3
    aget-object p1, p2, v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    :cond_0
    :goto_0
    :pswitch_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
