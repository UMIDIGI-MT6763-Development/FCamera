.class public Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;
.super Lcom/freeme/camera/common/setting/SettingBase;
.source "MatrixDisplay.java"

# interfaces
.implements Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$ViewStateCallback;
.implements Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$ItemClickListener;
.implements Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler$EffectAvailableListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay$MainHandler;
    }
.end annotation


# static fields
.field private static final DELAY_MSG_REMOVE_GRID_MS:I = 0xbb8

.field private static final KEY_COLOR_EFFECT:Ljava/lang/String; = "key_color_effect"

.field private static final KEY_PIP_PHOTO_MODE:Ljava/lang/String; = "com.freeme.camera.feature.mode.pip.photo.PipPhotoMode"

.field private static final KEY_PIP_VIDEO_MODE:Ljava/lang/String; = "com.freeme.camera.feature.mode.pip.video.PipVideoMode"

.field private static final MATRIX_DISPLAY_SHOW_KEY:Ljava/lang/String; = "key_matrix_display_show"

.field private static final MAX_SUPPORTED_PREVIEW_SIZE:[I

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

.field private static final TIME_DELAY_HIDE_DISPLAY_LAYOUT_MS:I = 0x1f4

.field private static final VALUE_NONE:Ljava/lang/String; = "none"


# instance fields
.field private mBackPressedListener:Lcom/freeme/camera/common/app/IApp$BackPressedListener;

.field private mDisplayConfig:Lcom/freeme/camera/feature/setting/matrixdisplay/IMatrixDisplayConfig;

.field private mDisplayConfigLock:Ljava/lang/Object;

.field private mEffectEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mEffectEntryValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field public mEntryViewClickListener:Landroid/view/View$OnClickListener;

.field private mImageView:Landroid/widget/ImageView;

.field private mLayoutHeight:I

.field private mLayoutWidth:I

.field private mMainHandler:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay$MainHandler;

.field private mMatrixDisplayHandler:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;

.field private mMatrixDisplayResponder:Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;

.field private mMatrixDisplayViewController:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;

.field private mModeDeviceState:Ljava/lang/String;

.field private mModeKey:Ljava/lang/String;

.field private mOrientation:I

.field private mOrientationListener:Lcom/freeme/camera/common/app/IApp$OnOrientationChangeListener;

.field private mPreviewAreaChangedListener:Lcom/freeme/camera/common/IAppUiListener$OnPreviewAreaChangedListener;

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mSelectedEffect:Ljava/lang/String;

.field private mSupportedEffects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportedPreviewSize:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mViewIsShowing:Z

.field private mViewManager:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->MAX_SUPPORTED_PREVIEW_SIZE:[I

    return-void

    :array_0
    .array-data 4
        0x7e900
        0xe1000
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/freeme/camera/common/setting/SettingBase;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mDisplayConfigLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mViewIsShowing:Z

    new-instance v0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay$6;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay$6;-><init>(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mEntryViewClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay$7;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay$7;-><init>(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mOrientationListener:Lcom/freeme/camera/common/app/IApp$OnOrientationChangeListener;

    new-instance v0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay$8;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay$8;-><init>(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mPreviewAreaChangedListener:Lcom/freeme/camera/common/IAppUiListener$OnPreviewAreaChangedListener;

    new-instance v0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay$9;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay$9;-><init>(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mBackPressedListener:Lcom/freeme/camera/common/app/IApp$BackPressedListener;

    return-void
.end method

.method static synthetic access$000(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;)Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mViewManager:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;

    return-object p0
.end method

.method static synthetic access$002(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;)Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mViewManager:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;

    return-object p1
.end method

.method static synthetic access$100(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mViewIsShowing:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;)Lcom/freeme/camera/feature/setting/matrixdisplay/IMatrixDisplayConfig;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mDisplayConfig:Lcom/freeme/camera/feature/setting/matrixdisplay/IMatrixDisplayConfig;

    return-object p0
.end method

.method static synthetic access$102(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mViewIsShowing:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mSupportedPreviewSize:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mSupportedEffects:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mSupportedEffects:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mModeDeviceState:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->initializeViewManager()V

    return-void
.end method

.method static synthetic access$1500(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;)Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mMatrixDisplayViewController:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->enterMatrixDisplay()V

    return-void
.end method

.method static synthetic access$1700(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;)I
    .locals 0

    iget p0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mOrientation:I

    return p0
.end method

.method static synthetic access$1702(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;I)I
    .locals 0

    iput p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mOrientation:I

    return p1
.end method

.method static synthetic access$1800(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;)I
    .locals 0

    iget p0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mLayoutWidth:I

    return p0
.end method

.method static synthetic access$1802(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;I)I
    .locals 0

    iput p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mLayoutWidth:I

    return p1
.end method

.method static synthetic access$1900(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;)I
    .locals 0

    iget p0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mLayoutHeight:I

    return p0
.end method

.method static synthetic access$1902(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;I)I
    .locals 0

    iput p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mLayoutHeight:I

    return p1
.end method

.method static synthetic access$200(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;)Lcom/freeme/camera/common/IAppUi;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->exitMatrixDisplay(ZI)V

    return-void
.end method

.method static synthetic access$2100(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;)Lcom/freeme/camera/common/IAppUi;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;)Lcom/freeme/camera/common/IAppUi;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    return-object p0
.end method

.method static synthetic access$300(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;)Lcom/freeme/camera/common/IAppUi;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    return-object p0
.end method

.method static synthetic access$400(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mImageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mSelectedEffect:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$502(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mSelectedEffect:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;)Lcom/freeme/camera/common/relation/DataStore;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    return-object p0
.end method

.method static synthetic access$700(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mModeKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800()Lcom/freeme/camera/common/debug/LogUtil$Tag;
    .locals 1

    sget-object v0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-object v0
.end method

.method static synthetic access$900(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mDisplayConfigLock:Ljava/lang/Object;

    return-object p0
.end method

.method private computeSuitablePreviewSize()V
    .locals 14

    iget v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mLayoutWidth:I

    iget v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mLayoutHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-double v0, v0

    iget v2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mLayoutWidth:I

    iget v3, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mLayoutHeight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v0, v2

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_0
    sget-object v6, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->MAX_SUPPORTED_PREVIEW_SIZE:[I

    array-length v6, v6

    if-ge v3, v6, :cond_6

    move v6, v5

    move v5, v4

    move v4, v2

    :goto_1
    iget-object v7, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mSupportedPreviewSize:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_4

    iget-object v7, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mSupportedPreviewSize:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const/16 v8, 0x78

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    invoke-virtual {v7, v2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    int-to-double v10, v9

    int-to-double v12, v7

    div-double/2addr v10, v12

    rem-int/lit8 v8, v9, 0x20

    if-eqz v8, :cond_0

    goto :goto_2

    :cond_0
    mul-int v8, v9, v7

    sget-object v12, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->MAX_SUPPORTED_PREVIEW_SIZE:[I

    aget v12, v12, v3

    if-le v8, v12, :cond_1

    goto :goto_2

    :cond_1
    sub-double v10, v0, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    const-wide v12, 0x3f947ae147ae147bL    # 0.02

    cmpl-double v10, v10, v12

    if-lez v10, :cond_2

    goto :goto_2

    :cond_2
    mul-int v10, v5, v6

    if-le v8, v10, :cond_3

    move v6, v7

    move v5, v9

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    if-eqz v5, :cond_5

    if-eqz v6, :cond_5

    move v4, v5

    move v5, v6

    goto :goto_3

    :cond_5
    add-int/lit8 v3, v3, 0x1

    move v4, v5

    move v5, v6

    goto :goto_0

    :cond_6
    :goto_3
    iput v4, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mPreviewWidth:I

    iput v5, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mPreviewHeight:I

    sget-object v0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[computeSuitablePreviewSize], preview size for matrix display, Width:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mPreviewWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mPreviewHeight:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mPreviewHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private enterMatrixDisplay()V
    .locals 5

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mDisplayConfigLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mDisplayConfig:Lcom/freeme/camera/feature/setting/matrixdisplay/IMatrixDisplayConfig;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mMatrixDisplayResponder:Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;

    const-string v2, "key_matrix_display_show"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v2, "[enterMatrixDisplay]"

    invoke-static {v1, v2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/freeme/camera/common/IAppUi;->applyAllUIEnabled(Z)V

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    const/4 v4, 0x4

    invoke-interface {v1, v4}, Lcom/freeme/camera/common/IAppUi;->applyAllUIVisibility(I)V

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mDisplayConfig:Lcom/freeme/camera/feature/setting/matrixdisplay/IMatrixDisplayConfig;

    iget-object v4, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mEffectEntryValues:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/freeme/camera/feature/setting/matrixdisplay/IMatrixDisplayConfig;->setSelectedEffect(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->computeSuitablePreviewSize()V

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mDisplayConfig:Lcom/freeme/camera/feature/setting/matrixdisplay/IMatrixDisplayConfig;

    iget v2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mPreviewWidth:I

    iget v4, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mPreviewHeight:I

    invoke-interface {v1, v2, v4}, Lcom/freeme/camera/feature/setting/matrixdisplay/IMatrixDisplayConfig;->setPreviewSize(II)V

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mDisplayConfig:Lcom/freeme/camera/feature/setting/matrixdisplay/IMatrixDisplayConfig;

    invoke-interface {v1, v3}, Lcom/freeme/camera/feature/setting/matrixdisplay/IMatrixDisplayConfig;->setDisplayStatus(Z)V

    invoke-static {}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRestriction;->getRestrictionGroup()Lcom/freeme/camera/common/relation/RelationGroup;

    move-result-object v1

    const-string v2, "on"

    invoke-virtual {v1, v2, v3}, Lcom/freeme/camera/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/freeme/camera/common/relation/Relation;

    move-result-object v1

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mSettingController:Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    invoke-interface {v2, v1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/freeme/camera/common/relation/Relation;)V

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mDisplayConfig:Lcom/freeme/camera/feature/setting/matrixdisplay/IMatrixDisplayConfig;

    invoke-interface {v1}, Lcom/freeme/camera/feature/setting/matrixdisplay/IMatrixDisplayConfig;->sendSettingChangeRequest()V

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mViewManager:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mSelectedEffect:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->setSelectedEffect(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mViewManager:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v2}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v4, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mSettingController:Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    invoke-interface {v4}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v2, v4}, Lcom/freeme/camera/common/utils/CameraUtil;->isCameraFacingFront(Landroid/content/Context;I)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->setMirror(Z)V

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mViewManager:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->showView()V

    iput-boolean v3, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mViewIsShowing:Z

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private exitMatrixDisplay(ZI)V
    .locals 5

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mDisplayConfigLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mDisplayConfig:Lcom/freeme/camera/feature/setting/matrixdisplay/IMatrixDisplayConfig;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v2, "[exitMatrixDisplay]"

    invoke-static {v1, v2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mMatrixDisplayResponder:Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;

    const-string v2, "key_matrix_display_show"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mViewIsShowing:Z

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mDisplayConfig:Lcom/freeme/camera/feature/setting/matrixdisplay/IMatrixDisplayConfig;

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mSelectedEffect:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/freeme/camera/feature/setting/matrixdisplay/IMatrixDisplayConfig;->setSelectedEffect(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mDisplayConfig:Lcom/freeme/camera/feature/setting/matrixdisplay/IMatrixDisplayConfig;

    invoke-interface {v1, v3}, Lcom/freeme/camera/feature/setting/matrixdisplay/IMatrixDisplayConfig;->setDisplayStatus(Z)V

    invoke-static {}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRestriction;->getRestrictionGroup()Lcom/freeme/camera/common/relation/RelationGroup;

    move-result-object v1

    const-string v2, "off"

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4}, Lcom/freeme/camera/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/freeme/camera/common/relation/Relation;

    move-result-object v1

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mSettingController:Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    invoke-interface {v2, v1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/freeme/camera/common/relation/Relation;)V

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mDisplayConfig:Lcom/freeme/camera/feature/setting/matrixdisplay/IMatrixDisplayConfig;

    invoke-interface {v1}, Lcom/freeme/camera/feature/setting/matrixdisplay/IMatrixDisplayConfig;->sendSettingChangeRequest()V

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mMainHandler:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay$MainHandler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v1, v3, p2, v3, p1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay$MainHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mMainHandler:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay$MainHandler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p2, p1, v1, v2}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private getDisplayOrientation()I
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mSettingController:Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/freeme/camera/common/utils/CameraUtil;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v1

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v2}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/freeme/camera/common/utils/CameraUtil;->getDisplayOrientation(IILandroid/content/Context;)I

    move-result v0

    return v0
.end method

.method private initEffectEntriesAndEntryValues(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mEffectEntryValues:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mEffectEntries:Ljava/util/List;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_2

    aget-object v4, v1, v3

    move v5, v2

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v5, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mEffectEntryValues:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mEffectEntries:Ljava/util/List;

    aget-object v5, v0, v3

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private initializeViewManager()V
    .locals 3

    new-instance v0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mViewManager:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mViewManager:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;

    invoke-virtual {v0, p0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->setViewStateCallback(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$ViewStateCallback;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mViewManager:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;

    invoke-virtual {v0, p0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->setItemClickListener(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$ItemClickListener;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mViewManager:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mMatrixDisplayHandler:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->setSurfaceAvailableListener(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$SurfaceAvailableListener;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mViewManager:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mMatrixDisplayHandler:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->setEffectUpdateListener(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$EffectUpdateListener;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mSupportedEffects:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->initEffectEntriesAndEntryValues(Ljava/util/List;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mViewManager:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mEffectEntries:Ljava/util/List;

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mEffectEntryValues:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->setEffectEntriesAndEntryValues(Ljava/util/List;Ljava/util/List;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mViewManager:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;

    iget v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mLayoutWidth:I

    iget v2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mLayoutHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->setLayoutSize(II)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mViewManager:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;

    iget v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->setOrientation(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mViewManager:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->getDisplayOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->setDisplayOrientation(I)V

    return-void
.end method


# virtual methods
.method public addViewEntry()V
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[addViewEntry], mImageView:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",getEntryValues().size()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->getEntryValues()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mImageView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mMatrixDisplayViewController:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;->initMatrixDisplayEntryView()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mImageView:Landroid/widget/ImageView;

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mMatrixDisplayViewController:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;->addQuickSwitchIcon()V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mMatrixDisplayViewController:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->getEntryValues()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;->showQuickSwitchIcon(Z)V

    return-void
.end method

.method public getCaptureRequestConfigure()Lcom/freeme/camera/common/setting/ICameraSetting$ICaptureRequestConfigure;
    .locals 5

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mDisplayConfigLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mDisplayConfig:Lcom/freeme/camera/feature/setting/matrixdisplay/IMatrixDisplayConfig;

    if-nez v1, :cond_0

    new-instance v1, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->getKey()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mSettingDevice2Requester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;

    new-instance v4, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay$4;

    invoke-direct {v4, p0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay$4;-><init>(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig;-><init>(Ljava/lang/String;Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig$ValueInitializedListener;)V

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mMatrixDisplayHandler:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;

    invoke-virtual {v1, v2}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig;->setPreviewFrameCallback(Lcom/freeme/camera/feature/setting/matrixdisplay/IPreviewFrameCallback;)V

    iput-object v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mDisplayConfig:Lcom/freeme/camera/feature/setting/matrixdisplay/IMatrixDisplayConfig;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mDisplayConfig:Lcom/freeme/camera/feature/setting/matrixdisplay/IMatrixDisplayConfig;

    check-cast v0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    const-string v0, "key_color_effect"

    return-object v0
.end method

.method public getParametersConfigure()Lcom/freeme/camera/common/setting/ICameraSetting$IParametersConfigure;
    .locals 5

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mDisplayConfigLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mDisplayConfig:Lcom/freeme/camera/feature/setting/matrixdisplay/IMatrixDisplayConfig;

    if-nez v1, :cond_0

    new-instance v1, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayParametersConfig;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->getKey()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mSettingDeviceRequester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;

    new-instance v4, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay$3;

    invoke-direct {v4, p0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay$3;-><init>(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayParametersConfig;-><init>(Ljava/lang/String;Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayParametersConfig$ValueInitializedListener;)V

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mMatrixDisplayHandler:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;

    invoke-virtual {v1, v2}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayParametersConfig;->setPreviewFrameCallback(Lcom/freeme/camera/feature/setting/matrixdisplay/IPreviewFrameCallback;)V

    iput-object v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mDisplayConfig:Lcom/freeme/camera/feature/setting/matrixdisplay/IMatrixDisplayConfig;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mDisplayConfig:Lcom/freeme/camera/feature/setting/matrixdisplay/IMatrixDisplayConfig;

    check-cast v0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayParametersConfig;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getSettingType()Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;
    .locals 1

    sget-object v0, Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;->PHOTO:Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;

    return-object v0
.end method

.method public init(Lcom/freeme/camera/common/app/IApp;Lcom/freeme/camera/common/ICameraContext;Lcom/freeme/camera/common/setting/ISettingManager$SettingController;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/freeme/camera/common/setting/SettingBase;->init(Lcom/freeme/camera/common/app/IApp;Lcom/freeme/camera/common/ICameraContext;Lcom/freeme/camera/common/setting/ISettingManager$SettingController;)V

    sget-object p2, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string p3, "[init]"

    invoke-static {p2, p3}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mOrientationListener:Lcom/freeme/camera/common/app/IApp$OnOrientationChangeListener;

    invoke-interface {p1, p2}, Lcom/freeme/camera/common/app/IApp;->registerOnOrientationChangeListener(Lcom/freeme/camera/common/app/IApp$OnOrientationChangeListener;)V

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mBackPressedListener:Lcom/freeme/camera/common/app/IApp$BackPressedListener;

    const p3, 0x7fffffff

    invoke-interface {p1, p2, p3}, Lcom/freeme/camera/common/app/IApp;->registerBackPressedListener(Lcom/freeme/camera/common/app/IApp$BackPressedListener;I)V

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object p2

    iget-object p3, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mPreviewAreaChangedListener:Lcom/freeme/camera/common/IAppUiListener$OnPreviewAreaChangedListener;

    invoke-interface {p2, p3}, Lcom/freeme/camera/common/IAppUi;->registerOnPreviewAreaChangedListener(Lcom/freeme/camera/common/IAppUiListener$OnPreviewAreaChangedListener;)V

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mMatrixDisplayHandler:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;

    if-nez p2, :cond_0

    new-instance p2, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;

    invoke-direct {p2}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;-><init>()V

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mMatrixDisplayHandler:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mMatrixDisplayHandler:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;

    invoke-virtual {p2, p0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->setEffectAvailableListener(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler$EffectAvailableListener;)V

    :cond_0
    new-instance p2, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay$MainHandler;

    iget-object p3, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mActivity:Landroid/app/Activity;

    invoke-virtual {p3}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p0, p3}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay$MainHandler;-><init>(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mMainHandler:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay$MainHandler;

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mStatusMonitor:Lcom/freeme/camera/common/relation/StatusMonitor;

    const-string p3, "key_matrix_display_show"

    invoke-virtual {p2, p3}, Lcom/freeme/camera/common/relation/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;

    move-result-object p2

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mMatrixDisplayResponder:Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mMatrixDisplayViewController:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;

    if-nez p2, :cond_1

    new-instance p2, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;

    invoke-direct {p2, p1, p0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;-><init>(Lcom/freeme/camera/common/app/IApp;Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;)V

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mMatrixDisplayViewController:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;

    :cond_1
    return-void
.end method

.method public initializeValue(Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[initializeValue], supportedEffects:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->setSupportedPlatformValues(Ljava/util/List;)V

    invoke-virtual {p0, p1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->setSupportedEntryValues(Ljava/util/List;)V

    invoke-virtual {p0, p1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->setEntryValues(Ljava/util/List;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mMainHandler:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay$MainHandler;

    new-instance v1, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay$5;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay$5;-><init>(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay$MainHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onEffectAvailable()V
    .locals 2

    sget-object v0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[onEffectAvailable]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mViewManager:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->onEffectAvailable()V

    return-void
.end method

.method public onItemClicked(Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mDisplayConfig:Lcom/freeme/camera/feature/setting/matrixdisplay/IMatrixDisplayConfig;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mDisplayConfig:Lcom/freeme/camera/feature/setting/matrixdisplay/IMatrixDisplayConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return v2

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mViewIsShowing:Z

    if-nez v0, :cond_1

    return v2

    :cond_1
    iput-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mSelectedEffect:Ljava/lang/String;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mSelectedEffect:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    const-string v1, "key_color_effect"

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->getStoreScope()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/freeme/camera/common/relation/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 p1, 0xbb8

    invoke-direct {p0, v3, p1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->exitMatrixDisplay(ZI)V

    return v3

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/freeme/camera/common/mode/ICameraMode$ModeType;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/freeme/camera/common/setting/SettingBase;->onModeOpened(Ljava/lang/String;Lcom/freeme/camera/common/mode/ICameraMode$ModeType;)V

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mModeKey:Ljava/lang/String;

    return-void
.end method

.method public onViewCreated()V
    .locals 8

    sget-object v0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[onViewCreated]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mMatrixDisplayHandler:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;

    iget v3, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mPreviewWidth:I

    iget v4, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mPreviewHeight:I

    iget v6, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mLayoutWidth:I

    iget v7, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mLayoutHeight:I

    const v5, 0x32315659

    invoke-virtual/range {v2 .. v7}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->initialize(IIIII)V

    return-void
.end method

.method public onViewDestroyed()V
    .locals 2

    sget-object v0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[onViewDestroyed]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mMatrixDisplayHandler:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->release()V

    return-void
.end method

.method public onViewHidden()V
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[onViewHidden]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mMatrixDisplayResponder:Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;

    const-string v1, "key_matrix_display_show"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onViewScrollOut()V
    .locals 1

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mViewIsShowing:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->exitMatrixDisplay(ZI)V

    :cond_0
    return-void
.end method

.method public overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[overrideValues], headerKey:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", currentValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", supportValues:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Lcom/freeme/camera/common/setting/SettingBase;->overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mDisplayConfigLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mDisplayConfig:Lcom/freeme/camera/feature/setting/matrixdisplay/IMatrixDisplayConfig;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mDisplayConfig:Lcom/freeme/camera/feature/setting/matrixdisplay/IMatrixDisplayConfig;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->getValue()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Lcom/freeme/camera/feature/setting/matrixdisplay/IMatrixDisplayConfig;->setSelectedEffect(Ljava/lang/String;)V

    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public postRestrictionAfterInitialized()V
    .locals 0

    return-void
.end method

.method public refreshViewEntry()V
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[refreshViewEntry], entry values:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->getEntryValues()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const-string v0, "com.freeme.camera.feature.mode.pip.photo.PipPhotoMode"

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mModeKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.freeme.camera.feature.mode.pip.video.PipVideoMode"

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mModeKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay$2;

    invoke-direct {v1, p0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay$2;-><init>(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    :goto_0
    sget-object v0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[refreshViewEntry], in pip mode, don\'t refresh, return"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public removeViewEntry()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    invoke-interface {v1, v0}, Lcom/freeme/camera/common/IAppUi;->setEffectViewEntry(Landroid/view/View;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mMatrixDisplayViewController:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;->removeQuickSwitchIcon()V

    return-void
.end method

.method public unInit()V
    .locals 2

    sget-object v0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[unInit]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mApp:Lcom/freeme/camera/common/app/IApp;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mOrientationListener:Lcom/freeme/camera/common/app/IApp$OnOrientationChangeListener;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/app/IApp;->unregisterOnOrientationChangeListener(Lcom/freeme/camera/common/app/IApp$OnOrientationChangeListener;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mApp:Lcom/freeme/camera/common/app/IApp;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mBackPressedListener:Lcom/freeme/camera/common/app/IApp$BackPressedListener;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/app/IApp;->unRegisterBackPressedListener(Lcom/freeme/camera/common/app/IApp$BackPressedListener;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mPreviewAreaChangedListener:Lcom/freeme/camera/common/IAppUiListener$OnPreviewAreaChangedListener;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->unregisterOnPreviewAreaChangedListener(Lcom/freeme/camera/common/IAppUiListener$OnPreviewAreaChangedListener;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay$1;

    invoke-direct {v1, p0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay$1;-><init>(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mMatrixDisplayHandler:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->release()V

    :cond_0
    return-void
.end method

.method public updateModeDeviceState(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mModeDeviceState:Ljava/lang/String;

    return-void
.end method
