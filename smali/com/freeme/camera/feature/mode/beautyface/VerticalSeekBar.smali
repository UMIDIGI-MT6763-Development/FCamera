.class public Lcom/freeme/camera/feature/mode/beautyface/VerticalSeekBar;
.super Landroid/widget/SeekBar;
.source "VerticalSeekBar.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/feature/mode/beautyface/VerticalSeekBar$VerticalSeekBarListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/freeme/camera/feature/mode/beautyface/VerticalSeekBar$VerticalSeekBarListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    const/high16 v0, -0x3d4c0000    # -90.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/beautyface/VerticalSeekBar;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p2, p1}, Landroid/widget/SeekBar;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/beautyface/VerticalSeekBar;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/beautyface/VerticalSeekBar;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/freeme/camera/feature/mode/beautyface/VerticalSeekBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p2, p1, p4, p3}, Landroid/widget/SeekBar;->onSizeChanged(IIII)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/beautyface/VerticalSeekBar;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/beautyface/VerticalSeekBar;->getMax()I

    move-result v0

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/beautyface/VerticalSeekBar;->getMax()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    mul-float/2addr v2, p1

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/beautyface/VerticalSeekBar;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v2, p1

    float-to-int p1, v2

    sub-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/mode/beautyface/VerticalSeekBar;->setProgress(I)V

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/beautyface/VerticalSeekBar;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/beautyface/VerticalSeekBar;->getHeight()I

    move-result v0

    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/freeme/camera/feature/mode/beautyface/VerticalSeekBar;->onSizeChanged(IIII)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/beautyface/VerticalSeekBar;->mListener:Lcom/freeme/camera/feature/mode/beautyface/VerticalSeekBar$VerticalSeekBarListener;

    if-eqz p1, :cond_1

    invoke-interface {p1, p0}, Lcom/freeme/camera/feature/mode/beautyface/VerticalSeekBar$VerticalSeekBarListener;->onVerticalSeekBarStopTrackingTouch(Lcom/freeme/camera/feature/mode/beautyface/VerticalSeekBar;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/beautyface/VerticalSeekBar;->getMax()I

    move-result v0

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/beautyface/VerticalSeekBar;->getMax()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    mul-float/2addr v2, p1

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/beautyface/VerticalSeekBar;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v2, p1

    float-to-int p1, v2

    sub-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/mode/beautyface/VerticalSeekBar;->setProgress(I)V

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/beautyface/VerticalSeekBar;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/beautyface/VerticalSeekBar;->getHeight()I

    move-result v0

    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/freeme/camera/feature/mode/beautyface/VerticalSeekBar;->onSizeChanged(IIII)V

    :cond_1
    :goto_0
    :pswitch_2
    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setListener(Lcom/freeme/camera/feature/mode/beautyface/VerticalSeekBar$VerticalSeekBarListener;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/beautyface/VerticalSeekBar;->mListener:Lcom/freeme/camera/feature/mode/beautyface/VerticalSeekBar$VerticalSeekBarListener;

    return-void
.end method
