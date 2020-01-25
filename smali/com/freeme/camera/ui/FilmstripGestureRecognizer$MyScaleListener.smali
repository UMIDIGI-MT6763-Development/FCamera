.class Lcom/freeme/camera/ui/FilmstripGestureRecognizer$MyScaleListener;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "FilmstripGestureRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/ui/FilmstripGestureRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyScaleListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/ui/FilmstripGestureRecognizer;


# direct methods
.method private constructor <init>(Lcom/freeme/camera/ui/FilmstripGestureRecognizer;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/FilmstripGestureRecognizer$MyScaleListener;->this$0:Lcom/freeme/camera/ui/FilmstripGestureRecognizer;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/freeme/camera/ui/FilmstripGestureRecognizer;Lcom/freeme/camera/ui/FilmstripGestureRecognizer$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/ui/FilmstripGestureRecognizer$MyScaleListener;-><init>(Lcom/freeme/camera/ui/FilmstripGestureRecognizer;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/ui/FilmstripGestureRecognizer$MyScaleListener;->this$0:Lcom/freeme/camera/ui/FilmstripGestureRecognizer;

    invoke-static {v0}, Lcom/freeme/camera/ui/FilmstripGestureRecognizer;->access$300(Lcom/freeme/camera/ui/FilmstripGestureRecognizer;)Lcom/freeme/camera/ui/FilmstripGestureRecognizer$Listener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result p1

    invoke-interface {v0, v1, v2, p1}, Lcom/freeme/camera/ui/FilmstripGestureRecognizer$Listener;->onScale(FFF)Z

    move-result p1

    return p1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/ui/FilmstripGestureRecognizer$MyScaleListener;->this$0:Lcom/freeme/camera/ui/FilmstripGestureRecognizer;

    invoke-static {v0}, Lcom/freeme/camera/ui/FilmstripGestureRecognizer;->access$300(Lcom/freeme/camera/ui/FilmstripGestureRecognizer;)Lcom/freeme/camera/ui/FilmstripGestureRecognizer$Listener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result p1

    invoke-interface {v0, v1, p1}, Lcom/freeme/camera/ui/FilmstripGestureRecognizer$Listener;->onScaleBegin(FF)Z

    move-result p1

    return p1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0

    iget-object p1, p0, Lcom/freeme/camera/ui/FilmstripGestureRecognizer$MyScaleListener;->this$0:Lcom/freeme/camera/ui/FilmstripGestureRecognizer;

    invoke-static {p1}, Lcom/freeme/camera/ui/FilmstripGestureRecognizer;->access$300(Lcom/freeme/camera/ui/FilmstripGestureRecognizer;)Lcom/freeme/camera/ui/FilmstripGestureRecognizer$Listener;

    move-result-object p1

    invoke-interface {p1}, Lcom/freeme/camera/ui/FilmstripGestureRecognizer$Listener;->onScaleEnd()V

    return-void
.end method
