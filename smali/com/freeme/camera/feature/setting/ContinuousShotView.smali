.class public Lcom/freeme/camera/feature/setting/ContinuousShotView;
.super Ljava/lang/Object;
.source "ContinuousShotView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/feature/setting/ContinuousShotView$MainHandler;,
        Lcom/freeme/camera/feature/setting/ContinuousShotView$ContinuousShotIndicatorState;
    }
.end annotation


# static fields
.field public static final HIDE_CONTINUOUS_SHOT_VIEW:I = 0x3eb

.field public static final INIT_CONTINUOUS_SHOT_VIEW:I = 0x3e8

.field public static final SHOW_CONTINUOUS_SHOT_VIEW:I = 0x3ea

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

.field public static final UNINIT_CONTINUOUS_SHOT_VIEW:I = 0x3e9


# instance fields
.field private mApp:Lcom/freeme/camera/common/app/IApp;

.field private mContinuousShotRoot:Landroid/view/ViewGroup;

.field private mIndicatorState:Lcom/freeme/camera/feature/setting/ContinuousShotView$ContinuousShotIndicatorState;

.field private mIndicatorViewHandler:Landroid/os/Handler;

.field private mIsSupported:Z

.field private mRootViewGroup:Landroid/view/ViewGroup;

.field private mRotateStrokeTextView:Lcom/freeme/camera/common/widget/RotateStrokeTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/setting/ContinuousShotView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/ContinuousShotView;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotView;->mIsSupported:Z

    return-void
.end method

