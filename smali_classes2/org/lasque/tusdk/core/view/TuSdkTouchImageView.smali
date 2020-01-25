.class public Lorg/lasque/tusdk/core/view/TuSdkTouchImageView;
.super Lorg/lasque/tusdk/core/view/TouchImageView;

# interfaces
.implements Lorg/lasque/tusdk/core/view/TuSdkTouchImageViewInterface;


# instance fields
.field private a:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

.field private b:Z

.field private c:Landroid/view/View;

.field private d:Lorg/lasque/tusdk/core/view/TouchImageView$OnTouchImageViewListener;

.field private e:Lorg/lasque/tusdk/core/view/TouchImageView$OnTouchImageViewListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/view/TouchImageView;-><init>(Landroid/content/Context;)V

    sget-object p1, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->Up:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/TuSdkTouchImageView;->a:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/TuSdkTouchImageView;->d:Lorg/lasque/tusdk/core/view/TouchImageView$OnTouchImageViewListener;

    new-instance p1, Lorg/lasque/tusdk/core/view/TuSdkTouchImageView$1;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/core/view/TuSdkTouchImageView$1;-><init>(Lorg/lasque/tusdk/core/view/TuSdkTouchImageView;)V

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/TuSdkTouchImageView;->e:Lorg/lasque/tusdk/core/view/TouchImageView$OnTouchImageViewListener;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/TuSdkTouchImageView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/core/view/TouchImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object p1, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->Up:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/TuSdkTouchImageView;->a:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/TuSdkTouchImageView;->d:Lorg/lasque/tusdk/core/view/TouchImageView$OnTouchImageViewListener;

    new-instance p1, Lorg/lasque/tusdk/core/view/TuSdkTouchImageView$1;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/core/view/TuSdkTouchImageView$1;-><init>(Lorg/lasque/tusdk/core/view/TuSdkTouchImageView;)V

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/TuSdkTouchImageView;->e:Lorg/lasque/tusdk/core/view/TouchImageView$OnTouchImageViewListener;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/TuSdkTouchImageView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/lasque/tusdk/core/view/TouchImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object p1, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->Up:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/TuSdkTouchImageView;->a:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/TuSdkTouchImageView;->d:Lorg/lasque/tusdk/core/view/TouchImageView$OnTouchImageViewListener;

    new-instance p1, Lorg/lasque/tusdk/core/view/TuSdkTouchImageView$1;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/core/view/TuSdkTouchImageView$1;-><init>(Lorg/lasque/tusdk/core/view/TuSdkTouchImageView;)V

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/TuSdkTouchImageView;->e:Lorg/lasque/tusdk/core/view/TouchImageView$OnTouchImageViewListener;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/TuSdkTouchImageView;->initView()V

    return-void
.end method

