.class public Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;
.super Ljava/lang/Object;
.source "FaceViewCtrl.java"

# interfaces
.implements Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$MainHandler;,
        Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$WaitFocusState;,
        Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$FaceViewState;
    }
.end annotation


# static fields
.field private static final FACE_VIEW_PRIORITY:I = 0xa

.field private static final FOCUS_STATE_KEY:Ljava/lang/String; = "key_focus_state"

.field private static final FOCUS_STATE_PASSIVE_FOCUSED:Ljava/lang/String; = "PASSIVE_FOCUSED"

.field private static final FOCUS_STATE_PASSIVE_SCAN:Ljava/lang/String; = "PASSIVE_SCAN"

.field private static final FOCUS_STATE_PASSIVE_UNFOCUSED:Ljava/lang/String; = "PASSIVE_UNFOCUSED"

.field private static final HIDE_VIEW_DELAY_WHEN_NO_FACE:I = 0x3e8

.field private static final HIDE_VIEW_TIMEOUT_WAIT_AF_DONE:I = 0xbb8

.field private static final HIDE_VIEW_TIMEOUT_WAIT_AF_SCAN:I = 0x5dc

.field private static final MSG_AUTO_FOCUS_CHANGED:I = 0x7

.field private static final MSG_FACE_UPDATE:I = 0x6

.field private static final MSG_FACE_VIEW_AREA_SIZE:I = 0x4

.field private static final MSG_FACE_VIEW_HIDE:I = 0x2

.field private static final MSG_FACE_VIEW_INIT:I = 0x0

.field private static final MSG_FACE_VIEW_NONE:I = 0x3

.field private static final MSG_FACE_VIEW_ORIENTATION_UPDATE:I = 0x5

.field private static final MSG_FACE_VIEW_UNINIT:I = 0x1

.field private static final ROI_DEBUG_PROPERTY:Ljava/lang/String; = "vendor.mtk.camera.app.3a.debug"

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private mApp:Lcom/freeme/camera/common/app/IApp;

.field private mAppUi:Lcom/freeme/camera/common/IAppUi;

.field private mDataStore:Lcom/freeme/camera/common/relation/DataStore;

.field private mFaceExitAnim:Landroid/view/animation/Animation;

.field private mFaceLayout:Landroid/widget/FrameLayout;

.field private mFaceNum:I

.field private mFaceView:Lcom/freeme/camera/feature/setting/facedetection/FaceView;

.field private mFaceViewState:Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$FaceViewState;

.field private mHideViewWhenFaceCountNotChange:Z

.field private mIsEnable:Z

.field private mMainHandler:Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$MainHandler;

.field private mRootViewGroup:Lcom/freeme/camera/common/widget/PreviewFrameLayout;

.field private mWaitFocusState:Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$WaitFocusState;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->mIsEnable:Z

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->mHideViewWhenFaceCountNotChange:Z

    sget-object v0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$FaceViewState;->STATE_UNINIT:Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$FaceViewState;

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->mFaceViewState:Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$FaceViewState;

    sget-object v0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$WaitFocusState;->WAIT_NOTHING:Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$WaitFocusState;

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->mWaitFocusState:Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$WaitFocusState;

    return-void
.end method

