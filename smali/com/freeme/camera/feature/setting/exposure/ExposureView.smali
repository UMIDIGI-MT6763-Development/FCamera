.class public Lcom/freeme/camera/feature/setting/exposure/ExposureView;
.super Lcom/freeme/camera/common/widget/RotateLayout;
.source "ExposureView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/feature/setting/exposure/ExposureView$ExposureViewChangedListener;
    }
.end annotation


# static fields
.field private static final ONE_FINGER:I = 0x1

.field private static final PROGRESS_SCARE:I = 0x32

.field private static final SCREEN_DISTANCE_MAPPING_TO_PROGRESS:I = 0xa

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

.field private static sAvailableSpace:I

.field private static sDeProgress:I

.field private static sMaxEv:I

.field private static sMinEv:I


# instance fields
.field private mEvChangeStartNotified:Z

.field private mEvSeekBarChangedListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mEvSeekbar:Lcom/freeme/camera/feature/setting/exposure/VerticalSeekBar;

.field private mLastEv:I

.field private mLastProgress:I

.field private mListener:Lcom/freeme/camera/feature/setting/exposure/ExposureView$ExposureViewChangedListener;

.field private mOrientation:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/setting/exposure/ExposureView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/exposure/ExposureView;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const/16 v0, 0x96

    sput v0, Lcom/freeme/camera/feature/setting/exposure/ExposureView;->sDeProgress:I

    const/4 v0, 0x1

    sput v0, Lcom/freeme/camera/feature/setting/exposure/ExposureView;->sAvailableSpace:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/freeme/camera/common/widget/RotateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureView;->mLastEv:I

    iput-boolean p1, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureView;->mEvChangeStartNotified:Z

    new-instance p1, Lcom/freeme/camera/feature/setting/exposure/ExposureView$1;

    invoke-direct {p1, p0}, Lcom/freeme/camera/feature/setting/exposure/ExposureView$1;-><init>(Lcom/freeme/camera/feature/setting/exposure/ExposureView;)V

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureView;->mEvSeekBarChangedListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/freeme/camera/feature/setting/exposure/ExposureView;)Lcom/freeme/camera/feature/setting/exposure/ExposureView$ExposureViewChangedListener;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureView;->mListener:Lcom/freeme/camera/feature/setting/exposure/ExposureView$ExposureViewChangedListener;

    return-object p0
.end method

.method static synthetic access$100()I
    .locals 1

    sget v0, Lcom/freeme/camera/feature/setting/exposure/ExposureView;->sMaxEv:I

    return v0
.end method

.method static synthetic access$200()I
    .locals 1

    sget v0, Lcom/freeme/camera/feature/setting/exposure/ExposureView;->sMinEv:I

    return v0
.end method

.method static synthetic access$300(Lcom/freeme/camera/feature/setting/exposure/ExposureView;)I
    .locals 0

    iget p0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureView;->mLastEv:I

    return p0
.end method

.method static synthetic access$302(Lcom/freeme/camera/feature/setting/exposure/ExposureView;I)I
    .locals 0

    iput p1, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureView;->mLastEv:I

    return p1
.end method

.method static synthetic access$400()Lcom/freeme/camera/common/debug/LogUtil$Tag;
    .locals 1

    sget-object v0, Lcom/freeme/camera/feature/setting/exposure/ExposureView;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-object v0
.end method

