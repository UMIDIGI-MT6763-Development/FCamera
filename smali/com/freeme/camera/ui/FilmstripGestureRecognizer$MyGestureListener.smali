.class Lcom/freeme/camera/ui/FilmstripGestureRecognizer$MyGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "FilmstripGestureRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/ui/FilmstripGestureRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/ui/FilmstripGestureRecognizer;


# direct methods
.method private constructor <init>(Lcom/freeme/camera/ui/FilmstripGestureRecognizer;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/FilmstripGestureRecognizer$MyGestureListener;->this$0:Lcom/freeme/camera/ui/FilmstripGestureRecognizer;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/freeme/camera/ui/FilmstripGestureRecognizer;Lcom/freeme/camera/ui/FilmstripGestureRecognizer$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/ui/FilmstripGestureRecognizer$MyGestureListener;-><init>(Lcom/freeme/camera/ui/FilmstripGestureRecognizer;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/ui/FilmstripGestureRecognizer$MyGestureListener;->this$0:Lcom/freeme/camera/ui/FilmstripGestureRecognizer;

    invoke-static {v0}, Lcom/freeme/camera/ui/FilmstripGestureRecognizer;->access$300(Lcom/freeme/camera/ui/FilmstripGestureRecognizer;)Lcom/freeme/camera/ui/FilmstripGestureRecognizer$Listener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/freeme/camera/ui/FilmstripGestureRecognizer$Listener;->onDown(FF)Z

    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    iget-object p1, p0, Lcom/freeme/camera/ui/FilmstripGestureRecognizer$MyGestureListener;->this$0:Lcom/freeme/camera/ui/FilmstripGestureRecognizer;

    invoke-static {p1}, Lcom/freeme/camera/ui/FilmstripGestureRecognizer;->access$300(Lcom/freeme/camera/ui/FilmstripGestureRecognizer;)Lcom/freeme/camera/ui/FilmstripGestureRecognizer$Listener;

    move-result-object p1

    invoke-interface {p1, p3, p4}, Lcom/freeme/camera/ui/FilmstripGestureRecognizer$Listener;->onFling(FF)Z

    move-result p1

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/ui/FilmstripGestureRecognizer$MyGestureListener;->this$0:Lcom/freeme/camera/ui/FilmstripGestureRecognizer;

    invoke-static {v0}, Lcom/freeme/camera/ui/FilmstripGestureRecognizer;->access$300(Lcom/freeme/camera/ui/FilmstripGestureRecognizer;)Lcom/freeme/camera/ui/FilmstripGestureRecognizer$Listener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-interface {v0, v1, p1}, Lcom/freeme/camera/ui/FilmstripGestureRecognizer$Listener;->onLongPress(FF)V

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    iget-object p1, p0, Lcom/freeme/camera/ui/FilmstripGestureRecognizer$MyGestureListener;->this$0:Lcom/freeme/camera/ui/FilmstripGestureRecognizer;

    invoke-static {p1}, Lcom/freeme/camera/ui/FilmstripGestureRecognizer;->access$300(Lcom/freeme/camera/ui/FilmstripGestureRecognizer;)Lcom/freeme/camera/ui/FilmstripGestureRecognizer$Listener;

    move-result-object p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-interface {p1, v0, p2, p3, p4}, Lcom/freeme/camera/ui/FilmstripGestureRecognizer$Listener;->onScroll(FFFF)Z

    move-result p1

    return p1
.end method
