.class public Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;
.super Ljava/lang/Object;
.source "SelfTimerCtrl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl$MainHandler;
    }
.end annotation


# static fields
.field private static final INDICATOR_VIEW_INIT:I = 0x0

.field private static final INDICATOR_VIEW_UNINIT:I = 0x1

.field private static final SELF_TIMER_ORIENTATION_UPDATE:I = 0x5

.field private static final SELF_TIMER_UPDATE:I = 0x4

.field private static final SELF_TIMER_VIEW_HIDE:I = 0x3

.field private static final SELF_TIMER_VIEW_SHOW:I = 0x2

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

.field private static final UPDATE_DELAY_TIME:I = 0x3e8

.field private static final VIEW_PRIORITY:I = 0x6


# instance fields
.field private mApp:Lcom/freeme/camera/common/app/IApp;

.field private mAppUi:Lcom/freeme/camera/common/IAppUi;

.field private mCancelImageView:Landroid/widget/ImageView;

.field private mCountDownAnim:Landroid/view/animation/Animation;

.field private volatile mCurSelfTimerNum:I

.field private mLocale:Ljava/util/Locale;

.field private mMainHandler:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl$MainHandler;

.field private mRootViewGroup:Landroid/view/ViewGroup;

.field private mSelfTimerIndicatorView:Lcom/freeme/camera/common/widget/RotateImageView;

.field private mSelfTimerListener:Lcom/freeme/camera/feature/setting/selftimer/ISelfTimerViewListener$OnSelfTimerListener;

.field private mSelfTimerSettingView:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSettingView;

.field private mSelfTimerTextView:Lcom/freeme/camera/common/widget/RotateStrokeTextView;

.field private mSelfTimerView:Landroid/view/View;

.field private mSoundManager:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSoundManager;

.field private mStartSelfTimerNum:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSettingView;

    invoke-direct {v0}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSettingView;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;->mSelfTimerSettingView:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSettingView;

    return-void
.end method