.method static synthetic access$000()Lcom/freeme/camera/common/debug/LogUtil$Tag;
    .locals 1

    sget-object v0, Lcom/freeme/camera/feature/setting/ContinuousShotView;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/freeme/camera/feature/setting/ContinuousShotView;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotView;->mApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$200(Lcom/freeme/camera/feature/setting/ContinuousShotView;Landroid/app/Activity;Lcom/freeme/camera/common/IAppUi;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/freeme/camera/feature/setting/ContinuousShotView;->init(Landroid/app/Activity;Lcom/freeme/camera/common/IAppUi;)V

    return-void
.end method

.method static synthetic access$300(Lcom/freeme/camera/feature/setting/ContinuousShotView;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/ContinuousShotView;->unInit()V

    return-void
.end method

.method static synthetic access$400(Lcom/freeme/camera/feature/setting/ContinuousShotView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/ContinuousShotView;->show(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/freeme/camera/feature/setting/ContinuousShotView;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/ContinuousShotView;->hide()V

    return-void
.end method

.method private hide()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotView;->mRotateStrokeTextView:Lcom/freeme/camera/common/widget/RotateStrokeTextView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/widget/RotateStrokeTextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotView;->mRotateStrokeTextView:Lcom/freeme/camera/common/widget/RotateStrokeTextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/widget/RotateStrokeTextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private init(Landroid/app/Activity;Lcom/freeme/camera/common/IAppUi;)V
    .locals 2

    invoke-interface {p2}, Lcom/freeme/camera/common/IAppUi;->getModeRootView()Landroid/view/ViewGroup;

    move-result-object p2

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/ContinuousShotView;->mRootViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/ContinuousShotView;->mRootViewGroup:Landroid/view/ViewGroup;

    const v0, 0x7f0b0029

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f09007c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/ContinuousShotView;->mContinuousShotRoot:Landroid/view/ViewGroup;

    const p2, 0x7f0901b1

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/freeme/camera/common/widget/RotateStrokeTextView;

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/ContinuousShotView;->mRotateStrokeTextView:Lcom/freeme/camera/common/widget/RotateStrokeTextView;

    sget-object p1, Lcom/freeme/camera/feature/setting/ContinuousShotView;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[init] mRotateStrokeTextView = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotView;->mRotateStrokeTextView:Lcom/freeme/camera/common/widget/RotateStrokeTextView;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private setOrientation(I)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotView;->mRotateStrokeTextView:Lcom/freeme/camera/common/widget/RotateStrokeTextView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/freeme/camera/common/widget/RotateStrokeTextView;->setOrientation(IZ)V

    :cond_0
    return-void
.end method

.method private show(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotView;->mRotateStrokeTextView:Lcom/freeme/camera/common/widget/RotateStrokeTextView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/freeme/camera/feature/setting/ContinuousShotView;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[show] msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotView;->mRotateStrokeTextView:Lcom/freeme/camera/common/widget/RotateStrokeTextView;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/common/widget/RotateStrokeTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/ContinuousShotView;->mRotateStrokeTextView:Lcom/freeme/camera/common/widget/RotateStrokeTextView;

    const v0, 0x7f08006a

    invoke-virtual {p1, v0}, Lcom/freeme/camera/common/widget/RotateStrokeTextView;->setBackgroundResource(I)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/ContinuousShotView;->mRotateStrokeTextView:Lcom/freeme/camera/common/widget/RotateStrokeTextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/freeme/camera/common/widget/RotateStrokeTextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private unInit()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotView;->mRootViewGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotView;->mRotateStrokeTextView:Lcom/freeme/camera/common/widget/RotateStrokeTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/widget/RotateStrokeTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotView;->mRootViewGroup:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/ContinuousShotView;->mRotateStrokeTextView:Lcom/freeme/camera/common/widget/RotateStrokeTextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotView;->mRootViewGroup:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/ContinuousShotView;->mContinuousShotRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotView;->mRotateStrokeTextView:Lcom/freeme/camera/common/widget/RotateStrokeTextView;

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotView;->mContinuousShotRoot:Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotView;->mRootViewGroup:Landroid/view/ViewGroup;

    :cond_0
    return-void
.end method


# virtual methods
.method public clearIndicatorAllMessage()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotView;->mIndicatorViewHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/freeme/camera/feature/setting/ContinuousShotView;->mIsSupported:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotView;->mIndicatorViewHandler:Landroid/os/Handler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotView;->mIndicatorViewHandler:Landroid/os/Handler;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotView;->mIndicatorViewHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method public clearIndicatorMessage(I)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotView;->mIndicatorViewHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/freeme/camera/feature/setting/ContinuousShotView;->mIsSupported:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method public disableIndicator()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotView;->mIsSupported:Z

    return-void
.end method

.method public hideIndicatorView()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotView;->mIndicatorViewHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotView;->mIsSupported:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotView;->mIndicatorState:Lcom/freeme/camera/feature/setting/ContinuousShotView$ContinuousShotIndicatorState;

    sget-object v1, Lcom/freeme/camera/feature/setting/ContinuousShotView$ContinuousShotIndicatorState;->SHOW:Lcom/freeme/camera/feature/setting/ContinuousShotView$ContinuousShotIndicatorState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotView;->mIndicatorViewHandler:Landroid/os/Handler;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    sget-object v0, Lcom/freeme/camera/feature/setting/ContinuousShotView$ContinuousShotIndicatorState;->HIDE:Lcom/freeme/camera/feature/setting/ContinuousShotView$ContinuousShotIndicatorState;

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotView;->mIndicatorState:Lcom/freeme/camera/feature/setting/ContinuousShotView$ContinuousShotIndicatorState;

    :cond_0
    return-void
.end method

.method public initIndicatorView(Lcom/freeme/camera/common/app/IApp;)V
    .locals 1

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotView;->mIsSupported:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/freeme/camera/feature/setting/ContinuousShotView;->mApp:Lcom/freeme/camera/common/app/IApp;

    new-instance v0, Lcom/freeme/camera/feature/setting/ContinuousShotView$MainHandler;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/freeme/camera/feature/setting/ContinuousShotView$MainHandler;-><init>(Lcom/freeme/camera/feature/setting/ContinuousShotView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotView;->mIndicatorViewHandler:Landroid/os/Handler;

    sget-object p1, Lcom/freeme/camera/feature/setting/ContinuousShotView$ContinuousShotIndicatorState;->INIT:Lcom/freeme/camera/feature/setting/ContinuousShotView$ContinuousShotIndicatorState;

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/ContinuousShotView;->mIndicatorState:Lcom/freeme/camera/feature/setting/ContinuousShotView$ContinuousShotIndicatorState;

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/ContinuousShotView;->mIndicatorViewHandler:Landroid/os/Handler;

    const/16 v0, 0x3e8

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public setIndicatorViewOrientation(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotView;->mIsSupported:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/ContinuousShotView;->setOrientation(I)V

    return-void
.end method

.method public showIndicatorView(I)V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotView;->mIndicatorViewHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotView;->mIsSupported:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/freeme/camera/feature/setting/ContinuousShotView;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showIndicatorView(), num = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotView;->mIndicatorViewHandler:Landroid/os/Handler;

    const/16 v1, 0x3ea

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    sget-object p1, Lcom/freeme/camera/feature/setting/ContinuousShotView$ContinuousShotIndicatorState;->SHOW:Lcom/freeme/camera/feature/setting/ContinuousShotView$ContinuousShotIndicatorState;

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/ContinuousShotView;->mIndicatorState:Lcom/freeme/camera/feature/setting/ContinuousShotView$ContinuousShotIndicatorState;

    :cond_0
    return-void
.end method

.method public unInitIndicatorView()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotView;->mIndicatorViewHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/freeme/camera/feature/setting/ContinuousShotView;->mIsSupported:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    sget-object v0, Lcom/freeme/camera/feature/setting/ContinuousShotView$ContinuousShotIndicatorState;->UNINT:Lcom/freeme/camera/feature/setting/ContinuousShotView$ContinuousShotIndicatorState;

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotView;->mIndicatorState:Lcom/freeme/camera/feature/setting/ContinuousShotView$ContinuousShotIndicatorState;

    :cond_0
    return-void
.end method
