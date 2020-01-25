.class public Lcom/freeme/camera/ui/CameraAppUI;
.super Ljava/lang/Object;
.source "CameraAppUI.java"

# interfaces
.implements Lcom/freeme/camera/common/IAppUi;
.implements Lcom/freeme/camera/common/mode/AnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/ui/CameraAppUI$ConfigUIHandler;,
        Lcom/freeme/camera/ui/CameraAppUI$OnOrientationChangeListenerImpl;,
        Lcom/freeme/camera/ui/CameraAppUI$OnModeChangedListenerImpl;,
        Lcom/freeme/camera/ui/CameraAppUI$OnBeautyFaceClickedListenerImpl;,
        Lcom/freeme/camera/ui/CameraAppUI$OnSettingClickedListenerImpl;,
        Lcom/freeme/camera/ui/CameraAppUI$OnTouchListenerImpl;,
        Lcom/freeme/camera/ui/CameraAppUI$SettingStateListener;,
        Lcom/freeme/camera/ui/CameraAppUI$OnShutterChangeListenerImpl;
    }
.end annotation


# static fields
.field public static final ACTION_IMAGE_CAPTURE_SECURE:Ljava/lang/String; = "android.media.action.IMAGE_CAPTURE_SECURE"

.field private static final APPLY_ALL_UI_ENABLED:I = 0x1

.field private static final APPLY_ALL_UI_VISIBILITY:I = 0x0

.field private static final BACK_CAMERA_ID:Ljava/lang/String; = "0"

.field private static final FRONT_CAMERA_ID:Ljava/lang/String; = "1"

.field private static final INTENT_ACTION_STILL_IMAGE_CAMERA_SECURE:Ljava/lang/String; = "android.media.action.STILL_IMAGE_CAMERA_SECURE"

.field private static final MSG_SHOW_TOP_BAR:I = 0x5

.field private static final NAVIGATION_BAR_HEIGHT_DEFAULT:I = 0x60

.field public static final SECURE_CAMERA_EXTRA:Ljava/lang/String; = "secure_camera"

.field private static final SET_PREVIEW_VISIBILITY:I = 0x4

.field private static final SET_UI_ENABLED:I = 0x3

.field private static final SET_UI_VISIBILITY:I = 0x2

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

.field private static mLastBitmap:Landroid/graphics/Bitmap;


# instance fields
.field public isBeautyFaceSwitch:Z

.field public isCameraSwitch:Z

.field public isFirstInit:Z

.field public isIKOSwitch:Z

.field private mAnimationManager:Lcom/freeme/camera/ui/AnimationManager;

.field private final mApp:Lcom/freeme/camera/common/app/IApp;

.field private mCaptureState:Lcom/freeme/camera/common/CaptureState;

.field private mConfigUIHandler:Landroid/os/Handler;

.field private mCurrentCameraId:Ljava/lang/String;

.field private mCurrentMode:Ljava/lang/String;

.field private mCurrentModeName:Ljava/lang/String;

.field private mCurrentModeType:Ljava/lang/String;

.field private mDefaultBitmap:Landroid/graphics/Bitmap;

.field private mFFBNoFaceIndicator:Landroid/widget/ImageView;

.field private mFFBNoFaceToast:Landroid/widget/TextView;

.field private mFaceBeautyPreviewManager:Lcom/freeme/camera/ui/preview/PreviewManager;

.field private mFaceBeautyViewManager:Lcom/freeme/camera/ui/FaceBeautyViewManager;

.field private mFirstClick:Z

.field private mGestureManager:Lcom/freeme/camera/gesture/GestureManager;

.field private mHander:Landroid/os/Handler;

.field private mIkoFlashView:Lcom/freeme/camera/common/widget/RotateImageView;

.field private mIkoTipView:Landroid/widget/TextView;

.field private mIndicatorViewManager:Lcom/freeme/camera/ui/IndicatorViewManager;

.field private mIsCameraSwitch:Z

.field public mIsFirstInit:Z

.field private mLastedPreviewManager:Lcom/freeme/camera/ui/preview/PreviewManager;

.field private mModeChangeListener:Lcom/freeme/camera/common/IAppUiListener$OnModeChangeListener;

.field public mModePickerManager:Lcom/freeme/camera/ui/modepicker/ModePickerManager;

.field private mModeProvider:Lcom/freeme/camera/ui/modepicker/ModeProvider;

.field private mNormalPreviewManager:Lcom/freeme/camera/ui/preview/PreviewManager;

.field private mNormalType:Ljava/lang/String;

.field private mOnScreenHintManager:Lcom/freeme/camera/ui/OnScreenHintManager;

.field private final mOrientationChangeListener:Lcom/freeme/camera/ui/CameraAppUI$OnOrientationChangeListenerImpl;

.field private mPreviewManager:Lcom/freeme/camera/ui/preview/PreviewManager;

.field private mPreviewRatio:I

.field public mQuickSwitcherManager:Lcom/freeme/camera/ui/QuickSwitcherManager;

.field private mSavingDialog:Landroid/view/ViewGroup;

.field private mScreenRatio:I

.field private mSettingFragment:Lcom/freeme/camera/ui/SettingFragment;

.field private mShutterManager:Lcom/freeme/camera/ui/shutter/ShutterButtonManager;

.field mSupportitems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/freeme/camera/common/IAppUi$ModeItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSwitchAnim:Lcom/freeme/camera/ui/SwitchAnimView;

.field private mSwitchCameraManager:Lcom/freeme/camera/ui/SwitchCameraManager;

.field private mSwitchMicroLenManager:Lcom/freeme/camera/ui/SwitchMicroLenManager;

.field private mSwitchWideAngleManager:Lcom/freeme/camera/ui/SwitchWideAngleManager;

.field private mThumbnailViewManager:Lcom/freeme/camera/ui/ThumbnailViewManager;

.field private mTopBar:Landroid/view/View;

.field private final mViewManagers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/freeme/camera/ui/IViewManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/ui/CameraAppUI;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/ui/CameraAppUI;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/freeme/camera/common/app/IApp;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mIsFirstInit:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/freeme/camera/ui/CameraAppUI;->isBeautyFaceSwitch:Z

    iput-boolean v1, p0, Lcom/freeme/camera/ui/CameraAppUI;->isCameraSwitch:Z

    iput-boolean v1, p0, Lcom/freeme/camera/ui/CameraAppUI;->isIKOSwitch:Z

    iput-boolean v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->isFirstInit:Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/freeme/camera/ui/CameraAppUI;->mSupportitems:Ljava/util/List;

    const-string v2, "0"

    iput-object v2, p0, Lcom/freeme/camera/ui/CameraAppUI;->mCurrentCameraId:Ljava/lang/String;

    new-instance v2, Lcom/freeme/camera/ui/CameraAppUI$ConfigUIHandler;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/freeme/camera/ui/CameraAppUI$ConfigUIHandler;-><init>(Lcom/freeme/camera/ui/CameraAppUI;Lcom/freeme/camera/ui/CameraAppUI$1;)V

    iput-object v2, p0, Lcom/freeme/camera/ui/CameraAppUI;->mConfigUIHandler:Landroid/os/Handler;

    iput-boolean v1, p0, Lcom/freeme/camera/ui/CameraAppUI;->mIsCameraSwitch:Z

    iput v1, p0, Lcom/freeme/camera/ui/CameraAppUI;->mScreenRatio:I

    iput v1, p0, Lcom/freeme/camera/ui/CameraAppUI;->mPreviewRatio:I

    new-instance v1, Lcom/freeme/camera/ui/CameraAppUI$1;

    invoke-direct {v1, p0}, Lcom/freeme/camera/ui/CameraAppUI$1;-><init>(Lcom/freeme/camera/ui/CameraAppUI;)V

    iput-object v1, p0, Lcom/freeme/camera/ui/CameraAppUI;->mHander:Landroid/os/Handler;

    iput-boolean v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mFirstClick:Z

    iput-object p1, p0, Lcom/freeme/camera/ui/CameraAppUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    new-instance p1, Lcom/freeme/camera/ui/CameraAppUI$OnOrientationChangeListenerImpl;

    invoke-direct {p1, p0, v3}, Lcom/freeme/camera/ui/CameraAppUI$OnOrientationChangeListenerImpl;-><init>(Lcom/freeme/camera/ui/CameraAppUI;Lcom/freeme/camera/ui/CameraAppUI$1;)V

    iput-object p1, p0, Lcom/freeme/camera/ui/CameraAppUI;->mOrientationChangeListener:Lcom/freeme/camera/ui/CameraAppUI$OnOrientationChangeListenerImpl;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/freeme/camera/ui/CameraAppUI;->mViewManagers:Ljava/util/List;

    iget-object p1, p0, Lcom/freeme/camera/ui/CameraAppUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f08013e

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/ui/CameraAppUI;->mDefaultBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$100(Lcom/freeme/camera/ui/CameraAppUI;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mTopBar:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/freeme/camera/ui/CameraAppUI;)Lcom/freeme/camera/ui/IndicatorViewManager;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mIndicatorViewManager:Lcom/freeme/camera/ui/IndicatorViewManager;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/freeme/camera/ui/CameraAppUI;)Lcom/freeme/camera/ui/shutter/ShutterButtonManager;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mShutterManager:Lcom/freeme/camera/ui/shutter/ShutterButtonManager;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/freeme/camera/ui/CameraAppUI;)Lcom/freeme/camera/ui/preview/PreviewManager;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mPreviewManager:Lcom/freeme/camera/ui/preview/PreviewManager;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/freeme/camera/ui/CameraAppUI;Lcom/freeme/camera/ui/preview/PreviewManager;)Lcom/freeme/camera/ui/preview/PreviewManager;
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/CameraAppUI;->mPreviewManager:Lcom/freeme/camera/ui/preview/PreviewManager;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/freeme/camera/ui/CameraAppUI;)I
    .locals 0

    iget p0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mPreviewRatio:I

    return p0
.end method

.method static synthetic access$1302(Lcom/freeme/camera/ui/CameraAppUI;I)I
    .locals 0

    iput p1, p0, Lcom/freeme/camera/ui/CameraAppUI;->mPreviewRatio:I

    return p1
.end method

.method static synthetic access$1400(Lcom/freeme/camera/ui/CameraAppUI;)I
    .locals 0

    iget p0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mScreenRatio:I

    return p0
.end method

.method static synthetic access$1402(Lcom/freeme/camera/ui/CameraAppUI;I)I
    .locals 0

    iput p1, p0, Lcom/freeme/camera/ui/CameraAppUI;->mScreenRatio:I

    return p1
.end method

.method static synthetic access$1500(Lcom/freeme/camera/ui/CameraAppUI;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/freeme/camera/ui/CameraAppUI;)Lcom/freeme/camera/ui/OnScreenHintManager;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mOnScreenHintManager:Lcom/freeme/camera/ui/OnScreenHintManager;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/freeme/camera/ui/CameraAppUI;)Lcom/freeme/camera/ui/AnimationManager;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mAnimationManager:Lcom/freeme/camera/ui/AnimationManager;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/freeme/camera/ui/CameraAppUI;)Lcom/freeme/camera/ui/modepicker/ModeProvider;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mModeProvider:Lcom/freeme/camera/ui/modepicker/ModeProvider;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/freeme/camera/ui/CameraAppUI;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mCurrentMode:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1902(Lcom/freeme/camera/ui/CameraAppUI;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/CameraAppUI;->mCurrentMode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2000(Lcom/freeme/camera/ui/CameraAppUI;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/ui/CameraAppUI;->switchFaceBeautyMode(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/freeme/camera/ui/CameraAppUI;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mCurrentCameraId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/freeme/camera/ui/CameraAppUI;)Lcom/freeme/camera/common/CaptureState;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mCaptureState:Lcom/freeme/camera/common/CaptureState;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/freeme/camera/ui/CameraAppUI;)Lcom/freeme/camera/ui/FaceBeautyViewManager;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mFaceBeautyViewManager:Lcom/freeme/camera/ui/FaceBeautyViewManager;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/freeme/camera/ui/CameraAppUI;)Lcom/freeme/camera/ui/SettingFragment;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mSettingFragment:Lcom/freeme/camera/ui/SettingFragment;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/freeme/camera/ui/CameraAppUI;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mSavingDialog:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$2502(Lcom/freeme/camera/ui/CameraAppUI;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/CameraAppUI;->mSavingDialog:Landroid/view/ViewGroup;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/freeme/camera/ui/CameraAppUI;)Lcom/freeme/camera/ui/SwitchCameraManager;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mSwitchCameraManager:Lcom/freeme/camera/ui/SwitchCameraManager;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/freeme/camera/ui/CameraAppUI;)Lcom/freeme/camera/ui/SwitchWideAngleManager;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mSwitchWideAngleManager:Lcom/freeme/camera/ui/SwitchWideAngleManager;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/freeme/camera/ui/CameraAppUI;)Lcom/freeme/camera/ui/SwitchMicroLenManager;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mSwitchMicroLenManager:Lcom/freeme/camera/ui/SwitchMicroLenManager;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/freeme/camera/ui/CameraAppUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/ui/CameraAppUI;->showSetting()V

    return-void
