.class Lcom/freeme/camera/FilmstripView$MyGestureReceiver;
.super Ljava/lang/Object;
.source "FilmstripView.java"

# interfaces
.implements Lcom/freeme/camera/ui/FilmstripGestureRecognizer$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/FilmstripView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyGestureReceiver"
.end annotation


# static fields
.field private static final SCROLL_DIR_HORIZONTAL:I = 0x2

.field private static final SCROLL_DIR_NONE:I = 0x0

.field private static final SCROLL_DIR_VERTICAL:I = 0x1


# instance fields
.field private mLastDownTime:J

.field private mLastDownY:F

.field private mMaxScale:F

.field private mScaleTrend:F

.field private mScrollingDirection:I

.field final synthetic this$0:Lcom/freeme/camera/FilmstripView;


# direct methods
.method private constructor <init>(Lcom/freeme/camera/FilmstripView;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->mScrollingDirection:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/freeme/camera/FilmstripView;Lcom/freeme/camera/FilmstripView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;-><init>(Lcom/freeme/camera/FilmstripView;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(FF)Z
    .locals 5

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v0}, Lcom/freeme/camera/FilmstripView;->access$500(Lcom/freeme/camera/FilmstripView;)[Lcom/freeme/camera/FilmstripView$ViewItem;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    :cond_0
    iget-object v3, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v3}, Lcom/freeme/camera/FilmstripView;->access$3100(Lcom/freeme/camera/FilmstripView;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripView;->access$400(Lcom/freeme/camera/FilmstripView;)Lcom/freeme/camera/FilmstripView$MyController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freeme/camera/FilmstripView$MyController;->goToFullScreen()V

    return v1

    :cond_1
    iget-object v3, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v3}, Lcom/freeme/camera/FilmstripView;->access$000(Lcom/freeme/camera/FilmstripView;)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_6

    iget-object v3, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v3}, Lcom/freeme/camera/FilmstripView;->access$3400(Lcom/freeme/camera/FilmstripView;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v3}, Lcom/freeme/camera/FilmstripView;->access$400(Lcom/freeme/camera/FilmstripView;)Lcom/freeme/camera/FilmstripView$MyController;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/freeme/camera/FilmstripView$MyController;->stopScrolling(Z)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    iget-object v3, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v3}, Lcom/freeme/camera/FilmstripView;->access$3200(Lcom/freeme/camera/FilmstripView;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v2, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v2}, Lcom/freeme/camera/FilmstripView;->access$400(Lcom/freeme/camera/FilmstripView;)Lcom/freeme/camera/FilmstripView$MyController;

    move-result-object v2

    invoke-static {v2, v0, p1, p2}, Lcom/freeme/camera/FilmstripView$MyController;->access$5300(Lcom/freeme/camera/FilmstripView$MyController;Lcom/freeme/camera/FilmstripView$ViewItem;FF)V

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripView;->access$5400(Lcom/freeme/camera/FilmstripView;)V

    return v1

    :cond_4
    iget-object v1, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v1}, Lcom/freeme/camera/FilmstripView;->access$000(Lcom/freeme/camera/FilmstripView;)F

    move-result v1

    cmpl-float v1, v1, v4

    if-lez v1, :cond_5

    iget-object v1, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v1}, Lcom/freeme/camera/FilmstripView;->access$400(Lcom/freeme/camera/FilmstripView;)Lcom/freeme/camera/FilmstripView$MyController;

    move-result-object v1

    invoke-static {v1, v0, p1, p2}, Lcom/freeme/camera/FilmstripView$MyController;->access$5300(Lcom/freeme/camera/FilmstripView$MyController;Lcom/freeme/camera/FilmstripView$ViewItem;FF)V

    :cond_5
    return v2

    :cond_6
    :goto_0
    return v2
.end method

