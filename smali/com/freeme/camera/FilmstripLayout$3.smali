.class Lcom/freeme/camera/FilmstripLayout$3;
.super Ljava/lang/Object;
.source "FilmstripLayout.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/FilmstripLayout;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/FilmstripLayout;


# direct methods
.method constructor <init>(Lcom/freeme/camera/FilmstripLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/FilmstripLayout$3;->this$0:Lcom/freeme/camera/FilmstripLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget-object v0, p0, Lcom/freeme/camera/FilmstripLayout$3;->this$0:Lcom/freeme/camera/FilmstripLayout;

    invoke-static {v0}, Lcom/freeme/camera/FilmstripLayout;->access$500(Lcom/freeme/camera/FilmstripLayout;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getX()F

    move-result v0

    add-float/2addr p1, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/freeme/camera/FilmstripLayout$3;->this$0:Lcom/freeme/camera/FilmstripLayout;

    invoke-static {v1}, Lcom/freeme/camera/FilmstripLayout;->access$500(Lcom/freeme/camera/FilmstripLayout;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getY()F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p2, p1, v0}, Landroid/view/MotionEvent;->setLocation(FF)V

    iget-object p1, p0, Lcom/freeme/camera/FilmstripLayout$3;->this$0:Lcom/freeme/camera/FilmstripLayout;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripLayout;->access$600(Lcom/freeme/camera/FilmstripLayout;)Lcom/freeme/camera/ui/FilmstripGestureRecognizer;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/freeme/camera/ui/FilmstripGestureRecognizer;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x1

    return p1
.end method
