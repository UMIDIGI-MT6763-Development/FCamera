.class Lcom/freeme/camera/feature/setting/zoom/Zoom$ZoomGestureImpl;
.super Ljava/lang/Object;
.source "Zoom.java"

# interfaces
.implements Lcom/freeme/camera/common/IAppUiListener$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/setting/zoom/Zoom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZoomGestureImpl"
.end annotation


# static fields
.field private static final MAX_DISTANCE_RATIO_WITH_SCREEN:D = 0.2


# instance fields
.field private mLastDistanceRatio:D

.field private mPreviousSpan:F

.field private mScreenDistance:I

.field final synthetic this$0:Lcom/freeme/camera/feature/setting/zoom/Zoom;


# direct methods
.method private constructor <init>(Lcom/freeme/camera/feature/setting/zoom/Zoom;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom$ZoomGestureImpl;->this$0:Lcom/freeme/camera/feature/setting/zoom/Zoom;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/freeme/camera/feature/setting/zoom/Zoom;Lcom/freeme/camera/feature/setting/zoom/Zoom$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/zoom/Zoom$ZoomGestureImpl;-><init>(Lcom/freeme/camera/feature/setting/zoom/Zoom;)V

    return-void
.end method

.method private calculateDistanceRatio(Landroid/view/ScaleGestureDetector;)D
    .locals 4

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result p1

    iget v0, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom$ZoomGestureImpl;->mPreviousSpan:F

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom$ZoomGestureImpl;->mScreenDistance:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    float-to-double v0, p1

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom$ZoomGestureImpl;->this$0:Lcom/freeme/camera/feature/setting/zoom/Zoom;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/zoom/Zoom;->access$1800(Lcom/freeme/camera/feature/setting/zoom/Zoom;)Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[calculateDistanceRatio] distanceRatio = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-wide v0
.end method


# virtual methods
.method public init()V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom$ZoomGestureImpl;->this$0:Lcom/freeme/camera/feature/setting/zoom/Zoom;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/zoom/Zoom;->access$600(Lcom/freeme/camera/feature/setting/zoom/Zoom;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom$ZoomGestureImpl;->this$0:Lcom/freeme/camera/feature/setting/zoom/Zoom;

    invoke-static {v1}, Lcom/freeme/camera/feature/setting/zoom/Zoom;->access$700(Lcom/freeme/camera/feature/setting/zoom/Zoom;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v1

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput v0, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom$ZoomGestureImpl;->mScreenDistance:I

    iget v0, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom$ZoomGestureImpl;->mScreenDistance:I

    int-to-double v0, v0

    const-wide v2, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom$ZoomGestureImpl;->mScreenDistance:I

    return-void
.end method

.method public onDoubleTap(FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onLongPress(FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 6

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom$ZoomGestureImpl;->this$0:Lcom/freeme/camera/feature/setting/zoom/Zoom;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/zoom/Zoom;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom$ZoomGestureImpl;->this$0:Lcom/freeme/camera/feature/setting/zoom/Zoom;

    invoke-static {v1}, Lcom/freeme/camera/feature/setting/zoom/Zoom;->access$800(Lcom/freeme/camera/feature/setting/zoom/Zoom;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v1

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getCurrentCameraMode()I

    move-result v1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom$ZoomGestureImpl;->this$0:Lcom/freeme/camera/feature/setting/zoom/Zoom;

    invoke-static {v1}, Lcom/freeme/camera/feature/setting/zoom/Zoom;->access$900(Lcom/freeme/camera/feature/setting/zoom/Zoom;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v1

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getCurrentCameraMode()I

    move-result v1

    const/16 v2, 0x68

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom$ZoomGestureImpl;->this$0:Lcom/freeme/camera/feature/setting/zoom/Zoom;

    invoke-static {v1}, Lcom/freeme/camera/feature/setting/zoom/Zoom;->access$1000(Lcom/freeme/camera/feature/setting/zoom/Zoom;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v1

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getCurrentCameraMode()I

    move-result v1

    const/16 v2, 0x67

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom$ZoomGestureImpl;->this$0:Lcom/freeme/camera/feature/setting/zoom/Zoom;

    invoke-static {v1}, Lcom/freeme/camera/feature/setting/zoom/Zoom;->access$1100(Lcom/freeme/camera/feature/setting/zoom/Zoom;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v1

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v1

    invoke-interface {v1}, Lcom/freeme/camera/common/IAppUi;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v0, "off"

    :cond_1
    const-string v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x0

    return p1

    :cond_2
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom$ZoomGestureImpl;->this$0:Lcom/freeme/camera/feature/setting/zoom/Zoom;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/zoom/Zoom;->access$1200(Lcom/freeme/camera/feature/setting/zoom/Zoom;)Lcom/freeme/camera/feature/setting/zoom/IZoomConfig;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/zoom/Zoom$ZoomGestureImpl;->calculateDistanceRatio(Landroid/view/ScaleGestureDetector;)D

    move-result-wide v0

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom$ZoomGestureImpl;->this$0:Lcom/freeme/camera/feature/setting/zoom/Zoom;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/zoom/Zoom;->access$1200(Lcom/freeme/camera/feature/setting/zoom/Zoom;)Lcom/freeme/camera/feature/setting/zoom/IZoomConfig;

    move-result-object p1

    invoke-interface {p1, v0, v1}, Lcom/freeme/camera/feature/setting/zoom/IZoomConfig;->onScalePerformed(D)V

    iget-wide v2, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom$ZoomGestureImpl;->mLastDistanceRatio:D

    sub-double v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x3fb47ae147ae147bL    # 0.08

    cmpl-double p1, v2, v4

    if-lez p1, :cond_3

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom$ZoomGestureImpl;->this$0:Lcom/freeme/camera/feature/setting/zoom/Zoom;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/zoom/Zoom;->access$1300(Lcom/freeme/camera/feature/setting/zoom/Zoom;)V

    iput-wide v0, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom$ZoomGestureImpl;->mLastDistanceRatio:D

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom$ZoomGestureImpl;->this$0:Lcom/freeme/camera/feature/setting/zoom/Zoom;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/zoom/Zoom;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom$ZoomGestureImpl;->this$0:Lcom/freeme/camera/feature/setting/zoom/Zoom;

    invoke-static {v1}, Lcom/freeme/camera/feature/setting/zoom/Zoom;->access$1400(Lcom/freeme/camera/feature/setting/zoom/Zoom;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v1

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getCurrentCameraMode()I

    move-result v1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom$ZoomGestureImpl;->this$0:Lcom/freeme/camera/feature/setting/zoom/Zoom;

    invoke-static {v1}, Lcom/freeme/camera/feature/setting/zoom/Zoom;->access$1500(Lcom/freeme/camera/feature/setting/zoom/Zoom;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v1

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getCurrentCameraMode()I

    move-result v1

    const/16 v2, 0x68

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom$ZoomGestureImpl;->this$0:Lcom/freeme/camera/feature/setting/zoom/Zoom;

    invoke-static {v1}, Lcom/freeme/camera/feature/setting/zoom/Zoom;->access$1600(Lcom/freeme/camera/feature/setting/zoom/Zoom;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v1

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getCurrentCameraMode()I

    move-result v1

    const/16 v2, 0x67

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom$ZoomGestureImpl;->this$0:Lcom/freeme/camera/feature/setting/zoom/Zoom;

    invoke-static {v1}, Lcom/freeme/camera/feature/setting/zoom/Zoom;->access$1700(Lcom/freeme/camera/feature/setting/zoom/Zoom;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v1

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v1

    invoke-interface {v1}, Lcom/freeme/camera/common/IAppUi;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v0, "off"

    :cond_1
    const-string v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x0

    return p1

    :cond_2
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom$ZoomGestureImpl;->this$0:Lcom/freeme/camera/feature/setting/zoom/Zoom;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/zoom/Zoom;->access$1800(Lcom/freeme/camera/feature/setting/zoom/Zoom;)Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onScaleBegin], Gesture: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mZoomConfig: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom$ZoomGestureImpl;->this$0:Lcom/freeme/camera/feature/setting/zoom/Zoom;

    invoke-static {v2}, Lcom/freeme/camera/feature/setting/zoom/Zoom;->access$1200(Lcom/freeme/camera/feature/setting/zoom/Zoom;)Lcom/freeme/camera/feature/setting/zoom/IZoomConfig;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom$ZoomGestureImpl;->this$0:Lcom/freeme/camera/feature/setting/zoom/Zoom;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/zoom/Zoom;->access$1200(Lcom/freeme/camera/feature/setting/zoom/Zoom;)Lcom/freeme/camera/feature/setting/zoom/IZoomConfig;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom$ZoomGestureImpl;->this$0:Lcom/freeme/camera/feature/setting/zoom/Zoom;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/zoom/Zoom;->access$300(Lcom/freeme/camera/feature/setting/zoom/Zoom;)Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl;->clearInvalidView()V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom$ZoomGestureImpl;->this$0:Lcom/freeme/camera/feature/setting/zoom/Zoom;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/zoom/Zoom;->access$1200(Lcom/freeme/camera/feature/setting/zoom/Zoom;)Lcom/freeme/camera/feature/setting/zoom/IZoomConfig;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/freeme/camera/feature/setting/zoom/IZoomConfig;->onScaleStatus(Z)V

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result p1

    iput p1, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom$ZoomGestureImpl;->mPreviousSpan:F

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom$ZoomGestureImpl;->mLastDistanceRatio:D

    :cond_3
    return v1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)Z
    .locals 2

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom$ZoomGestureImpl;->this$0:Lcom/freeme/camera/feature/setting/zoom/Zoom;

    invoke-virtual {p1}, Lcom/freeme/camera/feature/setting/zoom/Zoom;->getValue()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom$ZoomGestureImpl;->this$0:Lcom/freeme/camera/feature/setting/zoom/Zoom;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/zoom/Zoom;->access$1900(Lcom/freeme/camera/feature/setting/zoom/Zoom;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getCurrentCameraMode()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom$ZoomGestureImpl;->this$0:Lcom/freeme/camera/feature/setting/zoom/Zoom;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/zoom/Zoom;->access$2000(Lcom/freeme/camera/feature/setting/zoom/Zoom;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getCurrentCameraMode()I

    move-result v0

    const/16 v1, 0x68

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom$ZoomGestureImpl;->this$0:Lcom/freeme/camera/feature/setting/zoom/Zoom;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/zoom/Zoom;->access$2100(Lcom/freeme/camera/feature/setting/zoom/Zoom;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getCurrentCameraMode()I

    move-result v0

    const/16 v1, 0x67

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom$ZoomGestureImpl;->this$0:Lcom/freeme/camera/feature/setting/zoom/Zoom;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/zoom/Zoom;->access$2200(Lcom/freeme/camera/feature/setting/zoom/Zoom;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/IAppUi;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string p1, "off"

    :cond_1
    const-string v0, "off"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    return v0

    :cond_2
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom$ZoomGestureImpl;->this$0:Lcom/freeme/camera/feature/setting/zoom/Zoom;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/zoom/Zoom;->access$1800(Lcom/freeme/camera/feature/setting/zoom/Zoom;)Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p1

    const-string v1, "[onScaleEnd]"

    invoke-static {p1, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom$ZoomGestureImpl;->this$0:Lcom/freeme/camera/feature/setting/zoom/Zoom;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/zoom/Zoom;->access$1200(Lcom/freeme/camera/feature/setting/zoom/Zoom;)Lcom/freeme/camera/feature/setting/zoom/IZoomConfig;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom$ZoomGestureImpl;->this$0:Lcom/freeme/camera/feature/setting/zoom/Zoom;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/zoom/Zoom;->access$300(Lcom/freeme/camera/feature/setting/zoom/Zoom;)Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl;->resetView()V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom$ZoomGestureImpl;->this$0:Lcom/freeme/camera/feature/setting/zoom/Zoom;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/zoom/Zoom;->access$1200(Lcom/freeme/camera/feature/setting/zoom/Zoom;)Lcom/freeme/camera/feature/setting/zoom/IZoomConfig;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/freeme/camera/feature/setting/zoom/IZoomConfig;->onScaleStatus(Z)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom$ZoomGestureImpl;->mPreviousSpan:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom$ZoomGestureImpl;->mLastDistanceRatio:D

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onSingleTapConfirmed(FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onSingleTapUp(FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onUp(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