.end method

.method static synthetic access$3000(Lcom/freeme/camera/ui/CameraAppUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/ui/CameraAppUI;->hideSetting()V

    return-void
.end method

.method static synthetic access$3100(Lcom/freeme/camera/ui/CameraAppUI;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mCurrentModeType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3102(Lcom/freeme/camera/ui/CameraAppUI;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/CameraAppUI;->mCurrentModeType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3200()Lcom/freeme/camera/common/debug/LogUtil$Tag;
    .locals 1

    sget-object v0, Lcom/freeme/camera/ui/CameraAppUI;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/freeme/camera/ui/CameraAppUI;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mCurrentModeName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3302(Lcom/freeme/camera/ui/CameraAppUI;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/CameraAppUI;->mCurrentModeName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3400(Lcom/freeme/camera/ui/CameraAppUI;)Lcom/freeme/camera/common/IAppUiListener$OnModeChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mModeChangeListener:Lcom/freeme/camera/common/IAppUiListener$OnModeChangeListener;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/freeme/camera/ui/CameraAppUI;)Lcom/freeme/camera/ui/preview/PreviewManager;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mLastedPreviewManager:Lcom/freeme/camera/ui/preview/PreviewManager;

    return-object p0
.end method

.method static synthetic access$3502(Lcom/freeme/camera/ui/CameraAppUI;Lcom/freeme/camera/ui/preview/PreviewManager;)Lcom/freeme/camera/ui/preview/PreviewManager;
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/CameraAppUI;->mLastedPreviewManager:Lcom/freeme/camera/ui/preview/PreviewManager;

    return-object p1
.end method

.method static synthetic access$3600(Lcom/freeme/camera/ui/CameraAppUI;)Lcom/freeme/camera/ui/preview/PreviewManager;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mFaceBeautyPreviewManager:Lcom/freeme/camera/ui/preview/PreviewManager;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/freeme/camera/ui/CameraAppUI;)Lcom/freeme/camera/ui/preview/PreviewManager;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mNormalPreviewManager:Lcom/freeme/camera/ui/preview/PreviewManager;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/freeme/camera/ui/CameraAppUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/ui/CameraAppUI;->layoutSettingUI()V

    return-void
.end method

.method static synthetic access$3900(Lcom/freeme/camera/ui/CameraAppUI;)Lcom/freeme/camera/gesture/GestureManager;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mGestureManager:Lcom/freeme/camera/gesture/GestureManager;

    return-object p0
.end method

.method static synthetic access$4000(Lcom/freeme/camera/ui/CameraAppUI;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mViewManagers:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$4100(Lcom/freeme/camera/ui/CameraAppUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/ui/CameraAppUI;->configPreviewVisibility()V

    return-void
.end method

.method static synthetic access$4200(Lcom/freeme/camera/ui/CameraAppUI;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/freeme/camera/ui/CameraAppUI;->configUIVisibility(II)V

    return-void
.end method

.method static synthetic access$4300(Lcom/freeme/camera/ui/CameraAppUI;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/freeme/camera/ui/CameraAppUI;->configUIEnabled(IZ)V

    return-void
.end method

.method static synthetic access$900(Lcom/freeme/camera/ui/CameraAppUI;)Lcom/freeme/camera/ui/ThumbnailViewManager;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mThumbnailViewManager:Lcom/freeme/camera/ui/ThumbnailViewManager;

    return-object p0
.end method

.method private configPreviewVisibility()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mPreviewManager:Lcom/freeme/camera/ui/preview/PreviewManager;

    invoke-virtual {v0}, Lcom/freeme/camera/ui/preview/PreviewManager;->getView()Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private configUIEnabled(IZ)V
    .locals 3

    sget-object v0, Lcom/freeme/camera/ui/CameraAppUI;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configUIEnabled + module "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " enabled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/freeme/camera/ui/CameraAppUI;->mFaceBeautyViewManager:Lcom/freeme/camera/ui/FaceBeautyViewManager;

    invoke-virtual {p1, p2}, Lcom/freeme/camera/ui/FaceBeautyViewManager;->setEnabled(Z)V

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lcom/freeme/camera/ui/CameraAppUI;->mSwitchWideAngleManager:Lcom/freeme/camera/ui/SwitchWideAngleManager;

    invoke-virtual {p1, p2}, Lcom/freeme/camera/ui/SwitchWideAngleManager;->setEnabled(Z)V

    goto :goto_0

    :pswitch_3
    iget-object p1, p0, Lcom/freeme/camera/ui/CameraAppUI;->mSwitchCameraManager:Lcom/freeme/camera/ui/SwitchCameraManager;

    invoke-virtual {p1, p2}, Lcom/freeme/camera/ui/SwitchCameraManager;->setEnabled(Z)V

    goto :goto_0

    :pswitch_4
    iget-object p1, p0, Lcom/freeme/camera/ui/CameraAppUI;->mShutterManager:Lcom/freeme/camera/ui/shutter/ShutterButtonManager;

    invoke-virtual {p1, p2}, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->setTextEnabled(Z)V

    goto :goto_0

    :pswitch_5
    iget-object p1, p0, Lcom/freeme/camera/ui/CameraAppUI;->mPreviewManager:Lcom/freeme/camera/ui/preview/PreviewManager;

    invoke-virtual {p1, p2}, Lcom/freeme/camera/ui/preview/PreviewManager;->setEnabled(Z)V

    goto :goto_0

    :pswitch_6
    iget-object p1, p0, Lcom/freeme/camera/ui/CameraAppUI;->mIndicatorViewManager:Lcom/freeme/camera/ui/IndicatorViewManager;

    invoke-virtual {p1, p2}, Lcom/freeme/camera/ui/IndicatorViewManager;->setEnabled(Z)V

    goto :goto_0

    :pswitch_7
    iget-object p1, p0, Lcom/freeme/camera/ui/CameraAppUI;->mShutterManager:Lcom/freeme/camera/ui/shutter/ShutterButtonManager;

    invoke-virtual {p1, p2}, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->setEnabled(Z)V

    goto :goto_0

    :pswitch_8
    iget-object p1, p0, Lcom/freeme/camera/ui/CameraAppUI;->mThumbnailViewManager:Lcom/freeme/camera/ui/ThumbnailViewManager;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/freeme/camera/ui/ThumbnailViewManager;->setEnabled(Z)V

    goto :goto_0

    :pswitch_9
    iget-object p1, p0, Lcom/freeme/camera/ui/CameraAppUI;->mModePickerManager:Lcom/freeme/camera/ui/modepicker/ModePickerManager;

    invoke-virtual {p1, p2}, Lcom/freeme/camera/ui/modepicker/ModePickerManager;->setEnabled(Z)V

    goto :goto_0

    :pswitch_a
    iget-object p1, p0, Lcom/freeme/camera/ui/CameraAppUI;->mQuickSwitcherManager:Lcom/freeme/camera/ui/QuickSwitcherManager;

    invoke-virtual {p1, p2}, Lcom/freeme/camera/ui/QuickSwitcherManager;->setEnabled(Z)V

    :cond_0
    :goto_0
    :pswitch_b
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_b
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private configUIVisibility(II)V
    .locals 3

    sget-object v0, Lcom/freeme/camera/ui/CameraAppUI;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configUIVisibility + module "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " visibility "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/freeme/camera/ui/CameraAppUI;->mFaceBeautyViewManager:Lcom/freeme/camera/ui/FaceBeautyViewManager;

    invoke-virtual {p1, p2}, Lcom/freeme/camera/ui/FaceBeautyViewManager;->setVisibility(I)V

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lcom/freeme/camera/ui/CameraAppUI;->mSwitchWideAngleManager:Lcom/freeme/camera/ui/SwitchWideAngleManager;

    invoke-virtual {p1, p2}, Lcom/freeme/camera/ui/SwitchWideAngleManager;->setVisibility(I)V

    goto :goto_0

    :pswitch_3
    iget-object p1, p0, Lcom/freeme/camera/ui/CameraAppUI;->mSwitchCameraManager:Lcom/freeme/camera/ui/SwitchCameraManager;

    invoke-virtual {p1, p2}, Lcom/freeme/camera/ui/SwitchCameraManager;->setVisibility(I)V

    goto :goto_0

    :pswitch_4
    iget-object p1, p0, Lcom/freeme/camera/ui/CameraAppUI;->mOnScreenHintManager:Lcom/freeme/camera/ui/OnScreenHintManager;

    invoke-virtual {p1, p2}, Lcom/freeme/camera/ui/OnScreenHintManager;->setVisibility(I)V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lcom/freeme/camera/ui/CameraAppUI;->getPreviewFrameLayout()Lcom/freeme/camera/common/widget/PreviewFrameLayout;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/freeme/camera/common/widget/PreviewFrameLayout;->setVisibility(I)V

    goto :goto_0

    :pswitch_6
    iget-object p1, p0, Lcom/freeme/camera/ui/CameraAppUI;->mIndicatorViewManager:Lcom/freeme/camera/ui/IndicatorViewManager;

    invoke-virtual {p1, p2}, Lcom/freeme/camera/ui/IndicatorViewManager;->setVisibility(I)V

    goto :goto_0

    :pswitch_7
    iget-object p1, p0, Lcom/freeme/camera/ui/CameraAppUI;->mShutterManager:Lcom/freeme/camera/ui/shutter/ShutterButtonManager;

    invoke-virtual {p1, p2}, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->setVisibility(I)V

    goto :goto_0

    :pswitch_8
    iget-object p1, p0, Lcom/freeme/camera/ui/CameraAppUI;->mThumbnailViewManager:Lcom/freeme/camera/ui/ThumbnailViewManager;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/freeme/camera/ui/ThumbnailViewManager;->setVisibility(I)V

    goto :goto_0

    :pswitch_9
    iget-object p1, p0, Lcom/freeme/camera/ui/CameraAppUI;->mModePickerManager:Lcom/freeme/camera/ui/modepicker/ModePickerManager;

    invoke-virtual {p1, p2}, Lcom/freeme/camera/ui/modepicker/ModePickerManager;->setVisibility(I)V

    goto :goto_0

    :pswitch_a
    iget-object p1, p0, Lcom/freeme/camera/ui/CameraAppUI;->mQuickSwitcherManager:Lcom/freeme/camera/ui/QuickSwitcherManager;

    invoke-virtual {p1, p2}, Lcom/freeme/camera/ui/QuickSwitcherManager;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private dumpUIState(Lcom/freeme/camera/common/IAppUi$AppUIState;)V
    .locals 3

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIndicatorEnabled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p1, Lcom/freeme/camera/common/IAppUi$AppUIState;->mIndicatorEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIndicatorVisibleState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/freeme/camera/common/IAppUi$AppUIState;->mIndicatorVisibleState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mModeSwitcherEnabled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p1, Lcom/freeme/camera/common/IAppUi$AppUIState;->mModeSwitcherEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mModeSwitcherVisibleState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/freeme/camera/common/IAppUi$AppUIState;->mModeSwitcherVisibleState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mQuickSwitcherEnabled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p1, Lcom/freeme/camera/common/IAppUi$AppUIState;->mQuickSwitcherEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mQuickSwitcherVisibleState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/freeme/camera/common/IAppUi$AppUIState;->mQuickSwitcherVisibleState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mShutterButtonEnabled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p1, Lcom/freeme/camera/common/IAppUi$AppUIState;->mShutterButtonEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mShutterButtonVisibleState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/freeme/camera/common/IAppUi$AppUIState;->mShutterButtonVisibleState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mThumbnailEnabled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p1, Lcom/freeme/camera/common/IAppUi$AppUIState;->mThumbnailEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mThumbnailVisibleState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/freeme/camera/common/IAppUi$AppUIState;->mThumbnailVisibleState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPreviewFrameVisibleState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/freeme/camera/common/IAppUi$AppUIState;->mPreviewFrameVisibleState:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    sget-object p1, Lcom/freeme/camera/ui/CameraAppUI;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[dumpUIState]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private hideAlertDialog()V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/freeme/camera/common/utils/CameraUtil;->hideAlertDialog(Landroid/app/Activity;)V

    return-void
.end method

.method private hideSetting()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "setting_fragment"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    return-void
.end method

.method private isBeautyModeSupported()Z
    .locals 6

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mModeProvider:Lcom/freeme/camera/ui/modepicker/ModeProvider;

    invoke-virtual {v0}, Lcom/freeme/camera/ui/modepicker/ModeProvider;->getAllModes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/freeme/camera/common/IAppUi$ModeItem;

    const-string v4, "Beauty Face"

    iget-object v5, v3, Lcom/freeme/camera/common/IAppUi$ModeItem;->mMode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "Video Beauty Face"

    iget-object v3, v3, Lcom/freeme/camera/common/IAppUi$ModeItem;->mMode:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method private isMainThread()Z
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private layoutSettingUI()V
    .locals 6

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0901ac

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/freeme/camera/ui/CameraAppUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/freeme/camera/common/utils/CameraUtil;->isHasNavigationBarForFreeme(Landroid/content/Context;)Z

    move-result v1

    const v2, 0x7f0901aa

    if-eqz v1, :cond_3

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iget-object v3, p0, Lcom/freeme/camera/ui/CameraAppUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v3}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    sget-object v3, Lcom/freeme/camera/ui/CameraAppUI;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[layoutSettingUI], preview size don\'t contain navigation:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {}, Lcom/freeme/camera/common/utils/CameraUtil;->hasNotch()Z

    move-result v3

    const v4, 0x7f070133

    if-eqz v3, :cond_0

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {}, Lcom/freeme/camera/common/utils/CameraUtil;->getNotchHeight()I

    move-result v3

    sub-int/2addr v1, v3

    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/freeme/camera/common/utils/CameraUtil;->hasWaterDrop()Z

    move-result v3

    if-eqz v3, :cond_1

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/freeme/camera/ui/CameraAppUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v3}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    sub-int/2addr v1, v3

    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_0

    :cond_1
    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/freeme/camera/ui/CameraAppUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v3}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    sub-int/2addr v1, v3

    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    :goto_0
    invoke-static {}, Lcom/freeme/camera/common/utils/CameraUtil;->hasWaterDrop()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/freeme/camera/ui/CameraAppUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    :goto_1
    iget-object v1, p0, Lcom/freeme/camera/ui/CameraAppUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/freeme/camera/common/utils/CameraUtil;->getNavigationBarHeight(Landroid/app/Activity;)I

    move-result v1

    iget v3, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    sub-int/2addr v3, v1

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    :cond_3
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iget-object v3, p0, Lcom/freeme/camera/ui/CameraAppUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v3}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    sget-object v3, Lcom/freeme/camera/ui/CameraAppUI;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[layoutSettingUI], preview size don\'t contain navigation:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {}, Lcom/freeme/camera/common/utils/CameraUtil;->hasNotch()Z

    move-result v3

    if-eqz v3, :cond_4

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {}, Lcom/freeme/camera/common/utils/CameraUtil;->getNotchHeight()I

    move-result v3

    sub-int/2addr v1, v3

    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_2

    :cond_4
    iget v1, v1, Landroid/graphics/Point;->y:I

    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_3
    return-void
.end method

.method private showSetting()V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const-string v1, "setting_fragment"

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    iget-object v1, p0, Lcom/freeme/camera/ui/CameraAppUI;->mSettingFragment:Lcom/freeme/camera/ui/SettingFragment;

    const-string v2, "Setting"

    const v3, 0x7f0901aa

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method private sortSizesIncrease(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/freeme/camera/common/IAppUi$ModeItem;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/freeme/camera/ui/CameraAppUI$6;

    invoke-direct {v0, p0}, Lcom/freeme/camera/ui/CameraAppUI$6;-><init>(Lcom/freeme/camera/ui/CameraAppUI;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private startSwitchAnimation(FFI)V
    .locals 1

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p1, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    int-to-long p1, p3

    invoke-virtual {v0, p1, p2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object p1, p0, Lcom/freeme/camera/ui/CameraAppUI;->mSwitchAnim:Lcom/freeme/camera/ui/SwitchAnimView;

    invoke-virtual {p1, v0}, Lcom/freeme/camera/ui/SwitchAnimView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private switchFaceBeautyMode(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "Beauty Face"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    const-string p1, "beautyface_dialog_title"

    const-string v1, "string"

    iget-object v3, p0, Lcom/freeme/camera/ui/CameraAppUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v3}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p1, v1, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string p1, "Picture"

    iget-object v1, p0, Lcom/freeme/camera/ui/CameraAppUI;->mFaceBeautyViewManager:Lcom/freeme/camera/ui/FaceBeautyViewManager;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/freeme/camera/ui/FaceBeautyViewManager;->setFaceBeautySwitcherViewSelected(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    :cond_0
    const-string v1, "Photo"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "normal_mode_title"

    const-string v1, "string"

    iget-object v2, p0, Lcom/freeme/camera/ui/CameraAppUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v2}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string p1, "Picture"

    iget-object v1, p0, Lcom/freeme/camera/ui/CameraAppUI;->mFaceBeautyViewManager:Lcom/freeme/camera/ui/FaceBeautyViewManager;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/freeme/camera/ui/FaceBeautyViewManager;->setFaceBeautySwitcherViewSelected(Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_1
    const-string v1, "Video Beauty Face"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p1, "videobeautyface_dialog_title"

    const-string v1, "string"

    iget-object v3, p0, Lcom/freeme/camera/ui/CameraAppUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v3}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p1, v1, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string p1, "Video"

    iget-object v1, p0, Lcom/freeme/camera/ui/CameraAppUI;->mFaceBeautyViewManager:Lcom/freeme/camera/ui/FaceBeautyViewManager;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/freeme/camera/ui/FaceBeautyViewManager;->setFaceBeautySwitcherViewSelected(Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_2
    const-string v1, "Video"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "normal_mode_title"

    const-string v1, "string"

    iget-object v2, p0, Lcom/freeme/camera/ui/CameraAppUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v2}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string p1, "Video"

    iget-object v1, p0, Lcom/freeme/camera/ui/CameraAppUI;->mFaceBeautyViewManager:Lcom/freeme/camera/ui/FaceBeautyViewManager;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/freeme/camera/ui/FaceBeautyViewManager;->setFaceBeautySwitcherViewSelected(Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_3
    move-object p1, v3

    :goto_0
    iput-object p1, p0, Lcom/freeme/camera/ui/CameraAppUI;->mCurrentModeType:Ljava/lang/String;

    iput-object v3, p0, Lcom/freeme/camera/ui/CameraAppUI;->mCurrentModeName:Ljava/lang/String;

    sget-object p1, Lcom/freeme/camera/ui/CameraAppUI;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShutterTypeChanged mCurrentModeType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/ui/CameraAppUI;->mCurrentModeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mCurrentModeName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/ui/CameraAppUI;->mCurrentModeName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/ui/CameraAppUI;->mModeProvider:Lcom/freeme/camera/ui/modepicker/ModeProvider;

    iget-object v1, p0, Lcom/freeme/camera/ui/CameraAppUI;->mCurrentModeName:Ljava/lang/String;

    iget-object v2, p0, Lcom/freeme/camera/ui/CameraAppUI;->mCurrentModeType:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/freeme/camera/ui/modepicker/ModeProvider;->getModeEntryName(Ljava/lang/String;Ljava/lang/String;)Lcom/freeme/camera/common/IAppUi$ModeItem;

    move-result-object p1

    iget-object v1, p1, Lcom/freeme/camera/common/IAppUi$ModeItem;->mMode:Ljava/lang/String;

    iput-object v1, p0, Lcom/freeme/camera/ui/CameraAppUI;->mCurrentMode:Ljava/lang/String;

    iget-object v1, p0, Lcom/freeme/camera/ui/CameraAppUI;->mModeChangeListener:Lcom/freeme/camera/common/IAppUiListener$OnModeChangeListener;

    iget-object v2, p1, Lcom/freeme/camera/common/IAppUi$ModeItem;->mClassName:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/freeme/camera/common/IAppUiListener$OnModeChangeListener;->onModeSelected(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/freeme/camera/ui/CameraAppUI;->mShutterManager:Lcom/freeme/camera/ui/shutter/ShutterButtonManager;

    iget-object v2, p1, Lcom/freeme/camera/common/IAppUi$ModeItem;->mMode:Ljava/lang/String;

    iget-object p1, p1, Lcom/freeme/camera/common/IAppUi$ModeItem;->mShutterIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2, p1}, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->updateCurrentModeShutter(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/freeme/camera/ui/CameraAppUI;->mPreviewManager:Lcom/freeme/camera/ui/preview/PreviewManager;

    iput-object p1, p0, Lcom/freeme/camera/ui/CameraAppUI;->mLastedPreviewManager:Lcom/freeme/camera/ui/preview/PreviewManager;

    const-string p1, "beautyface_dialog_title"

    const-string v1, "string"

    iget-object v2, p0, Lcom/freeme/camera/ui/CameraAppUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v2}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "videobeautyface_dialog_title"

    const-string v1, "string"

    iget-object v2, p0, Lcom/freeme/camera/ui/CameraAppUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v2}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "facecute_dialog_title"

    const-string v1, "string"

    iget-object v2, p0, Lcom/freeme/camera/ui/CameraAppUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v2}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/freeme/camera/ui/CameraAppUI;->mNormalPreviewManager:Lcom/freeme/camera/ui/preview/PreviewManager;

    iput-object p1, p0, Lcom/freeme/camera/ui/CameraAppUI;->mPreviewManager:Lcom/freeme/camera/ui/preview/PreviewManager;

    goto :goto_2

    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/freeme/camera/ui/CameraAppUI;->mFaceBeautyPreviewManager:Lcom/freeme/camera/ui/preview/PreviewManager;

    iput-object p1, p0, Lcom/freeme/camera/ui/CameraAppUI;->mPreviewManager:Lcom/freeme/camera/ui/preview/PreviewManager;

    :goto_2
    iget-boolean p1, p0, Lcom/freeme/camera/ui/CameraAppUI;->isFirstInit:Z

    if-eqz p1, :cond_6

    iput-boolean v4, p0, Lcom/freeme/camera/ui/CameraAppUI;->isFirstInit:Z

    const/16 p1, 0x2bc

    invoke-virtual {p0, p1, v4}, Lcom/freeme/camera/ui/CameraAppUI;->hidePreviewAnim(IZ)V

    goto :goto_3

    :cond_6
    const/16 p1, 0x258

    invoke-virtual {p0, p1, v4}, Lcom/freeme/camera/ui/CameraAppUI;->hidePreviewAnim(IZ)V

    :goto_3
    return-void
.end method

.method private switchIKOMode()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->isIKOSwitch:Z

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mShutterManager:Lcom/freeme/camera/ui/shutter/ShutterButtonManager;

    invoke-virtual {v0}, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->updateIKOModeShutter()V

    return-void
.end method

.method private updateLayoutForNavigationBar(I)V
    .locals 3

    iget-object p1, p0, Lcom/freeme/camera/ui/CameraAppUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0700bc

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mIsFirstInit:Z

    iget-object v1, p0, Lcom/freeme/camera/ui/CameraAppUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0901b8

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getPaddingBottom()I

    move-result v2

    add-int/2addr v2, p1

    invoke-virtual {v1, v0, v0, v0, v2}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0901bc

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v2, p1

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0901cc

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v2, p1

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0900f9

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/common/widget/RotateImageView;

    invoke-virtual {v0}, Lcom/freeme/camera/common/widget/RotateImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v2, p1

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/widget/RotateImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0901db

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/common/widget/RotateImageView;

    invoke-virtual {v0}, Lcom/freeme/camera/common/widget/RotateImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v2, p1

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/widget/RotateImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public addSettingView(Lcom/freeme/camera/common/setting/ICameraSettingView;)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mSettingFragment:Lcom/freeme/camera/ui/SettingFragment;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/ui/SettingFragment;->addSettingView(Lcom/freeme/camera/common/setting/ICameraSettingView;)V

    return-void
.end method

.method public addToIndicatorView(Landroid/view/View;I)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/freeme/camera/ui/CameraAppUI$19;

    invoke-direct {v1, p0, p1, p2}, Lcom/freeme/camera/ui/CameraAppUI$19;-><init>(Lcom/freeme/camera/ui/CameraAppUI;Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public addToQuickSwitcher(Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mQuickSwitcherManager:Lcom/freeme/camera/ui/QuickSwitcherManager;

    invoke-virtual {v0, p1, p2}, Lcom/freeme/camera/ui/QuickSwitcherManager;->addToQuickSwitcher(Landroid/view/View;I)V

    return-void
.end method

.method public animationChange(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mShutterManager:Lcom/freeme/camera/ui/shutter/ShutterButtonManager;

    invoke-virtual {v0, p1, p2}, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->setModeChange(IZ)V

    return-void
.end method

.method public animationEnd(Lcom/freeme/camera/common/IAppUi$AnimationType;)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/freeme/camera/ui/CameraAppUI$13;

    invoke-direct {v1, p0, p1}, Lcom/freeme/camera/ui/CameraAppUI$13;-><init>(Lcom/freeme/camera/ui/CameraAppUI;Lcom/freeme/camera/common/IAppUi$AnimationType;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public animationStart(Lcom/freeme/camera/common/IAppUi$AnimationType;Lcom/freeme/camera/common/IAppUi$AnimationData;)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/freeme/camera/ui/CameraAppUI$12;

    invoke-direct {v1, p0, p1, p2}, Lcom/freeme/camera/ui/CameraAppUI$12;-><init>(Lcom/freeme/camera/ui/CameraAppUI;Lcom/freeme/camera/common/IAppUi$AnimationType;Lcom/freeme/camera/common/IAppUi$AnimationData;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public applyAllUIEnabled(Z)V
    .locals 5

    invoke-direct {p0}, Lcom/freeme/camera/ui/CameraAppUI;->isMainThread()Z

    move-result v0

    const/16 v1, 0x67

    const/16 v2, 0x68

    if-nez v0, :cond_1

    sget-object v0, Lcom/freeme/camera/ui/CameraAppUI;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "applyAllUIEnabled + enabled "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mShutterManager:Lcom/freeme/camera/ui/shutter/ShutterButtonManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->getShutterButton()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getCurrentCameraMode()I

    move-result v0

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getCurrentCameraMode()I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/freeme/camera/ui/CameraAppUI$14;

    invoke-direct {v1, p0, p1}, Lcom/freeme/camera/ui/CameraAppUI$14;-><init>(Lcom/freeme/camera/ui/CameraAppUI;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    const/4 p1, 0x1

    iput p1, v0, Landroid/os/Message;->what:I

    iget-object p1, p0, Lcom/freeme/camera/ui/CameraAppUI;->mConfigUIHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    sget-object p1, Lcom/freeme/camera/ui/CameraAppUI;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "applyAllUIEnabled -"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/freeme/camera/ui/CameraAppUI;->applyAllUIEnabledImmediately(Z)V

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getCurrentCameraMode()I

    move-result v0

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getCurrentCameraMode()I

    move-result v0

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mShutterManager:Lcom/freeme/camera/ui/shutter/ShutterButtonManager;

    invoke-virtual {v0}, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->getShutterButton()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public applyAllUIEnabledImmediately(Z)V
    .locals 3

    sget-object v0, Lcom/freeme/camera/ui/CameraAppUI;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyAllUIEnabledImmediately + enabled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mConfigUIHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/freeme/camera/ui/CameraAppUI;->mViewManagers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/freeme/camera/ui/CameraAppUI;->mViewManagers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/freeme/camera/ui/IViewManager;

    invoke-interface {v1, p1}, Lcom/freeme/camera/ui/IViewManager;->setEnabled(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public applyAllUIVisibility(I)V
    .locals 3

    invoke-direct {p0}, Lcom/freeme/camera/ui/CameraAppUI;->isMainThread()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/freeme/camera/ui/CameraAppUI;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyAllUIVisibility + visibility "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    const/4 p1, 0x0

    iput p1, v0, Landroid/os/Message;->what:I

    iget-object p1, p0, Lcom/freeme/camera/ui/CameraAppUI;->mConfigUIHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    sget-object p1, Lcom/freeme/camera/ui/CameraAppUI;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "applyAllUIVisibility -"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/freeme/camera/ui/CameraAppUI;->applyAllUIVisibilityImmediately(I)V

    :goto_0
    return-void
.end method

.method public applyAllUIVisibilityImmediately(I)V
    .locals 3

    sget-object v0, Lcom/freeme/camera/ui/CameraAppUI;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyAllUIVisibilityImmediately + visibility "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mConfigUIHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :goto_0
    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mViewManagers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mViewManagers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/ui/IViewManager;

    invoke-interface {v0, p1}, Lcom/freeme/camera/ui/IViewManager;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/freeme/camera/ui/CameraAppUI;->getPreviewFrameLayout()Lcom/freeme/camera/common/widget/PreviewFrameLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/freeme/camera/common/widget/PreviewFrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mOnScreenHintManager:Lcom/freeme/camera/ui/OnScreenHintManager;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/ui/OnScreenHintManager;->setVisibility(I)V

    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/ui/CameraAppUI;->mQuickSwitcherManager:Lcom/freeme/camera/ui/QuickSwitcherManager;

    invoke-virtual {p1}, Lcom/freeme/camera/ui/QuickSwitcherManager;->hideQuickSwitcherImmediately()V

    :cond_1
    return-void
.end method

.method public attachEffectViewEntry()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/freeme/camera/ui/CameraAppUI$24;

    invoke-direct {v1, p0}, Lcom/freeme/camera/ui/CameraAppUI$24;-><init>(Lcom/freeme/camera/ui/CameraAppUI;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public attachSwitchCameraViewEntry()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/freeme/camera/ui/CameraAppUI$25;

    invoke-direct {v1, p0}, Lcom/freeme/camera/ui/CameraAppUI$25;-><init>(Lcom/freeme/camera/ui/CameraAppUI;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public attachSwitchMicroLenViewEntry()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/freeme/camera/ui/CameraAppUI$28;

    invoke-direct {v1, p0}, Lcom/freeme/camera/ui/CameraAppUI$28;-><init>(Lcom/freeme/camera/ui/CameraAppUI;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public attachSwitchWideAngleViewEntry()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/freeme/camera/ui/CameraAppUI$26;

    invoke-direct {v1, p0}, Lcom/freeme/camera/ui/CameraAppUI$26;-><init>(Lcom/freeme/camera/ui/CameraAppUI;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public clearPreviewStatusListener(Lcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/freeme/camera/ui/CameraAppUI$18;

    invoke-direct {v1, p0, p1}, Lcom/freeme/camera/ui/CameraAppUI$18;-><init>(Lcom/freeme/camera/ui/CameraAppUI;Lcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getCaptureState()Lcom/freeme/camera/common/CaptureState;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mCaptureState:Lcom/freeme/camera/common/CaptureState;

    return-object v0
.end method

.method public getClickState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mFirstClick:Z

    return v0
.end method

.method public getCurrentCameraId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mCurrentCameraId:Ljava/lang/String;

    return-object v0
.end method

.method public getFFBNoFaceIndicator()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mFFBNoFaceIndicator:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getFFBNoFaceToast()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mFFBNoFaceToast:Landroid/widget/TextView;

    return-object v0
.end method

.method public getFaceBeautyViewLayout()Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mFaceBeautyViewManager:Lcom/freeme/camera/ui/FaceBeautyViewManager;

    invoke-virtual {v0}, Lcom/freeme/camera/ui/FaceBeautyViewManager;->getFaceBeautyViewLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getFaceViewFrameLayout()Lcom/freeme/camera/common/widget/PreviewFrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mPreviewManager:Lcom/freeme/camera/ui/preview/PreviewManager;

    invoke-virtual {v0}, Lcom/freeme/camera/ui/preview/PreviewManager;->getFacePreviewFrameLayout()Lcom/freeme/camera/common/widget/PreviewFrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getGestureManager()Lcom/freeme/camera/gesture/GestureManager;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mGestureManager:Lcom/freeme/camera/gesture/GestureManager;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGridPreviewFrameLayout()Lcom/freeme/camera/common/widget/PreviewFrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mPreviewManager:Lcom/freeme/camera/ui/preview/PreviewManager;

    invoke-virtual {v0}, Lcom/freeme/camera/ui/preview/PreviewManager;->getGridPreviewFrameLayout()Lcom/freeme/camera/common/widget/PreviewFrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getIkoFlashView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mIkoFlashView:Lcom/freeme/camera/common/widget/RotateImageView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIkoTipView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mIkoTipView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getKeyEventListener()Lcom/freeme/camera/common/app/IApp$KeyEventListener;
    .locals 1

    new-instance v0, Lcom/freeme/camera/ui/CameraAppUI$32;

    invoke-direct {v0, p0}, Lcom/freeme/camera/ui/CameraAppUI$32;-><init>(Lcom/freeme/camera/ui/CameraAppUI;)V

    return-object v0
.end method

.method public getModeRootView()Landroid/view/ViewGroup;
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0900be

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getPhotoUi()Lcom/freeme/camera/common/mode/photo/intent/IIntentPhotoUi;
    .locals 3

    new-instance v0, Lcom/freeme/camera/ui/photo/IntentPhotoUi;

    iget-object v1, p0, Lcom/freeme/camera/ui/CameraAppUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/freeme/camera/ui/CameraAppUI;->getModeRootView()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Lcom/freeme/camera/ui/photo/IntentPhotoUi;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/freeme/camera/common/IAppUi;)V

    return-object v0
.end method

.method public getPreviewBlurDrawable()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mDefaultBitmap:Landroid/graphics/Bitmap;

    sput-object v0, Lcom/freeme/camera/ui/CameraAppUI;->mLastBitmap:Landroid/graphics/Bitmap;

    new-instance v0, Lcom/freeme/camera/feature/mode/slr/GaussianBlur;

    iget-object v1, p0, Lcom/freeme/camera/ui/CameraAppUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/feature/mode/slr/GaussianBlur;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/freeme/camera/ui/CameraAppUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v1

    check-cast v1, Lcom/freeme/camera/ui/CameraAppUI;

    invoke-virtual {v1}, Lcom/freeme/camera/ui/CameraAppUI;->getmPreviewManager()Lcom/freeme/camera/ui/preview/PreviewManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/freeme/camera/ui/preview/PreviewManager;->getPreviewBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/freeme/camera/ui/CameraAppUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v2}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/mode/slr/GaussianBlur;->small(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/freeme/camera/feature/mode/slr/GaussianBlur;->blurBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    sput-object v0, Lcom/freeme/camera/ui/CameraAppUI;->mLastBitmap:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method public getPreviewFrameLayout()Lcom/freeme/camera/common/widget/PreviewFrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mPreviewManager:Lcom/freeme/camera/ui/preview/PreviewManager;

    invoke-virtual {v0}, Lcom/freeme/camera/ui/preview/PreviewManager;->getPreviewFrameLayout()Lcom/freeme/camera/common/widget/PreviewFrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getPreviewRatio()I
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mPreviewManager:Lcom/freeme/camera/ui/preview/PreviewManager;

    invoke-virtual {v0}, Lcom/freeme/camera/ui/preview/PreviewManager;->getPreviewRadio()I

    move-result v0

    return v0
.end method

.method public getReviewUI()Lcom/freeme/camera/common/mode/IReviewUI;
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f09003f

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v1, Lcom/freeme/camera/ui/ReviewUI;

    iget-object v2, p0, Lcom/freeme/camera/ui/CameraAppUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-direct {v1, v2, v0}, Lcom/freeme/camera/ui/ReviewUI;-><init>(Lcom/freeme/camera/common/app/IApp;Landroid/view/ViewGroup;)V

    return-object v1
.end method

.method public getShutterButton()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mShutterManager:Lcom/freeme/camera/ui/shutter/ShutterButtonManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->getShutterButton()Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getShutterRootView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mShutterManager:Lcom/freeme/camera/ui/shutter/ShutterButtonManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->getShutterRootView()Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getThumbnailViewWidth()I
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mThumbnailViewManager:Lcom/freeme/camera/ui/ThumbnailViewManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/freeme/camera/ui/ThumbnailViewManager;->getThumbnailViewWidth()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getTopBar()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mTopBar:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    return-object v0
.end method

.method public getTopbarAndShutterRootContainer()Landroid/view/ViewGroup;
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0900da

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getUIRootView()Landroid/view/ViewGroup;
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090040

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getVideoUi()Lcom/freeme/camera/common/mode/video/videoui/IVideoUI;
    .locals 3

    new-instance v0, Lcom/freeme/camera/ui/video/VideoUI;

    iget-object v1, p0, Lcom/freeme/camera/ui/CameraAppUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-virtual {p0}, Lcom/freeme/camera/ui/CameraAppUI;->getModeRootView()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/freeme/camera/ui/video/VideoUI;-><init>(Lcom/freeme/camera/common/app/IApp;Landroid/view/ViewGroup;)V

    return-object v0
.end method

.method public getmPreviewManager()Lcom/freeme/camera/ui/preview/PreviewManager;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mPreviewManager:Lcom/freeme/camera/ui/preview/PreviewManager;

    return-object v0
.end method

.method public hidePreviewAnim(IZ)V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mHander:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-boolean v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->isCameraSwitch:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/freeme/camera/ui/CameraAppUI;->mHander:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {p2, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    const/high16 p2, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p1}, Lcom/freeme/camera/ui/CameraAppUI;->startSwitchAnimation(FFI)V

    iget-object p1, p0, Lcom/freeme/camera/ui/CameraAppUI;->mSwitchAnim:Lcom/freeme/camera/ui/SwitchAnimView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lcom/freeme/camera/ui/SwitchAnimView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/freeme/camera/ui/CameraAppUI;->mTopBar:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public hideQuickSwitcherOption()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/freeme/camera/ui/CameraAppUI$31;

    invoke-direct {v1, p0}, Lcom/freeme/camera/ui/CameraAppUI$31;-><init>(Lcom/freeme/camera/ui/CameraAppUI;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public hideSavingDialog()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/freeme/camera/ui/CameraAppUI$23;

    invoke-direct {v1, p0}, Lcom/freeme/camera/ui/CameraAppUI$23;-><init>(Lcom/freeme/camera/ui/CameraAppUI;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public hideScreenHint(Lcom/freeme/camera/common/IAppUi$HintInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/freeme/camera/ui/CameraAppUI$9;

    invoke-direct {v1, p0, p1}, Lcom/freeme/camera/ui/CameraAppUI$9;-><init>(Lcom/freeme/camera/ui/CameraAppUI;Lcom/freeme/camera/common/IAppUi$HintInfo;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public isIKOIntent()Z
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.freeme.iko"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method protected isSecureIntent(Landroid/app/Activity;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "android.media.action.IMAGE_CAPTURE_SECURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "secure_camera"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public isThirdPartyIntent(Landroid/app/Activity;)Z
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

.method public onBackPressed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCameraSelected(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->isCameraSwitch:Z

    iget-object v1, p0, Lcom/freeme/camera/ui/CameraAppUI;->mCurrentCameraId:Ljava/lang/String;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/freeme/camera/ui/CameraAppUI;->mCurrentCameraId:Ljava/lang/String;

    iget-object v2, p0, Lcom/freeme/camera/ui/CameraAppUI;->mShutterManager:Lcom/freeme/camera/ui/shutter/ShutterButtonManager;

    invoke-virtual {v2, p1}, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->setCurrentCameraId(Ljava/lang/String;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/freeme/camera/ui/CameraAppUI;->mModeProvider:Lcom/freeme/camera/ui/modepicker/ModeProvider;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/freeme/camera/ui/CameraAppUI;->mShutterManager:Lcom/freeme/camera/ui/shutter/ShutterButtonManager;

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mIsCameraSwitch:Z

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/freeme/camera/ui/CameraAppUI$11;

    invoke-direct {v1, p0, p1}, Lcom/freeme/camera/ui/CameraAppUI$11;-><init>(Lcom/freeme/camera/ui/CameraAppUI;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mModePickerManager:Lcom/freeme/camera/ui/modepicker/ModePickerManager;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/ui/modepicker/ModePickerManager;->onPreviewStarted(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onCaptureState(Lcom/freeme/camera/common/CaptureState;)V
    .locals 1

    iput-object p1, p0, Lcom/freeme/camera/ui/CameraAppUI;->mCaptureState:Lcom/freeme/camera/common/CaptureState;

    iget-object p1, p0, Lcom/freeme/camera/ui/CameraAppUI;->mCaptureState:Lcom/freeme/camera/common/CaptureState;

    sget-object v0, Lcom/freeme/camera/common/CaptureState;->FINISH:Lcom/freeme/camera/common/CaptureState;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/freeme/camera/ui/CameraAppUI;->mFirstClick:Z

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onCreate()V
    .locals 10

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090040

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/freeme/camera/ui/CameraAppUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x1

    const v3, 0x7f0b0028

    invoke-virtual {v1, v3, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const v3, 0x7f090069

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0901ed

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/freeme/camera/ui/CameraAppUI;->mIkoTipView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/freeme/camera/ui/CameraAppUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v4}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0900f9

    invoke-virtual {v4, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/freeme/camera/common/widget/RotateImageView;

    iput-object v4, p0, Lcom/freeme/camera/ui/CameraAppUI;->mIkoFlashView:Lcom/freeme/camera/common/widget/RotateImageView;

    iget-object v4, p0, Lcom/freeme/camera/ui/CameraAppUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v4}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0901eb

    invoke-virtual {v4, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/freeme/camera/ui/CameraAppUI;->mTopBar:Landroid/view/View;

    iget-object v4, p0, Lcom/freeme/camera/ui/CameraAppUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v4}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/freeme/camera/common/utils/CameraUtil;->isHasNavigationBar(Landroid/app/Activity;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {}, Lcom/freeme/camera/common/utils/CameraUtil;->isTablet()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/freeme/camera/ui/CameraAppUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v6}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/freeme/camera/common/utils/CameraUtil;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v6

    sget-object v7, Lcom/freeme/camera/ui/CameraAppUI;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " onCreate displayRotation  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const/16 v7, 0x5a

    if-eq v6, v7, :cond_1

    const/16 v7, 0x10e

    if-ne v6, v7, :cond_0

    goto :goto_0

    :cond_0
    iget v6, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v6, v5

    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget v6, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v6, v5

    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_2
    iget v6, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v6, v5

    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    :goto_1
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    iget-object v4, p0, Lcom/freeme/camera/ui/CameraAppUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v4}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v4, v3, Landroid/graphics/Point;->x:I

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-static {v4, v3}, Lcom/freeme/camera/common/utils/CameraUtil;->determineRatio(II)I

    move-result v3

    iput v3, p0, Lcom/freeme/camera/ui/CameraAppUI;->mScreenRatio:I

    iget v3, p0, Lcom/freeme/camera/ui/CameraAppUI;->mScreenRatio:I

    if-ne v3, v2, :cond_4

    goto :goto_2

    :cond_4
    const/16 v3, 0x60

    invoke-direct {p0, v3}, Lcom/freeme/camera/ui/CameraAppUI;->updateLayoutForNavigationBar(I)V

    :goto_2
    new-instance v3, Lcom/freeme/camera/ui/modepicker/ModeProvider;

    invoke-direct {v3}, Lcom/freeme/camera/ui/modepicker/ModeProvider;-><init>()V

    iput-object v3, p0, Lcom/freeme/camera/ui/CameraAppUI;->mModeProvider:Lcom/freeme/camera/ui/modepicker/ModeProvider;

    iget-object v3, p0, Lcom/freeme/camera/ui/CameraAppUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v3}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/freeme/camera/gesture/GestureManager;

    iget-object v6, p0, Lcom/freeme/camera/ui/CameraAppUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v6}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/freeme/camera/gesture/GestureManager;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/freeme/camera/ui/CameraAppUI;->mGestureManager:Lcom/freeme/camera/gesture/GestureManager;

    new-instance v4, Lcom/freeme/camera/ui/AnimationManager;

    iget-object v6, p0, Lcom/freeme/camera/ui/CameraAppUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-direct {v4, v6, p0}, Lcom/freeme/camera/ui/AnimationManager;-><init>(Lcom/freeme/camera/common/app/IApp;Lcom/freeme/camera/ui/CameraAppUI;)V

    iput-object v4, p0, Lcom/freeme/camera/ui/CameraAppUI;->mAnimationManager:Lcom/freeme/camera/ui/AnimationManager;

    new-instance v4, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;

    iget-object v6, p0, Lcom/freeme/camera/ui/CameraAppUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-direct {v4, v6, v1}, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;-><init>(Lcom/freeme/camera/common/app/IApp;Landroid/view/ViewGroup;)V

    iput-object v4, p0, Lcom/freeme/camera/ui/CameraAppUI;->mShutterManager:Lcom/freeme/camera/ui/shutter/ShutterButtonManager;

    iget-object v4, p0, Lcom/freeme/camera/ui/CameraAppUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v4}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v6, 0x7f0901b8

    invoke-virtual {v4, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-object v6, p0, Lcom/freeme/camera/ui/CameraAppUI;->mGestureManager:Lcom/freeme/camera/gesture/GestureManager;

    invoke-virtual {v6}, Lcom/freeme/camera/gesture/GestureManager;->getRootOnTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v4, p0, Lcom/freeme/camera/ui/CameraAppUI;->mShutterManager:Lcom/freeme/camera/ui/shutter/ShutterButtonManager;

    invoke-virtual {v4, v5}, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->setVisibility(I)V

    iget-object v4, p0, Lcom/freeme/camera/ui/CameraAppUI;->mShutterManager:Lcom/freeme/camera/ui/shutter/ShutterButtonManager;

    new-instance v6, Lcom/freeme/camera/ui/CameraAppUI$OnShutterChangeListenerImpl;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/freeme/camera/ui/CameraAppUI$OnShutterChangeListenerImpl;-><init>(Lcom/freeme/camera/ui/CameraAppUI;Lcom/freeme/camera/ui/CameraAppUI$1;)V

    invoke-virtual {v4, v6}, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->setOnShutterChangedListener(Lcom/freeme/camera/ui/shutter/ShutterButtonManager$OnShutterChangeListener;)V

    iget-object v4, p0, Lcom/freeme/camera/ui/CameraAppUI;->mViewManagers:Ljava/util/List;

    iget-object v6, p0, Lcom/freeme/camera/ui/CameraAppUI;->mShutterManager:Lcom/freeme/camera/ui/shutter/ShutterButtonManager;

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    new-instance v3, Lcom/freeme/camera/ui/ThumbnailViewManager;

    iget-object v4, p0, Lcom/freeme/camera/ui/CameraAppUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-direct {v3, v4, v1}, Lcom/freeme/camera/ui/ThumbnailViewManager;-><init>(Lcom/freeme/camera/common/app/IApp;Landroid/view/ViewGroup;)V

    iput-object v3, p0, Lcom/freeme/camera/ui/CameraAppUI;->mThumbnailViewManager:Lcom/freeme/camera/ui/ThumbnailViewManager;

    iget-object v3, p0, Lcom/freeme/camera/ui/CameraAppUI;->mViewManagers:Ljava/util/List;

    iget-object v4, p0, Lcom/freeme/camera/ui/CameraAppUI;->mThumbnailViewManager:Lcom/freeme/camera/ui/ThumbnailViewManager;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/freeme/camera/ui/CameraAppUI;->mThumbnailViewManager:Lcom/freeme/camera/ui/ThumbnailViewManager;

    invoke-virtual {v3, v5}, Lcom/freeme/camera/ui/ThumbnailViewManager;->setVisibility(I)V

    iget-object v3, p0, Lcom/freeme/camera/ui/CameraAppUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v3}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/freeme/camera/CameraActivity;

    iget-object v4, p0, Lcom/freeme/camera/ui/CameraAppUI;->mThumbnailViewManager:Lcom/freeme/camera/ui/ThumbnailViewManager;

    invoke-virtual {v3, v4}, Lcom/freeme/camera/CameraActivity;->setThumbnailClickedListener(Lcom/freeme/camera/ui/ThumbnailViewListener;)V

    :cond_5
    new-instance v3, Lcom/freeme/camera/ui/preview/PreviewManager;

    iget-object v4, p0, Lcom/freeme/camera/ui/CameraAppUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-direct {v3, v4, v2}, Lcom/freeme/camera/ui/preview/PreviewManager;-><init>(Lcom/freeme/camera/common/app/IApp;Z)V

    iput-object v3, p0, Lcom/freeme/camera/ui/CameraAppUI;->mNormalPreviewManager:Lcom/freeme/camera/ui/preview/PreviewManager;

    new-instance v2, Lcom/freeme/camera/ui/preview/PreviewManager;

    iget-object v3, p0, Lcom/freeme/camera/ui/CameraAppUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-direct {v2, v3, v5}, Lcom/freeme/camera/ui/preview/PreviewManager;-><init>(Lcom/freeme/camera/common/app/IApp;Z)V

    iput-object v2, p0, Lcom/freeme/camera/ui/CameraAppUI;->mFaceBeautyPreviewManager:Lcom/freeme/camera/ui/preview/PreviewManager;

    iget-object v2, p0, Lcom/freeme/camera/ui/CameraAppUI;->mNormalPreviewManager:Lcom/freeme/camera/ui/preview/PreviewManager;

    new-instance v3, Lcom/freeme/camera/ui/CameraAppUI$OnTouchListenerImpl;

    invoke-direct {v3, p0, v7}, Lcom/freeme/camera/ui/CameraAppUI$OnTouchListenerImpl;-><init>(Lcom/freeme/camera/ui/CameraAppUI;Lcom/freeme/camera/ui/CameraAppUI$1;)V

    invoke-virtual {v2, v3}, Lcom/freeme/camera/ui/preview/PreviewManager;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v2, p0, Lcom/freeme/camera/ui/CameraAppUI;->mFaceBeautyPreviewManager:Lcom/freeme/camera/ui/preview/PreviewManager;

    new-instance v3, Lcom/freeme/camera/ui/CameraAppUI$OnTouchListenerImpl;

    invoke-direct {v3, p0, v7}, Lcom/freeme/camera/ui/CameraAppUI$OnTouchListenerImpl;-><init>(Lcom/freeme/camera/ui/CameraAppUI;Lcom/freeme/camera/ui/CameraAppUI$1;)V

    invoke-virtual {v2, v3}, Lcom/freeme/camera/ui/preview/PreviewManager;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v2, p0, Lcom/freeme/camera/ui/CameraAppUI;->mNormalPreviewManager:Lcom/freeme/camera/ui/preview/PreviewManager;

    iput-object v2, p0, Lcom/freeme/camera/ui/CameraAppUI;->mPreviewManager:Lcom/freeme/camera/ui/preview/PreviewManager;

    iget-object v2, p0, Lcom/freeme/camera/ui/CameraAppUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v2}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0900d8

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/freeme/camera/ui/SwitchAnimView;

    iput-object v2, p0, Lcom/freeme/camera/ui/CameraAppUI;->mSwitchAnim:Lcom/freeme/camera/ui/SwitchAnimView;

    iget-object v2, p0, Lcom/freeme/camera/ui/CameraAppUI;->mSwitchAnim:Lcom/freeme/camera/ui/SwitchAnimView;

    iget-object v3, p0, Lcom/freeme/camera/ui/CameraAppUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-virtual {v2, v3}, Lcom/freeme/camera/ui/SwitchAnimView;->setApp(Lcom/freeme/camera/common/app/IApp;)V

    iget-object v2, p0, Lcom/freeme/camera/ui/CameraAppUI;->mSwitchAnim:Lcom/freeme/camera/ui/SwitchAnimView;

    iget-object v3, p0, Lcom/freeme/camera/ui/CameraAppUI;->mNormalPreviewManager:Lcom/freeme/camera/ui/preview/PreviewManager;

    invoke-virtual {v3}, Lcom/freeme/camera/ui/preview/PreviewManager;->getPreviewRoot()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/freeme/camera/ui/SwitchAnimView;->setPreviewView(Landroid/view/View;)V

    new-instance v2, Lcom/freeme/camera/ui/modepicker/ModePickerManager;

    iget-object v3, p0, Lcom/freeme/camera/ui/CameraAppUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-direct {v2, v3, v1}, Lcom/freeme/camera/ui/modepicker/ModePickerManager;-><init>(Lcom/freeme/camera/common/app/IApp;Landroid/view/ViewGroup;)V

    iput-object v2, p0, Lcom/freeme/camera/ui/CameraAppUI;->mModePickerManager:Lcom/freeme/camera/ui/modepicker/ModePickerManager;

    iget-object v2, p0, Lcom/freeme/camera/ui/CameraAppUI;->mModePickerManager:Lcom/freeme/camera/ui/modepicker/ModePickerManager;

    new-instance v3, Lcom/freeme/camera/ui/CameraAppUI$OnSettingClickedListenerImpl;

    invoke-direct {v3, p0, v7}, Lcom/freeme/camera/ui/CameraAppUI$OnSettingClickedListenerImpl;-><init>(Lcom/freeme/camera/ui/CameraAppUI;Lcom/freeme/camera/ui/CameraAppUI$1;)V

    invoke-virtual {v2, v3}, Lcom/freeme/camera/ui/modepicker/ModePickerManager;->setSettingClickedListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/freeme/camera/ui/CameraAppUI;->mModePickerManager:Lcom/freeme/camera/ui/modepicker/ModePickerManager;

    new-instance v3, Lcom/freeme/camera/ui/CameraAppUI$OnModeChangedListenerImpl;

    invoke-direct {v3, p0, v7}, Lcom/freeme/camera/ui/CameraAppUI$OnModeChangedListenerImpl;-><init>(Lcom/freeme/camera/ui/CameraAppUI;Lcom/freeme/camera/ui/CameraAppUI$1;)V

    invoke-virtual {v2, v3}, Lcom/freeme/camera/ui/modepicker/ModePickerManager;->setModeChangeListener(Lcom/freeme/camera/ui/modepicker/ModePickerManager$OnModeChangedListener;)V

    iget-object v2, p0, Lcom/freeme/camera/ui/CameraAppUI;->mModePickerManager:Lcom/freeme/camera/ui/modepicker/ModePickerManager;

    invoke-virtual {v2, v5}, Lcom/freeme/camera/ui/modepicker/ModePickerManager;->setVisibility(I)V

    iget-object v2, p0, Lcom/freeme/camera/ui/CameraAppUI;->mViewManagers:Ljava/util/List;

    iget-object v3, p0, Lcom/freeme/camera/ui/CameraAppUI;->mModePickerManager:Lcom/freeme/camera/ui/modepicker/ModePickerManager;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/freeme/camera/ui/QuickSwitcherManager;

    iget-object v3, p0, Lcom/freeme/camera/ui/CameraAppUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-direct {v2, v3, v1}, Lcom/freeme/camera/ui/QuickSwitcherManager;-><init>(Lcom/freeme/camera/common/app/IApp;Landroid/view/ViewGroup;)V

    iput-object v2, p0, Lcom/freeme/camera/ui/CameraAppUI;->mQuickSwitcherManager:Lcom/freeme/camera/ui/QuickSwitcherManager;

    iget-object v2, p0, Lcom/freeme/camera/ui/CameraAppUI;->mQuickSwitcherManager:Lcom/freeme/camera/ui/QuickSwitcherManager;

    invoke-virtual {v2, v5}, Lcom/freeme/camera/ui/QuickSwitcherManager;->setVisibility(I)V

    iget-object v2, p0, Lcom/freeme/camera/ui/CameraAppUI;->mViewManagers:Ljava/util/List;

    iget-object v3, p0, Lcom/freeme/camera/ui/CameraAppUI;->mQuickSwitcherManager:Lcom/freeme/camera/ui/QuickSwitcherManager;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/freeme/camera/ui/IndicatorViewManager;

    iget-object v3, p0, Lcom/freeme/camera/ui/CameraAppUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-direct {v2, v3, v1}, Lcom/freeme/camera/ui/IndicatorViewManager;-><init>(Lcom/freeme/camera/common/app/IApp;Landroid/view/ViewGroup;)V

    iput-object v2, p0, Lcom/freeme/camera/ui/CameraAppUI;->mIndicatorViewManager:Lcom/freeme/camera/ui/IndicatorViewManager;

    iget-object v2, p0, Lcom/freeme/camera/ui/CameraAppUI;->mIndicatorViewManager:Lcom/freeme/camera/ui/IndicatorViewManager;

    invoke-virtual {v2, v5}, Lcom/freeme/camera/ui/IndicatorViewManager;->setVisibility(I)V

    iget-object v2, p0, Lcom/freeme/camera/ui/CameraAppUI;->mViewManagers:Ljava/util/List;

    iget-object v3, p0, Lcom/freeme/camera/ui/CameraAppUI;->mIndicatorViewManager:Lcom/freeme/camera/ui/IndicatorViewManager;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/freeme/camera/ui/SettingFragment;

    invoke-direct {v2}, Lcom/freeme/camera/ui/SettingFragment;-><init>()V

    iput-object v2, p0, Lcom/freeme/camera/ui/CameraAppUI;->mSettingFragment:Lcom/freeme/camera/ui/SettingFragment;

    iget-object v2, p0, Lcom/freeme/camera/ui/CameraAppUI;->mSettingFragment:Lcom/freeme/camera/ui/SettingFragment;

    new-instance v3, Lcom/freeme/camera/ui/CameraAppUI$SettingStateListener;

    invoke-direct {v3, p0, v7}, Lcom/freeme/camera/ui/CameraAppUI$SettingStateListener;-><init>(Lcom/freeme/camera/ui/CameraAppUI;Lcom/freeme/camera/ui/CameraAppUI$1;)V

    invoke-virtual {v2, v3}, Lcom/freeme/camera/ui/SettingFragment;->setStateListener(Lcom/freeme/camera/ui/SettingFragment$StateListener;)V

    invoke-direct {p0}, Lcom/freeme/camera/ui/CameraAppUI;->layoutSettingUI()V

    new-instance v2, Lcom/freeme/camera/ui/SwitchCameraManager;

    iget-object v3, p0, Lcom/freeme/camera/ui/CameraAppUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-direct {v2, v3, v1}, Lcom/freeme/camera/ui/SwitchCameraManager;-><init>(Lcom/freeme/camera/common/app/IApp;Landroid/view/ViewGroup;)V

    iput-object v2, p0, Lcom/freeme/camera/ui/CameraAppUI;->mSwitchCameraManager:Lcom/freeme/camera/ui/SwitchCameraManager;

    iget-object v2, p0, Lcom/freeme/camera/ui/CameraAppUI;->mSwitchCameraManager:Lcom/freeme/camera/ui/SwitchCameraManager;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/freeme/camera/ui/SwitchCameraManager;->setVisibility(I)V

    iget-object v2, p0, Lcom/freeme/camera/ui/CameraAppUI;->mViewManagers:Ljava/util/List;

    iget-object v4, p0, Lcom/freeme/camera/ui/CameraAppUI;->mSwitchCameraManager:Lcom/freeme/camera/ui/SwitchCameraManager;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/freeme/camera/ui/FaceBeautyViewManager;

    iget-object v4, p0, Lcom/freeme/camera/ui/CameraAppUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-direct {v2, v4, v1}, Lcom/freeme/camera/ui/FaceBeautyViewManager;-><init>(Lcom/freeme/camera/common/app/IApp;Landroid/view/ViewGroup;)V

    iput-object v2, p0, Lcom/freeme/camera/ui/CameraAppUI;->mFaceBeautyViewManager:Lcom/freeme/camera/ui/FaceBeautyViewManager;

    iget-object v2, p0, Lcom/freeme/camera/ui/CameraAppUI;->mFaceBeautyViewManager:Lcom/freeme/camera/ui/FaceBeautyViewManager;

    new-instance v4, Lcom/freeme/camera/ui/CameraAppUI$OnBeautyFaceClickedListenerImpl;

    invoke-direct {v4, p0, v7}, Lcom/freeme/camera/ui/CameraAppUI$OnBeautyFaceClickedListenerImpl;-><init>(Lcom/freeme/camera/ui/CameraAppUI;Lcom/freeme/camera/ui/CameraAppUI$1;)V

    invoke-virtual {v2, v4}, Lcom/freeme/camera/ui/FaceBeautyViewManager;->setBeautyFaceClickedListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/freeme/camera/ui/CameraAppUI;->mViewManagers:Ljava/util/List;

    iget-object v4, p0, Lcom/freeme/camera/ui/CameraAppUI;->mFaceBeautyViewManager:Lcom/freeme/camera/ui/FaceBeautyViewManager;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/freeme/camera/ui/SwitchWideAngleManager;

    iget-object v4, p0, Lcom/freeme/camera/ui/CameraAppUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-direct {v2, v4, v1}, Lcom/freeme/camera/ui/SwitchWideAngleManager;-><init>(Lcom/freeme/camera/common/app/IApp;Landroid/view/ViewGroup;)V

    iput-object v2, p0, Lcom/freeme/camera/ui/CameraAppUI;->mSwitchWideAngleManager:Lcom/freeme/camera/ui/SwitchWideAngleManager;

    iget-object v2, p0, Lcom/freeme/camera/ui/CameraAppUI;->mSwitchWideAngleManager:Lcom/freeme/camera/ui/SwitchWideAngleManager;

    invoke-virtual {v2, v3}, Lcom/freeme/camera/ui/SwitchWideAngleManager;->setVisibility(I)V

    iget-object v2, p0, Lcom/freeme/camera/ui/CameraAppUI;->mViewManagers:Ljava/util/List;

    iget-object v4, p0, Lcom/freeme/camera/ui/CameraAppUI;->mSwitchWideAngleManager:Lcom/freeme/camera/ui/SwitchWideAngleManager;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/freeme/camera/ui/SwitchMicroLenManager;

    iget-object v4, p0, Lcom/freeme/camera/ui/CameraAppUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-direct {v2, v4, v1}, Lcom/freeme/camera/ui/SwitchMicroLenManager;-><init>(Lcom/freeme/camera/common/app/IApp;Landroid/view/ViewGroup;)V

    iput-object v2, p0, Lcom/freeme/camera/ui/CameraAppUI;->mSwitchMicroLenManager:Lcom/freeme/camera/ui/SwitchMicroLenManager;

    iget-object v2, p0, Lcom/freeme/camera/ui/CameraAppUI;->mSwitchMicroLenManager:Lcom/freeme/camera/ui/SwitchMicroLenManager;

    invoke-virtual {v2, v3}, Lcom/freeme/camera/ui/SwitchMicroLenManager;->setVisibility(I)V

    iget-object v2, p0, Lcom/freeme/camera/ui/CameraAppUI;->mViewManagers:Ljava/util/List;

    iget-object v3, p0, Lcom/freeme/camera/ui/CameraAppUI;->mSwitchMicroLenManager:Lcom/freeme/camera/ui/SwitchMicroLenManager;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/freeme/camera/ui/OnScreenHintManager;

    iget-object v3, p0, Lcom/freeme/camera/ui/CameraAppUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-direct {v2, v3, v1}, Lcom/freeme/camera/ui/OnScreenHintManager;-><init>(Lcom/freeme/camera/common/app/IApp;Landroid/view/ViewGroup;)V

    iput-object v2, p0, Lcom/freeme/camera/ui/CameraAppUI;->mOnScreenHintManager:Lcom/freeme/camera/ui/OnScreenHintManager;

    :goto_3
    iget-object v1, p0, Lcom/freeme/camera/ui/CameraAppUI;->mViewManagers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v5, v1, :cond_6

    iget-object v1, p0, Lcom/freeme/camera/ui/CameraAppUI;->mViewManagers:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/freeme/camera/ui/IViewManager;

    invoke-interface {v1}, Lcom/freeme/camera/ui/IViewManager;->onCreate()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_6
    iget-object v1, p0, Lcom/freeme/camera/ui/CameraAppUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    iget-object v2, p0, Lcom/freeme/camera/ui/CameraAppUI;->mOrientationChangeListener:Lcom/freeme/camera/ui/CameraAppUI$OnOrientationChangeListenerImpl;

    invoke-interface {v1, v2}, Lcom/freeme/camera/common/app/IApp;->registerOnOrientationChangeListener(Lcom/freeme/camera/common/app/IApp$OnOrientationChangeListener;)V

    iget-object v1, p0, Lcom/freeme/camera/ui/CameraAppUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-virtual {p0}, Lcom/freeme/camera/ui/CameraAppUI;->getKeyEventListener()Lcom/freeme/camera/common/app/IApp$KeyEventListener;

    move-result-object v2

    const v3, 0x7ffffffe

    invoke-interface {v1, v2, v3}, Lcom/freeme/camera/common/app/IApp;->registerKeyEventListener(Lcom/freeme/camera/common/app/IApp$KeyEventListener;I)V

    const v1, 0x7f0900c0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/freeme/camera/ui/CameraAppUI;->mFFBNoFaceIndicator:Landroid/widget/ImageView;

    const v1, 0x7f0900c1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mFFBNoFaceToast:Landroid/widget/TextView;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/freeme/camera/ui/CameraAppUI;->mViewManagers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/freeme/camera/ui/CameraAppUI;->mViewManagers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/freeme/camera/ui/IViewManager;

    invoke-interface {v1}, Lcom/freeme/camera/ui/IViewManager;->onDestroy()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    iget-object v1, p0, Lcom/freeme/camera/ui/CameraAppUI;->mOrientationChangeListener:Lcom/freeme/camera/ui/CameraAppUI$OnOrientationChangeListenerImpl;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/app/IApp;->unregisterOnOrientationChangeListener(Lcom/freeme/camera/common/app/IApp$OnOrientationChangeListener;)V

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-virtual {p0}, Lcom/freeme/camera/ui/CameraAppUI;->getKeyEventListener()Lcom/freeme/camera/common/app/IApp$KeyEventListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/app/IApp;->unRegisterKeyEventListener(Lcom/freeme/camera/common/app/IApp$KeyEventListener;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/freeme/camera/ui/CameraAppUI;->mViewManagers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/freeme/camera/ui/CameraAppUI;->mViewManagers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/freeme/camera/ui/IViewManager;

    invoke-interface {v1}, Lcom/freeme/camera/ui/IViewManager;->onPause()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/freeme/camera/ui/CameraAppUI;->hideAlertDialog()V

    invoke-direct {p0}, Lcom/freeme/camera/ui/CameraAppUI;->hideSetting()V

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mPreviewManager:Lcom/freeme/camera/ui/preview/PreviewManager;

    invoke-virtual {v0}, Lcom/freeme/camera/ui/preview/PreviewManager;->onPause()V

    return-void
.end method

.method public onPreviewStarted(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/freeme/camera/ui/CameraAppUI;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreviewStarted previewCameraId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mCurrentCameraId:Ljava/lang/String;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/freeme/camera/ui/CameraAppUI;->mCurrentCameraId:Ljava/lang/String;

    iget-object v1, p0, Lcom/freeme/camera/ui/CameraAppUI;->mShutterManager:Lcom/freeme/camera/ui/shutter/ShutterButtonManager;

    invoke-virtual {v1, p1}, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->setCurrentCameraId(Ljava/lang/String;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mModePickerManager:Lcom/freeme/camera/ui/modepicker/ModePickerManager;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/ui/modepicker/ModePickerManager;->onPreviewStarted(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/ui/CameraAppUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p1

    new-instance v0, Lcom/freeme/camera/ui/CameraAppUI$10;

    invoke-direct {v0, p0}, Lcom/freeme/camera/ui/CameraAppUI$10;-><init>(Lcom/freeme/camera/ui/CameraAppUI;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onResume()V
    .locals 5

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f09003f

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/common/widget/RotateLayout;

    iget-object v1, p0, Lcom/freeme/camera/ui/CameraAppUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {p0}, Lcom/freeme/camera/ui/CameraAppUI;->hideAlertDialog()V

    sget-object v2, Lcom/freeme/camera/ui/CameraAppUI;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onResume orientation = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget v3, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    invoke-virtual {v0, v2, v2}, Lcom/freeme/camera/common/widget/RotateLayout;->setOrientation(IZ)V

    goto :goto_0

    :cond_0
    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    const/16 v1, 0x5a

    invoke-virtual {v0, v1, v2}, Lcom/freeme/camera/common/widget/RotateLayout;->setOrientation(IZ)V

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    iget-object v1, p0, Lcom/freeme/camera/ui/CameraAppUI;->mViewManagers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/freeme/camera/ui/CameraAppUI;->mViewManagers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/freeme/camera/ui/IViewManager;

    invoke-interface {v1}, Lcom/freeme/camera/ui/IViewManager;->onResume()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/freeme/camera/common/utils/CameraUtil;->isHasNavigationBar(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mIsFirstInit:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/freeme/camera/common/utils/CameraUtil;->getNavigationBarHeight(Landroid/app/Activity;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/freeme/camera/ui/CameraAppUI;->updateLayoutForNavigationBar(I)V

    :cond_3
    invoke-virtual {p0}, Lcom/freeme/camera/ui/CameraAppUI;->isIKOIntent()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "1"

    iget-object v1, p0, Lcom/freeme/camera/ui/CameraAppUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/ui/CameraAppUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v3, 0x7f0f00ec

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/OnScreenHint;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;)Lcom/freeme/camera/OnScreenHint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freeme/camera/OnScreenHint;->showToast()V

    goto :goto_2

    :cond_4
    invoke-direct {p0}, Lcom/freeme/camera/ui/CameraAppUI;->switchIKOMode()V

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.freeme.iko"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_5
    :goto_2
    invoke-direct {p0}, Lcom/freeme/camera/ui/CameraAppUI;->isBeautyModeSupported()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mFaceBeautyViewManager:Lcom/freeme/camera/ui/FaceBeautyViewManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/freeme/camera/ui/FaceBeautyViewManager;->setVisibility(I)V

    invoke-virtual {p0, v2}, Lcom/freeme/camera/ui/CameraAppUI;->showFaceBeautyView(Z)V

    :cond_6
    return-void
.end method

.method public refreshSettingView()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/freeme/camera/ui/CameraAppUI$21;

    invoke-direct {v1, p0}, Lcom/freeme/camera/ui/CameraAppUI$21;-><init>(Lcom/freeme/camera/ui/CameraAppUI;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public registerGestureListener(Lcom/freeme/camera/common/IAppUiListener$OnGestureListener;I)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mGestureManager:Lcom/freeme/camera/gesture/GestureManager;

    invoke-virtual {v0, p1, p2}, Lcom/freeme/camera/gesture/GestureManager;->registerGestureListener(Lcom/freeme/camera/common/IAppUiListener$OnGestureListener;I)V

    return-void
.end method

.method public registerIndicatorDone()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/freeme/camera/ui/CameraAppUI$4;

    invoke-direct {v1, p0}, Lcom/freeme/camera/ui/CameraAppUI$4;-><init>(Lcom/freeme/camera/ui/CameraAppUI;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public registerMode(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/freeme/camera/common/IAppUi$ModeItem;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mModeProvider:Lcom/freeme/camera/ui/modepicker/ModeProvider;

    invoke-virtual {v0}, Lcom/freeme/camera/ui/modepicker/ModeProvider;->clearAllModes()V

    invoke-direct {p0, p1}, Lcom/freeme/camera/ui/CameraAppUI;->sortSizesIncrease(Ljava/util/List;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/freeme/camera/common/IAppUi$ModeItem;

    iget-object v3, p0, Lcom/freeme/camera/ui/CameraAppUI;->mModeProvider:Lcom/freeme/camera/ui/modepicker/ModeProvider;

    invoke-virtual {v3, v2}, Lcom/freeme/camera/ui/modepicker/ModeProvider;->registerMode(Lcom/freeme/camera/common/IAppUi$ModeItem;)V

    iget-boolean v3, p0, Lcom/freeme/camera/ui/CameraAppUI;->mIsCameraSwitch:Z

    if-nez v3, :cond_1

    iget-object v3, v2, Lcom/freeme/camera/common/IAppUi$ModeItem;->mSupportedCameraIds:[Ljava/lang/String;

    array-length v4, v3

    move v5, v0

    :goto_1
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    iget-object v7, p0, Lcom/freeme/camera/ui/CameraAppUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/freeme/camera/ui/CameraAppUI;->mShutterManager:Lcom/freeme/camera/ui/shutter/ShutterButtonManager;

    invoke-virtual {v6, v2, v1}, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->registerShutterButton(Lcom/freeme/camera/common/IAppUi$ModeItem;I)V

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/freeme/camera/ui/CameraAppUI;->mModePickerManager:Lcom/freeme/camera/ui/modepicker/ModePickerManager;

    iget-object v1, p0, Lcom/freeme/camera/ui/CameraAppUI;->mModeProvider:Lcom/freeme/camera/ui/modepicker/ModeProvider;

    invoke-virtual {p1, v1}, Lcom/freeme/camera/ui/modepicker/ModePickerManager;->registerModeProvider(Lcom/freeme/camera/ui/modepicker/ModeProvider;)V

    iget-boolean p1, p0, Lcom/freeme/camera/ui/CameraAppUI;->mIsCameraSwitch:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/freeme/camera/ui/CameraAppUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p1

    new-instance v1, Lcom/freeme/camera/ui/CameraAppUI$5;

    invoke-direct {v1, p0}, Lcom/freeme/camera/ui/CameraAppUI$5;-><init>(Lcom/freeme/camera/ui/CameraAppUI;)V

    invoke-virtual {p1, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    iput-boolean v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mIsCameraSwitch:Z

    :cond_3
    return-void
.end method

.method public registerOnPreviewAreaChangedListener(Lcom/freeme/camera/common/IAppUiListener$OnPreviewAreaChangedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mPreviewManager:Lcom/freeme/camera/ui/preview/PreviewManager;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/ui/preview/PreviewManager;->registerPreviewAreaChangedListener(Lcom/freeme/camera/common/IAppUiListener$OnPreviewAreaChangedListener;)V

    return-void
.end method

.method public registerOnPreviewTouchedListener(Lcom/freeme/camera/common/IAppUiListener$OnPreviewTouchedListener;)V
    .locals 0

    return-void
.end method

.method public registerOnShutterButtonListener(Lcom/freeme/camera/common/IAppUiListener$OnShutterButtonListener;I)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mShutterManager:Lcom/freeme/camera/ui/shutter/ShutterButtonManager;

    invoke-virtual {v0, p1, p2}, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->registerOnShutterButtonListener(Lcom/freeme/camera/common/IAppUiListener$OnShutterButtonListener;I)V

    return-void
.end method

.method public registerQuickIconDone()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/freeme/camera/ui/CameraAppUI$3;

    invoke-direct {v1, p0}, Lcom/freeme/camera/ui/CameraAppUI$3;-><init>(Lcom/freeme/camera/ui/CameraAppUI;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeFromIndicatorView(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/freeme/camera/ui/CameraAppUI$20;

    invoke-direct {v1, p0, p1}, Lcom/freeme/camera/ui/CameraAppUI$20;-><init>(Lcom/freeme/camera/ui/CameraAppUI;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeFromQuickSwitcher(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mQuickSwitcherManager:Lcom/freeme/camera/ui/QuickSwitcherManager;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/ui/QuickSwitcherManager;->removeFromQuickSwitcher(Landroid/view/View;)V

    return-void
.end method

.method public removeSettingView(Lcom/freeme/camera/common/setting/ICameraSettingView;)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mSettingFragment:Lcom/freeme/camera/ui/SettingFragment;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/ui/SettingFragment;->removeSettingView(Lcom/freeme/camera/common/setting/ICameraSettingView;)V

    return-void
.end method

.method public removeSwitchMicroLenViewEntry()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/freeme/camera/ui/CameraAppUI$29;

    invoke-direct {v1, p0}, Lcom/freeme/camera/ui/CameraAppUI$29;-><init>(Lcom/freeme/camera/ui/CameraAppUI;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeSwitchWideAngleViewEntry()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/freeme/camera/ui/CameraAppUI$27;

    invoke-direct {v1, p0}, Lcom/freeme/camera/ui/CameraAppUI$27;-><init>(Lcom/freeme/camera/ui/CameraAppUI;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected removeTopSurface()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mLastedPreviewManager:Lcom/freeme/camera/ui/preview/PreviewManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/freeme/camera/ui/CameraAppUI;->mPreviewManager:Lcom/freeme/camera/ui/preview/PreviewManager;

    if-eq v0, v1, :cond_0

    invoke-virtual {v0}, Lcom/freeme/camera/ui/preview/PreviewManager;->removeTopSurface()V

    :cond_0
    return-void
.end method

.method public setClickState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/freeme/camera/ui/CameraAppUI;->mFirstClick:Z

    return-void
.end method

.method public setCurrentCameraId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/CameraAppUI;->mCurrentCameraId:Ljava/lang/String;

    return-void
.end method

.method public setEffectViewEntry(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public setMicroLenSwitcherViewEntry(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mSwitchMicroLenManager:Lcom/freeme/camera/ui/SwitchMicroLenManager;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/ui/SwitchMicroLenManager;->setViewEntry(Landroid/view/View;)V

    return-void
.end method

.method public setModeChangeListener(Lcom/freeme/camera/common/IAppUiListener$OnModeChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/CameraAppUI;->mModeChangeListener:Lcom/freeme/camera/common/IAppUiListener$OnModeChangeListener;

    return-void
.end method

.method public setPluginVisibility(Z)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/freeme/camera/CameraActivity;->getIModeListener()Lcom/freeme/camera/common/mode/IModeListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/mode/IModeListener;->getCurrentMode()Lcom/freeme/camera/common/mode/ICameraMode;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/common/mode/CameraModeBase;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/common/mode/CameraModeBase;->setPluginVisibility(Z)V

    return-void
.end method

.method public setPreviewSize(IILcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/freeme/camera/ui/CameraAppUI$7;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/freeme/camera/ui/CameraAppUI$7;-><init>(Lcom/freeme/camera/ui/CameraAppUI;IILcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setSwitchCameraViewEntry(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mSwitchCameraManager:Lcom/freeme/camera/ui/SwitchCameraManager;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/ui/SwitchCameraManager;->setViewEntry(Landroid/view/View;)V

    return-void
.end method

.method public setThumbnailClickedListener(Lcom/freeme/camera/common/IAppUiListener$OnThumbnailClickedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mThumbnailViewManager:Lcom/freeme/camera/ui/ThumbnailViewManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/freeme/camera/ui/ThumbnailViewManager;->setThumbnailClickedListener(Lcom/freeme/camera/common/IAppUiListener$OnThumbnailClickedListener;)V

    :cond_0
    return-void
.end method

.method public setUIEnabled(IZ)V
    .locals 3

    invoke-direct {p0}, Lcom/freeme/camera/ui/CameraAppUI;->isMainThread()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/freeme/camera/ui/CameraAppUI;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUIEnabled + module "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " enabled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iput p2, v0, Landroid/os/Message;->arg2:I

    const/4 p1, 0x3

    iput p1, v0, Landroid/os/Message;->what:I

    iget-object p1, p0, Lcom/freeme/camera/ui/CameraAppUI;->mConfigUIHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    sget-object p1, Lcom/freeme/camera/ui/CameraAppUI;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string p2, "setUIEnabled - "

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/freeme/camera/ui/CameraAppUI;->setUIEnabledImmediately(IZ)V

    :goto_0
    return-void
.end method

.method public setUIEnabledImmediately(IZ)V
    .locals 3

    sget-object v0, Lcom/freeme/camera/ui/CameraAppUI;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUIEnabledImmediately + module "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " enabled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/freeme/camera/ui/CameraAppUI;->configUIEnabled(IZ)V

    return-void
.end method

.method public setUIVisibility(II)V
    .locals 3

    invoke-direct {p0}, Lcom/freeme/camera/ui/CameraAppUI;->isMainThread()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/freeme/camera/ui/CameraAppUI;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUIVisibility + module "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " visibility "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iput p2, v0, Landroid/os/Message;->arg2:I

    const/4 p1, 0x2

    iput p1, v0, Landroid/os/Message;->what:I

    iget-object p1, p0, Lcom/freeme/camera/ui/CameraAppUI;->mConfigUIHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    sget-object p1, Lcom/freeme/camera/ui/CameraAppUI;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string p2, "setUIVisibility - "

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/freeme/camera/ui/CameraAppUI;->setUIVisibilityImmediately(II)V

    :goto_0
    return-void
.end method

.method public setUIVisibilityImmediately(II)V
    .locals 3

    sget-object v0, Lcom/freeme/camera/ui/CameraAppUI;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUIVisibilityImmediately + module "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " visibility "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/freeme/camera/ui/CameraAppUI;->configUIVisibility(II)V

    return-void
.end method

.method public setWideAngleSwitcherViewEntry(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mSwitchWideAngleManager:Lcom/freeme/camera/ui/SwitchWideAngleManager;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/ui/SwitchWideAngleManager;->setViewEntry(Landroid/view/View;)V

    return-void
.end method

.method public setZoomClickListener(Lcom/freeme/camera/common/app/IApp$OnZoomHintClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mOnScreenHintManager:Lcom/freeme/camera/ui/OnScreenHintManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/freeme/camera/ui/OnScreenHintManager;->setZoomClickListener(Lcom/freeme/camera/common/app/IApp$OnZoomHintClickListener;)V

    :cond_0
    return-void
.end method

.method public showFaceBeautyView(Z)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/freeme/camera/ui/CameraAppUI$16;

    invoke-direct {v1, p0, p1}, Lcom/freeme/camera/ui/CameraAppUI$16;-><init>(Lcom/freeme/camera/ui/CameraAppUI;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showPreviewAnim(I)V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mSwitchAnim:Lcom/freeme/camera/ui/SwitchAnimView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/freeme/camera/ui/SwitchAnimView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/freeme/camera/ui/CameraAppUI;->getPreviewBlurDrawable()V

    sget-object v0, Lcom/freeme/camera/ui/CameraAppUI;->mLastBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mDefaultBitmap:Landroid/graphics/Bitmap;

    sput-object v0, Lcom/freeme/camera/ui/CameraAppUI;->mLastBitmap:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mPreviewManager:Lcom/freeme/camera/ui/preview/PreviewManager;

    invoke-virtual {v0}, Lcom/freeme/camera/ui/preview/PreviewManager;->getPreviewArea()Landroid/graphics/RectF;

    move-result-object v0

    iget-boolean v1, p0, Lcom/freeme/camera/ui/CameraAppUI;->isCameraSwitch:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/freeme/camera/ui/CameraAppUI;->mSwitchAnim:Lcom/freeme/camera/ui/SwitchAnimView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/freeme/camera/ui/SwitchAnimView;->setVisibility(I)V

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0, v1, v2, p1}, Lcom/freeme/camera/ui/CameraAppUI;->startSwitchAnimation(FFI)V

    iget-object p1, p0, Lcom/freeme/camera/ui/CameraAppUI;->mSwitchAnim:Lcom/freeme/camera/ui/SwitchAnimView;

    sget-object v1, Lcom/freeme/camera/ui/CameraAppUI;->mLastBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1, v0}, Lcom/freeme/camera/ui/SwitchAnimView;->setSwitchAnimInfo(Landroid/graphics/Bitmap;Landroid/graphics/RectF;)V

    :cond_2
    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method public showQuickSwitcherOption(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/freeme/camera/ui/CameraAppUI$30;

    invoke-direct {v1, p0, p1}, Lcom/freeme/camera/ui/CameraAppUI$30;-><init>(Lcom/freeme/camera/ui/CameraAppUI;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showSavingDialog(Ljava/lang/String;Z)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/freeme/camera/ui/CameraAppUI$22;

    invoke-direct {v1, p0, p2, p1}, Lcom/freeme/camera/ui/CameraAppUI$22;-><init>(Lcom/freeme/camera/ui/CameraAppUI;ZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showScreenHint(Lcom/freeme/camera/common/IAppUi$HintInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/freeme/camera/ui/CameraAppUI$8;

    invoke-direct {v1, p0, p1}, Lcom/freeme/camera/ui/CameraAppUI$8;-><init>(Lcom/freeme/camera/ui/CameraAppUI;Lcom/freeme/camera/common/IAppUi$HintInfo;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showZoomRatioHint(Z)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/freeme/camera/ui/CameraAppUI$15;

    invoke-direct {v1, p0, p1}, Lcom/freeme/camera/ui/CameraAppUI$15;-><init>(Lcom/freeme/camera/ui/CameraAppUI;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public triggerModeChanged(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mModePickerManager:Lcom/freeme/camera/ui/modepicker/ModePickerManager;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/ui/modepicker/ModePickerManager;->modeChanged(Ljava/lang/String;)V

    return-void
.end method

.method public triggerShutterButtonClick(I)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mShutterManager:Lcom/freeme/camera/ui/shutter/ShutterButtonManager;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->triggerShutterButtonClicked(I)V

    return-void
.end method

.method public triggerShutterButtonLongPressed(I)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mShutterManager:Lcom/freeme/camera/ui/shutter/ShutterButtonManager;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->triggerShutterButtonLongPressed(I)V

    return-void
.end method

.method public unregisterGestureListener(Lcom/freeme/camera/common/IAppUiListener$OnGestureListener;)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mGestureManager:Lcom/freeme/camera/gesture/GestureManager;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/gesture/GestureManager;->unregisterGestureListener(Lcom/freeme/camera/common/IAppUiListener$OnGestureListener;)V

    return-void
.end method

.method public unregisterOnPreviewAreaChangedListener(Lcom/freeme/camera/common/IAppUiListener$OnPreviewAreaChangedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mPreviewManager:Lcom/freeme/camera/ui/preview/PreviewManager;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/ui/preview/PreviewManager;->unregisterPreviewAreaChangedListener(Lcom/freeme/camera/common/IAppUiListener$OnPreviewAreaChangedListener;)V

    return-void
.end method

.method public unregisterOnPreviewTouchedListener(Lcom/freeme/camera/common/IAppUiListener$OnPreviewTouchedListener;)V
    .locals 0

    return-void
.end method

.method public unregisterOnShutterButtonListener(Lcom/freeme/camera/common/IAppUiListener$OnShutterButtonListener;)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mShutterManager:Lcom/freeme/camera/ui/shutter/ShutterButtonManager;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->unregisterOnShutterButtonListener(Lcom/freeme/camera/common/IAppUiListener$OnShutterButtonListener;)V

    return-void
.end method

.method public updateBrightnessBackGround(Z)V
    .locals 3

    sget-object v0, Lcom/freeme/camera/ui/CameraAppUI;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBackgroundColor visible = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/freeme/camera/ui/CameraAppUI$17;

    invoke-direct {v1, p0, p1}, Lcom/freeme/camera/ui/CameraAppUI$17;-><init>(Lcom/freeme/camera/ui/CameraAppUI;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateCurrentMode(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/freeme/camera/ui/CameraAppUI;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCurrentMode mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mModeProvider:Lcom/freeme/camera/ui/modepicker/ModeProvider;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/freeme/camera/ui/modepicker/ModeProvider;->getMode(Ljava/lang/String;)Lcom/freeme/camera/common/IAppUi$ModeItem;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/freeme/camera/common/IAppUi$ModeItem;->mModeName:Ljava/lang/String;

    iget-object v1, p0, Lcom/freeme/camera/ui/CameraAppUI;->mCurrentModeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/freeme/camera/common/IAppUi$ModeItem;->mModeName:Ljava/lang/String;

    iput-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mCurrentModeName:Ljava/lang/String;

    iget-object v0, p1, Lcom/freeme/camera/common/IAppUi$ModeItem;->mType:Ljava/lang/String;

    iput-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mCurrentModeType:Ljava/lang/String;

    iget-object v0, p1, Lcom/freeme/camera/common/IAppUi$ModeItem;->mMode:Ljava/lang/String;

    iput-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mCurrentMode:Ljava/lang/String;

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mModeProvider:Lcom/freeme/camera/ui/modepicker/ModeProvider;

    iget-object v1, p0, Lcom/freeme/camera/ui/CameraAppUI;->mCurrentModeName:Ljava/lang/String;

    iget-object v2, p0, Lcom/freeme/camera/ui/CameraAppUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/freeme/camera/ui/modepicker/ModeProvider;->getModeSupportTypes(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mModePickerManager:Lcom/freeme/camera/ui/modepicker/ModePickerManager;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/ui/modepicker/ModePickerManager;->updateCurrentModeItem(Lcom/freeme/camera/common/IAppUi$ModeItem;)V

    :cond_0
    return-void
.end method

.method public updateSettingIconVisibility()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mSettingFragment:Lcom/freeme/camera/ui/SettingFragment;

    invoke-virtual {v0}, Lcom/freeme/camera/ui/SettingFragment;->hasVisibleChild()Z

    move-result v0

    iget-object v1, p0, Lcom/freeme/camera/ui/CameraAppUI;->mModePickerManager:Lcom/freeme/camera/ui/modepicker/ModePickerManager;

    invoke-virtual {v1, v0}, Lcom/freeme/camera/ui/modepicker/ModePickerManager;->setSettingIconVisible(Z)V

    return-void
.end method

.method public updateThumbnail(Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mThumbnailViewManager:Lcom/freeme/camera/ui/ThumbnailViewManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/freeme/camera/ui/CameraAppUI$2;

    invoke-direct {v1, p0, p1}, Lcom/freeme/camera/ui/CameraAppUI$2;-><init>(Lcom/freeme/camera/ui/CameraAppUI;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