.method public onDown(FF)Z
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->mLastDownTime:J

    iput p2, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->mLastDownY:F

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripView;->access$400(Lcom/freeme/camera/FilmstripView;)Lcom/freeme/camera/FilmstripView$MyController;

    move-result-object p1

    invoke-static {p1}, Lcom/freeme/camera/FilmstripView$MyController;->access$800(Lcom/freeme/camera/FilmstripView$MyController;)V

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripView;->access$400(Lcom/freeme/camera/FilmstripView;)Lcom/freeme/camera/FilmstripView$MyController;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/freeme/camera/FilmstripView$MyController;->stopScrolling(Z)Z

    move-result p1

    if-nez p1, :cond_0

    return p2

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onFling(FF)Z
    .locals 5

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v0}, Lcom/freeme/camera/FilmstripView;->access$500(Lcom/freeme/camera/FilmstripView;)[Lcom/freeme/camera/FilmstripView$ViewItem;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    :cond_0
    iget-object v3, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v3}, Lcom/freeme/camera/FilmstripView;->access$100(Lcom/freeme/camera/FilmstripView;)Lcom/freeme/camera/filmstrip/DataAdapter;

    move-result-object v3

    invoke-virtual {v0}, Lcom/freeme/camera/FilmstripView$ViewItem;->getId()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/freeme/camera/filmstrip/DataAdapter;->canSwipeInFullScreen(I)Z

    move-result v3

    if-nez v3, :cond_1

    return v2

    :cond_1
    iget-object v3, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v3}, Lcom/freeme/camera/FilmstripView;->access$4900(Lcom/freeme/camera/FilmstripView;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v0}, Lcom/freeme/camera/FilmstripView;->access$400(Lcom/freeme/camera/FilmstripView;)Lcom/freeme/camera/FilmstripView$MyController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/freeme/camera/FilmstripView$MyController;->flingInsideZoomView(FF)V

    return v1

    :cond_2
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpg-float p2, v3, p2

    if-gez p2, :cond_3

    return v1

    :cond_3
    iget-object p2, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p2}, Lcom/freeme/camera/FilmstripView;->access$000(Lcom/freeme/camera/FilmstripView;)F

    move-result p2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float p2, p2, v3

    if-nez p2, :cond_9

    invoke-virtual {v0}, Lcom/freeme/camera/FilmstripView$ViewItem;->getCenterX()I

    move-result p2

    const/4 v3, 0x0

    cmpl-float v3, p1, v3

    const/16 v4, 0x190

    if-lez v3, :cond_6

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v0}, Lcom/freeme/camera/FilmstripView;->access$1800(Lcom/freeme/camera/FilmstripView;)I

    move-result v0

    if-le v0, p2, :cond_4

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripView;->access$400(Lcom/freeme/camera/FilmstripView;)Lcom/freeme/camera/FilmstripView$MyController;

    move-result-object p1

    invoke-virtual {p1, p2, v4, v1}, Lcom/freeme/camera/FilmstripView$MyController;->scrollToPosition(IIZ)V

    return v1

    :cond_4
    iget-object p2, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p2}, Lcom/freeme/camera/FilmstripView;->access$500(Lcom/freeme/camera/FilmstripView;)[Lcom/freeme/camera/FilmstripView$ViewItem;

    move-result-object p2

    aget-object p2, p2, v2

    if-nez p2, :cond_5

    return v2

    :cond_5
    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v0}, Lcom/freeme/camera/FilmstripView;->access$400(Lcom/freeme/camera/FilmstripView;)Lcom/freeme/camera/FilmstripView$MyController;

    move-result-object v0

    invoke-virtual {p2}, Lcom/freeme/camera/FilmstripView$ViewItem;->getCenterX()I

    move-result p2

    invoke-virtual {v0, p2, v4, v1}, Lcom/freeme/camera/FilmstripView$MyController;->scrollToPosition(IIZ)V

    goto :goto_0

    :cond_6
    iget-object v3, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v3}, Lcom/freeme/camera/FilmstripView;->access$400(Lcom/freeme/camera/FilmstripView;)Lcom/freeme/camera/FilmstripView$MyController;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/freeme/camera/FilmstripView$MyController;->stopScrolling(Z)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v3}, Lcom/freeme/camera/FilmstripView;->access$1800(Lcom/freeme/camera/FilmstripView;)I

    move-result v3

    if-ge v3, p2, :cond_7

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripView;->access$400(Lcom/freeme/camera/FilmstripView;)Lcom/freeme/camera/FilmstripView$MyController;

    move-result-object p1

    invoke-virtual {p1, p2, v4, v1}, Lcom/freeme/camera/FilmstripView$MyController;->scrollToPosition(IIZ)V

    return v1

    :cond_7
    iget-object p2, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p2}, Lcom/freeme/camera/FilmstripView;->access$500(Lcom/freeme/camera/FilmstripView;)[Lcom/freeme/camera/FilmstripView$ViewItem;

    move-result-object p2

    const/4 v3, 0x2

    aget-object p2, p2, v3

    if-nez p2, :cond_8

    return v2

    :cond_8
    iget-object v2, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v2}, Lcom/freeme/camera/FilmstripView;->access$400(Lcom/freeme/camera/FilmstripView;)Lcom/freeme/camera/FilmstripView$MyController;

    move-result-object v2

    invoke-virtual {p2}, Lcom/freeme/camera/FilmstripView$ViewItem;->getCenterX()I

    move-result p2

    invoke-virtual {v2, p2, v4, v1}, Lcom/freeme/camera/FilmstripView$MyController;->scrollToPosition(IIZ)V

    iget-object p2, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p2, v0}, Lcom/freeme/camera/FilmstripView;->access$2300(Lcom/freeme/camera/FilmstripView;Lcom/freeme/camera/FilmstripView$ViewItem;)Z

    move-result p2

    if-eqz p2, :cond_9

    iget-object p2, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p2}, Lcom/freeme/camera/FilmstripView;->access$400(Lcom/freeme/camera/FilmstripView;)Lcom/freeme/camera/FilmstripView$MyController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/freeme/camera/FilmstripView$MyController;->goToFilmstrip()V

    :cond_9
    :goto_0
    iget-object p2, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p2}, Lcom/freeme/camera/FilmstripView;->access$000(Lcom/freeme/camera/FilmstripView;)F

    move-result p2

    const v0, 0x3f333333    # 0.7f

    cmpl-float p2, p2, v0

    if-nez p2, :cond_a

    iget-object p2, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p2}, Lcom/freeme/camera/FilmstripView;->access$400(Lcom/freeme/camera/FilmstripView;)Lcom/freeme/camera/FilmstripView$MyController;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/freeme/camera/FilmstripView$MyController;->fling(F)V

    :cond_a
    return v1
.end method

