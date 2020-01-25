.class Lcom/freeme/camera/ui/FilmstripGestureRecognizer$MyDoubleTapListener;
.super Ljava/lang/Object;
.source "FilmstripGestureRecognizer.java"

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/ui/FilmstripGestureRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDoubleTapListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/ui/FilmstripGestureRecognizer;


# direct methods
.method private constructor <init>(Lcom/freeme/camera/ui/FilmstripGestureRecognizer;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/FilmstripGestureRecognizer$MyDoubleTapListener;->this$0:Lcom/freeme/camera/ui/FilmstripGestureRecognizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/freeme/camera/ui/FilmstripGestureRecognizer;Lcom/freeme/camera/ui/FilmstripGestureRecognizer$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/ui/FilmstripGestureRecognizer$MyDoubleTapListener;-><init>(Lcom/freeme/camera/ui/FilmstripGestureRecognizer;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/ui/FilmstripGestureRecognizer$MyDoubleTapListener;->this$0:Lcom/freeme/camera/ui/FilmstripGestureRecognizer;

    invoke-static {v0}, Lcom/freeme/camera/ui/FilmstripGestureRecognizer;->access$300(Lcom/freeme/camera/ui/FilmstripGestureRecognizer;)Lcom/freeme/camera/ui/FilmstripGestureRecognizer$Listener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-interface {v0, v1, p1}, Lcom/freeme/camera/ui/FilmstripGestureRecognizer$Listener;->onDoubleTap(FF)Z

    move-result p1

    return p1
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/ui/FilmstripGestureRecognizer$MyDoubleTapListener;->this$0:Lcom/freeme/camera/ui/FilmstripGestureRecognizer;

    invoke-static {v0}, Lcom/freeme/camera/ui/FilmstripGestureRecognizer;->access$300(Lcom/freeme/camera/ui/FilmstripGestureRecognizer;)Lcom/freeme/camera/ui/FilmstripGestureRecognizer$Listener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-interface {v0, v1, p1}, Lcom/freeme/camera/ui/FilmstripGestureRecognizer$Listener;->onSingleTapUp(FF)Z

    move-result p1

    return p1
.end method