.method private a()V
    .locals 4

    invoke-static {p0}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->getDrawableBitmap(Landroid/widget/ImageView;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getRotation(Landroid/view/View;)F

    move-result v1

    float-to-int v1, v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->getValue(IZ)Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->imageRotaing(Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v3, p0, Lorg/lasque/tusdk/core/view/TuSdkTouchImageView;->a:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    invoke-virtual {v3}, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->getDegree()I

    move-result v3

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->getDegree()I

    move-result v1

    add-int/2addr v3, v1

    iget-object v1, p0, Lorg/lasque/tusdk/core/view/TuSdkTouchImageView;->a:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->isMirrored()Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit16 v3, v3, -0xb4

    :cond_1
    iget-object v1, p0, Lorg/lasque/tusdk/core/view/TuSdkTouchImageView;->a:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->isMirrored()Z

    move-result v1

    invoke-static {v3, v1}, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->getValue(IZ)Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    move-result-object v1

    iput-object v1, p0, Lorg/lasque/tusdk/core/view/TuSdkTouchImageView;->a:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p0, v1}, Landroid/support/v4/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    invoke-static {p0, v1}, Landroid/support/v4/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroid/support/v4/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/view/TuSdkTouchImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/TuSdkTouchImageView;->invalidateTargetView()V

    iput-boolean v2, p0, Lorg/lasque/tusdk/core/view/TuSdkTouchImageView;->b:Z

    return-void
.end method

.method private a(I)V
    .locals 5

    invoke-static {p0}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->getDrawableBitmap(Landroid/widget/ImageView;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/lasque/tusdk/core/view/TuSdkTouchImageView;->b:Z

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->create(Landroid/graphics/Bitmap;)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    invoke-static {p0}, Lorg/lasque/tusdk/core/struct/ViewSize;->create(Landroid/view/View;)Lorg/lasque/tusdk/core/struct/ViewSize;

    move-result-object v2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/TuSdkTouchImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v3

    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    if-ne v3, v4, :cond_2

    iget v3, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget v0, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    if-le v3, v0, :cond_1

    :goto_0
    iget v0, v2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    int-to-float v0, v0

    iget v1, v2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    :goto_1
    int-to-float v1, v1

    div-float v1, v0, v1

    goto :goto_3

    :cond_1
    iget v0, v2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget v3, v2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    if-ge v0, v3, :cond_4

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/TuSdkTouchImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v3

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    if-ne v3, v4, :cond_4

    iget v3, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget v0, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    if-le v3, v0, :cond_3

    :goto_2
    iget v0, v2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    int-to-float v0, v0

    iget v1, v2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    goto :goto_1

    :cond_3
    iget v0, v2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget v3, v2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    if-ge v0, v3, :cond_4

    goto :goto_0

    :cond_4
    :goto_3
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/TuSdkTouchImageView;->resetZoom()V

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->scaleX(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->scaleY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->rotation(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    const-wide/16 v0, 0xbe

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    new-instance v0, Lorg/lasque/tusdk/core/view/TuSdkTouchImageView$3;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/core/view/TuSdkTouchImageView$3;-><init>(Lorg/lasque/tusdk/core/view/TuSdkTouchImageView;)V

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    new-instance v0, Lorg/lasque/tusdk/core/view/TuSdkTouchImageView$2;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/core/view/TuSdkTouchImageView$2;-><init>(Lorg/lasque/tusdk/core/view/TuSdkTouchImageView;)V

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setUpdateListener(Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/view/TuSdkTouchImageView;)V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/view/TuSdkTouchImageView;->a()V

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/view/TuSdkTouchImageView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/view/TuSdkTouchImageView;->b(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 5

    invoke-static {p0}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->getDrawableBitmap(Landroid/widget/ImageView;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/view/TuSdkTouchImageView;->b:Z

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/TuSdkTouchImageView;->resetZoom()V

    const/4 v1, 0x2

    if-eqz p1, :cond_1

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    goto :goto_0

    :cond_1
    new-array v1, v1, [I

    fill-array-data v1, :array_1

    :goto_0
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v1, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->scaleX(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    const-wide/16 v3, 0xc8

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    aget v0, v1, v0

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->scaleY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const-wide/16 v1, 0xbe

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    new-instance v1, Lorg/lasque/tusdk/core/view/TuSdkTouchImageView$5;

    invoke-direct {v1, p0, p1}, Lorg/lasque/tusdk/core/view/TuSdkTouchImageView$5;-><init>(Lorg/lasque/tusdk/core/view/TuSdkTouchImageView;Z)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    new-instance v0, Lorg/lasque/tusdk/core/view/TuSdkTouchImageView$4;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/core/view/TuSdkTouchImageView$4;-><init>(Lorg/lasque/tusdk/core/view/TuSdkTouchImageView;)V

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setUpdateListener(Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x1
        -0x1
    .end array-data
.end method

.method private b(Z)V
    .locals 2

    invoke-static {p0}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->getDrawableBitmap(Landroid/widget/ImageView;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    sget-object p1, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->UpMirrored:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    goto :goto_0

    :cond_1
    sget-object p1, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->DownMirrored:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    :goto_0
    invoke-static {v0, p1}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->imageRotaing(Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->getDegree()I

    move-result p1

    iget-object v1, p0, Lorg/lasque/tusdk/core/view/TuSdkTouchImageView;->a:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->getDegree()I

    move-result v1

    add-int/2addr p1, v1

    rem-int/lit16 p1, p1, 0x168

    iget-object v1, p0, Lorg/lasque/tusdk/core/view/TuSdkTouchImageView;->a:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->isMirrored()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {p1, v1}, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->getValue(IZ)Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    move-result-object p1

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/TuSdkTouchImageView;->a:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {p0, p1}, Landroid/support/v4/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    invoke-static {p0, p1}, Landroid/support/v4/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/view/TuSdkTouchImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/TuSdkTouchImageView;->invalidateTargetView()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/view/TuSdkTouchImageView;->b:Z

    return-void
.end method


# virtual methods
.method public changeImageAnimation(Lorg/lasque/tusdk/core/view/TuSdkTouchImageViewInterface$LsqImageChangeType;)V
    .locals 4

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/view/TuSdkTouchImageView;->b:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Lorg/lasque/tusdk/core/view/TuSdkTouchImageView$8;->a:[I

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/view/TuSdkTouchImageViewInterface$LsqImageChangeType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const-wide/16 v0, 0x0

    packed-switch p1, :pswitch_data_0

    move-wide v2, v0

    goto :goto_0

    :pswitch_0
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/view/TuSdkTouchImageView;->a(Z)V

    sget-wide v2, Lorg/lasque/tusdk/modules/components/ComponentActType;->editCuter_action_mirror_vertical:J

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/view/TuSdkTouchImageView;->a(Z)V

    sget-wide v2, Lorg/lasque/tusdk/modules/components/ComponentActType;->editCuter_action_mirror_horizontal:J

    goto :goto_0

    :pswitch_2
    const/16 p1, 0x5a

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/view/TuSdkTouchImageView;->a(I)V

    sget-wide v2, Lorg/lasque/tusdk/modules/components/ComponentActType;->editCuter_action_trun_right:J

    goto :goto_0

    :pswitch_3
    const/16 p1, -0x5a

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/view/TuSdkTouchImageView;->a(I)V

    sget-wide v2, Lorg/lasque/tusdk/modules/components/ComponentActType;->editCuter_action_trun_left:J

    :goto_0
    cmp-long p1, v2, v0

    if-eqz p1, :cond_1

    invoke-static {v2, v3}, Lorg/lasque/tusdk/core/secret/StatisticsManger;->appendComponent(J)V

    :cond_1
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public changeRegionRatio(Landroid/graphics/Rect;F)V
    .locals 6

    invoke-static {p0}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->getDrawableBitmap(Landroid/widget/ImageView;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-boolean v1, p0, Lorg/lasque/tusdk/core/view/TuSdkTouchImageView;->b:Z

    if-eqz v1, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/lasque/tusdk/core/view/TuSdkTouchImageView;->b:Z

    invoke-static {v0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->create(Landroid/graphics/Bitmap;)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    const/4 v2, 0x0

    cmpl-float v3, p2, v2

    const/4 v4, 0x0

    if-lez v3, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/TuSdkTouchImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v3

    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    if-ne v3, v5, :cond_1

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->getRatioFloat()F

    move-result v0

    invoke-static {p1, v0, v4}, Lorg/lasque/tusdk/core/utils/RectHelper;->computerOutScale(Landroid/graphics/Rect;FZ)F

    move-result v0

    goto :goto_0

    :cond_1
    cmpg-float v2, p2, v2

    if-gtz v2, :cond_2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/TuSdkTouchImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v2

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    if-ne v2, v3, :cond_2

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->getRatioFloat()F

    move-result v0

    invoke-static {p1, v0, v1}, Lorg/lasque/tusdk/core/utils/RectHelper;->computerOutScale(Landroid/graphics/Rect;FZ)F

    move-result v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/TuSdkTouchImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/TuSdkTouchImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {p0}, Lorg/lasque/tusdk/core/view/TuSdkViewHelper;->getViewRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->getRatioFloat()F

    move-result v5

    invoke-static {v3, v5, v4}, Lorg/lasque/tusdk/core/utils/RectHelper;->computerOutScale(Landroid/graphics/Rect;FZ)F

    move-result v3

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->getRatioFloat()F

    move-result v0

    invoke-static {p1, v0, v4}, Lorg/lasque/tusdk/core/utils/RectHelper;->computerOutScale(Landroid/graphics/Rect;FZ)F

    move-result v0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_0

    :cond_3
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    :goto_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/TuSdkTouchImageView;->resetZoom()V

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->scaleX(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->scaleY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const-wide/16 v1, 0xbe

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    new-instance v1, Lorg/lasque/tusdk/core/view/TuSdkTouchImageView$7;

    invoke-direct {v1, p0, p1, p2}, Lorg/lasque/tusdk/core/view/TuSdkTouchImageView$7;-><init>(Lorg/lasque/tusdk/core/view/TuSdkTouchImageView;Landroid/graphics/Rect;F)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    new-instance p2, Lorg/lasque/tusdk/core/view/TuSdkTouchImageView$6;

    invoke-direct {p2, p0}, Lorg/lasque/tusdk/core/view/TuSdkTouchImageView$6;-><init>(Lorg/lasque/tusdk/core/view/TuSdkTouchImageView;)V

    invoke-virtual {p1, p2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setUpdateListener(Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    :cond_4
    :goto_1
    return-void
.end method

.method public getImageOrientation()Lorg/lasque/tusdk/core/utils/image/ImageOrientation;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/TuSdkTouchImageView;->a:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    return-object v0
.end method

.method protected initView()V
    .locals 0

    return-void
.end method

.method public invalidateTargetView()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/TuSdkTouchImageView;->d:Lorg/lasque/tusdk/core/view/TouchImageView$OnTouchImageViewListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/lasque/tusdk/core/view/TouchImageView$OnTouchImageViewListener;->onMove()V

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/view/TuSdkTouchImageView;->c:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public isInAnimation()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/view/TuSdkTouchImageView;->b:Z

    return v0
.end method

.method protected onRegionRatioAnimationEnd(Landroid/graphics/Rect;F)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    const/4 v1, 0x0

    cmpl-float p2, p2, v1

    if-lez p2, :cond_0

    sget-object p2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    goto :goto_0

    :cond_0
    sget-object p2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    :goto_0
    invoke-virtual {p0, p2}, Lorg/lasque/tusdk/core/view/TuSdkTouchImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-static {p0, p1}, Lorg/lasque/tusdk/core/view/TuSdkViewHelper;->setViewRect(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/view/TuSdkTouchImageView;->setZoom(F)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/TuSdkTouchImageView;->invalidateTargetView()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/view/TuSdkTouchImageView;->b:Z

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;)V
    .locals 0

    if-nez p2, :cond_0

    sget-object p2, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->Up:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    :cond_0
    iput-object p2, p0, Lorg/lasque/tusdk/core/view/TuSdkTouchImageView;->a:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lorg/lasque/tusdk/core/view/TuSdkTouchImageView;->a:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    invoke-static {p1, p2}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->imageRotaing(Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_1
    invoke-super {p0, p1}, Lorg/lasque/tusdk/core/view/TouchImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setImageBitmapWithAnim(Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/lasque/tusdk/core/view/TouchImageView;->setImageBitmapWithAnim(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setInvalidateTargetView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/TuSdkTouchImageView;->c:Landroid/view/View;

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/TuSdkTouchImageView;->e:Lorg/lasque/tusdk/core/view/TouchImageView$OnTouchImageViewListener;

    invoke-super {p0, p1}, Lorg/lasque/tusdk/core/view/TouchImageView;->setOnTouchImageViewListener(Lorg/lasque/tusdk/core/view/TouchImageView$OnTouchImageViewListener;)V

    return-void
.end method

.method public setOnTouchImageViewListener(Lorg/lasque/tusdk/core/view/TouchImageView$OnTouchImageViewListener;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/TuSdkTouchImageView;->d:Lorg/lasque/tusdk/core/view/TouchImageView$OnTouchImageViewListener;

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/TuSdkTouchImageView;->e:Lorg/lasque/tusdk/core/view/TouchImageView$OnTouchImageViewListener;

    invoke-super {p0, p1}, Lorg/lasque/tusdk/core/view/TouchImageView;->setOnTouchImageViewListener(Lorg/lasque/tusdk/core/view/TouchImageView$OnTouchImageViewListener;)V

    return-void
.end method
