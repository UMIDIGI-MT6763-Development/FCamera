.class Lcom/freeme/camera/gesture/GestureManager$GestureListenerImpl;
.super Ljava/lang/Object;
.source "GestureManager.java"

# interfaces
.implements Lcom/freeme/camera/gesture/GestureRecognizer$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/gesture/GestureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/gesture/GestureManager;


# direct methods
.method private constructor <init>(Lcom/freeme/camera/gesture/GestureManager;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/gesture/GestureManager$GestureListenerImpl;->this$0:Lcom/freeme/camera/gesture/GestureManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/freeme/camera/gesture/GestureManager;Lcom/freeme/camera/gesture/GestureManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/gesture/GestureManager$GestureListenerImpl;-><init>(Lcom/freeme/camera/gesture/GestureManager;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/gesture/GestureManager$GestureListenerImpl;->this$0:Lcom/freeme/camera/gesture/GestureManager;

    invoke-static {v0}, Lcom/freeme/camera/gesture/GestureManager;->access$400(Lcom/freeme/camera/gesture/GestureManager;)Lcom/freeme/camera/gesture/GestureManager$GestureNotifier;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/freeme/camera/gesture/GestureManager$GestureNotifier;->onDoubleTap(FF)Z

    move-result p1

    return p1
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/gesture/GestureManager$GestureListenerImpl;->this$0:Lcom/freeme/camera/gesture/GestureManager;

    invoke-static {v0}, Lcom/freeme/camera/gesture/GestureManager;->access$400(Lcom/freeme/camera/gesture/GestureManager;)Lcom/freeme/camera/gesture/GestureManager$GestureNotifier;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/freeme/camera/gesture/GestureManager$GestureNotifier;->onDoubleTap(FF)Z

    move-result p1

    return p1
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/gesture/GestureManager$GestureListenerImpl;->this$0:Lcom/freeme/camera/gesture/GestureManager;

    invoke-static {v0}, Lcom/freeme/camera/gesture/GestureManager;->access$400(Lcom/freeme/camera/gesture/GestureManager;)Lcom/freeme/camera/gesture/GestureManager$GestureNotifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/freeme/camera/gesture/GestureManager$GestureNotifier;->onDown(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onDownEvent(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/gesture/GestureManager$GestureListenerImpl;->this$0:Lcom/freeme/camera/gesture/GestureManager;

    invoke-static {v0}, Lcom/freeme/camera/gesture/GestureManager;->access$400(Lcom/freeme/camera/gesture/GestureManager;)Lcom/freeme/camera/gesture/GestureManager$GestureNotifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/freeme/camera/gesture/GestureManager$GestureNotifier;->onDown(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/gesture/GestureManager$GestureListenerImpl;->this$0:Lcom/freeme/camera/gesture/GestureManager;

    invoke-static {v0}, Lcom/freeme/camera/gesture/GestureManager;->access$400(Lcom/freeme/camera/gesture/GestureManager;)Lcom/freeme/camera/gesture/GestureManager$GestureNotifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/freeme/camera/gesture/GestureManager$GestureNotifier;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p1

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/gesture/GestureManager$GestureListenerImpl;->this$0:Lcom/freeme/camera/gesture/GestureManager;

    invoke-static {v0}, Lcom/freeme/camera/gesture/GestureManager;->access$400(Lcom/freeme/camera/gesture/GestureManager;)Lcom/freeme/camera/gesture/GestureManager$GestureNotifier;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/freeme/camera/gesture/GestureManager$GestureNotifier;->onLongPress(FF)Z

    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/gesture/GestureManager$GestureListenerImpl;->this$0:Lcom/freeme/camera/gesture/GestureManager;

    invoke-static {v0}, Lcom/freeme/camera/gesture/GestureManager;->access$400(Lcom/freeme/camera/gesture/GestureManager;)Lcom/freeme/camera/gesture/GestureManager$GestureNotifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/freeme/camera/gesture/GestureManager$GestureNotifier;->onScale(Landroid/view/ScaleGestureDetector;)Z

    move-result p1

    return p1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/gesture/GestureManager$GestureListenerImpl;->this$0:Lcom/freeme/camera/gesture/GestureManager;

    invoke-static {v0}, Lcom/freeme/camera/gesture/GestureManager;->access$400(Lcom/freeme/camera/gesture/GestureManager;)Lcom/freeme/camera/gesture/GestureManager$GestureNotifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/freeme/camera/gesture/GestureManager$GestureNotifier;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    move-result p1

    return p1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/gesture/GestureManager$GestureListenerImpl;->this$0:Lcom/freeme/camera/gesture/GestureManager;

    invoke-static {v0}, Lcom/freeme/camera/gesture/GestureManager;->access$400(Lcom/freeme/camera/gesture/GestureManager;)Lcom/freeme/camera/gesture/GestureManager$GestureNotifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/freeme/camera/gesture/GestureManager$GestureNotifier;->onScaleEnd(Landroid/view/ScaleGestureDetector;)Z

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/gesture/GestureManager$GestureListenerImpl;->this$0:Lcom/freeme/camera/gesture/GestureManager;

    invoke-static {v0}, Lcom/freeme/camera/gesture/GestureManager;->access$400(Lcom/freeme/camera/gesture/GestureManager;)Lcom/freeme/camera/gesture/GestureManager$GestureNotifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/freeme/camera/gesture/GestureManager$GestureNotifier;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p1

    return p1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/gesture/GestureManager$GestureListenerImpl;->this$0:Lcom/freeme/camera/gesture/GestureManager;

    invoke-static {v0}, Lcom/freeme/camera/gesture/GestureManager;->access$400(Lcom/freeme/camera/gesture/GestureManager;)Lcom/freeme/camera/gesture/GestureManager$GestureNotifier;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/freeme/camera/gesture/GestureManager$GestureNotifier;->onSingleTapConfirmed(FF)Z

    move-result p1

    return p1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/gesture/GestureManager$GestureListenerImpl;->this$0:Lcom/freeme/camera/gesture/GestureManager;

    invoke-static {v0}, Lcom/freeme/camera/gesture/GestureManager;->access$400(Lcom/freeme/camera/gesture/GestureManager;)Lcom/freeme/camera/gesture/GestureManager$GestureNotifier;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/freeme/camera/gesture/GestureManager$GestureNotifier;->onSingleTapUp(FF)Z

    move-result p1

    return p1
.end method

.method public onUpEvent(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/gesture/GestureManager$GestureListenerImpl;->this$0:Lcom/freeme/camera/gesture/GestureManager;

    invoke-static {v0}, Lcom/freeme/camera/gesture/GestureManager;->access$400(Lcom/freeme/camera/gesture/GestureManager;)Lcom/freeme/camera/gesture/GestureManager$GestureNotifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/freeme/camera/gesture/GestureManager$GestureNotifier;->onUp(Landroid/view/MotionEvent;)Z

    return-void
.end method