.method public onLongPress(FF)V
    .locals 0

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripView;->access$1500(Lcom/freeme/camera/FilmstripView;)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p2}, Lcom/freeme/camera/FilmstripView;->access$1400(Lcom/freeme/camera/FilmstripView;)Lcom/freeme/camera/filmstrip/FilmstripController$FilmstripListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/freeme/camera/filmstrip/FilmstripController$FilmstripListener;->onFocusedDataLongPressed(I)V

    return-void
.end method

.method public onScale(FFF)Z
    .locals 11

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v0}, Lcom/freeme/camera/FilmstripView;->access$3400(Lcom/freeme/camera/FilmstripView;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->mScaleTrend:F

    const v2, 0x3e99999a    # 0.3f

    mul-float/2addr v0, v2

    const v2, 0x3f333333    # 0.7f

    mul-float v3, p3, v2

    add-float/2addr v0, v3

    iput v0, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->mScaleTrend:F

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v0}, Lcom/freeme/camera/FilmstripView;->access$000(Lcom/freeme/camera/FilmstripView;)F

    move-result v0

    mul-float/2addr p3, v0

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v0}, Lcom/freeme/camera/FilmstripView;->access$000(Lcom/freeme/camera/FilmstripView;)F

    move-result v0

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v3

    const/4 v4, 0x1

    if-gez v0, :cond_4

    cmpg-float v0, p3, v3

    if-gez v0, :cond_4

    cmpg-float p1, p3, v2

    if-gtz p1, :cond_1

    move p3, v2

    :cond_1
    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripView;->access$000(Lcom/freeme/camera/FilmstripView;)F

    move-result p1

    cmpl-float p1, p1, p3

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripView;->access$000(Lcom/freeme/camera/FilmstripView;)F

    move-result p1

    cmpl-float p1, p1, v2

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripView;->access$2600(Lcom/freeme/camera/FilmstripView;)V

    :cond_2
    cmpl-float p1, p3, v2

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripView;->access$2800(Lcom/freeme/camera/FilmstripView;)V

    :cond_3
    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p1, p3}, Lcom/freeme/camera/FilmstripView;->access$002(Lcom/freeme/camera/FilmstripView;F)F

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-virtual {p1}, Lcom/freeme/camera/FilmstripView;->invalidate()V

    goto/16 :goto_2

    :cond_4
    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v0}, Lcom/freeme/camera/FilmstripView;->access$000(Lcom/freeme/camera/FilmstripView;)F

    move-result v0

    cmpg-float v0, v0, v3

    if-gez v0, :cond_6

    cmpl-float v0, p3, v3

    if-ltz v0, :cond_6

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripView;->access$000(Lcom/freeme/camera/FilmstripView;)F

    move-result p1

    cmpl-float p1, p1, v2

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripView;->access$2600(Lcom/freeme/camera/FilmstripView;)V

    :cond_5
    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p1, v3}, Lcom/freeme/camera/FilmstripView;->access$002(Lcom/freeme/camera/FilmstripView;F)F

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripView;->access$2700(Lcom/freeme/camera/FilmstripView;)V

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripView;->access$400(Lcom/freeme/camera/FilmstripView;)Lcom/freeme/camera/FilmstripView$MyController;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/freeme/camera/FilmstripView$MyController;->access$1000(Lcom/freeme/camera/FilmstripView$MyController;Z)V

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-virtual {p1}, Lcom/freeme/camera/FilmstripView;->invalidate()V

    goto/16 :goto_2

    :cond_6
    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v0}, Lcom/freeme/camera/FilmstripView;->access$000(Lcom/freeme/camera/FilmstripView;)F

    move-result v0

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_9

    cmpg-float v0, p3, v3

    if-gez v0, :cond_9

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripView;->access$3200(Lcom/freeme/camera/FilmstripView;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripView;->access$3700(Lcom/freeme/camera/FilmstripView;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripView;->access$3800(Lcom/freeme/camera/FilmstripView;)V

    goto :goto_0

    :cond_7
    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripView;->access$2500(Lcom/freeme/camera/FilmstripView;)V

    goto :goto_0

    :cond_8
    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripView;->access$3900(Lcom/freeme/camera/FilmstripView;)V

    :goto_0
    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p1, p3}, Lcom/freeme/camera/FilmstripView;->access$002(Lcom/freeme/camera/FilmstripView;F)F

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripView;->access$2800(Lcom/freeme/camera/FilmstripView;)V

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-virtual {p1}, Lcom/freeme/camera/FilmstripView;->invalidate()V

    goto :goto_2

    :cond_9
    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v0}, Lcom/freeme/camera/FilmstripView;->access$4900(Lcom/freeme/camera/FilmstripView;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v0}, Lcom/freeme/camera/FilmstripView;->access$400(Lcom/freeme/camera/FilmstripView;)Lcom/freeme/camera/FilmstripView$MyController;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/freeme/camera/FilmstripView$MyController;->access$1000(Lcom/freeme/camera/FilmstripView$MyController;Z)V

    :cond_a
    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v0}, Lcom/freeme/camera/FilmstripView;->access$500(Lcom/freeme/camera/FilmstripView;)[Lcom/freeme/camera/FilmstripView$ViewItem;

    move-result-object v0

    aget-object v5, v0, v4

    iget v0, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->mMaxScale:F

    invoke-static {p3, v0}, Ljava/lang/Math;->min(FF)F

    move-result p3

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v0}, Lcom/freeme/camera/FilmstripView;->access$000(Lcom/freeme/camera/FilmstripView;)F

    move-result v0

    cmpl-float v0, p3, v0

    if-nez v0, :cond_b

    return v4

    :cond_b
    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v0}, Lcom/freeme/camera/FilmstripView;->access$000(Lcom/freeme/camera/FilmstripView;)F

    move-result v0

    div-float v8, p3, v0

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v0}, Lcom/freeme/camera/FilmstripView;->access$4000(Lcom/freeme/camera/FilmstripView;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v9

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v0}, Lcom/freeme/camera/FilmstripView;->access$4000(Lcom/freeme/camera/FilmstripView;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v10

    move v6, p1

    move v7, p2

    invoke-virtual/range {v5 .. v10}, Lcom/freeme/camera/FilmstripView$ViewItem;->postScale(FFFII)V

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p1, p3}, Lcom/freeme/camera/FilmstripView;->access$002(Lcom/freeme/camera/FilmstripView;F)F

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripView;->access$000(Lcom/freeme/camera/FilmstripView;)F

    move-result p1

    cmpl-float p1, p1, v3

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripView;->access$2700(Lcom/freeme/camera/FilmstripView;)V

    goto :goto_1

    :cond_c
    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripView;->access$4400(Lcom/freeme/camera/FilmstripView;)V

    :goto_1
    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripView;->access$5400(Lcom/freeme/camera/FilmstripView;)V

    :goto_2
    return v4
