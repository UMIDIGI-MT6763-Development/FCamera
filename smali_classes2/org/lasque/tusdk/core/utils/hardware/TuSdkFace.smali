.class public Lorg/lasque/tusdk/core/utils/hardware/TuSdkFace;
.super Ljava/lang/Object;


# instance fields
.field public id:I

.field public leftEye:Landroid/graphics/PointF;

.field public mouth:Landroid/graphics/PointF;

.field public rect:Landroid/graphics/RectF;

.field public rightEye:Landroid/graphics/PointF;

.field public score:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkFace;->id:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkFace;->leftEye:Landroid/graphics/PointF;

    iput-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkFace;->rightEye:Landroid/graphics/PointF;

    iput-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkFace;->mouth:Landroid/graphics/PointF;

    return-void
.end method

.method private static a(Landroid/graphics/PointF;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;)Landroid/graphics/PointF;
    .locals 2

    if-nez p0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    invoke-virtual {v0, p0}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    sget-object v1, Lorg/lasque/tusdk/core/utils/hardware/TuSdkFace$1;->a:[I

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/high16 v1, 0x3f800000    # 1.0f

    packed-switch p1, :pswitch_data_0

    goto :goto_5

    :pswitch_0
    iget p1, p0, Landroid/graphics/PointF;->y:F

    sub-float p1, v1, p1

    goto :goto_0

    :pswitch_1
    iget p1, p0, Landroid/graphics/PointF;->x:F

    goto :goto_1

    :pswitch_2
    iget p1, p0, Landroid/graphics/PointF;->y:F

    iput p1, v0, Landroid/graphics/PointF;->x:F

    goto :goto_3

    :pswitch_3
    iget p1, p0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    iget p0, p0, Landroid/graphics/PointF;->y:F

    goto :goto_4

    :pswitch_4
    iget p1, p0, Landroid/graphics/PointF;->y:F

    :goto_0
    iput p1, v0, Landroid/graphics/PointF;->x:F

    iget p0, p0, Landroid/graphics/PointF;->x:F

    goto :goto_2

    :pswitch_5
    iget p1, p0, Landroid/graphics/PointF;->x:F

    sub-float p1, v1, p1

    :goto_1
    iput p1, v0, Landroid/graphics/PointF;->x:F

    iget p0, p0, Landroid/graphics/PointF;->y:F

    :goto_2
    sub-float/2addr v1, p0

    iput v1, v0, Landroid/graphics/PointF;->y:F

    goto :goto_5

    :pswitch_6
    iget p1, p0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    :goto_3
    iget p0, p0, Landroid/graphics/PointF;->x:F

    :goto_4
    iput p0, v0, Landroid/graphics/PointF;->y:F

    :goto_5
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static convertOrientation(Lorg/lasque/tusdk/core/utils/hardware/TuSdkFace;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;)V
    .locals 4

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkFace;->leftEye:Landroid/graphics/PointF;

    invoke-static {v0, p1}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkFace;->a(Landroid/graphics/PointF;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;)Landroid/graphics/PointF;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkFace;->leftEye:Landroid/graphics/PointF;

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkFace;->rightEye:Landroid/graphics/PointF;

    invoke-static {v0, p1}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkFace;->a(Landroid/graphics/PointF;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;)Landroid/graphics/PointF;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkFace;->rightEye:Landroid/graphics/PointF;

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkFace;->mouth:Landroid/graphics/PointF;

    invoke-static {v0, p1}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkFace;->a(Landroid/graphics/PointF;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;)Landroid/graphics/PointF;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkFace;->mouth:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkFace;->rect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkFace;->rect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-static {v0, p1}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkFace;->a(Landroid/graphics/PointF;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;)Landroid/graphics/PointF;

    move-result-object v0

    new-instance v1, Landroid/graphics/PointF;

    iget-object v2, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkFace;->rect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkFace;->rect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-static {v1, p1}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkFace;->a(Landroid/graphics/PointF;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;)Landroid/graphics/PointF;

    move-result-object p1

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkFace;->rect:Landroid/graphics/RectF;

    iget-object v1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkFace;->rect:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v3, p1, Landroid/graphics/PointF;->x:F

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, v1, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkFace;->rect:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/PointF;->y:F

    iget v3, p1, Landroid/graphics/PointF;->y:F

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, v1, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkFace;->rect:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v3, p1, Landroid/graphics/PointF;->x:F

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v1, Landroid/graphics/RectF;->right:F

    iget-object p0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkFace;->rect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Landroid/graphics/RectF;->bottom:F

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "Class [%s]: %s \n detail id[%s]: rect[%s], score[%s], leftEye[%s], rightEye[%s], mouth[%s]"

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget v2, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkFace;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkFace;->rect:Landroid/graphics/RectF;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget v2, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkFace;->score:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkFace;->leftEye:Landroid/graphics/PointF;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkFace;->rightEye:Landroid/graphics/PointF;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkFace;->mouth:Landroid/graphics/PointF;

    const/4 v3, 0x7

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