.method static synthetic access$000(Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;->startSelfTimer(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;->stopSelfTimer()V

    return-void
.end method

.method static synthetic access$200(Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;->updateSelfTimer()V

    return-void
.end method

.method static synthetic access$300(Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;->updateOrientation(I)V

    return-void
.end method

.method private initIndicatorView(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;->mSelfTimerIndicatorView:Lcom/freeme/camera/common/widget/RotateImageView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b008b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/common/widget/RotateImageView;

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;->mSelfTimerIndicatorView:Lcom/freeme/camera/common/widget/RotateImageView;

    :cond_0
    const-string v0, "2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;->mSelfTimerIndicatorView:Lcom/freeme/camera/common/widget/RotateImageView;

    const v0, 0x7f0801f6

    invoke-virtual {p1, v0}, Lcom/freeme/camera/common/widget/RotateImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;->mSelfTimerIndicatorView:Lcom/freeme/camera/common/widget/RotateImageView;

    const v0, 0x7f0801f5

    invoke-virtual {p1, v0}, Lcom/freeme/camera/common/widget/RotateImageView;->setImageResource(I)V

    :goto_0
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;->mSelfTimerIndicatorView:Lcom/freeme/camera/common/widget/RotateImageView;

    const/4 v1, 0x6

    invoke-interface {p1, v0, v1}, Lcom/freeme/camera/common/IAppUi;->addToIndicatorView(Landroid/view/View;I)V

    return-void
.end method

.method private startSelfTimer(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/IAppUi;->getModeRootView()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;->mRootViewGroup:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;->mRootViewGroup:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    const v3, 0x7f0b008e

    invoke-virtual {v0, v3, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;->mSelfTimerView:Landroid/view/View;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;->mRootViewGroup:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;->mSelfTimerView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;->mSelfTimerView:Landroid/view/View;

    const v1, 0x7f0901a6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/common/widget/RotateStrokeTextView;

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;->mSelfTimerTextView:Lcom/freeme/camera/common/widget/RotateStrokeTextView;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;->mSelfTimerView:Landroid/view/View;

    const v1, 0x7f0900d9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;->mCancelImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;->mSelfTimerView:Landroid/view/View;

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v3}, Lcom/freeme/camera/common/app/IApp;->getGSensorOrientation()I

    move-result v3

    invoke-static {v0, v1, v3, v2}, Lcom/freeme/camera/common/utils/CameraUtil;->rotateRotateLayoutChildView(Landroid/app/Activity;Landroid/view/View;IZ)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;->mSelfTimerTextView:Lcom/freeme/camera/common/widget/RotateStrokeTextView;

    invoke-virtual {v0, v2}, Lcom/freeme/camera/common/widget/RotateStrokeTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;->mCancelImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;->mCancelImageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl$1;

    invoke-direct {v1, p0}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl$1;-><init>(Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;->mStartSelfTimerNum:I

    iget p1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;->mStartSelfTimerNum:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;->mCurSelfTimerNum:I

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;->mSelfTimerListener:Lcom/freeme/camera/feature/setting/selftimer/ISelfTimerViewListener$OnSelfTimerListener;

    invoke-interface {p1}, Lcom/freeme/camera/feature/setting/selftimer/ISelfTimerViewListener$OnSelfTimerListener;->onTimerStart()V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;->mMainHandler:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl$MainHandler;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl$MainHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private stopSelfTimer()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;->mSelfTimerView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;->mSelfTimerTextView:Lcom/freeme/camera/common/widget/RotateStrokeTextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/widget/RotateStrokeTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;->mMainHandler:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl$MainHandler;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl$MainHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;->mRootViewGroup:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;->mSelfTimerView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;->mSelfTimerListener:Lcom/freeme/camera/feature/setting/selftimer/ISelfTimerViewListener$OnSelfTimerListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/freeme/camera/feature/setting/selftimer/ISelfTimerViewListener$OnSelfTimerListener;->onTimerInterrupt(Z)V

    iput v1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;->mStartSelfTimerNum:I

    iput v1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;->mCurSelfTimerNum:I

    :cond_0
    return-void
.end method

.method private unInitIndicatorView()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;->mSelfTimerIndicatorView:Lcom/freeme/camera/common/widget/RotateImageView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    invoke-interface {v1, v0}, Lcom/freeme/camera/common/IAppUi;->removeFromIndicatorView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private updateOrientation(I)V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;->mSelfTimerTextView:Lcom/freeme/camera/common/widget/RotateStrokeTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;->mSelfTimerView:Landroid/view/View;

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2}, Lcom/freeme/camera/common/utils/CameraUtil;->rotateRotateLayoutChildView(Landroid/app/Activity;Landroid/view/View;IZ)V

    :cond_0
    return-void
.end method

.method private updateSelfTimer()V
    .locals 7

    iget v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;->mCurSelfTimerNum:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;->mCurSelfTimerNum:I

    sget-object v0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[updateSelfTimer] mCurSelfTimerNum: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;->mCurSelfTimerNum:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;->mCurSelfTimerNum:I

    const/4 v2, 0x3

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;->mLocale:Ljava/util/Locale;

    const-string v3, "%d"

    new-array v4, v1, [Ljava/lang/Object;

    iget v5, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;->mCurSelfTimerNum:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v0, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;->mSelfTimerTextView:Lcom/freeme/camera/common/widget/RotateStrokeTextView;

    invoke-virtual {v3, v0}, Lcom/freeme/camera/common/widget/RotateStrokeTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;->mCountDownAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;->mSelfTimerTextView:Lcom/freeme/camera/common/widget/RotateStrokeTextView;

    invoke-virtual {v0}, Lcom/freeme/camera/common/widget/RotateStrokeTextView;->clearAnimation()V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;->mSelfTimerTextView:Lcom/freeme/camera/common/widget/RotateStrokeTextView;

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;->mCountDownAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3}, Lcom/freeme/camera/common/widget/RotateStrokeTextView;->startAnimation(Landroid/view/animation/Animation;)V

    iget v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;->mCurSelfTimerNum:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;->mSoundManager:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSoundManager;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSoundManager;->play(I)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;->mCurSelfTimerNum:I

    if-gt v0, v2, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;->mSoundManager:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSoundManager;

    invoke-virtual {v0, v6}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSoundManager;->play(I)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;->mMainHandler:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl$MainHandler;

    const/4 v1, 0x4

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;->mSoundManager:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSoundManager;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSoundManager;->stop()V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;->mMainHandler:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl$MainHandler;

    invoke-virtual {v0, v2}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl$MainHandler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;->mSelfTimerListener:Lcom/freeme/camera/feature/setting/selftimer/ISelfTimerViewListener$OnSelfTimerListener;

    invoke-interface {v0}, Lcom/freeme/camera/feature/setting/selftimer/ISelfTimerViewListener$OnSelfTimerListener;->onTimerDone()V

    :goto_1
    return-void
.end method


# virtual methods
.method public getSelfTimerSettingView()Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSettingView;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;->mSelfTimerSettingView:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSettingView;

    return-object v0
.end method

.method public init(Lcom/freeme/camera/common/app/IApp;)V
    .locals 2

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    new-instance v0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl$MainHandler;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl$MainHandler;-><init>(Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;->mMainHandler:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl$MainHandler;

    new-instance v0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSoundManager;

    invoke-direct {v0, p1}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSoundManager;-><init>(Lcom/freeme/camera/common/app/IApp;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;->mSoundManager:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSoundManager;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;->mLocale:Ljava/util/Locale;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const v0, 0x7f01000f

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;->mCountDownAnim:Landroid/view/animation/Animation;

    return-void
.end method

.method public initResBySwitch(Ljava/lang/String;)V
    .locals 2

    const-string v0, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;->mMainHandler:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl$MainHandler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl$MainHandler;->sendEmptyMessage(I)Z

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;->mSoundManager:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSoundManager;

    invoke-virtual {p1}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSoundManager;->release()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;->mMainHandler:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl$MainHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;->mSoundManager:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSoundManager;

    invoke-virtual {p1}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSoundManager;->load()V

    :goto_0
    return-void
.end method

.method public onInterrupt(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;->mMainHandler:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl$MainHandler;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;->mCurSelfTimerNum:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;->mSoundManager:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSoundManager;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSoundManager;->stop()V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;->mMainHandler:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl$MainHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl$MainHandler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;->mSelfTimerListener:Lcom/freeme/camera/feature/setting/selftimer/ISelfTimerViewListener$OnSelfTimerListener;

    invoke-interface {v0, p1}, Lcom/freeme/camera/feature/setting/selftimer/ISelfTimerViewListener$OnSelfTimerListener;->onTimerInterrupt(Z)V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public onOrientationChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;->mMainHandler:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl$MainHandler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setSelfTimerListener(Lcom/freeme/camera/feature/setting/selftimer/ISelfTimerViewListener$OnSelfTimerListener;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;->mSelfTimerListener:Lcom/freeme/camera/feature/setting/selftimer/ISelfTimerViewListener$OnSelfTimerListener;

    return-void
.end method

.method public showSelfTimerView(Ljava/lang/String;)V
    .locals 2

    const-string v0, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;->mMainHandler:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl$MainHandler;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl$MainHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;->mMainHandler:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl$MainHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void
.end method

.method public unInit()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;->mMainHandler:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl$MainHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl$MainHandler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;->mMainHandler:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl$MainHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl$MainHandler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;->mMainHandler:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl$MainHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl$MainHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;->mMainHandler:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl$MainHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl$MainHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;->mSoundManager:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSoundManager;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSoundManager;->release()V

    return-void
.end method
