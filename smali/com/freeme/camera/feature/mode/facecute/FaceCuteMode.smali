.class public Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;
.super Lcom/freeme/camera/common/mode/CameraModeBase;
.source "FaceCuteMode.java"

# interfaces
.implements Lcom/freeme/camera/feature/mode/facecute/device/IDeviceController$CaptureDataCallback;
.implements Lcom/freeme/camera/feature/mode/facecute/device/IDeviceController$DeviceCallback;
.implements Lcom/freeme/camera/feature/mode/facecute/device/IDeviceController$PreviewSizeCallback;
.implements Lcom/freeme/camera/common/memory/IMemoryManager$IMemoryListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode$NamedImages;,
        Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode$MyStatusChangeListener;,
        Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode$SurfaceChangeListener;
    }
.end annotation


# static fields
.field private static final DNG_IMAGE_SIZE:J = 0x2d00000L

.field private static final JPEG_CALLBACK:Ljava/lang/String; = "jpeg callback"

.field private static final KEY_DNG:Ljava/lang/String; = "key_dng"

.field private static final KEY_FORMTAT:Ljava/lang/String; = "key_format"

.field private static final KEY_MATRIX_DISPLAY_SHOW:Ljava/lang/String; = "key_matrix_display_show"

.field protected static final KEY_PHOTO_CAPTURE:Ljava/lang/String; = "key_photo_capture"

.field private static final KEY_PICTURE_SIZE:Ljava/lang/String; = "key_picture_size"

.field private static final KEY_PICTURE_SIZE_FULLSCREEN:Ljava/lang/String; = "key_picture_size_fullscreen"

.field protected static final PHOTO_CAPTURE_START:Ljava/lang/String; = "start"

.field protected static final PHOTO_CAPTURE_STOP:Ljava/lang/String; = "stop"

.field private static final POST_VIEW_CALLBACK:Ljava/lang/String; = "post view callback"

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private mBody:Landroid/view/View;

.field private mCameraActivity:Lcom/freeme/camera/CameraActivity;

.field protected mCameraChildrenModeHelper:Lcom/freeme/camera/feature/mode/facecute/FaceCuteModeHelper;

.field protected mCameraChildrenStatusResponder:Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;

.field private mCameraId:Ljava/lang/String;

.field protected mCaptureHeight:I

.field private mCaptureNumberSync:Ljava/lang/Object;

.field protected mCaptureWidth:I

.field private mCapturingNumber:I

.field private mCartoonLayout:Landroid/widget/LinearLayout;

.field private mCurrItemId:I

.field private mCurrItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrTypeIndex:I

.field private mDecorationLayout:Landroid/widget/LinearLayout;

.field private mDelightLayout:Landroid/widget/LinearLayout;

.field private mExpressionLayout:Landroid/widget/LinearLayout;

.field private mFunnyPictureCallback:Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$FunnyPictureCallback;

