.class public Lcom/freeme/elementscenter/dc/ui/AutoScrollLoopBanner;
.super Lcom/freeme/elementscenter/dc/ui/Banner;
.source "AutoScrollLoopBanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/elementscenter/dc/ui/AutoScrollLoopBanner$MyHandler;
    }
.end annotation


# static fields
.field public static final DEFAULT_INTERVAL:I = 0xfa0

.field public static final LEFT:I = 0x0

.field public static final RIGHT:I = 0x1

.field public static final SCROLL_WHAT:I


# instance fields
.field private direction:I

.field private handler:Landroid/os/Handler;

.field private interval:J

.field private isAutoScroll:Z

.field private isStopByTouch:Z

.field private stopScrollWhenTouch:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/freeme/elementscenter/dc/ui/AutoScrollLoopBanner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/freeme/elementscenter/dc/ui/AutoScrollLoopBanner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/freeme/elementscenter/dc/ui/Banner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide/16 p1, 0xfa0

    iput-wide p1, p0, Lcom/freeme/elementscenter/dc/ui/AutoScrollLoopBanner;->interval:J

    const/4 p1, 0x1

    iput p1, p0, Lcom/freeme/elementscenter/dc/ui/AutoScrollLoopBanner;->direction:I

    iput-boolean p1, p0, Lcom/freeme/elementscenter/dc/ui/AutoScrollLoopBanner;->stopScrollWhenTouch:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/freeme/elementscenter/dc/ui/AutoScrollLoopBanner;->isAutoScroll:Z

    iput-boolean p1, p0, Lcom/freeme/elementscenter/dc/ui/AutoScrollLoopBanner;->isStopByTouch:Z

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/AutoScrollLoopBanner;->initAuto()V

    return-void
.end method

.method static synthetic access$100(Lcom/freeme/elementscenter/dc/ui/AutoScrollLoopBanner;)J
    .locals 2

    iget-wide v0, p0, Lcom/freeme/elementscenter/dc/ui/AutoScrollLoopBanner;->interval:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/freeme/elementscenter/dc/ui/AutoScrollLoopBanner;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/freeme/elementscenter/dc/ui/AutoScrollLoopBanner;->sendScrollMessage(J)V

    return-void
.end method

.method private sendScrollMessage(J)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/AutoScrollLoopBanner;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/AutoScrollLoopBanner;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method


# virtual methods
.method public getDirection()I
    .locals 1

    iget v0, p0, Lcom/freeme/elementscenter/dc/ui/AutoScrollLoopBanner;->direction:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public getInterval()J
    .locals 2

    iget-wide v0, p0, Lcom/freeme/elementscenter/dc/ui/AutoScrollLoopBanner;->interval:J

    return-wide v0
.end method

.method protected initAuto()V
    .locals 2

    new-instance v0, Lcom/freeme/elementscenter/dc/ui/AutoScrollLoopBanner$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/freeme/elementscenter/dc/ui/AutoScrollLoopBanner$MyHandler;-><init>(Lcom/freeme/elementscenter/dc/ui/AutoScrollLoopBanner;Lcom/freeme/elementscenter/dc/ui/AutoScrollLoopBanner$1;)V

    iput-object v0, p0, Lcom/freeme/elementscenter/dc/ui/AutoScrollLoopBanner;->handler:Landroid/os/Handler;

    return-void
.end method

.method public isStopScrollWhenTouch()Z
    .locals 1

    iget-boolean v0, p0, Lcom/freeme/elementscenter/dc/ui/AutoScrollLoopBanner;->stopScrollWhenTouch:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/freeme/elementscenter/dc/ui/AutoScrollLoopBanner;->stopScrollWhenTouch:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/freeme/elementscenter/dc/ui/AutoScrollLoopBanner;->isAutoScroll:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/freeme/elementscenter/dc/ui/AutoScrollLoopBanner;->isStopByTouch:Z

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/AutoScrollLoopBanner;->stopAutoScroll()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/freeme/elementscenter/dc/ui/AutoScrollLoopBanner;->isStopByTouch:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/AutoScrollLoopBanner;->startAutoScroll()V

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/freeme/elementscenter/dc/ui/Banner;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public scrollOnce()V
    .locals 2

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/AutoScrollLoopBanner;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/freeme/elementscenter/dc/ui/AutoScrollLoopBanner;->direction:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/AutoScrollLoopBanner;->scrollLeft()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/AutoScrollLoopBanner;->scrollRight()V

    :goto_0
    return-void
.end method

.method public setDirection(I)V
    .locals 0

    iput p1, p0, Lcom/freeme/elementscenter/dc/ui/AutoScrollLoopBanner;->direction:I

    return-void
.end method

.method public setInterval(J)V
    .locals 0

    iput-wide p1, p0, Lcom/freeme/elementscenter/dc/ui/AutoScrollLoopBanner;->interval:J

    return-void
.end method

.method public setStopScrollWhenTouch(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/freeme/elementscenter/dc/ui/AutoScrollLoopBanner;->stopScrollWhenTouch:Z

    return-void
.end method

.method public startAutoScroll()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/freeme/elementscenter/dc/ui/AutoScrollLoopBanner;->isAutoScroll:Z

    iget-wide v0, p0, Lcom/freeme/elementscenter/dc/ui/AutoScrollLoopBanner;->interval:J

    invoke-direct {p0, v0, v1}, Lcom/freeme/elementscenter/dc/ui/AutoScrollLoopBanner;->sendScrollMessage(J)V

    return-void
.end method

.method public startAutoScroll(I)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/freeme/elementscenter/dc/ui/AutoScrollLoopBanner;->isAutoScroll:Z

    int-to-long v0, p1

    invoke-direct {p0, v0, v1}, Lcom/freeme/elementscenter/dc/ui/AutoScrollLoopBanner;->sendScrollMessage(J)V

    return-void
.end method

.method public stopAutoScroll()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/elementscenter/dc/ui/AutoScrollLoopBanner;->isAutoScroll:Z

    iget-object v1, p0, Lcom/freeme/elementscenter/dc/ui/AutoScrollLoopBanner;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method