.method static synthetic access$500(Lcom/freeme/camera/feature/setting/exposure/ExposureView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureView;->mEvChangeStartNotified:Z

    return p0
.end method

.method static synthetic access$600(Lcom/freeme/camera/feature/setting/exposure/ExposureView;)Lcom/freeme/camera/feature/setting/exposure/VerticalSeekBar;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureView;->mEvSeekbar:Lcom/freeme/camera/feature/setting/exposure/VerticalSeekBar;

    return-object p0
.end method

.method static synthetic access$700(Lcom/freeme/camera/feature/setting/exposure/ExposureView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/exposure/ExposureView;->onEvChanged(Z)V

    return-void
.end method

.method private extractDeltaScale(FLandroid/widget/SeekBar;)I
    .locals 3

    float-to-int p1, p1

    invoke-virtual {p2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/widget/SeekBar;->getMax()I

    move-result p2

    iget v1, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureView;->mOrientation:I

    if-eqz v1, :cond_0

    const/16 v2, 0x5a

    if-ne v1, v2, :cond_1

    :cond_0
    int-to-float v1, p1

    sget v2, Lcom/freeme/camera/feature/setting/exposure/ExposureView;->sAvailableSpace:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    int-to-float v2, p2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    :cond_1
    iget v1, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureView;->mOrientation:I

    const/16 v2, 0xb4

    if-eq v1, v2, :cond_2

    const/16 v2, 0x10e

    if-ne v1, v2, :cond_3

    :cond_2
    neg-int p1, p1

    int-to-float p1, p1

    sget v1, Lcom/freeme/camera/feature/setting/exposure/ExposureView;->sAvailableSpace:I

    int-to-float v1, v1

    div-float/2addr p1, v1

    int-to-float v1, p2

    mul-float/2addr p1, v1

    add-float/2addr v0, p1

    :cond_3
    int-to-float p1, p2

    cmpl-float p2, v0, p1

    const/4 v1, 0x0

    if-lez p2, :cond_4

    goto :goto_0

    :cond_4
    cmpg-float p1, v0, v1

    if-gez p1, :cond_5

    move p1, v1

    goto :goto_0

    :cond_5
    move p1, v0

    :goto_0
    float-to-int p1, p1

    return p1
.end method

.method private onEvChanged(Z)V
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/setting/exposure/ExposureView;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onEvChanged] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureView;->mEvChangeStartNotified:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureView;->mListener:Lcom/freeme/camera/feature/setting/exposure/ExposureView$ExposureViewChangedListener;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/freeme/camera/feature/setting/exposure/ExposureView$ExposureViewChangedListener;->onTrackingTouchStatusChanged(Z)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureView;->mEvSeekbar:Lcom/freeme/camera/feature/setting/exposure/VerticalSeekBar;

    invoke-virtual {p1}, Lcom/freeme/camera/feature/setting/exposure/VerticalSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureView;->mListener:Lcom/freeme/camera/feature/setting/exposure/ExposureView$ExposureViewChangedListener;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/freeme/camera/feature/setting/exposure/ExposureView$ExposureViewChangedListener;->onTrackingTouchStatusChanged(Z)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureView;->mEvSeekbar:Lcom/freeme/camera/feature/setting/exposure/VerticalSeekBar;

    invoke-virtual {p1}, Lcom/freeme/camera/feature/setting/exposure/VerticalSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :goto_0
    return-void
.end method

.method private updateEvProgressbar(F)V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureView;->mEvSeekbar:Lcom/freeme/camera/feature/setting/exposure/VerticalSeekBar;

    invoke-direct {p0, p1, v0}, Lcom/freeme/camera/feature/setting/exposure/ExposureView;->extractDeltaScale(FLandroid/widget/SeekBar;)I

    move-result p1

    iget v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureView;->mLastProgress:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureView;->mLastProgress:I

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureView;->mEvSeekbar:Lcom/freeme/camera/feature/setting/exposure/VerticalSeekBar;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/exposure/VerticalSeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureView;->mEvSeekbar:Lcom/freeme/camera/feature/setting/exposure/VerticalSeekBar;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/feature/setting/exposure/VerticalSeekBar;->setProgress(I)V

    return-void
.end method


# virtual methods
.method protected initExposureView([I)V
    .locals 2

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget v0, p1, v0

    const/4 v1, 0x0

    aget p1, p1, v1

    sput v0, Lcom/freeme/camera/feature/setting/exposure/ExposureView;->sMinEv:I

    sput p1, Lcom/freeme/camera/feature/setting/exposure/ExposureView;->sMaxEv:I

    sget p1, Lcom/freeme/camera/feature/setting/exposure/ExposureView;->sMaxEv:I

    sget v0, Lcom/freeme/camera/feature/setting/exposure/ExposureView;->sMinEv:I

    sub-int/2addr p1, v0

    mul-int/lit8 p1, p1, 0x32

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureView;->mEvSeekbar:Lcom/freeme/camera/feature/setting/exposure/VerticalSeekBar;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/feature/setting/exposure/VerticalSeekBar;->setMax(I)V

    sget v0, Lcom/freeme/camera/feature/setting/exposure/ExposureView;->sMaxEv:I

    sget v1, Lcom/freeme/camera/feature/setting/exposure/ExposureView;->sMinEv:I

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x32

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/freeme/camera/feature/setting/exposure/ExposureView;->sDeProgress:I

    mul-int/lit8 p1, p1, 0xa

    sput p1, Lcom/freeme/camera/feature/setting/exposure/ExposureView;->sAvailableSpace:I

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/exposure/ExposureView;->resetExposureView()V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureView;->mEvSeekbar:Lcom/freeme/camera/feature/setting/exposure/VerticalSeekBar;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureView;->mEvSeekBarChangedListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {p1, v0}, Lcom/freeme/camera/feature/setting/exposure/VerticalSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    sget-object p1, Lcom/freeme/camera/feature/setting/exposure/ExposureView;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[initExposureView] sDeProgress "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/freeme/camera/feature/setting/exposure/ExposureView;->sDeProgress:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",max = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureView;->mEvSeekbar:Lcom/freeme/camera/feature/setting/exposure/VerticalSeekBar;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/setting/exposure/VerticalSeekBar;->getMax()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onFinishInflate()V
    .locals 3

    invoke-super {p0}, Lcom/freeme/camera/common/widget/RotateLayout;->onFinishInflate()V

    const v0, 0x7f0900b1

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/setting/exposure/ExposureView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/feature/setting/exposure/VerticalSeekBar;

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureView;->mEvSeekbar:Lcom/freeme/camera/feature/setting/exposure/VerticalSeekBar;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureView;->mEvSeekbar:Lcom/freeme/camera/feature/setting/exposure/VerticalSeekBar;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/exposure/ExposureView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080174

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/exposure/VerticalSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected onTrackingTouch(Z)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureView;->mEvSeekBarChangedListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureView;->mEvSeekbar:Lcom/freeme/camera/feature/setting/exposure/VerticalSeekBar;

    invoke-interface {v0, p1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureView;->mEvSeekbar:Lcom/freeme/camera/feature/setting/exposure/VerticalSeekBar;

    invoke-interface {v0, p1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    :goto_0
    return-void
.end method

.method protected onVerticalScroll(Landroid/view/MotionEvent;F)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-direct {p0, p2}, Lcom/freeme/camera/feature/setting/exposure/ExposureView;->updateEvProgressbar(F)V

    :cond_0
    return-void
.end method

.method protected resetExposureView()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureView;->mEvSeekbar:Lcom/freeme/camera/feature/setting/exposure/VerticalSeekBar;

    sget v1, Lcom/freeme/camera/feature/setting/exposure/ExposureView;->sDeProgress:I

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/exposure/VerticalSeekBar;->setProgress(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureView;->mEvSeekbar:Lcom/freeme/camera/feature/setting/exposure/VerticalSeekBar;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/exposure/VerticalSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method protected setListener(Lcom/freeme/camera/feature/setting/exposure/ExposureView$ExposureViewChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureView;->mListener:Lcom/freeme/camera/feature/setting/exposure/ExposureView$ExposureViewChangedListener;

    return-void
.end method

.method protected setOrientation(I)V
    .locals 0

    iput p1, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureView;->mOrientation:I

    return-void
.end method

.method protected setViewEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureView;->mEvSeekbar:Lcom/freeme/camera/feature/setting/exposure/VerticalSeekBar;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/feature/setting/exposure/VerticalSeekBar;->setEnabled(Z)V

    return-void
.end method