.field private final mGData:[F

.field private mHeading:I

.field protected mIDeviceController:Lcom/freeme/camera/feature/mode/facecute/device/IDeviceController;

.field private mISettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

.field private mISurfaceStatusListener:Lcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;

.field private mIsMatrixDisplayShow:Z

.field protected volatile mIsResumed:Z

.field private mItemGroup:Landroid/widget/LinearLayout;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private final mMData:[F

.field private mMediaSaverListener:Lcom/freeme/camera/common/storage/MediaSaver$MediaSaverListener;

.field private mMemoryManager:Lcom/freeme/camera/common/memory/MemoryManagerImpl;

.field private mMemoryState:Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;

.field private mNamedImages:Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode$NamedImages;

.field private mPanel:Landroid/view/View;

.field private mPopDownDrawable:Landroid/graphics/drawable/Drawable;

.field private mPopUpDrawable:Landroid/graphics/drawable/Drawable;

.field private mPreviewData:[B

.field private mPreviewDataSync:Ljava/lang/Object;

.field private mPreviewFormat:I

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private final mR:[F

.field private mRoot:Landroid/view/ViewGroup;

.field private mSeletedItem:Landroid/widget/ImageView;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mStatusChangeListener:Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;

.field private mTitle:Landroid/widget/TextView;

.field private mTitleDown:Landroid/widget/TextView;

.field private mTitleStripView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/freeme/camera/common/mode/CameraModeBase;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mCaptureHeight:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mIsResumed:Z

    new-instance v0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode$SurfaceChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode$SurfaceChangeListener;-><init>(Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode$1;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mISurfaceStatusListener:Lcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;

    const/4 v0, 0x0

    iput v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mCapturingNumber:I

    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mIsMatrixDisplayShow:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mPreviewDataSync:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mCaptureNumberSync:Ljava/lang/Object;

    new-instance v0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode$MyStatusChangeListener;

    invoke-direct {v0, p0, v1}, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode$MyStatusChangeListener;-><init>(Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode$1;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mStatusChangeListener:Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;

    sget-object v0, Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;->NORMAL:Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mMemoryState:Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;

    const/4 v0, 0x3

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mGData:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mMData:[F

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mR:[F

    const/4 v0, -0x1

    iput v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mHeading:I

    new-instance v0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode$1;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode$1;-><init>(Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mFunnyPictureCallback:Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$FunnyPictureCallback;

    new-instance v0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode$6;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode$6;-><init>(Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mMediaSaverListener:Lcom/freeme/camera/common/storage/MediaSaver$MediaSaverListener;

    return-void
.end method

.method static synthetic access$1000(Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->stopSwitchCameraAnimation()V

    return-void
.end method

.method static synthetic access$1100(Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->stopCaptureAnimation()V

    return-void
.end method

.method static synthetic access$1200(Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;)Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$FunnyPictureCallback;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mFunnyPictureCallback:Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$FunnyPictureCallback;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->show()V

    return-void
.end method

.method static synthetic access$1500(Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mCaptureNumberSync:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;)I
    .locals 0

    iget p0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mCapturingNumber:I

    return p0
.end method

.method static synthetic access$1710(Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;)I
    .locals 2

    iget v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mCapturingNumber:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mCapturingNumber:I

    return v0
.end method

.method static synthetic access$1802(Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;)Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mMemoryState:Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$200(Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;[B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->saveData([B)V

    return-void
.end method

.method static synthetic access$2000(Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;)Lcom/freeme/camera/common/mode/CameraModeBase$ModeHandler;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mModeHandler:Lcom/freeme/camera/common/mode/CameraModeBase$ModeHandler;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;)Lcom/freeme/camera/common/mode/CameraModeBase$ModeHandler;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mModeHandler:Lcom/freeme/camera/common/mode/CameraModeBase$ModeHandler;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;)Lcom/freeme/camera/common/mode/CameraModeBase$ModeHandler;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mModeHandler:Lcom/freeme/camera/common/mode/CameraModeBase$ModeHandler;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;)Lcom/freeme/camera/common/mode/CameraModeBase$ModeHandler;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mModeHandler:Lcom/freeme/camera/common/mode/CameraModeBase$ModeHandler;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;)I
    .locals 0

    iget p0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mPreviewWidth:I

    return p0
.end method

.method static synthetic access$2600(Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;)I
    .locals 0

    iget p0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mPreviewHeight:I

    return p0
.end method

.method static synthetic access$2700(Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->onPreviewSizeChanged(II)V

    return-void
.end method

.method static synthetic access$2802(Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mIsMatrixDisplayShow:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;)I
    .locals 0

    iget p0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mCurrItemId:I

    return p0
.end method

.method static synthetic access$2902(Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;I)I
    .locals 0

    iput p1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mCurrItemId:I

    return p1
.end method

.method static synthetic access$300(Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->swithEffect(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mSeletedItem:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$3102(Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mSeletedItem:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$400(Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$500(Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mPanel:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$502(Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mPanel:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$600(Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mRoot:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$602(Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mRoot:Landroid/view/ViewGroup;

    return-object p1
.end method

.method static synthetic access$700(Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;)Lcom/freeme/camera/CameraActivity;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mCameraActivity:Lcom/freeme/camera/CameraActivity;

    return-object p0
.end method

.method static synthetic access$800(Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$900()Lcom/freeme/camera/common/debug/LogUtil$Tag;
    .locals 1

    sget-object v0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-object v0
.end method

.method private assembleCurrTypeItems()V
    .locals 6

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mCurrItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mItemGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mCurrTypeIndex:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    :pswitch_0
    sget-object v0, Lcom/freeme/camera/feature/mode/facecute/FFBResource;->EXPRESSION_DRAWABLE_RES:[I

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/freeme/camera/feature/mode/facecute/FFBResource;->CARTOON_DRAWABLE_RES:[I

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/freeme/camera/feature/mode/facecute/FFBResource;->DELIGHT_DRAWABLE_RES:[I

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/freeme/camera/feature/mode/facecute/FFBResource;->DECORATION_DRAWABLE_RES:[I

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v2, v0

    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_0

    aget v4, v0, v3

    iget-object v5, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mCurrItemList:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mCurrItemId:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mCurrItemList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mCurrItemId:I

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mCurrItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mCurrItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0b0057

    iget-object v5, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mItemGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4, v5, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0900bf

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget v5, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mCurrItemId:I

    if-ne v2, v5, :cond_2

    const v2, 0x7f08011e

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iput-object v4, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mSeletedItem:Landroid/widget/ImageView;

    iget v2, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mCurrItemId:I

    invoke-static {v2}, Lcom/freeme/camera/feature/mode/facecute/FFBResource;->getEffectById(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-direct {p0, v2}, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->swithEffect(Ljava/lang/String;)V

    :cond_2
    iget-object v2, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mItemGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode$7;

    invoke-direct {v2, p0}, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode$7;-><init>(Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;)V

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private canSelectCamera(Ljava/lang/String;)Z
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mCameraId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    sget-object v0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[canSelectCamera] +: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return p1
.end method

.method private clearAllCallbacks(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mIDeviceController:Lcom/freeme/camera/feature/mode/facecute/device/IDeviceController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/freeme/camera/feature/mode/facecute/device/IDeviceController;->setPreviewSizeReadyCallback(Lcom/freeme/camera/feature/mode/facecute/device/IDeviceController$PreviewSizeCallback;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mICameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-interface {v0, p1}, Lcom/freeme/camera/common/ICameraContext;->getStatusMonitor(Ljava/lang/String;)Lcom/freeme/camera/common/relation/StatusMonitor;

    move-result-object p1

    const-string v0, "key_picture_size"

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mStatusChangeListener:Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/freeme/camera/common/relation/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;)V

    const-string v0, "key_format"

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mStatusChangeListener:Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/freeme/camera/common/relation/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;)V

    const-string v0, "key_matrix_display_show"

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mStatusChangeListener:Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/freeme/camera/common/relation/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method private disableAllUIExceptionShutter()V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->applyAllUIEnabled(Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Lcom/freeme/camera/common/IAppUi;->setUIEnabled(IZ)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    const/4 v2, 0x7

    invoke-interface {v0, v2, v1}, Lcom/freeme/camera/common/IAppUi;->setUIEnabled(IZ)V

    return-void
.end method

.method private doCameraSelect(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->applyAllUIEnabled(Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/freeme/camera/common/IAppUi;->onCameraSelected(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->prePareAndCloseCamera(ZLjava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->recycleSettingManager(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->initSettingManager(Ljava/lang/String;)V

    invoke-direct {p0, v1, p2, v0}, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->prepareAndOpenCamera(ZLjava/lang/String;Z)V

    return-void
.end method

.method private handleClickCartoon()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mDecorationLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mDelightLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mCartoonLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mExpressionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mCurrTypeIndex:I

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->assembleCurrTypeItems()V

    return-void
.end method

.method private handleClickDecoration()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mDecorationLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mDelightLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mCartoonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mExpressionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    iput v1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mCurrTypeIndex:I

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->assembleCurrTypeItems()V

    return-void
.end method

.method private handleClickDelight()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mDecorationLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mDelightLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mCartoonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mExpressionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    iput v2, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mCurrTypeIndex:I

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->assembleCurrTypeItems()V

    return-void
.end method

.method private handleClickExpression()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mDecorationLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mDelightLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mCartoonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mExpressionLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    const/4 v0, 0x3

    iput v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mCurrTypeIndex:I

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->assembleCurrTypeItems()V

    return-void
.end method

.method private handleClickTitle()V
    .locals 0

    return-void
.end method

.method private handleClickTitleDown()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mBody:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mBody:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mTitleDown:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mPopDownDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v1, v2, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mBody:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mTitleDown:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mPopUpDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v1, v2, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method private initSettingManager(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mICameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-interface {v0}, Lcom/freeme/camera/common/ICameraContext;->getSettingManagerFactory()Lcom/freeme/camera/common/setting/SettingManagerFactory;

    move-result-object v0

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->getModeKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/freeme/camera/common/mode/ICameraMode$ModeType;->PHOTO:Lcom/freeme/camera/common/mode/ICameraMode$ModeType;

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mCameraApi:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/freeme/camera/common/setting/SettingManagerFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;Lcom/freeme/camera/common/mode/ICameraMode$ModeType;Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;)Lcom/freeme/camera/common/setting/ISettingManager;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mISettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

    return-void
.end method

.method private initStatusMonitor()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mICameraContext:Lcom/freeme/camera/common/ICameraContext;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mCameraId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/ICameraContext;->getStatusMonitor(Ljava/lang/String;)Lcom/freeme/camera/common/relation/StatusMonitor;

    move-result-object v0

    const-string v1, "key_photo_capture"

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/relation/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mCameraChildrenStatusResponder:Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;

    return-void
.end method

.method private initTypeIndex(I)V
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/mode/facecute/FFBResource;->DECORATION_DRAWABLE_RES:[I

    invoke-direct {p0, v0, p1}, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->isInResArray([II)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iput v2, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mCurrTypeIndex:I

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mDecorationLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mDelightLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mCartoonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mExpressionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    :cond_0
    sget-object v0, Lcom/freeme/camera/feature/mode/facecute/FFBResource;->DELIGHT_DRAWABLE_RES:[I

    invoke-direct {p0, v0, p1}, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->isInResArray([II)Z

    move-result v0

    if-eqz v0, :cond_1

    iput v1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mCurrTypeIndex:I

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mDecorationLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mDelightLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mCartoonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mExpressionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    :cond_1
    sget-object v0, Lcom/freeme/camera/feature/mode/facecute/FFBResource;->CARTOON_DRAWABLE_RES:[I

    invoke-direct {p0, v0, p1}, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->isInResArray([II)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    iput v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mCurrTypeIndex:I

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mDecorationLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mDelightLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mCartoonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mExpressionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    :cond_2
    sget-object v0, Lcom/freeme/camera/feature/mode/facecute/FFBResource;->EXPRESSION_DRAWABLE_RES:[I

    invoke-direct {p0, v0, p1}, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->isInResArray([II)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x3

    iput p1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mCurrTypeIndex:I

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mDecorationLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mDelightLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mCartoonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mExpressionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    :cond_3
    return-void
.end method

.method private isInResArray([II)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    aget v2, p1, v1

    if-ne v2, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method private onPreviewSizeChanged(II)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mPreviewDataSync:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mPreviewData:[B

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput p1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mPreviewWidth:I

    iput p2, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mPreviewHeight:I

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object p1

    iget p2, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mPreviewWidth:I

    iget v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mPreviewHeight:I

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mISurfaceStatusListener:Lcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;

    invoke-interface {p1, p2, v0, v1}, Lcom/freeme/camera/common/IAppUi;->setPreviewSize(IILcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private prePareAndCloseCamera(ZLjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/freeme/camera/CameraActivity;->getmBeautyFaceView()Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->setPauseed(Z)V

    invoke-direct {p0, p2}, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->clearAllCallbacks(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mIDeviceController:Lcom/freeme/camera/feature/mode/facecute/device/IDeviceController;

    invoke-interface {p2, p1}, Lcom/freeme/camera/feature/mode/facecute/device/IDeviceController;->closeCamera(Z)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mIsMatrixDisplayShow:Z

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mPreviewData:[B

    iput p1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mPreviewWidth:I

    iput p1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mPreviewHeight:I

    return-void
.end method

.method private prepareAndOpenCamera(ZLjava/lang/String;Z)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/freeme/camera/CameraActivity;->getmBeautyFaceView()Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->setPauseed(Z)V

    iput-object p2, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mCameraId:Ljava/lang/String;

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mICameraContext:Lcom/freeme/camera/common/ICameraContext;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mCameraId:Ljava/lang/String;

    invoke-interface {p2, v0}, Lcom/freeme/camera/common/ICameraContext;->getStatusMonitor(Ljava/lang/String;)Lcom/freeme/camera/common/relation/StatusMonitor;

    move-result-object p2

    const-string v0, "key_picture_size"

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mStatusChangeListener:Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;

    invoke-virtual {p2, v0, v1}, Lcom/freeme/camera/common/relation/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;)V

    const-string v0, "key_format"

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mStatusChangeListener:Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;

    invoke-virtual {p2, v0, v1}, Lcom/freeme/camera/common/relation/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;)V

    const-string v0, "key_matrix_display_show"

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mStatusChangeListener:Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;

    invoke-virtual {p2, v0, v1}, Lcom/freeme/camera/common/relation/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;)V

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mIDeviceController:Lcom/freeme/camera/feature/mode/facecute/device/IDeviceController;

    invoke-interface {p2, p0}, Lcom/freeme/camera/feature/mode/facecute/device/IDeviceController;->setDeviceCallback(Lcom/freeme/camera/feature/mode/facecute/device/IDeviceController$DeviceCallback;)V

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mIDeviceController:Lcom/freeme/camera/feature/mode/facecute/device/IDeviceController;

    invoke-interface {p2, p0}, Lcom/freeme/camera/feature/mode/facecute/device/IDeviceController;->setPreviewSizeReadyCallback(Lcom/freeme/camera/feature/mode/facecute/device/IDeviceController$PreviewSizeCallback;)V

    new-instance p2, Lcom/freeme/camera/feature/mode/facecute/DeviceInfo;

    invoke-direct {p2}, Lcom/freeme/camera/feature/mode/facecute/DeviceInfo;-><init>()V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mCameraId:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/freeme/camera/feature/mode/facecute/DeviceInfo;->setCameraId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mISettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

    invoke-virtual {p2, v0}, Lcom/freeme/camera/feature/mode/facecute/DeviceInfo;->setSettingManager(Lcom/freeme/camera/common/setting/ISettingManager;)V

    invoke-virtual {p2, p1}, Lcom/freeme/camera/feature/mode/facecute/DeviceInfo;->setNeedOpenCameraSync(Z)V

    invoke-virtual {p2, p3}, Lcom/freeme/camera/feature/mode/facecute/DeviceInfo;->setNeedFastStartPreview(Z)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mIDeviceController:Lcom/freeme/camera/feature/mode/facecute/device/IDeviceController;

    invoke-interface {p1, p2}, Lcom/freeme/camera/feature/mode/facecute/device/IDeviceController;->openCamera(Lcom/freeme/camera/feature/mode/facecute/DeviceInfo;)V

    return-void
.end method

.method private prepareAnimationData([BIII)Lcom/freeme/camera/common/IAppUi$AnimationData;
    .locals 1

    new-instance v0, Lcom/freeme/camera/common/IAppUi$AnimationData;

    invoke-direct {v0}, Lcom/freeme/camera/common/IAppUi$AnimationData;-><init>()V

    iput-object p1, v0, Lcom/freeme/camera/common/IAppUi$AnimationData;->mData:[B

    iput p2, v0, Lcom/freeme/camera/common/IAppUi$AnimationData;->mWidth:I

    iput p3, v0, Lcom/freeme/camera/common/IAppUi$AnimationData;->mHeight:I

    iput p4, v0, Lcom/freeme/camera/common/IAppUi$AnimationData;->mFormat:I

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mCameraChildrenModeHelper:Lcom/freeme/camera/feature/mode/facecute/FaceCuteModeHelper;

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mCameraId:Ljava/lang/String;

    iget-object p3, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p3}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/freeme/camera/feature/mode/facecute/FaceCuteModeHelper;->getCameraInfoOrientation(Ljava/lang/String;Landroid/app/Activity;)I

    move-result p1

    iput p1, v0, Lcom/freeme/camera/common/IAppUi$AnimationData;->mOrientation:I

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mCameraChildrenModeHelper:Lcom/freeme/camera/feature/mode/facecute/FaceCuteModeHelper;

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mCameraId:Ljava/lang/String;

    iget-object p3, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p3}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/freeme/camera/feature/mode/facecute/FaceCuteModeHelper;->isMirror(Ljava/lang/String;Landroid/app/Activity;)Z

    move-result p1

    iput-boolean p1, v0, Lcom/freeme/camera/common/IAppUi$AnimationData;->mIsMirror:Z

    return-object v0
.end method

.method private recycleSettingManager(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mICameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-interface {v0}, Lcom/freeme/camera/common/ICameraContext;->getSettingManagerFactory()Lcom/freeme/camera/common/setting/SettingManagerFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/freeme/camera/common/setting/SettingManagerFactory;->recycle(Ljava/lang/String;)V

    return-void
.end method

.method private saveData([B)V
    .locals 10

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mISettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ISettingManager;->getSettingController()Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    move-result-object v0

    const-string v1, "key_dng"

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    array-length v1, p1

    int-to-long v1, v1

    if-eqz v0, :cond_0

    const-string v3, "on"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/32 v3, 0x2d00000

    add-long/2addr v1, v3

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mCaptureNumberSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v3, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mCapturingNumber:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mCapturingNumber:I

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mMemoryManager:Lcom/freeme/camera/common/memory/MemoryManagerImpl;

    invoke-virtual {v3, v1, v2}, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->checkOneShotMemoryAction(J)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mICameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-interface {v0}, Lcom/freeme/camera/common/ICameraContext;->getStorageService()Lcom/freeme/camera/common/storage/IStorageService;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/storage/IStorageService;->getFileDirectory()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/freeme/camera/common/utils/CameraUtil;->getSizeFromExif([B)Lcom/freeme/camera/common/utils/Size;

    move-result-object v1

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mCameraChildrenModeHelper:Lcom/freeme/camera/feature/mode/facecute/FaceCuteModeHelper;

    invoke-virtual {v1}, Lcom/freeme/camera/common/utils/Size;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Lcom/freeme/camera/common/utils/Size;->getHeight()I

    move-result v1

    invoke-virtual {v2, p1, v0, v3, v1}, Lcom/freeme/camera/feature/mode/facecute/FaceCuteModeHelper;->createContentValues([BLjava/lang/String;II)Landroid/content/ContentValues;

    move-result-object v6

    invoke-static {p1}, Lcom/freeme/camera/common/exif/Exif;->getExif([B)Lcom/freeme/camera/common/exif/ExifInterface;

    move-result-object v9

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mICameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-interface {v0}, Lcom/freeme/camera/common/ICameraContext;->getMediaSaver()Lcom/freeme/camera/common/storage/MediaSaver;

    move-result-object v4

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mMediaSaverListener:Lcom/freeme/camera/common/storage/MediaSaver$MediaSaverListener;

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lcom/freeme/camera/common/storage/MediaSaver;->addSaveRequest([BLandroid/content/ContentValues;Ljava/lang/String;Lcom/freeme/camera/common/storage/MediaSaver$MediaSaverListener;Lcom/freeme/camera/common/exif/ExifInterface;)V

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mPreviewDataSync:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mPreviewData:[B

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->updateThumbnail([B)V

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method private show()V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mRoot:Landroid/view/ViewGroup;

    const v2, 0x7f0b0058

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mPanel:Landroid/view/View;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mPanel:Landroid/view/View;

    const v1, 0x7f090130

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mTitleDown:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mPanel:Landroid/view/View;

    const v1, 0x7f09012a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mBody:Landroid/view/View;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mTitleDown:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mPanel:Landroid/view/View;

    const v1, 0x7f090083

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mDecorationLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mPanel:Landroid/view/View;

    const v1, 0x7f090089

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mDelightLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mPanel:Landroid/view/View;

    const v1, 0x7f09006d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mCartoonLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mPanel:Landroid/view/View;

    const v1, 0x7f0900b7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mExpressionLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mDecorationLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mDelightLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mCartoonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mExpressionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mPanel:Landroid/view/View;

    const v1, 0x7f09010c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mItemGroup:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mItemGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mPanel:Landroid/view/View;

    const v1, 0x7f0901e5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mTitleStripView:Landroid/view/View;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mTitleStripView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mCurrItemId:I

    invoke-direct {p0, v0}, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->initTypeIndex(I)V

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->assembleCurrTypeItems()V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v1

    invoke-interface {v1}, Lcom/freeme/camera/common/IAppUi;->getShutterRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mRoot:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mPanel:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private startCaptureAnimation()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/common/IAppUi$AnimationType;->TYPE_CAPTURE:Lcom/freeme/camera/common/IAppUi$AnimationType;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/freeme/camera/common/IAppUi;->animationStart(Lcom/freeme/camera/common/IAppUi$AnimationType;Lcom/freeme/camera/common/IAppUi$AnimationData;)V

    return-void
.end method

.method private startChangeModeAnimation()V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mPreviewData:[B

    iget v1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mPreviewWidth:I

    iget v2, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mPreviewHeight:I

    iget v3, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mPreviewFormat:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->prepareAnimationData([BIII)Lcom/freeme/camera/common/IAppUi$AnimationData;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v1

    sget-object v2, Lcom/freeme/camera/common/IAppUi$AnimationType;->TYPE_SWITCH_MODE:Lcom/freeme/camera/common/IAppUi$AnimationType;

    invoke-interface {v1, v2, v0}, Lcom/freeme/camera/common/IAppUi;->animationStart(Lcom/freeme/camera/common/IAppUi$AnimationType;Lcom/freeme/camera/common/IAppUi$AnimationData;)V

    return-void
.end method

.method private startSwitchCameraAnimation()V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mPreviewData:[B

    iget v1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mPreviewWidth:I

    iget v2, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mPreviewHeight:I

    iget v3, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mPreviewFormat:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->prepareAnimationData([BIII)Lcom/freeme/camera/common/IAppUi$AnimationData;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v1

    sget-object v2, Lcom/freeme/camera/common/IAppUi$AnimationType;->TYPE_SWITCH_CAMERA:Lcom/freeme/camera/common/IAppUi$AnimationType;

    invoke-interface {v1, v2, v0}, Lcom/freeme/camera/common/IAppUi;->animationStart(Lcom/freeme/camera/common/IAppUi$AnimationType;Lcom/freeme/camera/common/IAppUi$AnimationData;)V

    return-void
.end method

.method private stopCaptureAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/common/IAppUi$AnimationType;->TYPE_CAPTURE:Lcom/freeme/camera/common/IAppUi$AnimationType;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->animationEnd(Lcom/freeme/camera/common/IAppUi$AnimationType;)V

    return-void
.end method

.method private stopChangeModeAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/common/IAppUi$AnimationType;->TYPE_SWITCH_MODE:Lcom/freeme/camera/common/IAppUi$AnimationType;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->animationEnd(Lcom/freeme/camera/common/IAppUi$AnimationType;)V

    return-void
.end method

.method private stopSwitchCameraAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/common/IAppUi$AnimationType;->TYPE_SWITCH_CAMERA:Lcom/freeme/camera/common/IAppUi$AnimationType;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->animationEnd(Lcom/freeme/camera/common/IAppUi$AnimationType;)V

    return-void
.end method

.method private swithEffect(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mCameraActivity:Lcom/freeme/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/freeme/camera/CameraActivity;->getmFunnyFaceView()Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->switchEffectInWorkThread(Ljava/lang/String;)V

    return-void
.end method

.method private updatePictureSizeAndPreviewSize(Lcom/freeme/camera/common/utils/Size;)V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mISettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ISettingManager;->getSettingController()Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    const-string v1, "key_picture_size_fullscreen"

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mCameraId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/freeme/camera/common/relation/DataStore;->getCameraScope(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/freeme/camera/common/relation/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mIsResumed:Z

    if-eqz v1, :cond_1

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mCaptureWidth:I

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mCaptureHeight:I

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mIDeviceController:Lcom/freeme/camera/feature/mode/facecute/device/IDeviceController;

    new-instance v1, Lcom/freeme/camera/common/utils/Size;

    iget v2, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mCaptureWidth:I

    iget v3, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mCaptureHeight:I

    invoke-direct {v1, v2, v3}, Lcom/freeme/camera/common/utils/Size;-><init>(II)V

    invoke-interface {v0, v1}, Lcom/freeme/camera/feature/mode/facecute/device/IDeviceController;->setPictureSize(Lcom/freeme/camera/common/utils/Size;)V

    invoke-virtual {p1}, Lcom/freeme/camera/common/utils/Size;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/freeme/camera/common/utils/Size;->getHeight()I

    move-result p1

    sget-object v1, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[updatePictureSizeAndPreviewSize] picture size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mCaptureWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " X"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mCaptureHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",current preview size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mPreviewWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " X "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mPreviewHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",new value :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " X "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget v1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mPreviewWidth:I

    if-ne v0, v1, :cond_0

    iget v1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mPreviewHeight:I

    if-eq p1, v1, :cond_1

    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->onPreviewSizeChanged(II)V

    :cond_1
    return-void
.end method

.method private updateThumbnail([B)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/IAppUi;->getThumbnailViewWidth()I

    move-result v0

    invoke-static {p1, v0}, Lcom/freeme/camera/common/utils/BitmapCreator;->createBitmapFromJpeg([BI)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/freeme/camera/common/IAppUi;->updateThumbnail(Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public afterStopPreview()V
    .locals 1

    const-string v0, "opened"

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->updateModeDeviceState(Ljava/lang/String;)V

    return-void
.end method

.method public beforeCloseCamera()V
    .locals 1

    const-string v0, "closed"

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->updateModeDeviceState(Ljava/lang/String;)V

    return-void
.end method

.method protected doShutterButtonClick()Z
    .locals 6

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mICameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-interface {v0}, Lcom/freeme/camera/common/ICameraContext;->getStorageService()Lcom/freeme/camera/common/storage/IStorageService;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/storage/IStorageService;->getCaptureStorageSpace()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mIDeviceController:Lcom/freeme/camera/feature/mode/facecute/device/IDeviceController;

    invoke-interface {v2}, Lcom/freeme/camera/feature/mode/facecute/device/IDeviceController;->isReadyForCapture()Z

    move-result v2

    sget-object v3, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onShutterButtonClick, is storage ready : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",isDeviceReady = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    iget-boolean v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mIsResumed:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mMemoryState:Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;

    sget-object v2, Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;->STOP:Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;

    if-eq v0, v2, :cond_1

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->startCaptureAnimation()V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mCameraChildrenStatusResponder:Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;

    const-string v2, "key_photo_capture"

    const-string v3, "start"

    invoke-virtual {v0, v2, v3}, Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "capturing"

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->updateModeDeviceState(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->disableAllUIExceptionShutter()V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mIDeviceController:Lcom/freeme/camera/feature/mode/facecute/device/IDeviceController;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v2}, Lcom/freeme/camera/common/app/IApp;->getGSensorOrientation()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/freeme/camera/feature/mode/facecute/device/IDeviceController;->updateGSensorOrientation(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mIDeviceController:Lcom/freeme/camera/feature/mode/facecute/device/IDeviceController;

    invoke-interface {v0, p0}, Lcom/freeme/camera/feature/mode/facecute/device/IDeviceController;->takePicture(Lcom/freeme/camera/feature/mode/facecute/device/IDeviceController$CaptureDataCallback;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mCameraActivity:Lcom/freeme/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/freeme/camera/CameraActivity;->getmFunnyFaceView()Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->takePicture()V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mNamedImages:Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode$NamedImages;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode$NamedImages;->nameNewImage(J)V

    :cond_1
    return v1
.end method

.method protected getSettingManager()Lcom/freeme/camera/common/setting/ISettingManager;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mISettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

    return-object v0
.end method

.method public init(Lcom/freeme/camera/common/app/IApp;Lcom/freeme/camera/common/ICameraContext;Z)V
    .locals 4
    .param p1    # Lcom/freeme/camera/common/app/IApp;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/freeme/camera/common/ICameraContext;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    sget-object v0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[init]+"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Lcom/freeme/camera/common/mode/CameraModeBase;->init(Lcom/freeme/camera/common/app/IApp;Lcom/freeme/camera/common/ICameraContext;Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    const-string v1, "key_camera_switcher"

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    invoke-virtual {v2}, Lcom/freeme/camera/common/relation/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/freeme/camera/common/relation/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->getCameraIdByFacing(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mCameraId:Ljava/lang/String;

    new-instance v0, Lcom/freeme/camera/feature/mode/facecute/device/DeviceControllerFactory;

    invoke-direct {v0}, Lcom/freeme/camera/feature/mode/facecute/device/DeviceControllerFactory;-><init>()V

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mCameraApi:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mICameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-virtual {v0, v1, v2, v3}, Lcom/freeme/camera/feature/mode/facecute/device/DeviceControllerFactory;->createDeviceController(Landroid/app/Activity;Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;Lcom/freeme/camera/common/ICameraContext;)Lcom/freeme/camera/feature/mode/facecute/device/IDeviceController;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mIDeviceController:Lcom/freeme/camera/feature/mode/facecute/device/IDeviceController;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mCameraId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->initSettingManager(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->initStatusMonitor()V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mCameraId:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, p3}, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->prepareAndOpenCamera(ZLjava/lang/String;Z)V

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/facecute/ThumbnailHelper;->setApp(Lcom/freeme/camera/common/app/IApp;)V

    new-instance p3, Lcom/freeme/camera/common/memory/MemoryManagerImpl;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p3, v0}, Lcom/freeme/camera/common/memory/MemoryManagerImpl;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mMemoryManager:Lcom/freeme/camera/common/memory/MemoryManagerImpl;

    new-instance p3, Lcom/freeme/camera/feature/mode/facecute/FaceCuteModeHelper;

    invoke-direct {p3, p2}, Lcom/freeme/camera/feature/mode/facecute/FaceCuteModeHelper;-><init>(Lcom/freeme/camera/common/ICameraContext;)V

    iput-object p3, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mCameraChildrenModeHelper:Lcom/freeme/camera/feature/mode/facecute/FaceCuteModeHelper;

    sget-object p2, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string p3, "[init]- "

    invoke-static {p2, p3}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    check-cast p1, Lcom/freeme/camera/CameraActivity;

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mCameraActivity:Lcom/freeme/camera/CameraActivity;

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mCameraActivity:Lcom/freeme/camera/CameraActivity;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mCameraActivity:Lcom/freeme/camera/CameraActivity;

    invoke-virtual {p1}, Lcom/freeme/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f080225

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mPopDownDrawable:Landroid/graphics/drawable/Drawable;

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mPopDownDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    iget-object p3, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mPopDownDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p3

    invoke-virtual {p1, v1, v1, p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mCameraActivity:Lcom/freeme/camera/CameraActivity;

    invoke-virtual {p1}, Lcom/freeme/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f080224

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mPopUpDrawable:Landroid/graphics/drawable/Drawable;

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mPopUpDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    iget-object p3, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mPopUpDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p3

    invoke-virtual {p1, v1, v1, p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mCurrItemList:Ljava/util/List;

    const p1, 0x7f0800e9

    iput p1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mCurrItemId:I

    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onCameraOpened(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/freeme/camera/CameraActivity;->getmBeautyFaceView()Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->setCameraId(I)V

    const-string p1, "opened"

    invoke-virtual {p0, p1}, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->updateModeDeviceState(Ljava/lang/String;)V

    return-void
.end method

.method public onCameraSelected(Ljava/lang/String;)Z
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    sget-object v0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onCameraSelected] ,new id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",current id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mCameraId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->canSelectCamera(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mPreviewDataSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->startSwitchCameraAnimation()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mCameraId:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->doCameraSelect(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->handleClickTitleDown()V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->handleClickTitle()V

    goto :goto_1

    :sswitch_2
    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->handleClickExpression()V

    goto :goto_1

    :sswitch_3
    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->handleClickDelight()V

    goto :goto_1

    :goto_0
    :sswitch_4
    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->handleClickDecoration()V

    goto :goto_1

    :sswitch_5
    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->handleClickCartoon()V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f09006d -> :sswitch_5
        0x7f090083 -> :sswitch_4
        0x7f090089 -> :sswitch_3
        0x7f0900b7 -> :sswitch_2
        0x7f09012f -> :sswitch_1
        0x7f090130 -> :sswitch_0
    .end sparse-switch
.end method

.method public onDataReceived(Lcom/freeme/camera/feature/mode/facecute/device/IDeviceController$DataCallbackInfo;)V
    .locals 11

    iget-object v6, p1, Lcom/freeme/camera/feature/mode/facecute/device/IDeviceController$DataCallbackInfo;->data:[B

    iget v7, p1, Lcom/freeme/camera/feature/mode/facecute/device/IDeviceController$DataCallbackInfo;->mBufferFormat:I

    iget-boolean v8, p1, Lcom/freeme/camera/feature/mode/facecute/device/IDeviceController$DataCallbackInfo;->needUpdateThumbnail:Z

    iget-boolean v9, p1, Lcom/freeme/camera/feature/mode/facecute/device/IDeviceController$DataCallbackInfo;->needRestartPreview:Z

    sget-object v0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataReceived, data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",mIsResumed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mIsResumed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",needUpdateThumbnail = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",needRestartPreview = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eqz v6, :cond_0

    const-string v1, "jpeg callback"

    invoke-static {v1, v0}, Lcom/freeme/camera/common/debug/CameraSysTrace;->onEventSystrace(Ljava/lang/String;Z)V

    :cond_0
    const/16 v10, 0x100

    if-eqz v6, :cond_3

    if-ne v7, v10, :cond_1

    goto :goto_0

    :cond_1
    sget v1, Lcom/freeme/camera/feature/mode/facecute/HeifHelper;->FORMAT_HEIF:I

    if-ne v7, v1, :cond_3

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mISettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

    invoke-interface {v1}, Lcom/freeme/camera/common/setting/ISettingManager;->getSettingController()Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    move-result-object v1

    const-string v2, "key_dng"

    invoke-interface {v1, v2}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    array-length v2, v6

    int-to-long v2, v2

    if-eqz v1, :cond_2

    const-string v4, "on"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-wide/32 v4, 0x2d00000

    add-long/2addr v2, v4

    :cond_2
    iget-object v1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mCaptureNumberSync:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v4, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mCapturingNumber:I

    add-int/2addr v4, v0

    iput v4, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mCapturingNumber:I

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mMemoryManager:Lcom/freeme/camera/common/memory/MemoryManagerImpl;

    invoke-virtual {v0, v2, v3}, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->checkOneShotMemoryAction(J)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    new-instance v0, Lcom/freeme/camera/feature/mode/facecute/HeifHelper;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mICameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-direct {v0, v1}, Lcom/freeme/camera/feature/mode/facecute/HeifHelper;-><init>(Lcom/freeme/camera/common/ICameraContext;)V

    iget v1, p1, Lcom/freeme/camera/feature/mode/facecute/device/IDeviceController$DataCallbackInfo;->imageWidth:I

    iget p1, p1, Lcom/freeme/camera/feature/mode/facecute/device/IDeviceController$DataCallbackInfo;->imageHeight:I

    invoke-virtual {v0, v1, p1}, Lcom/freeme/camera/feature/mode/facecute/HeifHelper;->getContentValues(II)Landroid/content/ContentValues;

    move-result-object v2

    sget-object p1, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDataReceived,heif values ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mICameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-interface {p1}, Lcom/freeme/camera/common/ICameraContext;->getMediaSaver()Lcom/freeme/camera/common/storage/MediaSaver;

    move-result-object v0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mMediaSaverListener:Lcom/freeme/camera/common/storage/MediaSaver$MediaSaverListener;

    sget v5, Lcom/freeme/camera/feature/mode/facecute/HeifHelper;->FORMAT_HEIF:I

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, Lcom/freeme/camera/common/storage/MediaSaver;->addSaveRequest([BLandroid/content/ContentValues;Ljava/lang/String;Lcom/freeme/camera/common/storage/MediaSaver$MediaSaverListener;I)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mPreviewDataSync:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mPreviewData:[B

    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :cond_3
    :goto_0
    iget-boolean p1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mIsResumed:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mCameraApi:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    sget-object v0, Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;->API1:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    if-ne p1, v0, :cond_4

    if-eqz v9, :cond_4

    iget-boolean p1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mIsMatrixDisplayShow:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mIDeviceController:Lcom/freeme/camera/feature/mode/facecute/device/IDeviceController;

    invoke-interface {p1}, Lcom/freeme/camera/feature/mode/facecute/device/IDeviceController;->startPreview()V

    :cond_4
    if-eqz v6, :cond_6

    if-eqz v8, :cond_6

    if-ne v7, v10, :cond_5

    goto :goto_1

    :cond_5
    sget p1, Lcom/freeme/camera/feature/mode/facecute/HeifHelper;->FORMAT_HEIF:I

    :cond_6
    :goto_1
    if-eqz v6, :cond_7

    const-string p1, "jpeg callback"

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/CameraSysTrace;->onEventSystrace(Ljava/lang/String;Z)V

    :cond_7
    return-void
.end method

.method public onMemoryStateChanged(Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;)V
    .locals 2

    sget-object v0, Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;->STOP:Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;

    if-ne p1, v0, :cond_0

    iget p1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mCapturingNumber:I

    if-eqz p1, :cond_0

    sget-object p1, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "memory low, show saving"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/freeme/camera/common/IAppUi;->showSavingDialog(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object p1

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Lcom/freeme/camera/common/IAppUi;->applyAllUIVisibility(I)V

    :cond_0
    return-void
.end method

.method public onPostViewCallback([B)V
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onPostViewCallback] data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",mIsResumed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mIsResumed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const-string v0, "post view callback"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/CameraSysTrace;->onEventSystrace(Ljava/lang/String;Z)V

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mIsResumed:Z

    :cond_0
    const-string p1, "post view callback"

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/CameraSysTrace;->onEventSystrace(Ljava/lang/String;Z)V

    return-void
.end method

.method public onPreviewCallback([BI)V
    .locals 3

    iget-boolean v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mIsResumed:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mPreviewDataSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mIsMatrixDisplayShow:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/freeme/camera/common/IAppUi;->applyAllUIEnabled(Z)V

    :cond_1
    iget-object v1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v1

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mCameraId:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/freeme/camera/common/IAppUi;->onPreviewStarted(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mPreviewData:[B

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode$4;

    invoke-direct {v2, p0}, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode$4;-><init>(Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    const-string v1, "previewing"

    invoke-virtual {p0, v1}, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->updateModeDeviceState(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mPreviewData:[B

    iput p2, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mPreviewFormat:I

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/freeme/camera/CameraActivity;

    new-instance p2, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode$5;

    invoke-direct {p2, p0}, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode$5;-><init>(Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;)V

    invoke-virtual {p1, p2}, Lcom/freeme/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onPreviewSizeReady(Lcom/freeme/camera/common/utils/Size;)V
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onPreviewSizeReady] previewSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/freeme/camera/common/utils/Size;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->updatePictureSizeAndPreviewSize(Lcom/freeme/camera/common/utils/Size;)V

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mGData:[F

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mMData:[F

    :goto_0
    const/4 v1, 0x0

    move v2, v1

    :goto_1
    const/4 v3, 0x3

    if-ge v2, v3, :cond_1

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v2

    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    new-array p1, v3, [F

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mR:[F

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mGData:[F

    iget-object v4, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mMData:[F

    invoke-static {v0, v2, v3, v4}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mR:[F

    invoke-static {v0, p1}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    aget p1, p1, v1

    const/high16 v0, 0x43340000    # 180.0f

    mul-float/2addr p1, v0

    float-to-double v0, p1

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v0, v2

    double-to-int p1, v0

    rem-int/lit16 p1, p1, 0x168

    iput p1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mHeading:I

    iget p1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mHeading:I

    if-gez p1, :cond_2

    add-int/lit16 p1, p1, 0x168

    iput p1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mHeading:I

    :cond_2
    return-void

    :cond_3
    return-void
.end method

.method public onShutterButtonFocus(Z)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onShutterButtonLongPressed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public pause(Lcom/freeme/camera/common/mode/DeviceUsage;)V
    .locals 2
    .param p1    # Lcom/freeme/camera/common/mode/DeviceUsage;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    sget-object v0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[pause]+"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/freeme/camera/common/mode/CameraModeBase;->pause(Lcom/freeme/camera/common/mode/DeviceUsage;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mIsResumed:Z

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mMemoryManager:Lcom/freeme/camera/common/memory/MemoryManagerImpl;

    invoke-virtual {p1, p0}, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->removeListener(Lcom/freeme/camera/common/memory/IMemoryManager$IMemoryListener;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mISurfaceStatusListener:Lcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;

    invoke-interface {p1, v0}, Lcom/freeme/camera/common/IAppUi;->clearPreviewStatusListener(Lcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mNeedCloseCameraIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_0

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->needCloseCameraSync()Z

    move-result p1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mCameraId:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->prePareAndCloseCamera(ZLjava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mCameraId:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->recycleSettingManager(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mCameraId:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->clearAllCallbacks(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mIDeviceController:Lcom/freeme/camera/feature/mode/facecute/device/IDeviceController;

    invoke-interface {p1}, Lcom/freeme/camera/feature/mode/facecute/device/IDeviceController;->stopPreview()V

    :goto_0
    sget-object p1, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[pause]-"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mCameraActivity:Lcom/freeme/camera/CameraActivity;

    invoke-virtual {p1}, Lcom/freeme/camera/CameraActivity;->getmFunnyFaceView()Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->hide()V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mRoot:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mPanel:Landroid/view/View;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mCameraActivity:Lcom/freeme/camera/CameraActivity;

    new-instance v0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode$3;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode$3;-><init>(Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;)V

    invoke-virtual {p1, v0}, Lcom/freeme/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mNamedImages:Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode$NamedImages;

    return-void
.end method

.method public restoreDefaultsForBeautyFace(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/freeme/camera/common/mode/CameraModeBase;->restoreDefaultsForBeautyFace(Z)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mCurrItemId:I

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->handleClickDecoration()V

    return-void
.end method

.method public resume(Lcom/freeme/camera/common/mode/DeviceUsage;)V
    .locals 2
    .param p1    # Lcom/freeme/camera/common/mode/DeviceUsage;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/freeme/camera/common/mode/CameraModeBase;->resume(Lcom/freeme/camera/common/mode/DeviceUsage;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mCameraActivity:Lcom/freeme/camera/CameraActivity;

    new-instance v0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode$2;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode$2;-><init>(Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;)V

    invoke-virtual {p1, v0}, Lcom/freeme/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    const/16 v0, 0x9

    invoke-interface {p1, v0}, Lcom/freeme/camera/common/app/IApp;->setCurrentCameraMode(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mIsResumed:Z

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mCameraId:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->initSettingManager(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->initStatusMonitor()V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mMemoryManager:Lcom/freeme/camera/common/memory/MemoryManagerImpl;

    invoke-virtual {p1, p0}, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->addListener(Lcom/freeme/camera/common/memory/IMemoryManager$IMemoryListener;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mMemoryManager:Lcom/freeme/camera/common/memory/MemoryManagerImpl;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mICameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-interface {v0}, Lcom/freeme/camera/common/ICameraContext;->getStorageService()Lcom/freeme/camera/common/storage/IStorageService;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/storage/IStorageService;->getCaptureStorageSpace()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->initStateForCapture(J)V

    sget-object p1, Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;->NORMAL:Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mMemoryState:Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mIDeviceController:Lcom/freeme/camera/feature/mode/facecute/device/IDeviceController;

    invoke-interface {p1}, Lcom/freeme/camera/feature/mode/facecute/device/IDeviceController;->queryCameraDeviceManager()V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mCameraId:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, v0}, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->prepareAndOpenCamera(ZLjava/lang/String;Z)V

    new-instance p1, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode$NamedImages;

    invoke-direct {p1}, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode$NamedImages;-><init>()V

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mNamedImages:Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode$NamedImages;

    return-void
.end method

.method public setPluginVisibility(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/freeme/camera/common/mode/CameraModeBase;->setPluginVisibility(Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mPanel:Landroid/view/View;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public unInit()V
    .locals 1

    invoke-super {p0}, Lcom/freeme/camera/common/mode/CameraModeBase;->unInit()V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mIDeviceController:Lcom/freeme/camera/feature/mode/facecute/device/IDeviceController;

    invoke-interface {v0}, Lcom/freeme/camera/feature/mode/facecute/device/IDeviceController;->destroyDeviceController()V

    return-void
.end method