.end method

.method public onScaleBegin(FF)Z
    .locals 1

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripView;->access$3400(Lcom/freeme/camera/FilmstripView;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    return p2

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripView;->access$6000(Lcom/freeme/camera/FilmstripView;)V

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->mScaleTrend:F

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v0}, Lcom/freeme/camera/FilmstripView;->access$400(Lcom/freeme/camera/FilmstripView;)Lcom/freeme/camera/FilmstripView$MyController;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/freeme/camera/FilmstripView$MyController;->access$6100(Lcom/freeme/camera/FilmstripView$MyController;Z)F

    move-result p2

    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->mMaxScale:F

    const/4 p1, 0x1

    return p1
.end method

.method public onScaleEnd()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-virtual {v0}, Lcom/freeme/camera/FilmstripView;->zoomAtIndexChanged()V

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v0}, Lcom/freeme/camera/FilmstripView;->access$000(Lcom/freeme/camera/FilmstripView;)F

    move-result v0

    const v1, 0x3f8ccccd    # 1.1f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v0}, Lcom/freeme/camera/FilmstripView;->access$400(Lcom/freeme/camera/FilmstripView;)Lcom/freeme/camera/FilmstripView$MyController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/freeme/camera/FilmstripView$MyController;->access$1000(Lcom/freeme/camera/FilmstripView$MyController;Z)V

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v0}, Lcom/freeme/camera/FilmstripView;->access$000(Lcom/freeme/camera/FilmstripView;)F

    move-result v0

    const v1, 0x3f4ccccd    # 0.8f

    cmpg-float v0, v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v0}, Lcom/freeme/camera/FilmstripView;->access$400(Lcom/freeme/camera/FilmstripView;)Lcom/freeme/camera/FilmstripView$MyController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freeme/camera/FilmstripView$MyController;->goToFilmstrip()V

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->mScaleTrend:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_3

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v0}, Lcom/freeme/camera/FilmstripView;->access$000(Lcom/freeme/camera/FilmstripView;)F

    move-result v0

    const v2, 0x3f666666    # 0.9f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v0}, Lcom/freeme/camera/FilmstripView;->access$400(Lcom/freeme/camera/FilmstripView;)Lcom/freeme/camera/FilmstripView$MyController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freeme/camera/FilmstripView$MyController;->goToFilmstrip()V

    goto :goto_1

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v0}, Lcom/freeme/camera/FilmstripView;->access$4900(Lcom/freeme/camera/FilmstripView;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v0, v1}, Lcom/freeme/camera/FilmstripView;->access$002(Lcom/freeme/camera/FilmstripView;F)F

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v0}, Lcom/freeme/camera/FilmstripView;->access$4800(Lcom/freeme/camera/FilmstripView;)V

    :cond_4
    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v0}, Lcom/freeme/camera/FilmstripView;->access$400(Lcom/freeme/camera/FilmstripView;)Lcom/freeme/camera/FilmstripView$MyController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freeme/camera/FilmstripView$MyController;->goToFullScreen()V

    :goto_1
    iput v1, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->mScaleTrend:F

    return-void
.end method

