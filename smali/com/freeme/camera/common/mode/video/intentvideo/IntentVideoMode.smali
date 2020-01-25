.class public Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;
.super Lcom/freeme/camera/common/mode/video/VideoMode;
.source "IntentVideoMode.java"


# static fields
.field private static final CAN_SHARE:Ljava/lang/String; = "CanShare"

.field private static final ONE_SECOND_TO_MS:I = 0x3e8

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCurrentVideoUri:Landroid/net/Uri;

.field private mFilePath:Ljava/lang/String;

.field private mFileSavedListener:Lcom/freeme/camera/common/storage/MediaSaver$MediaSaverListener;

.field private mIntent:Landroid/content/Intent;

.field private mIsReviewUIShowing:Z

.field private mLimitDuration:I

.field private mLimitSize:J

.field private mPlayListener:Landroid/view/View$OnClickListener;

.field private mPreviewStartCallback:Lcom/freeme/camera/common/mode/video/device/IDeviceController$DeviceCallback;

.field private mRetakeListener:Landroid/view/View$OnClickListener;

.field private mReviewUI:Lcom/freeme/camera/common/mode/IReviewUI;

.field private mSaveListener:Landroid/view/View$OnClickListener;

.field private mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/freeme/camera/common/mode/video/VideoMode;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->mIsReviewUIShowing:Z

    new-instance v0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode$1;

    invoke-direct {v0, p0}, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode$1;-><init>(Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;)V

    iput-object v0, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->mPreviewStartCallback:Lcom/freeme/camera/common/mode/video/device/IDeviceController$DeviceCallback;

    new-instance v0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode$2;

    invoke-direct {v0, p0}, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode$2;-><init>(Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;)V

    iput-object v0, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->mFileSavedListener:Lcom/freeme/camera/common/storage/MediaSaver$MediaSaverListener;

    new-instance v0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode$3;

    invoke-direct {v0, p0}, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode$3;-><init>(Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;)V

    iput-object v0, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->mRetakeListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode$4;

    invoke-direct {v0, p0}, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode$4;-><init>(Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;)V

    iput-object v0, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->mPlayListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode$5;

    invoke-direct {v0, p0}, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode$5;-><init>(Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;)V

    iput-object v0, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->mSaveListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->updateModeDeviceState(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->updateModeDeviceState(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;)Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;
    .locals 0

    invoke-virtual {p0}, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->getVideoState()Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1100(Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;)Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;
    .locals 0

    invoke-virtual {p0}, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->getVideoState()Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;)Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;
    .locals 0

    invoke-virtual {p0}, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->getVideoState()Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->mBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;)Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->mCurrentVideoUri:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->mCurrentVideoUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->mFilePath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;)Landroid/media/CamcorderProfile;
    .locals 0

    invoke-virtual {p0}, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->getProfile()Landroid/media/CamcorderProfile;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1700(Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;)Lcom/freeme/camera/common/mode/IReviewUI;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->mReviewUI:Lcom/freeme/camera/common/mode/IReviewUI;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->updateVideoState(Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;)Lcom/freeme/camera/common/IAppUi;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    return-object p0
.end method

.method static synthetic access$200(Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->updateModeDeviceState(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;)Lcom/freeme/camera/common/IAppUi;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;)Lcom/freeme/camera/common/IAppUi;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;)Lcom/freeme/camera/common/IAppUi;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->updateVideoState(Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;)Lcom/freeme/camera/common/IAppUi;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;)Lcom/freeme/camera/common/IAppUi;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;)Lcom/freeme/camera/common/IAppUi;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->deleteCurrentVideo()V

    return-void
.end method

