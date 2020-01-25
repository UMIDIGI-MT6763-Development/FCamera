.class public Lcom/freeme/camera/ui/FilmstripGestureRecognizer;
.super Ljava/lang/Object;
.source "FilmstripGestureRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/ui/FilmstripGestureRecognizer$MyScaleListener;,
        Lcom/freeme/camera/ui/FilmstripGestureRecognizer$MyDoubleTapListener;,
        Lcom/freeme/camera/ui/FilmstripGestureRecognizer$MyGestureListener;,
        Lcom/freeme/camera/ui/FilmstripGestureRecognizer$Listener;
    }
.end annotation


# instance fields
.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private final mListener:Lcom/freeme/camera/ui/FilmstripGestureRecognizer$Listener;

.field private final mScaleDetector:Landroid/view/ScaleGestureDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/freeme/camera/ui/FilmstripGestureRecognizer$Listener;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/freeme/camera/ui/FilmstripGestureRecognizer;->mListener:Lcom/freeme/camera/ui/FilmstripGestureRecognizer$Listener;

    new-instance p2, Landroid/view/GestureDetector;

    new-instance v0, Lcom/freeme/camera/ui/FilmstripGestureRecognizer$MyGestureListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/freeme/camera/ui/FilmstripGestureRecognizer$MyGestureListener;-><init>(Lcom/freeme/camera/ui/FilmstripGestureRecognizer;Lcom/freeme/camera/ui/FilmstripGestureRecognizer$1;)V

    const/4 v2, 0x1

    invoke-direct {p2, p1, v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    iput-object p2, p0, Lcom/freeme/camera/ui/FilmstripGestureRecognizer;->mGestureDetector:Landroid/view/GestureDetector;

    iget-object p2, p0, Lcom/freeme/camera/ui/FilmstripGestureRecognizer;->mGestureDetector:Landroid/view/GestureDetector;

    new-instance v0, Lcom/freeme/camera/ui/FilmstripGestureRecognizer$MyDoubleTapListener;

    invoke-direct {v0, p0, v1}, Lcom/freeme/camera/ui/FilmstripGestureRecognizer$MyDoubleTapListener;-><init>(Lcom/freeme/camera/ui/FilmstripGestureRecognizer;Lcom/freeme/camera/ui/FilmstripGestureRecognizer$1;)V

    invoke-virtual {p2, v0}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    new-instance p2, Landroid/view/ScaleGestureDetector;

    new-instance v0, Lcom/freeme/camera/ui/FilmstripGestureRecognizer$MyScaleListener;

    invoke-direct {v0, p0, v1}, Lcom/freeme/camera/ui/FilmstripGestureRecognizer$MyScaleListener;-><init>(Lcom/freeme/camera/ui/FilmstripGestureRecognizer;Lcom/freeme/camera/ui/FilmstripGestureRecognizer$1;)V

    invoke-direct {p2, p1, v0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p2, p0, Lcom/freeme/camera/ui/FilmstripGestureRecognizer;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    return-void
.end method

.method static synthetic access$300(Lcom/freeme/camera/ui/FilmstripGestureRecognizer;)Lcom/freeme/camera/ui/FilmstripGestureRecognizer$Listener;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/ui/FilmstripGestureRecognizer;->mListener:Lcom/freeme/camera/ui/FilmstripGestureRecognizer$Listener;

    return-object p0
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/ui/FilmstripGestureRecognizer;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    iget-object v1, p0, Lcom/freeme/camera/ui/FilmstripGestureRecognizer;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/freeme/camera/ui/FilmstripGestureRecognizer;->mListener:Lcom/freeme/camera/ui/FilmstripGestureRecognizer$Listener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-interface {v2, v3, p1}, Lcom/freeme/camera/ui/FilmstripGestureRecognizer$Listener;->onUp(FF)Z

    :cond_0
    or-int p1, v0, v1

    return p1
.end method
