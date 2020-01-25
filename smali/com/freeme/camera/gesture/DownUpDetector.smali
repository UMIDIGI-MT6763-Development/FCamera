.class public Lcom/freeme/camera/gesture/DownUpDetector;
.super Ljava/lang/Object;
.source "DownUpDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/gesture/DownUpDetector$DownUpListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/freeme/camera/gesture/DownUpDetector$DownUpListener;

.field private mStillDown:Z


# direct methods
.method public constructor <init>(Lcom/freeme/camera/gesture/DownUpDetector$DownUpListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/freeme/camera/gesture/DownUpDetector;->mListener:Lcom/freeme/camera/gesture/DownUpDetector$DownUpListener;

    return-void
.end method

.method private setState(ZLandroid/view/MotionEvent;)V
    .locals 1

    iget-boolean v0, p0, Lcom/freeme/camera/gesture/DownUpDetector;->mStillDown:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/freeme/camera/gesture/DownUpDetector;->mStillDown:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/gesture/DownUpDetector;->mListener:Lcom/freeme/camera/gesture/DownUpDetector$DownUpListener;

    invoke-interface {p1, p2}, Lcom/freeme/camera/gesture/DownUpDetector$DownUpListener;->onDownEvent(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/freeme/camera/gesture/DownUpDetector;->mListener:Lcom/freeme/camera/gesture/DownUpDetector$DownUpListener;

    invoke-interface {p1, p2}, Lcom/freeme/camera/gesture/DownUpDetector$DownUpListener;->onUpEvent(Landroid/view/MotionEvent;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :cond_0
    :pswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/freeme/camera/gesture/DownUpDetector;->setState(ZLandroid/view/MotionEvent;)V

    goto :goto_0

    :cond_1
    :pswitch_1
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/freeme/camera/gesture/DownUpDetector;->setState(ZLandroid/view/MotionEvent;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
