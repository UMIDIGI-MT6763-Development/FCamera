.class public Lcom/freeme/camera/ui/video/VideoUI;
.super Ljava/lang/Object;
.source "VideoUI.java"

# interfaces
.implements Lcom/freeme/camera/common/mode/video/videoui/IVideoUI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/ui/video/VideoUI$RecordingHandler;
    }
.end annotation


# static fields
.field private static final COMPUTER_NUMBER_SYSTEM:I = 0x400

.field private static final HALF_SECOND_TO_MS:I = 0x1f4

.field private static final LIMI_DURATION:I = 0xf

.field private static final MSG_UPDATE_RECORD_TIME:I = 0x0

.field private static final ONE_HOUR_TO_S:I = 0xe10

.field private static final ONE_SECOND_TO_MS:I = 0x3e8

.field private static final ORIENTATION_0:I = 0x0

.field private static final ORIENTATION_180:I = 0xb4

.field private static final ORIENTATION_270:I = 0x10e

.field private static final ORIENTATION_90:I = 0x5a

.field private static final PERCENTAGE_FOR_PROGRESS:I = 0x64

.field private static final SHOW_HINT_TIME:I = 0xbb8

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

.field private static final TIME_BASE:I = 0x3c


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mApp:Lcom/freeme/camera/common/app/IApp;

.field private mCurrentRecordingSizeView:Lcom/freeme/camera/common/widget/RotateStrokeTextView;

.field private mIsInRecording:Z

.field private final mMainHandler:Landroid/os/Handler;

.field private mParentViewGroup:Landroid/view/ViewGroup;

.field private mPauseResumeButton:Lcom/freeme/camera/common/widget/ScaleAnimationButton;

.field private mRecordingIndicator:Landroid/widget/ImageView;

.field private mRecordingPausedDuration:J

.field private mRecordingRootView:Landroid/view/View;

.field private mRecordingSizeSeekBar:Landroid/widget/SeekBar;

.field private mRecordingSizeTotalView:Lcom/freeme/camera/common/widget/RotateStrokeTextView;

.field private mRecordingSizeViewGroup:Landroid/view/View;

.field private mRecordingStartTime:J

.field private mRecordingTimeView:Lcom/freeme/camera/common/widget/StrokeTextView;

.field private mRecordingTimeViewGroup:Landroid/view/View;

.field private mRecordingTotalDuration:J

.field private mShowRecordingTimeViewIndicator:I

.field private mStopButton:Lcom/freeme/camera/common/widget/ScaleAnimationButton;

.field private mUISpec:Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$UISpec;

.field private mUIState:Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;

.field private mVideoErrorHint:Lcom/freeme/camera/common/IAppUi$HintInfo;

