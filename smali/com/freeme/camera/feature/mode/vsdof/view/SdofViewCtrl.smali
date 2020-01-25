.class public Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;
.super Ljava/lang/Object;
.source "SdofViewCtrl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl$MainHandler;,
        Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl$ViewChangeListener;
    }
.end annotation


# static fields
.field private static final DOFDATA:[Ljava/lang/String;

.field public static final DUAL_CAMERA_LENS_COVERED:I = 0x1

.field public static final DUAL_CAMERA_LOW_LIGHT:I = 0x2

.field public static final DUAL_CAMERA_OTP_DATA_ERROR:I = 0xa

.field public static final DUAL_CAMERA_READY:I = 0x0

.field public static final DUAL_CAMERA_TOO_CLOSE:I = 0x4

.field public static final DUAL_CAMERA_TOO_FAR:I = -0x80000000

.field private static final LEVEL_DEFAULT:I = 0x4

.field private static final PROGRESS_DELAY_TIME:J = 0x32L

.field private static final PROGRESS_MAX:I = 0xaf

.field private static final SDOF_BAR_MARGION_HORIZON:I = 0x28

.field private static final SDOF_BAR_MARGION_VERTICAL:I = 0x82

.field private static final SDOF_TEXT_VIEW_HIDE:I = 0x5

.field private static final SDOF_TEXT_VIEW_SHOW:I = 0x0

.field private static final SDOF_VIEW_HIDE_DELAY_TIME:I = 0xbb8

.field private static final SDOF_VIEW_INIT_AND_SHOW:I = 0x2

.field private static final SDOF_VIEW_ORIENTATION_CHANGED:I = 0x4

.field private static final SDOF_VIEW_RESET:I = 0x1

.field private static final SDOF_VIEW_UNINIT:I = 0x3

.field private static final SDOF_WARNING_VIEW_SHOW:I = 0x6

.field private static final SEEKBAR_COLOR:Ljava/lang/String; = "#FFFFFF"

.field private static final SHOW_INFO_LENGTH_LONG:I = 0x3e8

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

.field private static final VSDOF_LEVEL_KEY:Ljava/lang/String; = "com.mediatek.stereofeature.supporteddoflevel"


# instance fields
.field private mApp:Lcom/freeme/camera/common/app/IApp;

.field private mChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mDofBar:Landroid/widget/SeekBar;

.field private mDofLevel:I

.field private mGuideHint:Lcom/freeme/camera/common/IAppUi$HintInfo;

.field private mLevel:I

.field private mMainHandler:Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl$MainHandler;

.field private mProcessTime:J

.field private mProgress:I

.field private mRootViewGroup:Landroid/view/ViewGroup;

.field private mSdofLayout:Landroid/widget/RelativeLayout;

.field private mSdofView:Landroid/widget/RelativeLayout;

.field private mTextView:Landroid/widget/TextView;

.field private mViewChangeListener:Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl$ViewChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v2, "F11.0"

    const-string v3, "F8.0"

    const-string v4, "F5.6"

    const-string v5, "F4.0"

    const-string v6, "F2.8"

    const-string v7, "F2.0"

    const-string v8, "F1.4"

    const-string v9, "F1.2"

    const-string v10, "F1.0"

    filled-new-array/range {v2 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->DOFDATA:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->mLevel:I

    const/16 v0, 0x9

    iput v0, p0, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->mDofLevel:I

    const/16 v0, 0x32

    iput v0, p0, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->mProgress:I

    new-instance v0, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl$1;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl$1;-><init>(Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->mChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->mTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->initView()V

    return-void
.end method

.method static synthetic access$1000(Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;)Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl$MainHandler;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->mMainHandler:Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl$MainHandler;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;)I
    .locals 0

    iget p0, p0, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->mProgress:I

    return p0
.end method

.method static synthetic access$1102(Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;I)I
    .locals 0

    iput p1, p0, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->mProgress:I

    return p1
.end method

.method static synthetic access$200(Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->unInitView()V

    return-void
.end method

.method static synthetic access$300(Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->showGuideView(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;)I
    .locals 0

    iget p0, p0, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->mDofLevel:I

    return p0
.end method

.method static synthetic access$500()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->DOFDATA:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;)J
    .locals 2

    iget-wide v0, p0, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->mProcessTime:J

    return-wide v0
.end method

.method static synthetic access$602(Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;J)J
    .locals 0

    iput-wide p1, p0, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->mProcessTime:J

    return-wide p1
.end method

.method static synthetic access$700(Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;)I
    .locals 0

    iget p0, p0, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->mLevel:I

    return p0
.end method

.method static synthetic access$702(Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;I)I
    .locals 0

    iput p1, p0, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->mLevel:I

    return p1
.end method

.method static synthetic access$800()Lcom/freeme/camera/common/debug/LogUtil$Tag;
    .locals 1

    sget-object v0, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-object v0
.end method

.method static synthetic access$900(Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;)Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl$ViewChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->mViewChangeListener:Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl$ViewChangeListener;

    return-object p0
.end method

.method private dpToPixel(I)I
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float p1, p1

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method private initView()V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/IAppUi;->getModeRootView()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->mRootViewGroup:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->mRootViewGroup:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    const v3, 0x7f0b0086

    invoke-virtual {v0, v3, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->mSdofLayout:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/IAppUi;->getShutterRootView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->mSdofLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->mSdofLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->mSdofLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f09018e

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->mSdofView:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->mSdofLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f090093

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->mTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->mSdofLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f09018d

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->mDofBar:Landroid/widget/SeekBar;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->mDofBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v1, "#FFFFFF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->mDofBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v1, "#FFFFFF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->mDofBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setVisibility(I)V

    iget v0, p0, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->mDofLevel:I

    add-int/lit8 v0, v0, -0x1

    const/16 v1, 0x2bc

    div-int/2addr v1, v0

    iput v1, p0, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->mProgress:I

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->mDofBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->mProgress:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->mDofBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->mChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->mRootViewGroup:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->mSdofLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private showGuideView(I)V
    .locals 2

    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const v1, 0x7f0f0094

    goto :goto_0

    :pswitch_1
    const v1, 0x7f0f0092

    goto :goto_0

    :cond_0
    const v1, 0x7f0f0095

    goto :goto_0

    :cond_1
    const v1, 0x7f0f0096

    goto :goto_0

    :cond_2
    const v1, 0x7f0f0097

    :goto_0
    :pswitch_2
    if-eqz v1, :cond_3

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->mGuideHint:Lcom/freeme/camera/common/IAppUi$HintInfo;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/freeme/camera/common/IAppUi$HintInfo;->mHintText:Ljava/lang/String;

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->mGuideHint:Lcom/freeme/camera/common/IAppUi$HintInfo;

    invoke-interface {p1, v0}, Lcom/freeme/camera/common/IAppUi;->showScreenHint(Lcom/freeme/camera/common/IAppUi$HintInfo;)V

    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private unInitView()V
    .locals 2

    const/4 v0, 0x4

    iput v0, p0, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->mLevel:I

    iget v0, p0, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->mDofLevel:I

    add-int/lit8 v0, v0, -0x1

    const/16 v1, 0x2bc

    div-int/2addr v1, v0

    iput v1, p0, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->mProgress:I

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->mRootViewGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->mSdofLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->mSdofLayout:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->mSdofView:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->mGuideHint:Lcom/freeme/camera/common/IAppUi$HintInfo;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->hideScreenHint(Lcom/freeme/camera/common/IAppUi$HintInfo;)V

    return-void
.end method

.method private updateOrientation(I)V
    .locals 5

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->mSdofView:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    sget-object p1, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[updateOrientation] view is null!"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz p1, :cond_2

    const/16 v1, 0x5a

    if-eq p1, v1, :cond_1

    const/16 v1, 0xb4

    if-eq p1, v1, :cond_2

    const/16 v1, 0x10e

    if-eq p1, v1, :cond_1

    goto :goto_0

    :cond_1
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    const/16 v4, 0x28

    invoke-direct {p0, v4}, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->dpToPixel(I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    :cond_2
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    const/16 v4, 0x82

    invoke-direct {p0, v4}, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->dpToPixel(I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    :goto_0
    iget-object v1, p0, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->mSdofView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->mSdofLayout:Landroid/widget/RelativeLayout;

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2}, Lcom/freeme/camera/common/utils/CameraUtil;->rotateRotateLayoutChildView(Landroid/app/Activity;Landroid/view/View;IZ)V

    return-void
.end method


# virtual methods
.method public init(Lcom/freeme/camera/common/app/IApp;)V
    .locals 4

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->mApp:Lcom/freeme/camera/common/app/IApp;

    new-instance v0, Lcom/freeme/camera/common/IAppUi$HintInfo;

    invoke-direct {v0}, Lcom/freeme/camera/common/IAppUi$HintInfo;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->mGuideHint:Lcom/freeme/camera/common/IAppUi$HintInfo;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "hint_text_background"

    const-string v2, "drawable"

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v3}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->mGuideHint:Lcom/freeme/camera/common/IAppUi$HintInfo;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v2}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v1, Lcom/freeme/camera/common/IAppUi$HintInfo;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->mGuideHint:Lcom/freeme/camera/common/IAppUi$HintInfo;

    sget-object v1, Lcom/freeme/camera/common/IAppUi$HintType;->TYPE_AUTO_HIDE:Lcom/freeme/camera/common/IAppUi$HintType;

    iput-object v1, v0, Lcom/freeme/camera/common/IAppUi$HintInfo;->mType:Lcom/freeme/camera/common/IAppUi$HintType;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->mGuideHint:Lcom/freeme/camera/common/IAppUi$HintInfo;

    const/16 v1, 0x3e8

    iput v1, v0, Lcom/freeme/camera/common/IAppUi$HintInfo;->mDelayTime:I

    new-instance v0, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl$MainHandler;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl$MainHandler;-><init>(Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->mMainHandler:Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl$MainHandler;

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {}, Lcom/freeme/camera/common/mode/CameraApiHelper;->getLogicalCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/freeme/camera/common/utils/CameraUtil;->getCameraCharacteristics(Landroid/app/Activity;Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v0, "com.mediatek.stereofeature.supporteddoflevel"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/utils/CameraUtil;->getStaticKeyResult(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;)[I

    move-result-object p1

    if-eqz p1, :cond_1

    array-length v0, p1

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    aget v1, p1, v0

    if-eqz v1, :cond_1

    aget v1, p1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[init] dofLevel value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    aget v1, p1, v0

    iget v2, p0, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->mDofLevel:I

    if-eq v1, v2, :cond_2

    aget p1, p1, v0

    iput p1, p0, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->mDofLevel:I

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->mMainHandler:Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl$MainHandler;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public setViewChangeListener(Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl$ViewChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->mViewChangeListener:Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl$ViewChangeListener;

    return-void
.end method

.method public showView()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->mMainHandler:Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl$MainHandler;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl$MainHandler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->mViewChangeListener:Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl$ViewChangeListener;

    iget v1, p0, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->mLevel:I

    invoke-interface {v0, v1}, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl$ViewChangeListener;->onVsDofLevelChanged(I)V

    :cond_0
    return-void
.end method

.method public showWarningView(I)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->mMainHandler:Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl$MainHandler;

    if-eqz v0, :cond_0

    const/4 v1, 0x6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public unInit()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->mMainHandler:Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl$MainHandler;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl$MainHandler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->mMainHandler:Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl$MainHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl$MainHandler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->mMainHandler:Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl$MainHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl$MainHandler;->removeMessages(I)V

    :cond_0
    return-void
.end method
