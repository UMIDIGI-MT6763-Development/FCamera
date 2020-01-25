.class Lcom/freeme/camera/gesture/GestureRecognizer$GestureListenerImpl;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "GestureRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/gesture/GestureRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/gesture/GestureRecognizer;


# direct methods
.method private constructor <init>(Lcom/freeme/camera/gesture/GestureRecognizer;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/gesture/GestureRecognizer$GestureListenerImpl;->this$0:Lcom/freeme/camera/gesture/GestureRecognizer;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/freeme/camera/gesture/GestureRecognizer;Lcom/freeme/camera/gesture/GestureRecognizer$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/gesture/GestureRecognizer$GestureListenerImpl;-><init>(Lcom/freeme/camera/gesture/GestureRecognizer;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/gesture/GestureRecognizer$GestureListenerImpl;->this$0:Lcom/freeme/camera/gesture/GestureRecognizer;

    invoke-static {v0}, Lcom/freeme/camera/gesture/GestureRecognizer;->access$400(Lcom/freeme/camera/gesture/GestureRecognizer;)Lcom/freeme/camera/gesture/GestureRecognizer$Listener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/freeme/camera/gesture/GestureRecognizer$Listener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/gesture/GestureRecognizer$GestureListenerImpl;->this$0:Lcom/freeme/camera/gesture/GestureRecognizer;

    invoke-static {v0}, Lcom/freeme/camera/gesture/GestureRecognizer;->access$400(Lcom/freeme/camera/gesture/GestureRecognizer;)Lcom/freeme/camera/gesture/GestureRecognizer$Listener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/freeme/camera/gesture/GestureRecognizer$Listener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/gesture/GestureRecognizer$GestureListenerImpl;->this$0:Lcom/freeme/camera/gesture/GestureRecognizer;

    invoke-static {v0}, Lcom/freeme/camera/gesture/GestureRecognizer;->access$400(Lcom/freeme/camera/gesture/GestureRecognizer;)Lcom/freeme/camera/gesture/GestureRecognizer$Listener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/freeme/camera/gesture/GestureRecognizer$Listener;->onDown(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/gesture/GestureRecognizer$GestureListenerImpl;->this$0:Lcom/freeme/camera/gesture/GestureRecognizer;

    invoke-static {v0}, Lcom/freeme/camera/gesture/GestureRecognizer;->access$400(Lcom/freeme/camera/gesture/GestureRecognizer;)Lcom/freeme/camera/gesture/GestureRecognizer$Listener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/freeme/camera/gesture/GestureRecognizer$Listener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p1

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/gesture/GestureRecognizer$GestureListenerImpl;->this$0:Lcom/freeme/camera/gesture/GestureRecognizer;

    invoke-static {v0}, Lcom/freeme/camera/gesture/GestureRecognizer;->access$400(Lcom/freeme/camera/gesture/GestureRecognizer;)Lcom/freeme/camera/gesture/GestureRecognizer$Listener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/freeme/camera/gesture/GestureRecognizer$Listener;->onLongPress(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/gesture/GestureRecognizer$GestureListenerImpl;->this$0:Lcom/freeme/camera/gesture/GestureRecognizer;

    invoke-static {v0}, Lcom/freeme/camera/gesture/GestureRecognizer;->access$400(Lcom/freeme/camera/gesture/GestureRecognizer;)Lcom/freeme/camera/gesture/GestureRecognizer$Listener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/freeme/camera/gesture/GestureRecognizer$Listener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p1

    return p1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/gesture/GestureRecognizer$GestureListenerImpl;->this$0:Lcom/freeme/camera/gesture/GestureRecognizer;

    invoke-static {v0}, Lcom/freeme/camera/gesture/GestureRecognizer;->access$400(Lcom/freeme/camera/gesture/GestureRecognizer;)Lcom/freeme/camera/gesture/GestureRecognizer$Listener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/freeme/camera/gesture/GestureRecognizer$Listener;->onShowPress(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/gesture/GestureRecognizer$GestureListenerImpl;->this$0:Lcom/freeme/camera/gesture/GestureRecognizer;

    invoke-static {v0}, Lcom/freeme/camera/gesture/GestureRecognizer;->access$400(Lcom/freeme/camera/gesture/GestureRecognizer;)Lcom/freeme/camera/gesture/GestureRecognizer$Listener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/freeme/camera/gesture/GestureRecognizer$Listener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/gesture/GestureRecognizer$GestureListenerImpl;->this$0:Lcom/freeme/camera/gesture/GestureRecognizer;

    invoke-static {v0}, Lcom/freeme/camera/gesture/GestureRecognizer;->access$400(Lcom/freeme/camera/gesture/GestureRecognizer;)Lcom/freeme/camera/gesture/GestureRecognizer$Listener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/freeme/camera/gesture/GestureRecognizer$Listener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