.field private mVssButton:Lcom/freeme/camera/common/widget/ScaleAnimationButton;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/ui/video/VideoUI;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/ui/video/VideoUI;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/freeme/camera/common/app/IApp;Landroid/view/ViewGroup;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/freeme/camera/ui/video/VideoUI;->mShowRecordingTimeViewIndicator:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/freeme/camera/ui/video/VideoUI;->mRecordingPausedDuration:J

    iput-wide v1, p0, Lcom/freeme/camera/ui/video/VideoUI;->mRecordingTotalDuration:J

    iput-wide v1, p0, Lcom/freeme/camera/ui/video/VideoUI;->mRecordingStartTime:J

    iput-boolean v0, p0, Lcom/freeme/camera/ui/video/VideoUI;->mIsInRecording:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freeme/camera/ui/video/VideoUI;->mRecordingRootView:Landroid/view/View;

    sget-object v0, Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;->STATE_PREVIEW:Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;

    iput-object v0, p0, Lcom/freeme/camera/ui/video/VideoUI;->mUIState:Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;

    iput-object p1, p0, Lcom/freeme/camera/ui/video/VideoUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/ui/video/VideoUI;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/freeme/camera/ui/video/VideoUI;->mParentViewGroup:Landroid/view/ViewGroup;

    new-instance p2, Lcom/freeme/camera/ui/video/VideoUI$RecordingHandler;

    iget-object v0, p0, Lcom/freeme/camera/ui/video/VideoUI;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, p0, v0}, Lcom/freeme/camera/ui/video/VideoUI$RecordingHandler;-><init>(Lcom/freeme/camera/ui/video/VideoUI;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/freeme/camera/ui/video/VideoUI;->mMainHandler:Landroid/os/Handler;

    new-instance p2, Lcom/freeme/camera/common/IAppUi$HintInfo;

    invoke-direct {p2}, Lcom/freeme/camera/common/IAppUi$HintInfo;-><init>()V

    iput-object p2, p0, Lcom/freeme/camera/ui/video/VideoUI;->mVideoErrorHint:Lcom/freeme/camera/common/IAppUi$HintInfo;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const-string v0, "hint_text_background"

    const-string v1, "drawable"

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    iget-object v0, p0, Lcom/freeme/camera/ui/video/VideoUI;->mVideoErrorHint:Lcom/freeme/camera/common/IAppUi$HintInfo;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, v0, Lcom/freeme/camera/common/IAppUi$HintInfo;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object p1, p0, Lcom/freeme/camera/ui/video/VideoUI;->mVideoErrorHint:Lcom/freeme/camera/common/IAppUi$HintInfo;

    sget-object p2, Lcom/freeme/camera/common/IAppUi$HintType;->TYPE_AUTO_HIDE:Lcom/freeme/camera/common/IAppUi$HintType;

    iput-object p2, p1, Lcom/freeme/camera/common/IAppUi$HintInfo;->mType:Lcom/freeme/camera/common/IAppUi$HintType;

    iget-object p1, p0, Lcom/freeme/camera/ui/video/VideoUI;->mVideoErrorHint:Lcom/freeme/camera/common/IAppUi$HintInfo;

    const/16 p2, 0xbb8

    iput p2, p1, Lcom/freeme/camera/common/IAppUi$HintInfo;->mDelayTime:I

    return-void
.end method

.method static synthetic access$000(Lcom/freeme/camera/ui/video/VideoUI;)Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/ui/video/VideoUI;->mUIState:Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;

    return-object p0
.end method

.method static synthetic access$100(Lcom/freeme/camera/ui/video/VideoUI;)Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$UISpec;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/ui/video/VideoUI;->mUISpec:Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$UISpec;

    return-object p0
.end method

.method static synthetic access$200()Lcom/freeme/camera/common/debug/LogUtil$Tag;
    .locals 1

    sget-object v0, Lcom/freeme/camera/ui/video/VideoUI;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-object v0
.end method

.method static synthetic access$300(Lcom/freeme/camera/ui/video/VideoUI;J)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/freeme/camera/ui/video/VideoUI;->formatFileSizeForRongHe(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/freeme/camera/ui/video/VideoUI;)Lcom/freeme/camera/common/widget/RotateStrokeTextView;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/ui/video/VideoUI;->mCurrentRecordingSizeView:Lcom/freeme/camera/common/widget/RotateStrokeTextView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/freeme/camera/ui/video/VideoUI;J)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/freeme/camera/ui/video/VideoUI;->formatFileSize(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/freeme/camera/ui/video/VideoUI;)Landroid/widget/SeekBar;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/ui/video/VideoUI;->mRecordingSizeSeekBar:Landroid/widget/SeekBar;

    return-object p0
.end method

