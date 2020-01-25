.class Lcom/freeme/camera/ui/shutter/ShutterRootLayout$GestureListenerImpl;
.super Ljava/lang/Object;
.source "ShutterRootLayout.java"

# interfaces
.implements Lcom/freeme/camera/common/IAppUiListener$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/ui/shutter/ShutterRootLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureListenerImpl"
.end annotation


# instance fields
.field private final MINI_FLING_LENGTH_Y:I

.field private final MIN_SPEED:I

.field private mIsScale:Z

.field private mTransitionX:F

.field private mTransitionY:F

.field final synthetic this$0:Lcom/freeme/camera/ui/shutter/ShutterRootLayout;


# direct methods
.method private constructor <init>(Lcom/freeme/camera/ui/shutter/ShutterRootLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout$GestureListenerImpl;->this$0:Lcom/freeme/camera/ui/shutter/ShutterRootLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x1f4

    iput p1, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout$GestureListenerImpl;->MIN_SPEED:I

    const/16 p1, 0xc8

    iput p1, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout$GestureListenerImpl;->MINI_FLING_LENGTH_Y:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/freeme/camera/ui/shutter/ShutterRootLayout;Lcom/freeme/camera/ui/shutter/ShutterRootLayout$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout$GestureListenerImpl;-><init>(Lcom/freeme/camera/ui/shutter/ShutterRootLayout;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    iput p1, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout$GestureListenerImpl;->mTransitionX:F

    iput p1, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout$GestureListenerImpl;->mTransitionY:F

    const/4 p1, 0x0

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_10

    if-nez p2, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_f

    iget-object v1, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout$GestureListenerImpl;->this$0:Lcom/freeme/camera/ui/shutter/ShutterRootLayout;

    invoke-virtual {v1}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->getChildCount()I

    move-result v1

    const/4 v3, 0x2

    if-lt v1, v3, :cond_f

    iget-boolean v1, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout$GestureListenerImpl;->mIsScale:Z

    if-eqz v1, :cond_1

    goto/16 :goto_2

    :cond_1
    if-eqz v1, :cond_2

    return v0

    :cond_2
    iget-object v1, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout$GestureListenerImpl;->this$0:Lcom/freeme/camera/ui/shutter/ShutterRootLayout;

    invoke-static {v1}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->access$1000(Lcom/freeme/camera/ui/shutter/ShutterRootLayout;)Landroid/widget/Scroller;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout$GestureListenerImpl;->this$0:Lcom/freeme/camera/ui/shutter/ShutterRootLayout;

    invoke-virtual {v1}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout$GestureListenerImpl;->this$0:Lcom/freeme/camera/ui/shutter/ShutterRootLayout;

    invoke-static {v1}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->access$1100(Lcom/freeme/camera/ui/shutter/ShutterRootLayout;)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout$GestureListenerImpl;->this$0:Lcom/freeme/camera/ui/shutter/ShutterRootLayout;

    invoke-virtual {v1}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v4, v1, Landroid/content/res/Configuration;->orientation:I

    const/high16 v5, 0x43fa0000    # 500.0f

    const/16 v6, 0x64

    const/4 v7, 0x0

    if-ne v4, v2, :cond_9

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p4

    cmpl-float p4, p4, v5

    if-lez p4, :cond_d

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p2, 0x43480000    # 200.0f

    cmpg-float p1, p1, p2

    if-gez p1, :cond_d

    cmpl-float p1, p3, v7

    if-lez p1, :cond_5

    iget-object p1, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout$GestureListenerImpl;->this$0:Lcom/freeme/camera/ui/shutter/ShutterRootLayout;

    invoke-static {p1}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->access$300(Lcom/freeme/camera/ui/shutter/ShutterRootLayout;)I

    move-result p1

    if-lez p1, :cond_5

    iget-object p1, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout$GestureListenerImpl;->this$0:Lcom/freeme/camera/ui/shutter/ShutterRootLayout;

    invoke-virtual {p1}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_3

    return v0

    :cond_3
    iget-object p1, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout$GestureListenerImpl;->this$0:Lcom/freeme/camera/ui/shutter/ShutterRootLayout;

    invoke-static {p1}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->access$300(Lcom/freeme/camera/ui/shutter/ShutterRootLayout;)I

    move-result p2

    sub-int/2addr p2, v2

    invoke-virtual {p1, p2}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_4

    return v0

    :cond_4
    iget-object p1, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout$GestureListenerImpl;->this$0:Lcom/freeme/camera/ui/shutter/ShutterRootLayout;

    invoke-static {p1}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->access$800(Lcom/freeme/camera/ui/shutter/ShutterRootLayout;)Lcom/freeme/camera/common/app/IApp;

    move-result-object p1

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object p1

    check-cast p1, Lcom/freeme/camera/ui/CameraAppUI;

    iput-boolean v0, p1, Lcom/freeme/camera/ui/CameraAppUI;->isCameraSwitch:Z

    iget-object p1, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout$GestureListenerImpl;->this$0:Lcom/freeme/camera/ui/shutter/ShutterRootLayout;

    invoke-static {p1}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->access$300(Lcom/freeme/camera/ui/shutter/ShutterRootLayout;)I

    move-result p2

    sub-int/2addr p2, v2

    invoke-static {p1, p2, v6}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->access$100(Lcom/freeme/camera/ui/shutter/ShutterRootLayout;II)V

    goto :goto_0

    :cond_5
    cmpg-float p1, p3, v7

    if-gez p1, :cond_8

    iget-object p1, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout$GestureListenerImpl;->this$0:Lcom/freeme/camera/ui/shutter/ShutterRootLayout;

    invoke-static {p1}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->access$300(Lcom/freeme/camera/ui/shutter/ShutterRootLayout;)I

    move-result p1

    iget-object p2, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout$GestureListenerImpl;->this$0:Lcom/freeme/camera/ui/shutter/ShutterRootLayout;

    invoke-virtual {p2}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->getChildCount()I

    move-result p2

    sub-int/2addr p2, v2

    if-ge p1, p2, :cond_8

    iget-object p1, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout$GestureListenerImpl;->this$0:Lcom/freeme/camera/ui/shutter/ShutterRootLayout;

    invoke-virtual {p1}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_6

    return v0

    :cond_6
    iget-object p1, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout$GestureListenerImpl;->this$0:Lcom/freeme/camera/ui/shutter/ShutterRootLayout;

    invoke-static {p1}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->access$300(Lcom/freeme/camera/ui/shutter/ShutterRootLayout;)I

    move-result p2

    add-int/2addr p2, v2

    invoke-virtual {p1, p2}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_7

    return v0

    :cond_7
    iget-object p1, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout$GestureListenerImpl;->this$0:Lcom/freeme/camera/ui/shutter/ShutterRootLayout;

    invoke-static {p1}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->access$800(Lcom/freeme/camera/ui/shutter/ShutterRootLayout;)Lcom/freeme/camera/common/app/IApp;

    move-result-object p1

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object p1

    check-cast p1, Lcom/freeme/camera/ui/CameraAppUI;

    iput-boolean v0, p1, Lcom/freeme/camera/ui/CameraAppUI;->isCameraSwitch:Z

    iget-object p1, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout$GestureListenerImpl;->this$0:Lcom/freeme/camera/ui/shutter/ShutterRootLayout;

    invoke-static {p1}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->access$300(Lcom/freeme/camera/ui/shutter/ShutterRootLayout;)I

    move-result p2

    add-int/2addr p2, v2

    invoke-static {p1, p2, v6}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->access$100(Lcom/freeme/camera/ui/shutter/ShutterRootLayout;II)V

    :cond_8
    :goto_0
    return v2

    :cond_9
    iget p1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne p1, v3, :cond_d

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v5

    if-lez p1, :cond_d

    cmpg-float p1, p4, v7

    if-gez p1, :cond_b

    iget-object p1, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout$GestureListenerImpl;->this$0:Lcom/freeme/camera/ui/shutter/ShutterRootLayout;

    invoke-static {p1}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->access$300(Lcom/freeme/camera/ui/shutter/ShutterRootLayout;)I

    move-result p1

    iget-object p2, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout$GestureListenerImpl;->this$0:Lcom/freeme/camera/ui/shutter/ShutterRootLayout;

    invoke-virtual {p2}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->getChildCount()I

    move-result p2

    sub-int/2addr p2, v2

    if-ge p1, p2, :cond_b

    iget-object p1, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout$GestureListenerImpl;->this$0:Lcom/freeme/camera/ui/shutter/ShutterRootLayout;

    invoke-static {p1}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->access$300(Lcom/freeme/camera/ui/shutter/ShutterRootLayout;)I

    move-result p2

    add-int/2addr p2, v2

    invoke-virtual {p1, p2}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_a

    return v0

    :cond_a
    iget-object p1, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout$GestureListenerImpl;->this$0:Lcom/freeme/camera/ui/shutter/ShutterRootLayout;

    invoke-static {p1}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->access$300(Lcom/freeme/camera/ui/shutter/ShutterRootLayout;)I

    move-result p2

    add-int/2addr p2, v2

    invoke-static {p1, p2, v6}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->access$100(Lcom/freeme/camera/ui/shutter/ShutterRootLayout;II)V

    goto :goto_1

    :cond_b
    cmpl-float p1, p4, v7

    if-lez p1, :cond_d

    iget-object p1, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout$GestureListenerImpl;->this$0:Lcom/freeme/camera/ui/shutter/ShutterRootLayout;

    invoke-static {p1}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->access$300(Lcom/freeme/camera/ui/shutter/ShutterRootLayout;)I

    move-result p1

    if-lez p1, :cond_d

    iget-object p1, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout$GestureListenerImpl;->this$0:Lcom/freeme/camera/ui/shutter/ShutterRootLayout;

    invoke-static {p1}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->access$300(Lcom/freeme/camera/ui/shutter/ShutterRootLayout;)I

    move-result p2

    sub-int/2addr p2, v2

    invoke-virtual {p1, p2}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_c

    return v0

    :cond_c
    iget-object p1, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout$GestureListenerImpl;->this$0:Lcom/freeme/camera/ui/shutter/ShutterRootLayout;

    invoke-static {p1}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->access$300(Lcom/freeme/camera/ui/shutter/ShutterRootLayout;)I

    move-result p2

    sub-int/2addr p2, v2

    invoke-static {p1, p2, v6}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->access$100(Lcom/freeme/camera/ui/shutter/ShutterRootLayout;II)V

    :cond_d
    :goto_1
    return v0

    :cond_e
    return v2

    :cond_f
    :goto_2
    return v0

    :cond_10
    :goto_3
    return v0
.end method

.method public onLongPress(FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout$GestureListenerImpl;->mIsScale:Z

    const/4 p1, 0x0

    return p1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)Z
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout$GestureListenerImpl;->mIsScale:Z

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

    iput p1, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout$GestureListenerImpl;->mTransitionX:F

    iput p1, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout$GestureListenerImpl;->mTransitionY:F

    const/4 p1, 0x0

    return p1
.end method