.method public onScroll(FFFF)Z
    .locals 9

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v0}, Lcom/freeme/camera/FilmstripView;->access$500(Lcom/freeme/camera/FilmstripView;)[Lcom/freeme/camera/FilmstripView$ViewItem;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    :cond_0
    iget-object v3, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v3}, Lcom/freeme/camera/FilmstripView;->access$3200(Lcom/freeme/camera/FilmstripView;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v3}, Lcom/freeme/camera/FilmstripView;->access$100(Lcom/freeme/camera/FilmstripView;)Lcom/freeme/camera/filmstrip/DataAdapter;

    move-result-object v3

    invoke-virtual {v0}, Lcom/freeme/camera/FilmstripView$ViewItem;->getId()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/freeme/camera/filmstrip/DataAdapter;->canSwipeInFullScreen(I)Z

    move-result v3

    if-nez v3, :cond_1

    return v2

    :cond_1
    iget-object v3, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v3}, Lcom/freeme/camera/FilmstripView;->access$6000(Lcom/freeme/camera/FilmstripView;)V

    iget-object v3, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v3}, Lcom/freeme/camera/FilmstripView;->access$4900(Lcom/freeme/camera/FilmstripView;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripView;->access$500(Lcom/freeme/camera/FilmstripView;)[Lcom/freeme/camera/FilmstripView$ViewItem;

    move-result-object p1

    aget-object v2, p1, v1

    invoke-virtual {v2}, Lcom/freeme/camera/FilmstripView$ViewItem;->getTranslationX()F

    move-result p1

    iget-object p2, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p2}, Lcom/freeme/camera/FilmstripView;->access$000(Lcom/freeme/camera/FilmstripView;)F

    move-result p2

    mul-float/2addr p1, p2

    sub-float v3, p1, p3

    invoke-virtual {v2}, Lcom/freeme/camera/FilmstripView$ViewItem;->getTranslationY()F

    move-result p1

    iget-object p2, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p2}, Lcom/freeme/camera/FilmstripView;->access$000(Lcom/freeme/camera/FilmstripView;)F

    move-result p2

    mul-float/2addr p1, p2

    sub-float v4, p1, p4

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripView;->access$000(Lcom/freeme/camera/FilmstripView;)F

    move-result v5

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripView;->access$000(Lcom/freeme/camera/FilmstripView;)F

    move-result v6

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripView;->access$4000(Lcom/freeme/camera/FilmstripView;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripView;->access$4000(Lcom/freeme/camera/FilmstripView;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-virtual/range {v2 .. v8}, Lcom/freeme/camera/FilmstripView$ViewItem;->updateTransform(FFFFII)V

    return v1

    :cond_2
    iget-object v3, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v3}, Lcom/freeme/camera/FilmstripView;->access$000(Lcom/freeme/camera/FilmstripView;)F

    move-result v3

    div-float v3, p3, v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v4}, Lcom/freeme/camera/FilmstripView;->access$400(Lcom/freeme/camera/FilmstripView;)Lcom/freeme/camera/FilmstripView$MyController;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/freeme/camera/FilmstripView$MyController;->stopScrolling(Z)Z

    iget-object v4, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v4}, Lcom/freeme/camera/FilmstripView;->access$5500(Lcom/freeme/camera/FilmstripView;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v4, v1}, Lcom/freeme/camera/FilmstripView;->access$5502(Lcom/freeme/camera/FilmstripView;Z)Z

    iget-object v4, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v4}, Lcom/freeme/camera/FilmstripView;->access$500(Lcom/freeme/camera/FilmstripView;)[Lcom/freeme/camera/FilmstripView$ViewItem;

    move-result-object v5

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lcom/freeme/camera/FilmstripView$ViewItem;->getId()I

    move-result v5

    invoke-static {v4, v5}, Lcom/freeme/camera/FilmstripView;->access$5902(Lcom/freeme/camera/FilmstripView;I)I

    :cond_3
    iget-object v4, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v4}, Lcom/freeme/camera/FilmstripView;->access$3100(Lcom/freeme/camera/FilmstripView;)Z

    move-result v4

    if-eqz v4, :cond_e

    iget v4, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->mScrollingDirection:I

    const/4 v5, 0x2

    if-nez v4, :cond_5

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v4, v4, v6

    if-lez v4, :cond_4

    move v4, v5

    goto :goto_0

    :cond_4
    move v4, v1

    :goto_0
    iput v4, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->mScrollingDirection:I

    :cond_5
    iget v4, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->mScrollingDirection:I

    const/4 v6, 0x0

    if-ne v4, v5, :cond_7

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripView;->access$1800(Lcom/freeme/camera/FilmstripView;)I

    move-result p1

    invoke-virtual {v0}, Lcom/freeme/camera/FilmstripView$ViewItem;->getCenterX()I

    move-result p2

    if-ne p1, p2, :cond_6

    invoke-virtual {v0}, Lcom/freeme/camera/FilmstripView$ViewItem;->getId()I

    move-result p1

    if-nez p1, :cond_6

    cmpg-float p1, p3, v6

    if-gez p1, :cond_6

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p1, v2}, Lcom/freeme/camera/FilmstripView;->access$5502(Lcom/freeme/camera/FilmstripView;Z)Z

    iput v2, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->mScrollingDirection:I

    return v2

    :cond_6
    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripView;->access$400(Lcom/freeme/camera/FilmstripView;)Lcom/freeme/camera/FilmstripView$MyController;

    move-result-object p1

    int-to-float p2, v3

    invoke-virtual {p1, p2}, Lcom/freeme/camera/FilmstripView$MyController;->scroll(F)V

    goto/16 :goto_5

    :cond_7
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    :goto_1
    const/4 v0, 0x3

    if-ge v2, v0, :cond_a

    iget-object v3, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v3}, Lcom/freeme/camera/FilmstripView;->access$500(Lcom/freeme/camera/FilmstripView;)[Lcom/freeme/camera/FilmstripView$ViewItem;

    move-result-object v3

    aget-object v3, v3, v2

    if-nez v3, :cond_8

    goto :goto_2

    :cond_8
    iget-object v3, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v3}, Lcom/freeme/camera/FilmstripView;->access$500(Lcom/freeme/camera/FilmstripView;)[Lcom/freeme/camera/FilmstripView$ViewItem;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-virtual {v3, p3}, Lcom/freeme/camera/FilmstripView$ViewItem;->getHitRect(Landroid/graphics/Rect;)V

    float-to-int v3, p1

    float-to-int v4, p2

    invoke-virtual {p3, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_3

    :cond_9
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_a
    :goto_3
    if-ne v2, v0, :cond_b

    return v1

    :cond_b
    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripView;->access$100(Lcom/freeme/camera/FilmstripView;)Lcom/freeme/camera/filmstrip/DataAdapter;

    move-result-object p1

    iget-object p2, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p2}, Lcom/freeme/camera/FilmstripView;->access$500(Lcom/freeme/camera/FilmstripView;)[Lcom/freeme/camera/FilmstripView$ViewItem;

    move-result-object p2

    aget-object p2, p2, v2

    invoke-virtual {p2}, Lcom/freeme/camera/FilmstripView$ViewItem;->getId()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/freeme/camera/filmstrip/DataAdapter;->getImageData(I)Lcom/freeme/camera/filmstrip/ImageData;

    move-result-object p1

    iget-object p2, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p2}, Lcom/freeme/camera/FilmstripView;->access$500(Lcom/freeme/camera/FilmstripView;)[Lcom/freeme/camera/FilmstripView$ViewItem;

    move-result-object p2

    aget-object p2, p2, v2

    invoke-virtual {p2}, Lcom/freeme/camera/FilmstripView$ViewItem;->getTranslationY()F

    move-result p2

    iget-object p3, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p3}, Lcom/freeme/camera/FilmstripView;->access$000(Lcom/freeme/camera/FilmstripView;)F

    move-result p3

    div-float/2addr p4, p3

    sub-float/2addr p2, p4

    invoke-interface {p1, v5}, Lcom/freeme/camera/filmstrip/ImageData;->isUIActionSupported(I)Z

    move-result p3

    if-nez p3, :cond_c

    cmpl-float p3, p2, v6

    if-lez p3, :cond_c

    move p2, v6

    :cond_c
    invoke-interface {p1, v1}, Lcom/freeme/camera/filmstrip/ImageData;->isUIActionSupported(I)Z

    move-result p1

    if-nez p1, :cond_d

    cmpg-float p1, p2, v6

    if-gez p1, :cond_d

    move p2, v6

    :cond_d
    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripView;->access$500(Lcom/freeme/camera/FilmstripView;)[Lcom/freeme/camera/FilmstripView$ViewItem;

    move-result-object p1

    aget-object p1, p1, v2

    invoke-virtual {p1, p2}, Lcom/freeme/camera/FilmstripView$ViewItem;->setTranslationY(F)V

    goto :goto_5

    :cond_e
    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripView;->access$3200(Lcom/freeme/camera/FilmstripView;)Z

    move-result p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripView;->access$500(Lcom/freeme/camera/FilmstripView;)[Lcom/freeme/camera/FilmstripView$ViewItem;

    move-result-object p1

    aget-object p1, p1, v1

    if-eqz p1, :cond_10

    if-gez v3, :cond_f

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripView;->access$1800(Lcom/freeme/camera/FilmstripView;)I

    move-result p1

    invoke-virtual {v0}, Lcom/freeme/camera/FilmstripView$ViewItem;->getCenterX()I

    move-result p2

    if-gt p1, p2, :cond_f

    invoke-virtual {v0}, Lcom/freeme/camera/FilmstripView$ViewItem;->getId()I

    move-result p1

    if-nez p1, :cond_f

    goto :goto_4

    :cond_f
    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripView;->access$400(Lcom/freeme/camera/FilmstripView;)Lcom/freeme/camera/FilmstripView$MyController;

    move-result-object p1

    int-to-double p2, v3

    const-wide v2, 0x3ff3333333333333L    # 1.2

    mul-double/2addr p2, v2

    double-to-int p2, p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Lcom/freeme/camera/FilmstripView$MyController;->scroll(F)V

    goto :goto_5

    :cond_10
    :goto_4
    return v2

    :cond_11
    :goto_5
    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-virtual {p1}, Lcom/freeme/camera/FilmstripView;->invalidate()V

    return v1
.end method

.method public onSingleTapUp(FF)Z
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v0}, Lcom/freeme/camera/FilmstripView;->access$500(Lcom/freeme/camera/FilmstripView;)[Lcom/freeme/camera/FilmstripView$ViewItem;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v2, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v2}, Lcom/freeme/camera/FilmstripView;->access$3100(Lcom/freeme/camera/FilmstripView;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, p2}, Lcom/freeme/camera/FilmstripView$ViewItem;->areaContains(FF)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripView;->access$400(Lcom/freeme/camera/FilmstripView;)Lcom/freeme/camera/FilmstripView$MyController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freeme/camera/FilmstripView$MyController;->goToFullScreen()V

    return v1

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripView;->access$3200(Lcom/freeme/camera/FilmstripView;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripView;->access$3700(Lcom/freeme/camera/FilmstripView;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripView;->access$3800(Lcom/freeme/camera/FilmstripView;)V

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripView;->access$2700(Lcom/freeme/camera/FilmstripView;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripView;->access$2500(Lcom/freeme/camera/FilmstripView;)V

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripView;->access$4200(Lcom/freeme/camera/FilmstripView;)V

    :goto_0
    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public onUp(FF)Z
    .locals 8

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripView;->access$500(Lcom/freeme/camera/FilmstripView;)[Lcom/freeme/camera/FilmstripView$ViewItem;

    move-result-object p1

    const/4 v0, 0x1

    aget-object p1, p1, v0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return v1

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripView;->access$400(Lcom/freeme/camera/FilmstripView;)Lcom/freeme/camera/FilmstripView$MyController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freeme/camera/FilmstripView$MyController;->isZoomAnimationRunning()Z

    move-result p1

    if-nez p1, :cond_f

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripView;->access$400(Lcom/freeme/camera/FilmstripView;)Lcom/freeme/camera/FilmstripView$MyController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freeme/camera/FilmstripView$MyController;->isFlingAnimationRunning()Z

    move-result p1

    if-eqz p1, :cond_1

    goto/16 :goto_4

    :cond_1
    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripView;->access$4900(Lcom/freeme/camera/FilmstripView;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripView;->access$400(Lcom/freeme/camera/FilmstripView;)Lcom/freeme/camera/FilmstripView$MyController;

    move-result-object p1

    invoke-static {p1}, Lcom/freeme/camera/FilmstripView$MyController;->access$4300(Lcom/freeme/camera/FilmstripView$MyController;)V

    return v0

    :cond_2
    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-virtual {p1}, Lcom/freeme/camera/FilmstripView;->getHeight()I

    move-result p1

    int-to-float p1, p1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr p1, v2

    iget-object v2, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-virtual {v2}, Lcom/freeme/camera/FilmstripView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3dcccccd    # 0.1f

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v3, v1}, Lcom/freeme/camera/FilmstripView;->access$5502(Lcom/freeme/camera/FilmstripView;Z)Z

    iput v1, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->mScrollingDirection:I

    iget v3, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->mLastDownY:F

    sub-float/2addr p2, v3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->mLastDownTime:J

    sub-long/2addr v3, v5

    long-to-float v3, v3

    div-float/2addr p2, v3

    move v3, v1

    :goto_0
    const/4 v4, 0x3

    const/4 v5, 0x2

    if-ge v3, v4, :cond_9

    iget-object v4, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v4}, Lcom/freeme/camera/FilmstripView;->access$500(Lcom/freeme/camera/FilmstripView;)[Lcom/freeme/camera/FilmstripView$ViewItem;

    move-result-object v4

    aget-object v4, v4, v3

    if-nez v4, :cond_3

    goto/16 :goto_1

    :cond_3
    iget-object v4, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v4}, Lcom/freeme/camera/FilmstripView;->access$500(Lcom/freeme/camera/FilmstripView;)[Lcom/freeme/camera/FilmstripView$ViewItem;

    move-result-object v4

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/freeme/camera/FilmstripView$ViewItem;->getTranslationY()F

    move-result v4

    const/4 v6, 0x0

    cmpl-float v6, v4, v6

    if-nez v6, :cond_4

    goto :goto_1

    :cond_4
    iget-object v6, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v6}, Lcom/freeme/camera/FilmstripView;->access$500(Lcom/freeme/camera/FilmstripView;)[Lcom/freeme/camera/FilmstripView$ViewItem;

    move-result-object v6

    aget-object v6, v6, v3

    invoke-virtual {v6}, Lcom/freeme/camera/FilmstripView$ViewItem;->getId()I

    move-result v6

    iget-object v7, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v7}, Lcom/freeme/camera/FilmstripView;->access$100(Lcom/freeme/camera/FilmstripView;)Lcom/freeme/camera/filmstrip/DataAdapter;

    move-result-object v7

    invoke-interface {v7, v6}, Lcom/freeme/camera/filmstrip/DataAdapter;->getImageData(I)Lcom/freeme/camera/filmstrip/ImageData;

    move-result-object v7

    invoke-interface {v7, v5}, Lcom/freeme/camera/filmstrip/ImageData;->isUIActionSupported(I)Z

    move-result v5

    const/high16 v7, 0x40600000    # 3.5f

    if-eqz v5, :cond_6

    cmpl-float v5, v4, p1

    if-gtz v5, :cond_5

    cmpl-float v5, v4, v2

    if-lez v5, :cond_6

    cmpl-float v5, p2, v7

    if-lez v5, :cond_6

    :cond_5
    iget-object v4, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v4, v3, v6}, Lcom/freeme/camera/FilmstripView;->access$5600(Lcom/freeme/camera/FilmstripView;II)V

    goto :goto_1

    :cond_6
    iget-object v5, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v5}, Lcom/freeme/camera/FilmstripView;->access$100(Lcom/freeme/camera/FilmstripView;)Lcom/freeme/camera/filmstrip/DataAdapter;

    move-result-object v5

    invoke-interface {v5, v6}, Lcom/freeme/camera/filmstrip/DataAdapter;->getImageData(I)Lcom/freeme/camera/filmstrip/ImageData;

    move-result-object v5

    invoke-interface {v5, v0}, Lcom/freeme/camera/filmstrip/ImageData;->isUIActionSupported(I)Z

    move-result v5

    if-eqz v5, :cond_8

    neg-float v5, p1

    cmpg-float v5, v4, v5

    if-ltz v5, :cond_7

    neg-float v5, v2

    cmpg-float v4, v4, v5

    if-gez v4, :cond_8

    cmpl-float v4, p2, v7

    if-lez v4, :cond_8

    :cond_7
    iget-object v4, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v4, v3, v6}, Lcom/freeme/camera/FilmstripView;->access$5700(Lcom/freeme/camera/FilmstripView;II)V

    goto :goto_1

    :cond_8
    iget-object v4, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v4}, Lcom/freeme/camera/FilmstripView;->access$500(Lcom/freeme/camera/FilmstripView;)[Lcom/freeme/camera/FilmstripView$ViewItem;

    move-result-object v5

    aget-object v5, v5, v3

    invoke-static {v4, v5}, Lcom/freeme/camera/FilmstripView;->access$5800(Lcom/freeme/camera/FilmstripView;Lcom/freeme/camera/FilmstripView$ViewItem;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_9
    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripView;->access$500(Lcom/freeme/camera/FilmstripView;)[Lcom/freeme/camera/FilmstripView$ViewItem;

    move-result-object p1

    aget-object p1, p1, v0

    if-nez p1, :cond_a

    return v0

    :cond_a
    invoke-virtual {p1}, Lcom/freeme/camera/FilmstripView$ViewItem;->getId()I

    move-result p2

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v0}, Lcom/freeme/camera/FilmstripView;->access$1800(Lcom/freeme/camera/FilmstripView;)I

    move-result v0

    invoke-virtual {p1}, Lcom/freeme/camera/FilmstripView$ViewItem;->getCenterX()I

    move-result v2

    add-int/lit16 v2, v2, 0x12c

    if-le v0, v2, :cond_c

    if-nez p2, :cond_c

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v0, p1}, Lcom/freeme/camera/FilmstripView;->access$2300(Lcom/freeme/camera/FilmstripView;Lcom/freeme/camera/FilmstripView$ViewItem;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v0}, Lcom/freeme/camera/FilmstripView;->access$5900(Lcom/freeme/camera/FilmstripView;)I

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v0}, Lcom/freeme/camera/FilmstripView;->access$400(Lcom/freeme/camera/FilmstripView;)Lcom/freeme/camera/FilmstripView$MyController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freeme/camera/FilmstripView$MyController;->goToFilmstrip()V

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v0}, Lcom/freeme/camera/FilmstripView;->access$500(Lcom/freeme/camera/FilmstripView;)[Lcom/freeme/camera/FilmstripView$ViewItem;

    move-result-object v0

    aget-object v0, v0, v5

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v0}, Lcom/freeme/camera/FilmstripView;->access$400(Lcom/freeme/camera/FilmstripView;)Lcom/freeme/camera/FilmstripView$MyController;

    move-result-object v0

    iget-object v2, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v2}, Lcom/freeme/camera/FilmstripView;->access$500(Lcom/freeme/camera/FilmstripView;)[Lcom/freeme/camera/FilmstripView$ViewItem;

    move-result-object v2

    aget-object v2, v2, v5

    invoke-virtual {v2}, Lcom/freeme/camera/FilmstripView$ViewItem;->getCenterX()I

    move-result v2

    const/16 v3, 0x190

    invoke-virtual {v0, v2, v3, v1}, Lcom/freeme/camera/FilmstripView$MyController;->scrollToPosition(IIZ)V

    goto :goto_2

    :cond_b
    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v0}, Lcom/freeme/camera/FilmstripView;->access$2100(Lcom/freeme/camera/FilmstripView;)V

    :cond_c
    :goto_2
    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v0}, Lcom/freeme/camera/FilmstripView;->access$2200(Lcom/freeme/camera/FilmstripView;)Z

    move-result v0

    if-eqz v0, :cond_d

    if-nez p2, :cond_d

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v0, p1}, Lcom/freeme/camera/FilmstripView;->access$2300(Lcom/freeme/camera/FilmstripView;Lcom/freeme/camera/FilmstripView$ViewItem;)Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripView;->access$400(Lcom/freeme/camera/FilmstripView;)Lcom/freeme/camera/FilmstripView$MyController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freeme/camera/FilmstripView$MyController;->goToFullScreen()V

    goto :goto_3

    :cond_d
    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripView;->access$5900(Lcom/freeme/camera/FilmstripView;)I

    move-result p1

    if-nez p1, :cond_e

    if-eqz p2, :cond_e

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripView;->access$400(Lcom/freeme/camera/FilmstripView;)Lcom/freeme/camera/FilmstripView$MyController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freeme/camera/FilmstripView$MyController;->goToFilmstrip()V

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p1, p2}, Lcom/freeme/camera/FilmstripView;->access$5902(Lcom/freeme/camera/FilmstripView;I)I

    :cond_e
    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripView;->access$2100(Lcom/freeme/camera/FilmstripView;)V

    :goto_3
    return v1

    :cond_f
    :goto_4
    return v1
.end method