.method static synthetic access$000(Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->hideView()V

    return-void
.end method

.method static synthetic access$100(Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->initFaceView()V

    return-void
.end method

.method static synthetic access$200(Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->unInitFaceView()V

    return-void
.end method

.method static synthetic access$300(Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;[Lcom/freeme/camera/feature/setting/facedetection/Face;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->updateFacesViewByFace([Lcom/freeme/camera/feature/setting/facedetection/Face;)V

    return-void
.end method

.method static synthetic access$402(Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;I)I
    .locals 0

    iput p1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->mFaceNum:I

    return p1
.end method

.method static synthetic access$500(Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;Landroid/graphics/RectF;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->setFaceViewPreviewSize(Landroid/graphics/RectF;)V

    return-void
.end method

.method static synthetic access$600(Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->setFaceViewDisplayOrientation(II)V

    return-void
.end method

.method static synthetic access$700(Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->updateFacesViewByFocus(Ljava/lang/String;)V

    return-void
.end method

.method private hideView()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->mFaceView:Lcom/freeme/camera/feature/setting/facedetection/FaceView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/facedetection/FaceView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[hideView]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->mFaceExitAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->mFaceView:Lcom/freeme/camera/feature/setting/facedetection/FaceView;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/facedetection/FaceView;->clearAnimation()V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->mFaceView:Lcom/freeme/camera/feature/setting/facedetection/FaceView;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->mFaceExitAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/facedetection/FaceView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->mFaceView:Lcom/freeme/camera/feature/setting/facedetection/FaceView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/facedetection/FaceView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private initFaceView()V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    invoke-interface {v0}, Lcom/freeme/camera/common/IAppUi;->getFaceViewFrameLayout()Lcom/freeme/camera/common/widget/PreviewFrameLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->mRootViewGroup:Lcom/freeme/camera/common/widget/PreviewFrameLayout;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->mRootViewGroup:Lcom/freeme/camera/common/widget/PreviewFrameLayout;

    const v2, 0x7f0b0049

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->mFaceLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->mFaceLayout:Landroid/widget/FrameLayout;

    const v1, 0x7f0900ba

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/feature/setting/facedetection/FaceView;

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->mFaceView:Lcom/freeme/camera/feature/setting/facedetection/FaceView;

    sget-object v0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$FaceViewState;->STATE_INIT:Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$FaceViewState;

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->mFaceViewState:Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$FaceViewState;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->mRootViewGroup:Lcom/freeme/camera/common/widget/PreviewFrameLayout;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->mFaceView:Lcom/freeme/camera/feature/setting/facedetection/FaceView;

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Lcom/freeme/camera/common/widget/PreviewFrameLayout;->registerView(Landroid/view/View;I)V

    return-void
.end method

.method private isShowFaceView()Z
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    const-string v1, "key_face_detection"

    const-string v2, "on"

    invoke-virtual {v0}, Lcom/freeme/camera/common/relation/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/freeme/camera/common/relation/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private setFaceViewDisplayOrientation(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->updateViewDisplayOrientation(II)V

    return-void
.end method

.method private setFaceViewPreviewSize(Landroid/graphics/RectF;)V
    .locals 2

    iget v0, p1, Landroid/graphics/RectF;->right:F

    float-to-int v0, v0

    iget v1, p1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p1, Landroid/graphics/RectF;->top:F

    float-to-int v1, v1

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    float-to-int p1, p1

    sub-int/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->updateViewPreviewSize(II)V

    return-void
.end method

.method private showView()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->mFaceView:Lcom/freeme/camera/feature/setting/facedetection/FaceView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/facedetection/FaceView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[showView]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->mFaceView:Lcom/freeme/camera/feature/setting/facedetection/FaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/facedetection/FaceView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private unInitFaceView()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->mRootViewGroup:Lcom/freeme/camera/common/widget/PreviewFrameLayout;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->mFaceView:Lcom/freeme/camera/feature/setting/facedetection/FaceView;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/widget/PreviewFrameLayout;->unRegisterView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->mFaceView:Lcom/freeme/camera/feature/setting/facedetection/FaceView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/facedetection/FaceView;->setVisibility(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->mRootViewGroup:Lcom/freeme/camera/common/widget/PreviewFrameLayout;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->mFaceView:Lcom/freeme/camera/feature/setting/facedetection/FaceView;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/widget/PreviewFrameLayout;->removeView(Landroid/view/View;)V

    sget-object v0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$FaceViewState;->STATE_UNINIT:Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$FaceViewState;

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->mFaceViewState:Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$FaceViewState;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->mFaceView:Lcom/freeme/camera/feature/setting/facedetection/FaceView;

    return-void
.end method

.method private updateFacesViewByFace([Lcom/freeme/camera/feature/setting/facedetection/Face;)V
    .locals 5

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->mIsEnable:Z

    if-nez v0, :cond_0

    sget-object p1, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[updateFacesViewByFace] mIsEnable is false, ignore this time"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p1, :cond_6

    array-length v0, p1

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->mFaceViewState:Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$FaceViewState;

    sget-object v1, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$FaceViewState;->STATE_INIT:Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$FaceViewState;

    if-ne v0, v1, :cond_6

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->mHideViewWhenFaceCountNotChange:Z

    const/16 v1, 0x8

    const/4 v2, 0x2

    if-eqz v0, :cond_2

    array-length v0, p1

    iget v3, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->mFaceNum:I

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->mFaceView:Lcom/freeme/camera/feature/setting/facedetection/FaceView;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/facedetection/FaceView;->hasReallyShown()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->mFaceView:Lcom/freeme/camera/feature/setting/facedetection/FaceView;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/facedetection/FaceView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->mMainHandler:Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$MainHandler;

    invoke-virtual {v0, v2}, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$MainHandler;->removeMessages(I)V

    sget-object v0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$WaitFocusState;->WAIT_NOTHING:Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$WaitFocusState;

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->mWaitFocusState:Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$WaitFocusState;

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->mMainHandler:Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$MainHandler;

    invoke-virtual {v0, v2}, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$MainHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->mMainHandler:Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$MainHandler;

    invoke-virtual {v0, v2}, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$MainHandler;->removeMessages(I)V

    sget-object v0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[updateFacesViewByFace] new face num = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", clear hide msg, send hide msg delay "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x5dc

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getCurrentCameraMode()I

    move-result v0

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->mMainHandler:Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$MainHandler;

    const-wide/16 v3, 0x5dc

    invoke-virtual {v0, v2, v3, v4}, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[updateFacesViewByFace] new face num = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", clear hide msg, show view right now"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->mMainHandler:Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$MainHandler;

    invoke-virtual {v0, v2}, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$MainHandler;->removeMessages(I)V

    sget-object v0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$WaitFocusState;->WAIT_PASSIVE_SCAN:Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$WaitFocusState;

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->mWaitFocusState:Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$WaitFocusState;

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->isShowFaceView()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getCurrentCameraMode()I

    move-result v0

    if-ne v0, v1, :cond_4

    :cond_3
    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->showView()V

    :cond_4
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->mFaceView:Lcom/freeme/camera/feature/setting/facedetection/FaceView;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/facedetection/FaceView;->resetReallyShown()V

    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->mFaceView:Lcom/freeme/camera/feature/setting/facedetection/FaceView;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/feature/setting/facedetection/FaceView;->setFaces([Lcom/freeme/camera/feature/setting/facedetection/Face;)V

    array-length p1, p1

    iput p1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->mFaceNum:I

    :cond_6
    return-void
.end method

.method private updateFacesViewByFocus(Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateFacesViewByFocus] enter, focusState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mWaitFocusState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->mWaitFocusState:Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$WaitFocusState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->mIsEnable:Z

    if-nez v0, :cond_0

    sget-object p1, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[updateFacesViewByFocus] mIsEnable is false, ignore this time"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    iget v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->mFaceNum:I

    if-gtz v0, :cond_1

    sget-object p1, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[updateFacesViewByFocus] face num <= 0, ignore this time"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->mFaceViewState:Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$FaceViewState;

    sget-object v1, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$FaceViewState;->STATE_INIT:Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$FaceViewState;

    if-eq v0, v1, :cond_2

    sget-object p1, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[updateFacesViewByFocus] face view not init, ignore this time"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_2
    const-string v0, "PASSIVE_SCAN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x2

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->mWaitFocusState:Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$WaitFocusState;

    sget-object v3, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$WaitFocusState;->WAIT_PASSIVE_SCAN:Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$WaitFocusState;

    if-ne v0, v3, :cond_3

    sget-object p1, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$WaitFocusState;->WAIT_PASSIVE_DONE:Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$WaitFocusState;

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->mWaitFocusState:Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$WaitFocusState;

    sget-object p1, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[updateFacesViewByFocus] clear hide msg, send hide msg delay 3000 ms"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->mMainHandler:Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$MainHandler;

    invoke-virtual {p1, v2}, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$MainHandler;->removeMessages(I)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getCurrentCameraMode()I

    move-result p1

    if-eq p1, v1, :cond_5

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->mMainHandler:Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$MainHandler;

    const-wide/16 v0, 0xbb8

    invoke-virtual {p1, v2, v0, v1}, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_3
    const-string v0, "PASSIVE_FOCUSED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "PASSIVE_UNFOCUSED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->mWaitFocusState:Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$WaitFocusState;

    sget-object v0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$WaitFocusState;->WAIT_PASSIVE_DONE:Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$WaitFocusState;

    if-ne p1, v0, :cond_5

    sget-object p1, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$WaitFocusState;->WAIT_NOTHING:Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$WaitFocusState;

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->mWaitFocusState:Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$WaitFocusState;

    sget-object p1, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[updateFacesViewByFocus] clear hide msg, hide view right now"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->mMainHandler:Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$MainHandler;

    invoke-virtual {p1, v2}, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$MainHandler;->removeMessages(I)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getCurrentCameraMode()I

    move-result p1

    if-eq p1, v1, :cond_5

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->hideView()V

    :cond_5
    :goto_0
    sget-object p1, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[updateFacesViewByFocus] exit, mWaitFocusState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->mWaitFocusState:Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$WaitFocusState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private updateViewDisplayOrientation(II)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->mFaceView:Lcom/freeme/camera/feature/setting/facedetection/FaceView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/freeme/camera/feature/setting/facedetection/FaceView;->setDisplayOrientation(II)V

    :cond_0
    return-void
.end method

.method private updateViewPreviewSize(II)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->mFaceView:Lcom/freeme/camera/feature/setting/facedetection/FaceView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/freeme/camera/feature/setting/facedetection/FaceView;->updatePreviewSize(II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public enableFaceView(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->mIsEnable:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->mFaceView:Lcom/freeme/camera/feature/setting/facedetection/FaceView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/freeme/camera/feature/setting/facedetection/FaceView;->resetReallyShown()V

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->mMainHandler:Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$MainHandler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$MainHandler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method

.method public init(Lcom/freeme/camera/common/app/IApp;Lcom/freeme/camera/common/relation/DataStore;)V
    .locals 1

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    new-instance p2, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$MainHandler;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, p0, v0}, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$MainHandler;-><init>(Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->mMainHandler:Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$MainHandler;

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->mMainHandler:Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$MainHandler;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$MainHandler;->sendEmptyMessage(I)Z

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const p2, 0x7f010018

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->mFaceExitAnim:Landroid/view/animation/Animation;

    const-string p1, "vendor.mtk.camera.app.3a.debug"

    invoke-static {p1, v0}, Lcom/mediatek/camera/portability/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    sget-object p1, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string p2, "[init] roi debug mode, set mHideViewWhenFaceCountNotChange = false"

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->mHideViewWhenFaceCountNotChange:Z

    :cond_0
    return-void
.end method

.method public onDetectedFaceUpdate([Lcom/freeme/camera/feature/setting/facedetection/Face;)V
    .locals 2

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->mIsEnable:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    array-length v0, p1

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->mMainHandler:Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$MainHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->mMainHandler:Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$MainHandler;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void
.end method

.method public onPreviewAreaChanged(Landroid/graphics/RectF;)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->mMainHandler:Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$MainHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onPreviewStatus(Z)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->mMainHandler:Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$MainHandler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$MainHandler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "key_focus_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "PASSIVE_SCAN"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "PASSIVE_FOCUSED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "PASSIVE_UNFOCUSED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->mMainHandler:Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$MainHandler;

    const/4 v0, 0x7

    invoke-virtual {p1, v0, p2}, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    return-void
.end method

.method public unInit()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->mMainHandler:Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$MainHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$MainHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public updateFaceDisplayOrientation(II)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->mMainHandler:Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$MainHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1, p2}, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$MainHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
