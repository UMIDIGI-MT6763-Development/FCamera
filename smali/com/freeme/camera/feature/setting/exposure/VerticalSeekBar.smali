.class public Lcom/freeme/camera/feature/setting/exposure/VerticalSeekBar;
.super Landroid/support/v7/widget/AppCompatSeekBar;
.source "VerticalSeekBar.java"


# static fields
.field private static final GAP_IN_PX:D = 4.25

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/setting/exposure/VerticalSeekBar;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/exposure/VerticalSeekBar;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatSeekBar;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/exposure/VerticalSeekBar;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/exposure/VerticalSeekBar;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/exposure/VerticalSeekBar;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    const/high16 v0, -0x3d4c0000    # -90.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/exposure/VerticalSeekBar;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatSeekBar;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p2, p1}, Landroid/support/v7/widget/AppCompatSeekBar;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/exposure/VerticalSeekBar;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/exposure/VerticalSeekBar;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/freeme/camera/feature/setting/exposure/VerticalSeekBar;->setMeasuredDimension(II)V
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

    invoke-super {p0, p2, p1, p4, p3}, Landroid/support/v7/widget/AppCompatSeekBar;->onSizeChanged(IIII)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/exposure/VerticalSeekBar;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/exposure/VerticalSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/setting/exposure/VerticalSeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/exposure/VerticalSeekBar;->getMax()I

    move-result v0

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/exposure/VerticalSeekBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/exposure/VerticalSeekBar;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/setting/exposure/VerticalSeekBar;->setProgress(I)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/exposure/VerticalSeekBar;->mListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz p1, :cond_1

    invoke-interface {p1, p0, v0, v1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/setting/exposure/VerticalSeekBar;->setProgress(I)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/exposure/VerticalSeekBar;->mListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz p1, :cond_1

    invoke-interface {p1, p0}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/exposure/VerticalSeekBar;->mListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz p1, :cond_1

    invoke-interface {p1, p0}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    :cond_1
    :goto_0
    :pswitch_3
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/exposure/VerticalSeekBar;->mListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-void
.end method

.method public declared-synchronized setProgress(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatSeekBar;->setProgress(I)V

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/exposure/VerticalSeekBar;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/exposure/VerticalSeekBar;->getHeight()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/freeme/camera/feature/setting/exposure/VerticalSeekBar;->onSizeChanged(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .locals 7

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/VerticalSeekBar;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    instance-of v0, p1, Landroid/graphics/drawable/VectorDrawable;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/exposure/VerticalSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const-wide/high16 v3, 0x4011000000000000L    # 4.25

    float-to-double v5, v2

    mul-double/2addr v5, v3

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v5, v2

    double-to-int v2, v5

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {p1, v2, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/exposure/VerticalSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {p1, v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method