.method static synthetic access$700(Lcom/freeme/camera/ui/video/VideoUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/ui/video/VideoUI;->updateUI()V

    return-void
.end method

.method static synthetic access$800(Lcom/freeme/camera/ui/video/VideoUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/ui/video/VideoUI;->updateRecordingTime()V

    return-void
.end method

.method private doUpdateUI(Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;)V
    .locals 1

    iput-object p1, p0, Lcom/freeme/camera/ui/video/VideoUI;->mUIState:Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;

    iget-object p1, p0, Lcom/freeme/camera/ui/video/VideoUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p1

    new-instance v0, Lcom/freeme/camera/ui/video/VideoUI$2;

    invoke-direct {v0, p0}, Lcom/freeme/camera/ui/video/VideoUI$2;-><init>(Lcom/freeme/camera/ui/video/VideoUI;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private formatFileSize(J)Ljava/lang/String;
    .locals 2

    const-wide/16 v0, 0x400

    div-long/2addr p1, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "K"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private formatFileSizeForRongHe(J)Ljava/lang/String;
    .locals 2

    const-wide/16 v0, 0x400

    div-long/2addr p1, v0

    div-long/2addr p1, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "M"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private formatTime(JZ)Ljava/lang/String;
    .locals 8

    long-to-int v0, p1

    div-int/lit16 v0, v0, 0x3e8

    const-wide/16 v1, 0x3e8

    rem-long/2addr p1, v1

    long-to-int p1, p1

    const/16 p2, 0xa

    div-int/2addr p1, p2

    rem-int/lit8 v1, v0, 0x3c

    div-int/lit8 v2, v0, 0x3c

    rem-int/lit8 v2, v2, 0x3c

    div-int/lit16 v0, v0, 0xe10

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz p3, :cond_1

    if-lez v0, :cond_0

    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string p3, "%d:%02d:%02d.%02d"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v7, v3

    invoke-static {p2, p3, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string p3, "%02d:%02d.%02d"

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v4

    invoke-static {p2, p3, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    if-lez v0, :cond_2

    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string p2, "%d:%02d:%02d"

    new-array p3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p3, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p3, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p3, v4

    invoke-static {p1, p2, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/freeme/camera/ui/video/VideoUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getCurrentCameraMode()I

    move-result p1

    if-ne p1, p2, :cond_3

    rsub-int/lit8 v1, v1, 0xf

    :cond_3
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string p2, "%02d:%02d"

    new-array p3, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p3, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p3, v5

    invoke-static {p1, p2, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private getView()Landroid/view/View;
    .locals 4

    sget-object v0, Lcom/freeme/camera/ui/video/VideoUI;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[getView] +"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/ui/video/VideoUI;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/ui/video/VideoUI;->mParentViewGroup:Landroid/view/ViewGroup;

    const v2, 0x7f0b0080

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090173

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090176

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/freeme/camera/ui/video/VideoUI;->mRecordingTimeViewGroup:Landroid/view/View;

    const v2, 0x7f090175

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/freeme/camera/common/widget/StrokeTextView;

    iput-object v2, p0, Lcom/freeme/camera/ui/video/VideoUI;->mRecordingTimeView:Lcom/freeme/camera/common/widget/StrokeTextView;

    const v2, 0x7f090171

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/freeme/camera/ui/video/VideoUI;->mRecordingIndicator:Landroid/widget/ImageView;

    const v2, 0x7f09005c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/freeme/camera/common/widget/ScaleAnimationButton;

    iput-object v2, p0, Lcom/freeme/camera/ui/video/VideoUI;->mPauseResumeButton:Lcom/freeme/camera/common/widget/ScaleAnimationButton;

    iget-object v2, p0, Lcom/freeme/camera/ui/video/VideoUI;->mPauseResumeButton:Lcom/freeme/camera/common/widget/ScaleAnimationButton;

    iget-object v3, p0, Lcom/freeme/camera/ui/video/VideoUI;->mUISpec:Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$UISpec;

    iget-object v3, v3, Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$UISpec;->pauseResumeListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Lcom/freeme/camera/common/widget/ScaleAnimationButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0901f6

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/freeme/camera/common/widget/ScaleAnimationButton;

    iput-object v2, p0, Lcom/freeme/camera/ui/video/VideoUI;->mStopButton:Lcom/freeme/camera/common/widget/ScaleAnimationButton;

    iget-object v2, p0, Lcom/freeme/camera/ui/video/VideoUI;->mStopButton:Lcom/freeme/camera/common/widget/ScaleAnimationButton;

    iget-object v3, p0, Lcom/freeme/camera/ui/video/VideoUI;->mUISpec:Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$UISpec;

    iget-object v3, v3, Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$UISpec;->stopListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Lcom/freeme/camera/common/widget/ScaleAnimationButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f090060

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/freeme/camera/common/widget/ScaleAnimationButton;

    iput-object v2, p0, Lcom/freeme/camera/ui/video/VideoUI;->mVssButton:Lcom/freeme/camera/common/widget/ScaleAnimationButton;

    iget-object v2, p0, Lcom/freeme/camera/ui/video/VideoUI;->mVssButton:Lcom/freeme/camera/common/widget/ScaleAnimationButton;

    iget-object v3, p0, Lcom/freeme/camera/ui/video/VideoUI;->mUISpec:Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$UISpec;

    iget-object v3, v3, Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$UISpec;->vssListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Lcom/freeme/camera/common/widget/ScaleAnimationButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f090174

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/freeme/camera/ui/video/VideoUI;->mRecordingSizeViewGroup:Landroid/view/View;

    const v2, 0x7f090170

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/freeme/camera/common/widget/RotateStrokeTextView;

    iput-object v2, p0, Lcom/freeme/camera/ui/video/VideoUI;->mCurrentRecordingSizeView:Lcom/freeme/camera/common/widget/RotateStrokeTextView;

    const v2, 0x7f090172

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lcom/freeme/camera/ui/video/VideoUI;->mRecordingSizeSeekBar:Landroid/widget/SeekBar;

    const v2, 0x7f090177

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/common/widget/RotateStrokeTextView;

    iput-object v0, p0, Lcom/freeme/camera/ui/video/VideoUI;->mRecordingSizeTotalView:Lcom/freeme/camera/common/widget/RotateStrokeTextView;

    iget-object v0, p0, Lcom/freeme/camera/ui/video/VideoUI;->mRecordingSizeSeekBar:Landroid/widget/SeekBar;

    new-instance v2, Lcom/freeme/camera/ui/video/VideoUI$3;

    invoke-direct {v2, p0}, Lcom/freeme/camera/ui/video/VideoUI$3;-><init>(Lcom/freeme/camera/ui/video/VideoUI;)V

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    sget-object v0, Lcom/freeme/camera/ui/video/VideoUI;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v2, "[getView] - "

    invoke-static {v0, v2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-object v1
.end method

.method private hide()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/ui/video/VideoUI;->mRecordingRootView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/ui/video/VideoUI;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/freeme/camera/ui/video/VideoUI;->mRecordingRootView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/freeme/camera/ui/video/VideoUI;->mRecordingTimeViewGroup:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/freeme/camera/ui/video/VideoUI;->mRecordingTimeView:Lcom/freeme/camera/common/widget/StrokeTextView;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/widget/StrokeTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/freeme/camera/ui/video/VideoUI;->mPauseResumeButton:Lcom/freeme/camera/common/widget/ScaleAnimationButton;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/widget/ScaleAnimationButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/freeme/camera/ui/video/VideoUI;->mRecordingSizeViewGroup:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/freeme/camera/ui/video/VideoUI;->mParentViewGroup:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/freeme/camera/ui/video/VideoUI;->mRecordingRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freeme/camera/ui/video/VideoUI;->mRecordingRootView:Landroid/view/View;

    return-void
.end method

.method private show()V
    .locals 7

    sget-object v0, Lcom/freeme/camera/ui/video/VideoUI;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[show] + mRecordingRootView = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/ui/video/VideoUI;->mRecordingRootView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/ui/video/VideoUI;->mRecordingRootView:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/freeme/camera/ui/video/VideoUI;->getView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/ui/video/VideoUI;->mRecordingRootView:Landroid/view/View;

    :cond_0
    invoke-direct {p0}, Lcom/freeme/camera/ui/video/VideoUI;->updateRecordingViewIcon()V

    iget-object v0, p0, Lcom/freeme/camera/ui/video/VideoUI;->mRecordingRootView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/freeme/camera/ui/video/VideoUI;->mRecordingTimeViewGroup:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/freeme/camera/ui/video/VideoUI;->mRecordingTimeView:Lcom/freeme/camera/common/widget/StrokeTextView;

    const-wide/16 v2, 0x0

    invoke-direct {p0, v2, v3, v1}, Lcom/freeme/camera/ui/video/VideoUI;->formatTime(JZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/freeme/camera/common/widget/StrokeTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/freeme/camera/ui/video/VideoUI;->mRecordingTimeView:Lcom/freeme/camera/common/widget/StrokeTextView;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/widget/StrokeTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/freeme/camera/ui/video/VideoUI;->mUISpec:Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$UISpec;

    iget-boolean v0, v0, Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$UISpec;->isSupportedPause:Z

    const/16 v4, 0x8

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/ui/video/VideoUI;->mPauseResumeButton:Lcom/freeme/camera/common/widget/ScaleAnimationButton;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/widget/ScaleAnimationButton;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/ui/video/VideoUI;->mPauseResumeButton:Lcom/freeme/camera/common/widget/ScaleAnimationButton;

    invoke-virtual {v0, v4}, Lcom/freeme/camera/common/widget/ScaleAnimationButton;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/freeme/camera/ui/video/VideoUI;->mUISpec:Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$UISpec;

    iget-boolean v0, v0, Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$UISpec;->isSupportedVss:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/freeme/camera/ui/video/VideoUI;->mVssButton:Lcom/freeme/camera/common/widget/ScaleAnimationButton;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/widget/ScaleAnimationButton;->setVisibility(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/freeme/camera/ui/video/VideoUI;->mVssButton:Lcom/freeme/camera/common/widget/ScaleAnimationButton;

    invoke-virtual {v0, v4}, Lcom/freeme/camera/common/widget/ScaleAnimationButton;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, Lcom/freeme/camera/ui/video/VideoUI;->mUISpec:Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$UISpec;

    iget-wide v5, v0, Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$UISpec;->recordingTotalSize:J

    cmp-long v0, v5, v2

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/freeme/camera/ui/video/VideoUI;->mCurrentRecordingSizeView:Lcom/freeme/camera/common/widget/RotateStrokeTextView;

    const-string v2, "0"

    invoke-virtual {v0, v2}, Lcom/freeme/camera/common/widget/RotateStrokeTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/freeme/camera/ui/video/VideoUI;->mRecordingSizeSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v0, p0, Lcom/freeme/camera/ui/video/VideoUI;->mUISpec:Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$UISpec;

    iget-wide v2, v0, Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$UISpec;->recordingTotalSize:J

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    const-wide/16 v4, 0x12c

    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/freeme/camera/ui/video/VideoUI;->mRecordingSizeTotalView:Lcom/freeme/camera/common/widget/RotateStrokeTextView;

    iget-object v2, p0, Lcom/freeme/camera/ui/video/VideoUI;->mUISpec:Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$UISpec;

    iget-wide v2, v2, Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$UISpec;->recordingTotalSize:J

    invoke-direct {p0, v2, v3}, Lcom/freeme/camera/ui/video/VideoUI;->formatFileSizeForRongHe(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/freeme/camera/common/widget/RotateStrokeTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/freeme/camera/ui/video/VideoUI;->mRecordingSizeTotalView:Lcom/freeme/camera/common/widget/RotateStrokeTextView;

    iget-object v2, p0, Lcom/freeme/camera/ui/video/VideoUI;->mUISpec:Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$UISpec;

    iget-wide v2, v2, Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$UISpec;->recordingTotalSize:J

    invoke-direct {p0, v2, v3}, Lcom/freeme/camera/ui/video/VideoUI;->formatFileSize(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/freeme/camera/common/widget/RotateStrokeTextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object v0, p0, Lcom/freeme/camera/ui/video/VideoUI;->mRecordingSizeViewGroup:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/freeme/camera/ui/video/VideoUI;->mRecordingSizeViewGroup:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    sget-object v0, Lcom/freeme/camera/ui/video/VideoUI;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[show] - "

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private showTime(JZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/freeme/camera/ui/video/VideoUI;->formatTime(JZ)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/freeme/camera/ui/video/VideoUI;->mRecordingTimeView:Lcom/freeme/camera/common/widget/StrokeTextView;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Lcom/freeme/camera/common/widget/StrokeTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private updateRecordingTime()V
    .locals 7

    iget-boolean v0, p0, Lcom/freeme/camera/ui/video/VideoUI;->mIsInRecording:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/freeme/camera/ui/video/VideoUI;->mRecordingStartTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/freeme/camera/ui/video/VideoUI;->mRecordingTotalDuration:J

    sget-object v0, Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;->STATE_PAUSE_RECORDING:Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;

    iget-object v1, p0, Lcom/freeme/camera/ui/video/VideoUI;->mUIState:Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;

    if-ne v0, v1, :cond_1

    iget-wide v0, p0, Lcom/freeme/camera/ui/video/VideoUI;->mRecordingPausedDuration:J

    iput-wide v0, p0, Lcom/freeme/camera/ui/video/VideoUI;->mRecordingTotalDuration:J

    :cond_1
    const-wide/16 v0, 0x3e8

    iget-wide v2, p0, Lcom/freeme/camera/ui/video/VideoUI;->mRecordingTotalDuration:J

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/freeme/camera/ui/video/VideoUI;->showTime(JZ)V

    iget v2, p0, Lcom/freeme/camera/ui/video/VideoUI;->mShowRecordingTimeViewIndicator:I

    const/4 v3, 0x1

    rsub-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/freeme/camera/ui/video/VideoUI;->mShowRecordingTimeViewIndicator:I

    sget-object v2, Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;->STATE_PAUSE_RECORDING:Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;

    iget-object v5, p0, Lcom/freeme/camera/ui/video/VideoUI;->mUIState:Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;

    if-ne v2, v5, :cond_2

    iget v2, p0, Lcom/freeme/camera/ui/video/VideoUI;->mShowRecordingTimeViewIndicator:I

    if-ne v3, v2, :cond_2

    iget-object v2, p0, Lcom/freeme/camera/ui/video/VideoUI;->mRecordingTimeViewGroup:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/freeme/camera/ui/video/VideoUI;->mRecordingTimeViewGroup:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    const-wide/16 v2, 0x1f4

    sget-object v5, Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;->STATE_PAUSE_RECORDING:Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;

    iget-object v6, p0, Lcom/freeme/camera/ui/video/VideoUI;->mUIState:Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;

    if-eq v5, v6, :cond_3

    iget-wide v2, p0, Lcom/freeme/camera/ui/video/VideoUI;->mRecordingTotalDuration:J

    rem-long/2addr v2, v0

    sub-long v2, v0, v2

    :cond_3
    iget-object v0, p0, Lcom/freeme/camera/ui/video/VideoUI;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private updateRecordingViewIcon()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/ui/video/VideoUI;->mUIState:Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;

    sget-object v1, Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;->STATE_PAUSE_RECORDING:Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;

    if-ne v0, v1, :cond_0

    const v0, 0x7f0801c3

    const v1, 0x7f0801c9

    goto :goto_0

    :cond_0
    const v0, 0x7f0801c8

    const v1, 0x7f0801c4

    :goto_0
    iget-object v2, p0, Lcom/freeme/camera/ui/video/VideoUI;->mRecordingIndicator:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/freeme/camera/ui/video/VideoUI;->mPauseResumeButton:Lcom/freeme/camera/common/widget/ScaleAnimationButton;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/widget/ScaleAnimationButton;->setImageResource(I)V

    return-void
.end method

.method private updateUI()V
    .locals 7

    sget-object v0, Lcom/freeme/camera/ui/video/VideoUI$4;->$SwitchMap$com$freeme$camera$common$mode$video$videoui$IVideoUI$VideoUIState:[I

    iget-object v1, p0, Lcom/freeme/camera/ui/video/VideoUI;->mUIState:Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;

    invoke-virtual {v1}, Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-wide/16 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/freeme/camera/ui/video/VideoUI;->mRecordingPausedDuration:J

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lcom/freeme/camera/ui/video/VideoUI;->mRecordingStartTime:J

    iput-wide v1, p0, Lcom/freeme/camera/ui/video/VideoUI;->mRecordingPausedDuration:J

    sget-object v0, Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;->STATE_RECORDING:Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;

    iput-object v0, p0, Lcom/freeme/camera/ui/video/VideoUI;->mUIState:Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;

    invoke-direct {p0}, Lcom/freeme/camera/ui/video/VideoUI;->updateRecordingViewIcon()V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/freeme/camera/ui/video/VideoUI;->mRecordingStartTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/freeme/camera/ui/video/VideoUI;->mRecordingPausedDuration:J

    invoke-direct {p0}, Lcom/freeme/camera/ui/video/VideoUI;->updateRecordingViewIcon()V

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/freeme/camera/ui/video/VideoUI;->mIsInRecording:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/freeme/camera/ui/video/VideoUI;->mRecordingStartTime:J

    invoke-direct {p0}, Lcom/freeme/camera/ui/video/VideoUI;->updateRecordingTime()V

    goto :goto_0

    :pswitch_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/freeme/camera/ui/video/VideoUI;->mRecordingStartTime:J

    iput-wide v1, p0, Lcom/freeme/camera/ui/video/VideoUI;->mRecordingPausedDuration:J

    invoke-direct {p0}, Lcom/freeme/camera/ui/video/VideoUI;->show()V

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/camera/ui/video/VideoUI;->mIsInRecording:Z

    iget-object v1, p0, Lcom/freeme/camera/ui/video/VideoUI;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0}, Lcom/freeme/camera/ui/video/VideoUI;->hide()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public initVideoUI(Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$UISpec;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/video/VideoUI;->mUISpec:Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$UISpec;

    return-void
.end method

.method public showInfo(I)V
    .locals 3

    sget-object v0, Lcom/freeme/camera/ui/video/VideoUI;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[showInfo] infoId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const v0, 0x7f0f01bf

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/freeme/camera/ui/video/VideoUI;->mVideoErrorHint:Lcom/freeme/camera/common/IAppUi$HintInfo;

    iget-object v1, p0, Lcom/freeme/camera/ui/video/VideoUI;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/freeme/camera/common/IAppUi$HintInfo;->mHintText:Ljava/lang/String;

    iget-object p1, p0, Lcom/freeme/camera/ui/video/VideoUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/ui/video/VideoUI;->mVideoErrorHint:Lcom/freeme/camera/common/IAppUi$HintInfo;

    invoke-interface {p1, v0}, Lcom/freeme/camera/common/IAppUi;->showScreenHint(Lcom/freeme/camera/common/IAppUi$HintInfo;)V

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lcom/freeme/camera/ui/video/VideoUI;->mVideoErrorHint:Lcom/freeme/camera/common/IAppUi$HintInfo;

    iget-object v0, p0, Lcom/freeme/camera/ui/video/VideoUI;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0f01c0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/freeme/camera/common/IAppUi$HintInfo;->mHintText:Ljava/lang/String;

    iget-object p1, p0, Lcom/freeme/camera/ui/video/VideoUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/ui/video/VideoUI;->mVideoErrorHint:Lcom/freeme/camera/common/IAppUi$HintInfo;

    invoke-interface {p1, v0}, Lcom/freeme/camera/common/IAppUi;->showScreenHint(Lcom/freeme/camera/common/IAppUi$HintInfo;)V

    goto :goto_0

    :pswitch_3
    iget-object p1, p0, Lcom/freeme/camera/ui/video/VideoUI;->mVideoErrorHint:Lcom/freeme/camera/common/IAppUi$HintInfo;

    iget-object v1, p0, Lcom/freeme/camera/ui/video/VideoUI;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/freeme/camera/common/IAppUi$HintInfo;->mHintText:Ljava/lang/String;

    iget-object p1, p0, Lcom/freeme/camera/ui/video/VideoUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/ui/video/VideoUI;->mVideoErrorHint:Lcom/freeme/camera/common/IAppUi$HintInfo;

    invoke-interface {p1, v0}, Lcom/freeme/camera/common/IAppUi;->showScreenHint(Lcom/freeme/camera/common/IAppUi$HintInfo;)V

    goto :goto_0

    :pswitch_4
    iget-object p1, p0, Lcom/freeme/camera/ui/video/VideoUI;->mVideoErrorHint:Lcom/freeme/camera/common/IAppUi$HintInfo;

    iget-object v0, p0, Lcom/freeme/camera/ui/video/VideoUI;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0f01b7

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/freeme/camera/common/IAppUi$HintInfo;->mHintText:Ljava/lang/String;

    iget-object p1, p0, Lcom/freeme/camera/ui/video/VideoUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/ui/video/VideoUI;->mVideoErrorHint:Lcom/freeme/camera/common/IAppUi$HintInfo;

    invoke-interface {p1, v0}, Lcom/freeme/camera/common/IAppUi;->showScreenHint(Lcom/freeme/camera/common/IAppUi$HintInfo;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public unInitVideoUI()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/ui/video/VideoUI;->mParentViewGroup:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/freeme/camera/ui/video/VideoUI;->mRecordingRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freeme/camera/ui/video/VideoUI;->mRecordingRootView:Landroid/view/View;

    iput-object v0, p0, Lcom/freeme/camera/ui/video/VideoUI;->mUISpec:Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$UISpec;

    return-void
.end method

.method public updateOrientation(I)V
    .locals 3

    sget-object v0, Lcom/freeme/camera/ui/video/VideoUI;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateOrientation] orientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mUIState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/ui/video/VideoUI;->mUIState:Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/ui/video/VideoUI;->mUIState:Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;

    sget-object v1, Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;->STATE_PREVIEW:Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_1

    const/16 v0, 0xb4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10e

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/freeme/camera/ui/video/VideoUI;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error orientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/ui/video/VideoUI;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/freeme/camera/ui/video/VideoUI;->mRecordingRootView:Landroid/view/View;

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2}, Lcom/freeme/camera/common/utils/CameraUtil;->rotateRotateLayoutChildView(Landroid/app/Activity;Landroid/view/View;IZ)V

    :goto_0
    return-void
.end method

.method public updateRecordingSize(J)V
    .locals 3

    sget-object v0, Lcom/freeme/camera/ui/video/VideoUI;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateRecordingSize] mUIState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/ui/video/VideoUI;->mUIState:Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/ui/video/VideoUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/freeme/camera/ui/video/VideoUI$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/freeme/camera/ui/video/VideoUI$1;-><init>(Lcom/freeme/camera/ui/video/VideoUI;J)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateUIState(Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;)V
    .locals 3

    sget-object v0, Lcom/freeme/camera/ui/video/VideoUI;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateUIState] mUIState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/ui/video/VideoUI;->mUIState:Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " new state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    sget-object v0, Lcom/freeme/camera/ui/video/VideoUI$4;->$SwitchMap$com$freeme$camera$common$mode$video$videoui$IVideoUI$VideoUIState:[I

    invoke-virtual {p1}, Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/freeme/camera/ui/video/VideoUI;->mUIState:Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;

    sget-object v1, Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;->STATE_PAUSE_RECORDING:Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/freeme/camera/ui/video/VideoUI;->doUpdateUI(Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/freeme/camera/ui/video/VideoUI;->mUIState:Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;

    sget-object v1, Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;->STATE_RECORDING:Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/freeme/camera/ui/video/VideoUI;->doUpdateUI(Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/freeme/camera/ui/video/VideoUI;->mUIState:Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;

    sget-object v1, Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;->STATE_PRE_RECORDING:Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/freeme/camera/ui/video/VideoUI;->doUpdateUI(Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/freeme/camera/ui/video/VideoUI;->mUIState:Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;

    sget-object v1, Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;->STATE_PREVIEW:Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/freeme/camera/ui/video/VideoUI;->doUpdateUI(Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;)V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, p1}, Lcom/freeme/camera/ui/video/VideoUI;->doUpdateUI(Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