.method static synthetic access$2800(Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;)Landroid/media/CamcorderProfile;
    .locals 0

    invoke-virtual {p0}, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->getProfile()Landroid/media/CamcorderProfile;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2900(Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;Landroid/net/Uri;Landroid/media/CamcorderProfile;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->startPlayVideoActivity(Landroid/net/Uri;Landroid/media/CamcorderProfile;)V

    return-void
.end method

.method static synthetic access$300(Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->mIsReviewUIShowing:Z

    return p0
.end method

.method static synthetic access$3000(Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->doReturnToCaller(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$302(Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->mIsReviewUIShowing:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->mApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$400(Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->updateVideoState(Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;)V

    return-void
.end method

.method static synthetic access$500(Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->updateVideoState(Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;)V

    return-void
.end method

.method static synthetic access$600(Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;)Lcom/freeme/camera/common/IAppUi;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    return-object p0
.end method

.method static synthetic access$700(Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->updateModeDeviceState(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800()Lcom/freeme/camera/common/debug/LogUtil$Tag;
    .locals 1

    sget-object v0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-object v0
.end method

.method static synthetic access$900(Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;)Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;
    .locals 0

    invoke-virtual {p0}, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->getVideoState()Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;

    move-result-object p0

    return-object p0
.end method

.method private analysisIntent()V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v0, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.sizeLimit"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->mLimitSize:J

    iget-object v0, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.durationLimit"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->mLimitDuration:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->mCurrentVideoUri:Landroid/net/Uri;

    iget-object v0, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->mIntent:Landroid/content/Intent;

    const-string v1, "output"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "rw"

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    iput-object v0, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->mCurrentVideoUri:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private configReviewUI()V
    .locals 2

    sget-object v0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[configReviewUI]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    new-instance v0, Lcom/freeme/camera/common/mode/IReviewUI$ReviewSpec;

    invoke-direct {v0}, Lcom/freeme/camera/common/mode/IReviewUI$ReviewSpec;-><init>()V

    iget-object v1, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->mRetakeListener:Landroid/view/View$OnClickListener;

    iput-object v1, v0, Lcom/freeme/camera/common/mode/IReviewUI$ReviewSpec;->retakeListener:Landroid/view/View$OnClickListener;

    iget-object v1, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->mPlayListener:Landroid/view/View$OnClickListener;

    iput-object v1, v0, Lcom/freeme/camera/common/mode/IReviewUI$ReviewSpec;->playListener:Landroid/view/View$OnClickListener;

    iget-object v1, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->mSaveListener:Landroid/view/View$OnClickListener;

    iput-object v1, v0, Lcom/freeme/camera/common/mode/IReviewUI$ReviewSpec;->saveListener:Landroid/view/View$OnClickListener;

    iget-object v1, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->mReviewUI:Lcom/freeme/camera/common/mode/IReviewUI;

    invoke-interface {v1, v0}, Lcom/freeme/camera/common/mode/IReviewUI;->initReviewUI(Lcom/freeme/camera/common/mode/IReviewUI$ReviewSpec;)V

    return-void
.end method

.method private deleteCurrentVideo()V
    .locals 3

    sget-object v0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[deleteCurrentVideo()] mCurrentVideoUri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->mCurrentVideoUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    iput-object v2, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->mCurrentVideoUri:Landroid/net/Uri;

    :cond_0
    return-void
.end method

.method private doReturnToCaller(Landroid/net/Uri;)V
    .locals 4

    sget-object v0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[doReturnToCaller] uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    iget-object v1, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget-object v1, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[doReturnToCaller] uri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const/4 v1, -0x1

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    return-void
.end method

.method private initReviewUI()V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    invoke-interface {v0}, Lcom/freeme/camera/common/IAppUi;->getReviewUI()Lcom/freeme/camera/common/mode/IReviewUI;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->mReviewUI:Lcom/freeme/camera/common/mode/IReviewUI;

    return-void
.end method

.method private startPlayVideoActivity(Landroid/net/Uri;Landroid/media/CamcorderProfile;)V
    .locals 4

    sget-object v0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[startPlayVideoActivity], mCurrentVideoUri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",profile = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    if-nez p2, :cond_0

    sget-object v0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[startPlayVideoActivity] current proflie is error,please check!"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const-string v2, "CanShare"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "CanShare"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->mVideoHelper:Lcom/freeme/camera/common/mode/video/VideoHelper;

    iget p2, p2, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-virtual {v0, p2}, Lcom/freeme/camera/common/mode/video/VideoHelper;->convertOutputFormatToMimeType(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    iget-object p2, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p2}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    sget-object v0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[startPlayVideoActivity] Couldn\'t view video "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method


# virtual methods
.method protected addFileToMediaStore()V
    .locals 6

    invoke-direct {p0}, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->initReviewUI()V

    invoke-direct {p0}, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->configReviewUI()V

    iget-object v0, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    iget-object v4, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->mBitmap:Landroid/graphics/Bitmap;

    :cond_0
    invoke-virtual {p0}, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->getProfile()Landroid/media/CamcorderProfile;

    move-result-object v1

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-static {v0, v1}, Lcom/freeme/camera/common/utils/BitmapCreator;->createBitmapFromVideo(Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->mReviewUI:Lcom/freeme/camera/common/mode/IReviewUI;

    iget-object v1, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->mBitmap:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/mode/IReviewUI;->showReviewUI(Landroid/graphics/Bitmap;)V

    iput-boolean v2, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->mIsReviewUIShowing:Z

    iget-object v0, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    invoke-interface {v0}, Lcom/freeme/camera/common/IAppUi;->hideSavingDialog()V

    iget-object v0, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    invoke-interface {v0, v3}, Lcom/freeme/camera/common/IAppUi;->applyAllUIVisibility(I)V

    iget-object v0, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    const/4 v1, 0x5

    const/4 v2, 0x4

    invoke-interface {v0, v1, v2}, Lcom/freeme/camera/common/IAppUi;->setUIVisibility(II)V

    iget-object v0, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    const/16 v1, 0x8

    invoke-interface {v0, v1, v2}, Lcom/freeme/camera/common/IAppUi;->setUIVisibility(II)V

    sget-object v0, Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;->STATE_REVIEW_UI:Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;

    invoke-virtual {p0, v0}, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->updateVideoState(Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->getCameraApi()Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    move-result-object v0

    sget-object v4, Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;->API1:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    if-ne v0, v4, :cond_2

    iget-object v0, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->mVideoHelper:Lcom/freeme/camera/common/mode/video/VideoHelper;

    iget-object v0, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getGSensorOrientation()I

    move-result v0

    iget-object v4, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->mCameraDevice:Lcom/freeme/camera/common/mode/video/device/IDeviceController;

    invoke-interface {v4, v3}, Lcom/freeme/camera/common/mode/video/device/IDeviceController;->getCameraInfo(I)Landroid/hardware/Camera$CameraInfo;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/freeme/camera/common/mode/video/VideoHelper;->getRecordingRotation(ILandroid/hardware/Camera$CameraInfo;)I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->mVideoHelper:Lcom/freeme/camera/common/mode/video/VideoHelper;

    iget-object v0, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getGSensorOrientation()I

    move-result v0

    iget-object v3, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->mVideoHelper:Lcom/freeme/camera/common/mode/video/VideoHelper;

    iget-object v4, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v4}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->mCameraId:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/freeme/camera/common/mode/video/VideoHelper;->getCameraCharacteristics(Landroid/app/Activity;Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/freeme/camera/common/mode/video/VideoHelper;->getRecordingRotation(ILandroid/hardware/camera2/CameraCharacteristics;)I

    move-result v0

    :goto_0
    iget-object v3, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->mVideoHelper:Lcom/freeme/camera/common/mode/video/VideoHelper;

    invoke-virtual {v3, v2, v0, v1}, Lcom/freeme/camera/common/mode/video/VideoHelper;->prepareContentValues(ZILcom/freeme/camera/common/utils/Size;)Landroid/content/ContentValues;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->mCameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-interface {v1}, Lcom/freeme/camera/common/ICameraContext;->getMediaSaver()Lcom/freeme/camera/common/storage/MediaSaver;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->modifyContentValues(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v0

    iget-object v2, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->mVideoHelper:Lcom/freeme/camera/common/mode/video/VideoHelper;

    invoke-virtual {v2}, Lcom/freeme/camera/common/mode/video/VideoHelper;->getVideoTempPath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->mFileSavedListener:Lcom/freeme/camera/common/storage/MediaSaver$MediaSaverListener;

    invoke-virtual {v1, v0, v2, v3}, Lcom/freeme/camera/common/storage/MediaSaver;->addSaveRequest(Landroid/content/ContentValues;Ljava/lang/String;Lcom/freeme/camera/common/storage/MediaSaver$MediaSaverListener;)V

    :goto_1
    return-void
.end method

.method protected getPreviewStartCallback()Lcom/freeme/camera/common/mode/video/device/IDeviceController$DeviceCallback;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->mPreviewStartCallback:Lcom/freeme/camera/common/mode/video/device/IDeviceController$DeviceCallback;

    return-object v0
.end method

.method protected getPreviewedRestriction()Lcom/freeme/camera/common/relation/Relation;
    .locals 3

    invoke-static {}, Lcom/freeme/camera/common/mode/video/intentvideo/IntentRestriction;->getPreviewRelation()Lcom/freeme/camera/common/relation/RelationGroup;

    move-result-object v0

    const-string v1, "preview"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/freeme/camera/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/freeme/camera/common/relation/Relation;

    move-result-object v0

    return-object v0
.end method

.method protected getRecordedRestriction(Z)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/freeme/camera/common/relation/Relation;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->mVideoHelper:Lcom/freeme/camera/common/mode/video/VideoHelper;

    iget-object v2, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->mCameraApi:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    invoke-virtual {p1, v2}, Lcom/freeme/camera/common/mode/video/VideoHelper;->isPDAFSupported(Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/freeme/camera/common/mode/video/intentvideo/IntentRestriction;->getRecordingRelationGroupForMode()Lcom/freeme/camera/common/relation/RelationGroup;

    move-result-object p1

    const-string v2, "recording"

    invoke-virtual {p1, v2, v1}, Lcom/freeme/camera/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/freeme/camera/common/relation/Relation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/freeme/camera/common/mode/video/intentvideo/IntentRestriction;->getRecordingRelationGroupForMode()Lcom/freeme/camera/common/relation/RelationGroup;

    move-result-object p1

    const-string v2, "stop-recording"

    invoke-virtual {p1, v2, v1}, Lcom/freeme/camera/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/freeme/camera/common/relation/Relation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-object v0
.end method

.method public init(Lcom/freeme/camera/common/app/IApp;Lcom/freeme/camera/common/ICameraContext;Z)V
    .locals 0
    .param p1    # Lcom/freeme/camera/common/app/IApp;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/freeme/camera/common/ICameraContext;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Lcom/freeme/camera/common/mode/video/VideoMode;->init(Lcom/freeme/camera/common/app/IApp;Lcom/freeme/camera/common/ICameraContext;Z)V

    iget-object p1, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->mIntent:Landroid/content/Intent;

    return-void
.end method

.method protected modifyContentValues(Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_0

    const-string v0, "_data"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->mFilePath:Ljava/lang/String;

    :cond_0
    return-object p1
.end method

.method protected modifyRecorderSpec(Lcom/freeme/camera/common/mode/video/recorder/IRecorder$RecorderSpec;Z)Lcom/freeme/camera/common/mode/video/recorder/IRecorder$RecorderSpec;
    .locals 4

    if-nez p2, :cond_0

    return-object p1

    :cond_0
    invoke-direct {p0}, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->analysisIntent()V

    iget p2, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->mLimitDuration:I

    mul-int/lit16 p2, p2, 0x3e8

    iput p2, p1, Lcom/freeme/camera/common/mode/video/recorder/IRecorder$RecorderSpec;->maxDurationMs:I

    iget-wide v0, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->mLimitSize:J

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-lez p2, :cond_1

    iget-object p2, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->mVideoHelper:Lcom/freeme/camera/common/mode/video/VideoHelper;

    invoke-virtual {p2}, Lcom/freeme/camera/common/mode/video/VideoHelper;->getRecorderMaxSize()J

    move-result-wide v2

    cmp-long p2, v0, v2

    if-gez p2, :cond_1

    iget-wide v0, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->mLimitSize:J

    iput-wide v0, p1, Lcom/freeme/camera/common/mode/video/recorder/IRecorder$RecorderSpec;->maxFileSizeBytes:J

    :cond_1
    iget-object p2, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p2

    iput-object p2, p1, Lcom/freeme/camera/common/mode/video/recorder/IRecorder$RecorderSpec;->outFileDes:Ljava/io/FileDescriptor;

    sget-object p2, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " recorderSpec.outFileDes = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/freeme/camera/common/mode/video/recorder/IRecorder$RecorderSpec;->outFileDes:Ljava/io/FileDescriptor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    :cond_2
    return-object p1
.end method

.method protected modifyUISpec(Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$UISpec;)Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$UISpec;
    .locals 4

    iget-wide v0, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->mLimitSize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->mIsParameterExtraCanUse:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->mLimitSize:J

    iput-wide v0, p1, Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$UISpec;->recordingTotalSize:J

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$UISpec;->isSupportedVss:Z

    return-object p1
.end method

.method public onOrientationChanged(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/freeme/camera/common/mode/video/VideoMode;->onOrientationChanged(I)V

    iget-object v0, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->mReviewUI:Lcom/freeme/camera/common/mode/IReviewUI;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/freeme/camera/common/mode/IReviewUI;->updateOrientation(I)V

    :cond_0
    return-void
.end method

.method protected setMediaRecorderParameters()V
    .locals 4

    :try_start_0
    invoke-super {p0}, Lcom/freeme/camera/common/mode/video/VideoMode;->setMediaRecorderParameters()V

    iget-wide v0, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->mLimitSize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->mRecorder:Lcom/freeme/camera/common/mode/video/recorder/IRecorder;

    invoke-interface {v0}, Lcom/freeme/camera/common/mode/video/recorder/IRecorder;->getMediaRecorder()Landroid/media/MediaRecorder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->mVideoHelper:Lcom/freeme/camera/common/mode/video/VideoHelper;

    const-string v2, "media-recorder-info="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->mVideoHelper:Lcom/freeme/camera/common/mode/video/VideoHelper;

    const/16 v2, 0x37f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/camera/portability/MediaRecorderEx;->setParametersExtra(Landroid/media/MediaRecorder;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public unInit()V
    .locals 1

    invoke-super {p0}, Lcom/freeme/camera/common/mode/video/VideoMode;->unInit()V

    iget-object v0, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->mReviewUI:Lcom/freeme/camera/common/mode/IReviewUI;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/freeme/camera/common/mode/IReviewUI;->hideReviewUI()V

    iget-object v0, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->mBitmap:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method
